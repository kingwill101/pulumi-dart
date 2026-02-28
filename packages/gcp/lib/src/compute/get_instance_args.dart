// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_instance_get_instance_args_doc}
/// Arguments for getInstance.
/// {@endtemplate}
/// {@macro pulumi_compute_get_instance_get_instance_args_doc}
class GetInstanceArgs {
  /// The name of the instance. One of `name` or `self_link` must be provided.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If `self_link` is provided, this value is ignored.  If neither `self_link`
  /// nor `project` are provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The self link of the instance. One of `name` or `self_link` must be provided.
  final pulumi.Input<String>? selfLink;

  /// The zone of the instance. If `self_link` is provided, this
  /// value is ignored.  If neither `self_link` nor `zone` are provided, the
  /// provider zone is used.
  final pulumi.Input<String>? zone;

  /// Creates a new [GetInstanceArgs].
  /// [name] The name of the instance. One of `name` or `self_link` must be provided.
  /// [project] The ID of the project in which the resource belongs.
  /// [selfLink] The self link of the instance. One of `name` or `self_link` must be provided.
  /// [zone] The zone of the instance. If `self_link` is provided, this
  GetInstanceArgs({
    String? name,
    String? project,
    String? selfLink,
    String? zone,
  })  : name = pulumi.Input.asOptionalInput<String>(name),
        project = pulumi.Input.asOptionalInput<String>(project),
        selfLink = pulumi.Input.asOptionalInput<String>(selfLink),
        zone = pulumi.Input.asOptionalInput<String>(zone);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final selfLinkValue = selfLink;
    if (selfLinkValue != null) {
      map['selfLink'] = selfLinkValue;
    }
    final zoneValue = zone;
    if (zoneValue != null) {
      map['zone'] = zoneValue;
    }
    return map;
  }

  factory GetInstanceArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceArgs(
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      selfLink: map['selfLink'] == null ? null : map['selfLink'] as String,
      zone: map['zone'] == null ? null : map['zone'] as String,
    );
  }
}
