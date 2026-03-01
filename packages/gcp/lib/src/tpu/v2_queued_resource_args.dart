// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2_queued_resource_tpu.dart';

/// {@template pulumi_tpu_v2_queued_resource_v2_queued_resource_args_doc}
/// The set of arguments for V2QueuedResource.
/// {@endtemplate}
/// {@macro pulumi_tpu_v2_queued_resource_v2_queued_resource_args_doc}
class V2QueuedResourceArgs {
  /// The immutable name of the Queued Resource.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Defines a TPU resource.
  /// Structure is documented below.
  final pulumi.Input<V2QueuedResourceTpu>? tpu;

  /// The GCP location for the Queued Resource. If it is not provided, the provider zone is used.
  final pulumi.Input<String>? zone;

  /// Creates a new [V2QueuedResourceArgs].
  /// [name] The immutable name of the Queued Resource.
  /// [project] The ID of the project in which the resource belongs.
  /// [tpu] Defines a TPU resource.
  /// [zone] The GCP location for the Queued Resource. If it is not provided, the provider zone is used.
  V2QueuedResourceArgs({
    String? name,
    String? project,
    V2QueuedResourceTpu? tpu,
    String? zone,
  }) : name = pulumi.Input.asOptionalInput<String>(name),
       project = pulumi.Input.asOptionalInput<String>(project),
       tpu = pulumi.Input.asOptionalInput<V2QueuedResourceTpu>(tpu),
       zone = pulumi.Input.asOptionalInput<String>(zone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'project': ?project,
      'tpu':
          ?pulumi.Input.mapOptionalInputValue<
            V2QueuedResourceTpu,
            Map<String, dynamic>
          >(tpu, (value) => value.toMap()),
      'zone': ?zone,
    };
  }

  factory V2QueuedResourceArgs.fromMap(Map<String, dynamic> map) {
    return V2QueuedResourceArgs(
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      tpu: map['tpu'] == null
          ? null
          : V2QueuedResourceTpu.fromMap(
              (map['tpu'] as Map).cast<String, dynamic>(),
            ),
      zone: map['zone'] == null ? null : map['zone'] as String,
    );
  }
}
