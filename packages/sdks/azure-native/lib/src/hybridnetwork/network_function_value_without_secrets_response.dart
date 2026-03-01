// ignore_for_file: unused_element, unnecessary_cast

import 'open_deployment_resource_reference_response.dart';

/// NetworkFunction with no secrets.
class NetworkFunctionValueWithoutSecretsResponse {
  /// Indicates if software updates are allowed during deployment.
  final bool? allowSoftwareUpdate;
  /// The secret type which indicates if secret or not.
  /// Expected value is 'Open'.
  final String configurationType;
  /// The JSON-serialized deployment values from the user.
  final String? deploymentValues;
  /// The network function definition group name for the network function.
  final String? networkFunctionDefinitionGroupName;
  /// The location of the network function definition offering.
  final String? networkFunctionDefinitionOfferingLocation;
  /// The network function definition version for the network function.
  final String? networkFunctionDefinitionVersion;
  /// The network function definition version resource reference.
  final OpenDeploymentResourceReferenceResponse? networkFunctionDefinitionVersionResourceReference;
  /// The nfviId for the network function.
  final String? nfviId;
  /// The nfvi type for the network function.
  final String? nfviType;
  /// The provisioning state of the network function resource.
  final String provisioningState;
  /// The publisher name for the network function.
  final String? publisherName;
  /// The scope of the publisher.
  final String? publisherScope;
  /// The role configuration override values from the user.
  final List<String>? roleOverrideValues;

  /// Creates a new [NetworkFunctionValueWithoutSecretsResponse].
  /// [allowSoftwareUpdate] Indicates if software updates are allowed during deployment.
  /// [configurationType] The secret type which indicates if secret or not.
  /// [deploymentValues] The JSON-serialized deployment values from the user.
  /// [networkFunctionDefinitionGroupName] The network function definition group name for the network function.
  /// [networkFunctionDefinitionOfferingLocation] The location of the network function definition offering.
  /// [networkFunctionDefinitionVersion] The network function definition version for the network function.
  /// [networkFunctionDefinitionVersionResourceReference] The network function definition version resource reference.
  /// [nfviId] The nfviId for the network function.
  /// [nfviType] The nfvi type for the network function.
  /// [provisioningState] The provisioning state of the network function resource.
  /// [publisherName] The publisher name for the network function.
  /// [publisherScope] The scope of the publisher.
  /// [roleOverrideValues] The role configuration override values from the user.
  NetworkFunctionValueWithoutSecretsResponse({
    this.allowSoftwareUpdate,
    required this.configurationType,
    this.deploymentValues,
    this.networkFunctionDefinitionGroupName,
    this.networkFunctionDefinitionOfferingLocation,
    this.networkFunctionDefinitionVersion,
    this.networkFunctionDefinitionVersionResourceReference,
    this.nfviId,
    this.nfviType,
    required this.provisioningState,
    this.publisherName,
    this.publisherScope,
    this.roleOverrideValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowSoftwareUpdate': ?allowSoftwareUpdate,
      'configurationType': configurationType,
      'deploymentValues': ?deploymentValues,
      'networkFunctionDefinitionGroupName': ?networkFunctionDefinitionGroupName,
      'networkFunctionDefinitionOfferingLocation': ?networkFunctionDefinitionOfferingLocation,
      'networkFunctionDefinitionVersion': ?networkFunctionDefinitionVersion,
      'networkFunctionDefinitionVersionResourceReference': ?networkFunctionDefinitionVersionResourceReference == null ? null : networkFunctionDefinitionVersionResourceReference!.toMap(),
      'nfviId': ?nfviId,
      'nfviType': ?nfviType,
      'provisioningState': provisioningState,
      'publisherName': ?publisherName,
      'publisherScope': ?publisherScope,
      'roleOverrideValues': ?roleOverrideValues,
    };
  }

  factory NetworkFunctionValueWithoutSecretsResponse.fromMap(Map<String, dynamic> map) {
    return NetworkFunctionValueWithoutSecretsResponse(
      allowSoftwareUpdate: map['allowSoftwareUpdate'] == null ? null : map['allowSoftwareUpdate'] as bool,
      configurationType: map['configurationType'] as String,
      deploymentValues: map['deploymentValues'] == null ? null : map['deploymentValues'] as String,
      networkFunctionDefinitionGroupName: map['networkFunctionDefinitionGroupName'] == null ? null : map['networkFunctionDefinitionGroupName'] as String,
      networkFunctionDefinitionOfferingLocation: map['networkFunctionDefinitionOfferingLocation'] == null ? null : map['networkFunctionDefinitionOfferingLocation'] as String,
      networkFunctionDefinitionVersion: map['networkFunctionDefinitionVersion'] == null ? null : map['networkFunctionDefinitionVersion'] as String,
      networkFunctionDefinitionVersionResourceReference: map['networkFunctionDefinitionVersionResourceReference'] == null ? null : OpenDeploymentResourceReferenceResponse.fromMap((map['networkFunctionDefinitionVersionResourceReference'] as Map).cast<String, dynamic>()),
      nfviId: map['nfviId'] == null ? null : map['nfviId'] as String,
      nfviType: map['nfviType'] == null ? null : map['nfviType'] as String,
      provisioningState: map['provisioningState'] as String,
      publisherName: map['publisherName'] == null ? null : map['publisherName'] as String,
      publisherScope: map['publisherScope'] == null ? null : map['publisherScope'] as String,
      roleOverrideValues: map['roleOverrideValues'] == null ? null : (map['roleOverrideValues'] as List).cast<String>(),
    );
  }
}

