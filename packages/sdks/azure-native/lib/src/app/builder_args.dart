// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_registry.dart';
import 'managed_service_identity.dart';

/// {@template pulumi_app_builder_args_doc}
/// The set of arguments for Builder.
/// {@endtemplate}
/// {@macro pulumi_app_builder_args_doc}
class BuilderArgs {
  /// The name of the builder.
  final pulumi.Input<String>? builderName;
  /// List of mappings of container registries and the managed identity used to connect to it.
  final pulumi.Input<List<ContainerRegistry>>? containerRegistries;
  /// Resource ID of the container apps environment that the builder is associated with.
  final pulumi.Input<String> environmentId;
  /// The managed service identities assigned to this resource.
  final pulumi.Input<ManagedServiceIdentity>? identity;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [BuilderArgs].
  /// [builderName] The name of the builder.
  /// [containerRegistries] List of mappings of container registries and the managed identity used to connect to it.
  /// [environmentId] Resource ID of the container apps environment that the builder is associated with.
  /// [identity] The managed service identities assigned to this resource.
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  BuilderArgs({
    pulumi.Output<String>? builderName,
    pulumi.Output<List<ContainerRegistry>>? containerRegistries,
    required pulumi.Output<String> environmentId,
    pulumi.Output<ManagedServiceIdentity>? identity,
    pulumi.Output<String>? location,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      builderName = pulumi.Input.asOptionalInput<String>(builderName),
      containerRegistries = pulumi.Input.asOptionalInput<List<ContainerRegistry>>(containerRegistries),
      environmentId = pulumi.Input.asInput<String>(environmentId),
      identity = pulumi.Input.asOptionalInput<ManagedServiceIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'builderName': ?builderName,
      'containerRegistries': ?pulumi.Input.mapOptionalInputValue<List<ContainerRegistry>, List<Map<String, dynamic>>>(containerRegistries, (value) => pulumi.Input.encodeList<ContainerRegistry, Map<String, dynamic>>(value, (value) => value.toMap())),
      'environmentId': environmentId,
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory BuilderArgs.fromMap(Map<String, dynamic> map) {
    return BuilderArgs(
      builderName: map['builderName'] == null ? null : pulumi.Output.create<String>(map['builderName'] as String),
      containerRegistries: map['containerRegistries'] == null ? null : pulumi.Output.create<List<ContainerRegistry>>(pulumi.Input.decodeList<ContainerRegistry>(map['containerRegistries'], (value) => ContainerRegistry.fromMap((value as Map).cast<String, dynamic>()))),
      environmentId: pulumi.Output.create<String>(map['environmentId'] as String),
      identity: map['identity'] == null ? null : pulumi.Output.create<ManagedServiceIdentity>(ManagedServiceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

