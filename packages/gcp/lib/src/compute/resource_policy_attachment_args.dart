// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_resource_policy_attachment_resource_policy_attachment_args_doc}
/// The set of arguments for ResourcePolicyAttachment.
/// {@endtemplate}
/// {@macro pulumi_compute_resource_policy_attachment_resource_policy_attachment_args_doc}
class ResourcePolicyAttachmentArgs {
  /// The name of the instance in which the resource policies are attached to.
  final pulumi.Input<String> instance;

  /// The resource policy to be attached to the instance for scheduling start/stop
  /// operations. Do not specify the self link.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// A reference to the zone where the instance resides.
  final pulumi.Input<String>? zone;

  /// Creates a new [ResourcePolicyAttachmentArgs].
  /// [instance] The name of the instance in which the resource policies are attached to.
  /// [name] The resource policy to be attached to the instance for scheduling start/stop
  /// [project] The ID of the project in which the resource belongs.
  /// [zone] A reference to the zone where the instance resides.
  ResourcePolicyAttachmentArgs({
    required String instance,
    String? name,
    String? project,
    String? zone,
  })  : instance = pulumi.Input.asInput<String>(instance),
        name = pulumi.Input.asOptionalInput<String>(name),
        project = pulumi.Input.asOptionalInput<String>(project),
        zone = pulumi.Input.asOptionalInput<String>(zone);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instance'] = instance;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final zoneValue = zone;
    if (zoneValue != null) {
      map['zone'] = zoneValue;
    }
    return map;
  }

  factory ResourcePolicyAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return ResourcePolicyAttachmentArgs(
      instance: map['instance'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      zone: map['zone'] == null ? null : map['zone'] as String,
    );
  }
}
