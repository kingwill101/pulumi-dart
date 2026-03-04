// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Edifact delimiter override settings.
class EdifactDelimiterOverrideResponse {
  /// The component separator.
  final pulumi.Input<int> componentSeparator;

  /// The data element separator.
  final pulumi.Input<int> dataElementSeparator;

  /// The decimal point indicator.
  final pulumi.Input<String> decimalPointIndicator;

  /// The message association assigned code.
  final pulumi.Input<String>? messageAssociationAssignedCode;

  /// The message id.
  final pulumi.Input<String>? messageId;

  /// The message release.
  final pulumi.Input<String>? messageRelease;

  /// The message version.
  final pulumi.Input<String>? messageVersion;

  /// The release indicator.
  final pulumi.Input<int> releaseIndicator;

  /// The repetition separator.
  final pulumi.Input<int> repetitionSeparator;

  /// The segment terminator.
  final pulumi.Input<int> segmentTerminator;

  /// The segment terminator suffix.
  final pulumi.Input<String> segmentTerminatorSuffix;

  /// The target namespace on which this delimiter settings has to be applied.
  final pulumi.Input<String>? targetNamespace;

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
      componentSeparator: pulumi.Input.fromValue(
        map['componentSeparator'] as int,
      ),
      dataElementSeparator: pulumi.Input.fromValue(
        map['dataElementSeparator'] as int,
      ),
      decimalPointIndicator: pulumi.Input.fromValue(
        map['decimalPointIndicator'] as String,
      ),
      messageAssociationAssignedCode: (() {
        final guardedValue = map['messageAssociationAssignedCode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      messageId: (() {
        final guardedValue = map['messageId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      messageRelease: (() {
        final guardedValue = map['messageRelease'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      messageVersion: (() {
        final guardedValue = map['messageVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      releaseIndicator: pulumi.Input.fromValue(map['releaseIndicator'] as int),
      repetitionSeparator: pulumi.Input.fromValue(
        map['repetitionSeparator'] as int,
      ),
      segmentTerminator: pulumi.Input.fromValue(
        map['segmentTerminator'] as int,
      ),
      segmentTerminatorSuffix: pulumi.Input.fromValue(
        map['segmentTerminatorSuffix'] as String,
      ),
      targetNamespace: (() {
        final guardedValue = map['targetNamespace'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
