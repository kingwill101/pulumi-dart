// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_v1_get_instance_compute_v1_args_doc}
/// Arguments for getInstance.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_get_instance_compute_v1_args_doc}
class GetInstanceComputeV1Args {
  final pulumi.Input<String> instance;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> zone;

  /// Creates a new [GetInstanceComputeV1Args].
  /// [instance] Required.
  /// [project] Optional.
  /// [zone] Required.
  GetInstanceComputeV1Args({
    required String instance,
    String? project,
    required String zone,
  }) : instance = pulumi.Input.asInput<String>(instance),
       project = pulumi.Input.asOptionalInput<String>(project),
       zone = pulumi.Input.asInput<String>(zone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instance': instance,
      'project': ?project,
      'zone': zone,
    };
  }

  factory GetInstanceComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetInstanceComputeV1Args(
      instance: map['instance'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      zone: map['zone'] as String,
    );
  }
}
