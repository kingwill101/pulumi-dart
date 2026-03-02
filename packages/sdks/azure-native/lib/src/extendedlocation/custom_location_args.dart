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
      'authentication': ?pulumi.Input.mapOptionalInputValue<CustomLocationPropertiesAuthentication, Map<String, dynamic>>(authentication, (value) => value.toMap()),
      'clusterExtensionIds': ?clusterExtensionIds,
      'displayName': ?displayName,
      'hostResourceId': ?hostResourceId,
      'hostType': ?hostType,
      'identity': ?pulumi.Input.mapOptionalInputValue<Identity, Map<String, dynamic>>(identity, (value) => value.toMap()),
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
      authentication: map['authentication'] == null ? null : (CustomLocationPropertiesAuthentication.fromMap((map['authentication']! as Map).cast<String, dynamic>())).input(),
      clusterExtensionIds: map['clusterExtensionIds'] == null ? null : ((map['clusterExtensionIds']! as List).cast<String>()).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      hostResourceId: map['hostResourceId'] == null ? null : (map['hostResourceId']! as String).input(),
      hostType: map['hostType'] == null ? null : (map['hostType']! as String).input(),
      identity: map['identity'] == null ? null : (Identity.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      namespace: map['namespace'] == null ? null : (map['namespace']! as String).input(),
      provisioningState: map['provisioningState'] == null ? null : (map['provisioningState']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      resourceName: map['resourceName'] == null ? null : (map['resourceName']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

