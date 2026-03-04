// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'open_deployment_resource_reference_response.dart';

/// NetworkFunction with secrets.
class NetworkFunctionValueWithSecretsResponse {
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
  final pulumi.Input<OpenDeploymentResourceReferenceResponse>?
  networkFunctionDefinitionVersionResourceReference;

  /// The nfviId for the network function.
  final pulumi.Input<String>? nfviId;

  /// The nfvi type for the network function.
  final pulumi.Input<String>? nfviType;

  /// The provisioning state of the network function resource.
  final pulumi.Input<String> provisioningState;

  /// The publisher name for the network function.
  final pulumi.Input<String>? publisherName;

  /// The scope of the publisher.
  final pulumi.Input<String>? publisherScope;

  /// The role configuration override values from the user.
  final pulumi.Input<List<String>>? roleOverrideValues;

  /// Creates a new [NetworkFunctionValueWithSecretsResponse].
  /// [allowSoftwareUpdate] Indicates if software updates are allowed during deployment.
  /// [configurationType] The secret type which indicates if secret or not.
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
  NetworkFunctionValueWithSecretsResponse({
    this.allowSoftwareUpdate,
    required this.configurationType,
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
      'networkFunctionDefinitionGroupName': ?networkFunctionDefinitionGroupName,
      'networkFunctionDefinitionOfferingLocation':
          ?networkFunctionDefinitionOfferingLocation,
      'networkFunctionDefinitionVersion': ?networkFunctionDefinitionVersion,
      'networkFunctionDefinitionVersionResourceReference':
          ?pulumi.Input.mapOptionalInputValue<
            OpenDeploymentResourceReferenceResponse,
            Map<String, dynamic>
          >(
            networkFunctionDefinitionVersionResourceReference,
            (value) => value.toMap(),
          ),
      'nfviId': ?nfviId,
      'nfviType': ?nfviType,
      'provisioningState': provisioningState,
      'publisherName': ?publisherName,
      'publisherScope': ?publisherScope,
      'roleOverrideValues': ?roleOverrideValues,
    };
  }

  factory NetworkFunctionValueWithSecretsResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return NetworkFunctionValueWithSecretsResponse(
      allowSoftwareUpdate: (() {
        final guardedValue = map['allowSoftwareUpdate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      configurationType: pulumi.Input.fromValue(
        map['configurationType'] as String,
      ),
      networkFunctionDefinitionGroupName: (() {
        final guardedValue = map['networkFunctionDefinitionGroupName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      networkFunctionDefinitionOfferingLocation: (() {
        final guardedValue = map['networkFunctionDefinitionOfferingLocation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      networkFunctionDefinitionVersion: (() {
        final guardedValue = map['networkFunctionDefinitionVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      networkFunctionDefinitionVersionResourceReference: (() {
        final guardedValue =
            map['networkFunctionDefinitionVersionResourceReference'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          OpenDeploymentResourceReferenceResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      nfviId: (() {
        final guardedValue = map['nfviId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      nfviType: (() {
        final guardedValue = map['nfviType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      provisioningState: pulumi.Input.fromValue(
        map['provisioningState'] as String,
      ),
      publisherName: (() {
        final guardedValue = map['publisherName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      publisherScope: (() {
        final guardedValue = map['publisherScope'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      roleOverrideValues: (() {
        final guardedValue = map['roleOverrideValues'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
