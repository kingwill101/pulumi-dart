// ignore_for_file: unused_element, unnecessary_cast

import 'open_deployment_resource_reference.dart';

/// NetworkFunction with secrets.
class NetworkFunctionValueWithSecrets {
  /// Indicates if software updates are allowed during deployment.
  final bool? allowSoftwareUpdate;
  /// The secret type which indicates if secret or not.
  /// Expected value is 'Secret'.
  final String configurationType;
  /// The network function definition group name for the network function.
  final String? networkFunctionDefinitionGroupName;
  /// The location of the network function definition offering.
  final String? networkFunctionDefinitionOfferingLocation;
  /// The network function definition version for the network function.
  final String? networkFunctionDefinitionVersion;
  /// The network function definition version resource reference.
  final OpenDeploymentResourceReference? networkFunctionDefinitionVersionResourceReference;
  /// The nfviId for the network function.
  final String? nfviId;
  /// The nfvi type for the network function.
  final String? nfviType;
  /// The publisher name for the network function.
  final String? publisherName;
  /// The scope of the publisher.
  final String? publisherScope;
  /// The role configuration override values from the user.
  final List<String>? roleOverrideValues;
  /// The JSON-serialized secret deployment values from the user. This contains secrets like passwords,keys etc
  final String? secretDeploymentValues;

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
  NetworkFunctionValueWithSecrets({
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
      'networkFunctionDefinitionVersionResourceReference': ?networkFunctionDefinitionVersionResourceReference == null ? null : networkFunctionDefinitionVersionResourceReference!.toMap(),
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
      allowSoftwareUpdate: map['allowSoftwareUpdate'] == null ? null : map['allowSoftwareUpdate'] as bool,
      configurationType: map['configurationType'] as String,
      networkFunctionDefinitionGroupName: map['networkFunctionDefinitionGroupName'] == null ? null : map['networkFunctionDefinitionGroupName'] as String,
      networkFunctionDefinitionOfferingLocation: map['networkFunctionDefinitionOfferingLocation'] == null ? null : map['networkFunctionDefinitionOfferingLocation'] as String,
      networkFunctionDefinitionVersion: map['networkFunctionDefinitionVersion'] == null ? null : map['networkFunctionDefinitionVersion'] as String,
      networkFunctionDefinitionVersionResourceReference: map['networkFunctionDefinitionVersionResourceReference'] == null ? null : OpenDeploymentResourceReference.fromMap((map['networkFunctionDefinitionVersionResourceReference'] as Map).cast<String, dynamic>()),
      nfviId: map['nfviId'] == null ? null : map['nfviId'] as String,
      nfviType: map['nfviType'] == null ? null : map['nfviType'] as String,
      publisherName: map['publisherName'] == null ? null : map['publisherName'] as String,
      publisherScope: map['publisherScope'] == null ? null : map['publisherScope'] as String,
      roleOverrideValues: map['roleOverrideValues'] == null ? null : (map['roleOverrideValues'] as List).cast<String>(),
      secretDeploymentValues: map['secretDeploymentValues'] == null ? null : map['secretDeploymentValues'] as String,
    );
  }
}

