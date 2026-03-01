// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_group_properties.dart';
import 'standby_container_group_pool_elasticity_profile.dart';

/// {@template pulumi_standbypool_standby_container_group_pool_args_doc}
/// The set of arguments for StandbyContainerGroupPool.
/// {@endtemplate}
/// {@macro pulumi_standbypool_standby_container_group_pool_args_doc}
class StandbyContainerGroupPoolArgs {
  /// Specifies container group properties of standby container group pools.
  final pulumi.Input<ContainerGroupProperties> containerGroupProperties;
  /// Specifies elasticity profile of standby container group pools.
  final pulumi.Input<StandbyContainerGroupPoolElasticityProfile> elasticityProfile;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the standby container group pool
  final pulumi.Input<String>? standbyContainerGroupPoolName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [StandbyContainerGroupPoolArgs].
  /// [containerGroupProperties] Specifies container group properties of standby container group pools.
  /// [elasticityProfile] Specifies elasticity profile of standby container group pools.
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [standbyContainerGroupPoolName] Name of the standby container group pool
  /// [tags] Resource tags.
  StandbyContainerGroupPoolArgs({
    required ContainerGroupProperties containerGroupProperties,
    required StandbyContainerGroupPoolElasticityProfile elasticityProfile,
    String? location,
    required String resourceGroupName,
    String? standbyContainerGroupPoolName,
    Map<String, String>? tags,
  }) :
      containerGroupProperties = pulumi.Input.asInput<ContainerGroupProperties>(containerGroupProperties),
      elasticityProfile = pulumi.Input.asInput<StandbyContainerGroupPoolElasticityProfile>(elasticityProfile),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      standbyContainerGroupPoolName = pulumi.Input.asOptionalInput<String>(standbyContainerGroupPoolName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerGroupProperties': pulumi.Input.mapInputValue<ContainerGroupProperties, Map<String, dynamic>>(containerGroupProperties, (value) => value.toMap()),
      'elasticityProfile': pulumi.Input.mapInputValue<StandbyContainerGroupPoolElasticityProfile, Map<String, dynamic>>(elasticityProfile, (value) => value.toMap()),
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'standbyContainerGroupPoolName': ?standbyContainerGroupPoolName,
      'tags': ?tags,
    };
  }

  factory StandbyContainerGroupPoolArgs.fromMap(Map<String, dynamic> map) {
    return StandbyContainerGroupPoolArgs(
      containerGroupProperties: ContainerGroupProperties.fromMap((map['containerGroupProperties'] as Map).cast<String, dynamic>()),
      elasticityProfile: StandbyContainerGroupPoolElasticityProfile.fromMap((map['elasticityProfile'] as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      standbyContainerGroupPoolName: map['standbyContainerGroupPoolName'] == null ? null : map['standbyContainerGroupPoolName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

