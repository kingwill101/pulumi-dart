// ignore_for_file: unused_element, unnecessary_cast

import 'edifact_decimal_indicator.dart';
import 'segment_terminator_suffix.dart';

/// The Edifact agreement framing settings.
class EdifactFramingSettings {
  /// The character encoding.
  final String? characterEncoding;
  /// The EDIFACT frame setting characterSet.
  final String characterSet;
  /// The component separator.
  final int componentSeparator;
  /// The data element separator.
  final int dataElementSeparator;
  /// The EDIFACT frame setting decimal indicator.
  final EdifactDecimalIndicator decimalPointIndicator;
  /// The protocol version.
  final int protocolVersion;
  /// The release indicator.
  final int releaseIndicator;
  /// The repetition separator.
  final int repetitionSeparator;
  /// The segment terminator.
  final int segmentTerminator;
  /// The EDIFACT frame setting segment terminator suffix.
  final SegmentTerminatorSuffix segmentTerminatorSuffix;
  /// The service code list directory version.
  final String? serviceCodeListDirectoryVersion;

  /// Creates a new [EdifactFramingSettings].
  /// [characterEncoding] The character encoding.
  /// [characterSet] The EDIFACT frame setting characterSet.
  /// [componentSeparator] The component separator.
  /// [dataElementSeparator] The data element separator.
  /// [decimalPointIndicator] The EDIFACT frame setting decimal indicator.
  /// [protocolVersion] The protocol version.
  /// [releaseIndicator] The release indicator.
  /// [repetitionSeparator] The repetition separator.
  /// [segmentTerminator] The segment terminator.
  /// [segmentTerminatorSuffix] The EDIFACT frame setting segment terminator suffix.
  /// [serviceCodeListDirectoryVersion] The service code list directory version.
  EdifactFramingSettings({
    this.characterEncoding,
    required this.characterSet,
    required this.componentSeparator,
    required this.dataElementSeparator,
    required this.decimalPointIndicator,
    required this.protocolVersion,
    required this.releaseIndicator,
    required this.repetitionSeparator,
    required this.segmentTerminator,
    required this.segmentTerminatorSuffix,
    this.serviceCodeListDirectoryVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'characterEncoding': ?characterEncoding,
      'characterSet': characterSet,
      'componentSeparator': componentSeparator,
      'dataElementSeparator': dataElementSeparator,
      'decimalPointIndicator': decimalPointIndicator.value,
      'protocolVersion': protocolVersion,
      'releaseIndicator': releaseIndicator,
      'repetitionSeparator': repetitionSeparator,
      'segmentTerminator': segmentTerminator,
      'segmentTerminatorSuffix': segmentTerminatorSuffix.value,
      'serviceCodeListDirectoryVersion': ?serviceCodeListDirectoryVersion,
    };
  }

  factory EdifactFramingSettings.fromMap(Map<String, dynamic> map) {
    return EdifactFramingSettings(
      characterEncoding: map['characterEncoding'] == null ? null : map['characterEncoding'] as String,
      characterSet: map['characterSet'] as String,
      componentSeparator: map['componentSeparator'] as int,
      dataElementSeparator: map['dataElementSeparator'] as int,
      decimalPointIndicator: EdifactDecimalIndicator.fromValue(map['decimalPointIndicator'] as String),
      protocolVersion: map['protocolVersion'] as int,
      releaseIndicator: map['releaseIndicator'] as int,
      repetitionSeparator: map['repetitionSeparator'] as int,
      segmentTerminator: map['segmentTerminator'] as int,
      segmentTerminatorSuffix: SegmentTerminatorSuffix.fromValue(map['segmentTerminatorSuffix'] as String),
      serviceCodeListDirectoryVersion: map['serviceCodeListDirectoryVersion'] == null ? null : map['serviceCodeListDirectoryVersion'] as String,
    );
  }
}

