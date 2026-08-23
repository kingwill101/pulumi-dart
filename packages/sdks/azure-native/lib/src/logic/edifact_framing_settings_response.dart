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
  const EdifactFramingSettingsResponse({
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
      characterEncoding: (() { final guardedValue = map['characterEncoding']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      characterSet: pulumi.Input.fromValue(map['characterSet'] as String),
      componentSeparator: pulumi.Input.fromValue(map['componentSeparator'] as int),
      dataElementSeparator: pulumi.Input.fromValue(map['dataElementSeparator'] as int),
      decimalPointIndicator: pulumi.Input.fromValue(map['decimalPointIndicator'] as String),
      protocolVersion: pulumi.Input.fromValue(map['protocolVersion'] as int),
      releaseIndicator: pulumi.Input.fromValue(map['releaseIndicator'] as int),
      repetitionSeparator: pulumi.Input.fromValue(map['repetitionSeparator'] as int),
      segmentTerminator: pulumi.Input.fromValue(map['segmentTerminator'] as int),
      segmentTerminatorSuffix: pulumi.Input.fromValue(map['segmentTerminatorSuffix'] as String),
      serviceCodeListDirectoryVersion: (() { final guardedValue = map['serviceCodeListDirectoryVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
