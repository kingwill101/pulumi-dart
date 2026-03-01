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
    pulumi.Output<String>? activeDirectoryConfigName,
    pulumi.Output<ManagedServiceIdentity>? identity,
    pulumi.Output<String>? location,
    pulumi.Output<ActiveDirectoryConfigProperties>? properties,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      activeDirectoryConfigName = pulumi.Input.asOptionalInput<String>(activeDirectoryConfigName),
      identity = pulumi.Input.asOptionalInput<ManagedServiceIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      properties = pulumi.Input.asOptionalInput<ActiveDirectoryConfigProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      activeDirectoryConfigName: map['activeDirectoryConfigName'] == null ? null : pulumi.Output.create<String>(map['activeDirectoryConfigName'] as String),
      identity: map['identity'] == null ? null : pulumi.Output.create<ManagedServiceIdentity>(ManagedServiceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<ActiveDirectoryConfigProperties>(ActiveDirectoryConfigProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

