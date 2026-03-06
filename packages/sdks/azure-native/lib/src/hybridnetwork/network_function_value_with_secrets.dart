// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'open_deployment_resource_reference.dart';

/// NetworkFunction with secrets.
class NetworkFunctionValueWithSecrets {
  /// Indicates if software updates are allowed during deployment.
  final pulumi.Input<bool>? allowSoftwareUpdate;
  /// The secret type which indicates if secret or not.
  /// Expected value is 'Secret'.
  final pulumi.Input<String> configurationType;
  /// The network function definition group name for the network function.
  final pulumi.Input<String>? networkFunctionDefinitionGroupName;
  /// The location of the network function definition offering.
  final pulumi.Input<String>? networkFunctionDefinitionOfferingLocation;
  /// The network function definition version for the network function.
  final pulumi.Input<String>? networkFunctionDefinitionVersion;
  /// The network function definition version resource reference.
  final pulumi.Input<OpenDeploymentResourceReference>? networkFunctionDefinitionVersionResourceReference;
  /// The nfviId for the network function.
  final pulumi.Input<String>? nfviId;
  /// The nfvi type for the network function.
  final pulumi.Input<String>? nfviType;
  /// The publisher name for the network function.
  final pulumi.Input<String>? publisherName;
  /// The scope of the publisher.
  final pulumi.Input<String>? publisherScope;
  /// The role configuration override values from the user.
  final pulumi.Input<List<String>>? roleOverrideValues;
  /// The JSON-serialized secret deployment values from the user. This contains secrets like passwords,keys etc
  final pulumi.Input<String>? secretDeploymentValues;

  /// Creates a new [NetworkFunctionValueWithSecrets].
  /// [allowSoftwareUpdate] Indicates if software updates are allowed during deployment.
  /// [configurationType] The secret type which indicates if secret or not.
  /// [networkFunctionDefinitionGroupName] The network function definition group name for the network function.
  /// [networkFunctionDefinitionOfferingLocation] The location of the network function definition offering.
  /// [networkFunctionDefinitionVersion] The network function definition version for the network function.
  /// [networkFunctionDefinitionVersionResourceReference] The network function definition version resource reference.
  /// [nfviId] The nfviId for the network function.
  /// [nfviType] The nfvi type for the network function.
  /// [publisherName] The publisher name for the network function.
  /// [publisherScope] The scope of the publisher.
  /// [roleOverrideValues] The role configuration override values from the user.
  /// [secretDeploymentValues] The JSON-serialized secret deployment values from the user. This contains secrets like passwords,keys etc
  const NetworkFunctionValueWithSecrets({
    this.allowSoftwareUpdate,
    required this.configurationType,
    this.networkFunctionDefinitionGroupName,
    this.networkFunctionDefinitionOfferingLocation,
    this.networkFunctionDefinitionVersion,
    this.networkFunctionDefinitionVersionResourceReference,
    this.nfviId,
    this.nfviType,
    this.publisherName,
    this.publisherScope,
    this.roleOverrideValues,
    this.secretDeploymentValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowSoftwareUpdate': ?allowSoftwareUpdate,
      'configurationType': configurationType,
      'networkFunctionDefinitionGroupName': ?networkFunctionDefinitionGroupName,
      'networkFunctionDefinitionOfferingLocation': ?networkFunctionDefinitionOfferingLocation,
      'networkFunctionDefinitionVersion': ?networkFunctionDefinitionVersion,
      'networkFunctionDefinitionVersionResourceReference': ?pulumi.Input.mapOptionalInputValue<OpenDeploymentResourceReference, Map<String, dynamic>>(networkFunctionDefinitionVersionResourceReference, (value) => value.toMap()),
      'nfviId': ?nfviId,
      'nfviType': ?nfviType,
      'publisherName': ?publisherName,
      'publisherScope': ?publisherScope,
      'roleOverrideValues': ?roleOverrideValues,
      'secretDeploymentValues': ?secretDeploymentValues,
    };
  }

  factory NetworkFunctionValueWithSecrets.fromMap(Map<String, dynamic> map) {
    return NetworkFunctionValueWithSecrets(
      allowSoftwareUpdate: (() { final guardedValue = map['allowSoftwareUpdate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      configurationType: pulumi.Input.fromValue(map['configurationType'] as String),
      networkFunctionDefinitionGroupName: (() { final guardedValue = map['networkFunctionDefinitionGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkFunctionDefinitionOfferingLocation: (() { final guardedValue = map['networkFunctionDefinitionOfferingLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkFunctionDefinitionVersion: (() { final guardedValue = map['networkFunctionDefinitionVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkFunctionDefinitionVersionResourceReference: (() { final guardedValue = map['networkFunctionDefinitionVersionResourceReference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OpenDeploymentResourceReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      nfviId: (() { final guardedValue = map['nfviId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nfviType: (() { final guardedValue = map['nfviType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publisherName: (() { final guardedValue = map['publisherName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publisherScope: (() { final guardedValue = map['publisherScope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleOverrideValues: (() { final guardedValue = map['roleOverrideValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      secretDeploymentValues: (() { final guardedValue = map['secretDeploymentValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

