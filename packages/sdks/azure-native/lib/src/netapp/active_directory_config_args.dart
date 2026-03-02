// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'active_directory_config_properties.dart';
import 'managed_service_identity.dart';

/// {@template pulumi_netapp_active_directory_config_args_doc}
/// The set of arguments for ActiveDirectoryConfig.
/// {@endtemplate}
/// {@macro pulumi_netapp_active_directory_config_args_doc}
class ActiveDirectoryConfigArgs {
  /// The name of the ActiveDirectoryConfig
  final pulumi.Input<String>? activeDirectoryConfigName;
  /// The managed service identities assigned to this resource.
  final pulumi.Input<ManagedServiceIdentity>? identity;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The resource-specific properties for this resource.
  final pulumi.Input<ActiveDirectoryConfigProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ActiveDirectoryConfigArgs].
  /// [activeDirectoryConfigName] The name of the ActiveDirectoryConfig
  /// [identity] The managed service identities assigned to this resource.
  /// [location] The geo-location where the resource lives
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  ActiveDirectoryConfigArgs({
    this.activeDirectoryConfigName,
    this.identity,
    this.location,
    this.properties,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeDirectoryConfigName': ?activeDirectoryConfigName,
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'properties': ?pulumi.Input.mapOptionalInputValue<ActiveDirectoryConfigProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory ActiveDirectoryConfigArgs.fromMap(Map<String, dynamic> map) {
    return ActiveDirectoryConfigArgs(
      activeDirectoryConfigName: map['activeDirectoryConfigName'] == null ? null : (map['activeDirectoryConfigName'] as String).input(),
      identity: map['identity'] == null ? null : (ManagedServiceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      properties: map['properties'] == null ? null : (ActiveDirectoryConfigProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

