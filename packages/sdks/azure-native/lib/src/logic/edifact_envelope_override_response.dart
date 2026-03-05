// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Edifact envelope override settings.
class EdifactEnvelopeOverrideResponse {
  /// The application password.
  final pulumi.Input<String>? applicationPassword;
  /// The association assigned code.
  final pulumi.Input<String>? associationAssignedCode;
  /// The controlling agency code.
  final pulumi.Input<String>? controllingAgencyCode;
  /// The functional group id.
  final pulumi.Input<String>? functionalGroupId;
  /// The group header message release.
  final pulumi.Input<String>? groupHeaderMessageRelease;
  /// The group header message version.
  final pulumi.Input<String>? groupHeaderMessageVersion;
  /// The message association assigned code.
  final pulumi.Input<String>? messageAssociationAssignedCode;
  /// The message id on which this envelope settings has to be applied.
  final pulumi.Input<String>? messageId;
  /// The message release version on which this envelope settings has to be applied.
  final pulumi.Input<String>? messageRelease;
  /// The message version on which this envelope settings has to be applied.
  final pulumi.Input<String>? messageVersion;
  /// The receiver application id.
  final pulumi.Input<String>? receiverApplicationId;
  /// The receiver application qualifier.
  final pulumi.Input<String>? receiverApplicationQualifier;
  /// The sender application id.
  final pulumi.Input<String>? senderApplicationId;
  /// The sender application qualifier.
  final pulumi.Input<String>? senderApplicationQualifier;
  /// The target namespace on which this envelope settings has to be applied.
  final pulumi.Input<String>? targetNamespace;

  /// Creates a new [EdifactEnvelopeOverrideResponse].
  /// [applicationPassword] The application password.
  /// [associationAssignedCode] The association assigned code.
  /// [controllingAgencyCode] The controlling agency code.
  /// [functionalGroupId] The functional group id.
  /// [groupHeaderMessageRelease] The group header message release.
  /// [groupHeaderMessageVersion] The group header message version.
  /// [messageAssociationAssignedCode] The message association assigned code.
  /// [messageId] The message id on which this envelope settings has to be applied.
  /// [messageRelease] The message release version on which this envelope settings has to be applied.
  /// [messageVersion] The message version on which this envelope settings has to be applied.
  /// [receiverApplicationId] The receiver application id.
  /// [receiverApplicationQualifier] The receiver application qualifier.
  /// [senderApplicationId] The sender application id.
  /// [senderApplicationQualifier] The sender application qualifier.
  /// [targetNamespace] The target namespace on which this envelope settings has to be applied.
  EdifactEnvelopeOverrideResponse({
    this.applicationPassword,
    this.associationAssignedCode,
    this.controllingAgencyCode,
    this.functionalGroupId,
    this.groupHeaderMessageRelease,
    this.groupHeaderMessageVersion,
    this.messageAssociationAssignedCode,
    this.messageId,
    this.messageRelease,
    this.messageVersion,
    this.receiverApplicationId,
    this.receiverApplicationQualifier,
    this.senderApplicationId,
    this.senderApplicationQualifier,
    this.targetNamespace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationPassword': ?applicationPassword,
      'associationAssignedCode': ?associationAssignedCode,
      'controllingAgencyCode': ?controllingAgencyCode,
      'functionalGroupId': ?functionalGroupId,
      'groupHeaderMessageRelease': ?groupHeaderMessageRelease,
      'groupHeaderMessageVersion': ?groupHeaderMessageVersion,
      'messageAssociationAssignedCode': ?messageAssociationAssignedCode,
      'messageId': ?messageId,
      'messageRelease': ?messageRelease,
      'messageVersion': ?messageVersion,
      'receiverApplicationId': ?receiverApplicationId,
      'receiverApplicationQualifier': ?receiverApplicationQualifier,
      'senderApplicationId': ?senderApplicationId,
      'senderApplicationQualifier': ?senderApplicationQualifier,
      'targetNamespace': ?targetNamespace,
    };
  }

  factory EdifactEnvelopeOverrideResponse.fromMap(Map<String, dynamic> map) {
    return EdifactEnvelopeOverrideResponse(
      applicationPassword: (() { final guardedValue = map['applicationPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      associationAssignedCode: (() { final guardedValue = map['associationAssignedCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      controllingAgencyCode: (() { final guardedValue = map['controllingAgencyCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      functionalGroupId: (() { final guardedValue = map['functionalGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      groupHeaderMessageRelease: (() { final guardedValue = map['groupHeaderMessageRelease']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      groupHeaderMessageVersion: (() { final guardedValue = map['groupHeaderMessageVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      messageAssociationAssignedCode: (() { final guardedValue = map['messageAssociationAssignedCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      messageId: (() { final guardedValue = map['messageId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      messageRelease: (() { final guardedValue = map['messageRelease']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      messageVersion: (() { final guardedValue = map['messageVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      receiverApplicationId: (() { final guardedValue = map['receiverApplicationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      receiverApplicationQualifier: (() { final guardedValue = map['receiverApplicationQualifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      senderApplicationId: (() { final guardedValue = map['senderApplicationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      senderApplicationQualifier: (() { final guardedValue = map['senderApplicationQualifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetNamespace: (() { final guardedValue = map['targetNamespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

