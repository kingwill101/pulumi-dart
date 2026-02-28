// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_get_instance_group_manager_resize_request_args_doc}
/// Arguments for getInstanceGroupManagerResizeRequest.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_get_instance_group_manager_resize_request_args_doc}
class GetInstanceGroupManagerResizeRequestArgs {
  final pulumi.Input<String> instanceGroupManager;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> resizeRequest;
  final pulumi.Input<String> zone;

  /// Creates a new [GetInstanceGroupManagerResizeRequestArgs].
  /// [instanceGroupManager] Required.
  /// [project] Optional.
  /// [resizeRequest] Required.
  /// [zone] Required.
  GetInstanceGroupManagerResizeRequestArgs({
    required String instanceGroupManager,
    String? project,
    required String resizeRequest,
    required String zone,
  }) :
      instanceGroupManager = pulumi.Input.asInput<String>(instanceGroupManager),
      project = pulumi.Input.asOptionalInput<String>(project),
      resizeRequest = pulumi.Input.asInput<String>(resizeRequest),
      zone = pulumi.Input.asInput<String>(zone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceGroupManager': instanceGroupManager,
      'project': ?project,
      'resizeRequest': resizeRequest,
      'zone': zone,
    };
  }

  factory GetInstanceGroupManagerResizeRequestArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceGroupManagerResizeRequestArgs(
      instanceGroupManager: map['instanceGroupManager'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      resizeRequest: map['resizeRequest'] as String,
      zone: map['zone'] as String,
    );
  }
}

