// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Edifact agreement framing settings.
class EdifactFramingSettingsResponse {
  /// The character encoding.
  final pulumi.Input<String>? characterEncoding;
  /// The EDIFACT frame setting characterSet.
  final pulumi.Input<String> characterSet;
  /// The component separator.
  final pulumi.Input<int> componentSeparator;
  /// The data element separator.
  final pulumi.Input<int> dataElementSeparator;
  /// The EDIFACT frame setting decimal indicator.
  final pulumi.Input<String> decimalPointIndicator;
  /// The protocol version.
  final pulumi.Input<int> protocolVersion;
  /// The release indicator.
  final pulumi.Input<int> releaseIndicator;
  /// The repetition separator.
  final pulumi.Input<int> repetitionSeparator;
  /// The segment terminator.
  final pulumi.Input<int> segmentTerminator;
  /// The EDIFACT frame setting segment terminator suffix.
  final pulumi.Input<String> segmentTerminatorSuffix;
  /// The service code list directory version.
  final pulumi.Input<String>? serviceCodeListDirectoryVersion;

  /// Creates a new [EdifactFramingSettingsResponse].
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
  EdifactFramingSettingsResponse({
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
      'decimalPointIndicator': decimalPointIndicator,
      'protocolVersion': protocolVersion,
      'releaseIndicator': releaseIndicator,
      'repetitionSeparator': repetitionSeparator,
      'segmentTerminator': segmentTerminator,
      'segmentTerminatorSuffix': segmentTerminatorSuffix,
      'serviceCodeListDirectoryVersion': ?serviceCodeListDirectoryVersion,
    };
  }

  factory EdifactFramingSettingsResponse.fromMap(Map<String, dynamic> map) {
    return EdifactFramingSettingsResponse(
      characterEncoding: map['characterEncoding'] == null ? null : (map['characterEncoding'] as String).input(),
      characterSet: (map['characterSet'] as String).input(),
      componentSeparator: (map['componentSeparator'] as int).input(),
      dataElementSeparator: (map['dataElementSeparator'] as int).input(),
      decimalPointIndicator: (map['decimalPointIndicator'] as String).input(),
      protocolVersion: (map['protocolVersion'] as int).input(),
      releaseIndicator: (map['releaseIndicator'] as int).input(),
      repetitionSeparator: (map['repetitionSeparator'] as int).input(),
      segmentTerminator: (map['segmentTerminator'] as int).input(),
      segmentTerminatorSuffix: (map['segmentTerminatorSuffix'] as String).input(),
      serviceCodeListDirectoryVersion: map['serviceCodeListDirectoryVersion'] == null ? null : (map['serviceCodeListDirectoryVersion'] as String).input(),
    );
  }
}

