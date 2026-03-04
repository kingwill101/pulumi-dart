// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_location_properties_authentication.dart';
import 'identity.dart';

/// {@template pulumi_extendedlocation_custom_location_args_doc}
/// The set of arguments for CustomLocation.
/// {@endtemplate}
/// {@macro pulumi_extendedlocation_custom_location_args_doc}
class CustomLocationArgs {
  /// This is optional input that contains the authentication that should be used to generate the namespace.
  final pulumi.Input<CustomLocationPropertiesAuthentication>? authentication;

  /// Contains the reference to the add-on that contains charts to deploy CRDs and operators.
  final pulumi.Input<List<String>>? clusterExtensionIds;

  /// Display name for the Custom Locations location.
  final pulumi.Input<String>? displayName;

  /// Connected Cluster or AKS Cluster. The Custom Locations RP will perform a checkAccess API for listAdminCredentials permissions.
  final pulumi.Input<String>? hostResourceId;

  /// Type of host the Custom Locations is referencing (Kubernetes, etc...).
  final pulumi.Input<String>? hostType;

  /// Identity for the resource.
  final pulumi.Input<Identity>? identity;

  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;

  /// Kubernetes namespace that will be created on the specified cluster.
  final pulumi.Input<String>? namespace;

  /// Provisioning State for the Custom Location.
  final pulumi.Input<String>? provisioningState;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Custom Locations name.
  final pulumi.Input<String>? resourceName;

  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [CustomLocationArgs].
  /// [authentication] This is optional input that contains the authentication that should be used to generate the namespace.
  /// [clusterExtensionIds] Contains the reference to the add-on that contains charts to deploy CRDs and operators.
  /// [displayName] Display name for the Custom Locations location.
  /// [hostResourceId] Connected Cluster or AKS Cluster. The Custom Locations RP will perform a checkAccess API for listAdminCredentials permissions.
  /// [hostType] Type of host the Custom Locations is referencing (Kubernetes, etc...).
  /// [identity] Identity for the resource.
  /// [location] The geo-location where the resource lives
  /// [namespace] Kubernetes namespace that will be created on the specified cluster.
  /// [provisioningState] Provisioning State for the Custom Location.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] Custom Locations name.
  /// [tags] Resource tags.
  CustomLocationArgs({
    this.authentication,
    this.clusterExtensionIds,
    this.displayName,
    this.hostResourceId,
    this.hostType,
    this.identity,
    this.location,
    this.namespace,
    this.provisioningState,
    required this.resourceGroupName,
    this.resourceName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication':
          ?pulumi.Input.mapOptionalInputValue<
            CustomLocationPropertiesAuthentication,
            Map<String, dynamic>
          >(authentication, (value) => value.toMap()),
      'clusterExtensionIds': ?clusterExtensionIds,
      'displayName': ?displayName,
      'hostResourceId': ?hostResourceId,
      'hostType': ?hostType,
      'identity':
          ?pulumi.Input.mapOptionalInputValue<Identity, Map<String, dynamic>>(
            identity,
            (value) => value.toMap(),
          ),
      'location': ?location,
      'namespace': ?namespace,
      'provisioningState': ?provisioningState,
      'resourceGroupName': resourceGroupName,
      'resourceName': ?resourceName,
      'tags': ?tags,
    };
  }

  factory CustomLocationArgs.fromMap(Map<String, dynamic> map) {
    return CustomLocationArgs(
      authentication: (() {
        final guardedValue = map['authentication'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CustomLocationPropertiesAuthentication.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      clusterExtensionIds: (() {
        final guardedValue = map['clusterExtensionIds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      hostResourceId: (() {
        final guardedValue = map['hostResourceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      hostType: (() {
        final guardedValue = map['hostType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      identity: (() {
        final guardedValue = map['identity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          Identity.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      namespace: (() {
        final guardedValue = map['namespace'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      provisioningState: (() {
        final guardedValue = map['provisioningState'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      resourceName: (() {
        final guardedValue = map['resourceName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
