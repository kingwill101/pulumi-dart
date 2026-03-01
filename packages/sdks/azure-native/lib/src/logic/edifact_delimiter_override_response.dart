// ignore_for_file: unused_element, unnecessary_cast


/// The Edifact delimiter override settings.
class EdifactDelimiterOverrideResponse {
  /// The component separator.
  final int componentSeparator;
  /// The data element separator.
  final int dataElementSeparator;
  /// The decimal point indicator.
  final String decimalPointIndicator;
  /// The message association assigned code.
  final String? messageAssociationAssignedCode;
  /// The message id.
  final String? messageId;
  /// The message release.
  final String? messageRelease;
  /// The message version.
  final String? messageVersion;
  /// The release indicator.
  final int releaseIndicator;
  /// The repetition separator.
  final int repetitionSeparator;
  /// The segment terminator.
  final int segmentTerminator;
  /// The segment terminator suffix.
  final String segmentTerminatorSuffix;
  /// The target namespace on which this delimiter settings has to be applied.
  final String? targetNamespace;

  /// Creates a new [EdifactDelimiterOverrideResponse].
  /// [componentSeparator] The component separator.
  /// [dataElementSeparator] The data element separator.
  /// [decimalPointIndicator] The decimal point indicator.
  /// [messageAssociationAssignedCode] The message association assigned code.
  /// [messageId] The message id.
  /// [messageRelease] The message release.
  /// [messageVersion] The message version.
  /// [releaseIndicator] The release indicator.
  /// [repetitionSeparator] The repetition separator.
  /// [segmentTerminator] The segment terminator.
  /// [segmentTerminatorSuffix] The segment terminator suffix.
  /// [targetNamespace] The target namespace on which this delimiter settings has to be applied.
  EdifactDelimiterOverrideResponse({
    required this.componentSeparator,
    required this.dataElementSeparator,
    required this.decimalPointIndicator,
    this.messageAssociationAssignedCode,
    this.messageId,
    this.messageRelease,
    this.messageVersion,
    required this.releaseIndicator,
    required this.repetitionSeparator,
    required this.segmentTerminator,
    required this.segmentTerminatorSuffix,
    this.targetNamespace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'componentSeparator': componentSeparator,
      'dataElementSeparator': dataElementSeparator,
      'decimalPointIndicator': decimalPointIndicator,
      'messageAssociationAssignedCode': ?messageAssociationAssignedCode,
      'messageId': ?messageId,
      'messageRelease': ?messageRelease,
      'messageVersion': ?messageVersion,
      'releaseIndicator': releaseIndicator,
      'repetitionSeparator': repetitionSeparator,
      'segmentTerminator': segmentTerminator,
      'segmentTerminatorSuffix': segmentTerminatorSuffix,
      'targetNamespace': ?targetNamespace,
    };
  }

  factory EdifactDelimiterOverrideResponse.fromMap(Map<String, dynamic> map) {
    return EdifactDelimiterOverrideResponse(
      componentSeparator: map['componentSeparator'] as int,
      dataElementSeparator: map['dataElementSeparator'] as int,
      decimalPointIndicator: map['decimalPointIndicator'] as String,
      messageAssociationAssignedCode: map['messageAssociationAssignedCode'] == null ? null : map['messageAssociationAssignedCode'] as String,
      messageId: map['messageId'] == null ? null : map['messageId'] as String,
      messageRelease: map['messageRelease'] == null ? null : map['messageRelease'] as String,
      messageVersion: map['messageVersion'] == null ? null : map['messageVersion'] as String,
      releaseIndicator: map['releaseIndicator'] as int,
      repetitionSeparator: map['repetitionSeparator'] as int,
      segmentTerminator: map['segmentTerminator'] as int,
      segmentTerminatorSuffix: map['segmentTerminatorSuffix'] as String,
      targetNamespace: map['targetNamespace'] == null ? null : map['targetNamespace'] as String,
    );
  }
}

