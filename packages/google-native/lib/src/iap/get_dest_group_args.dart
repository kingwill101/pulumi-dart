// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iap_v1_get_dest_group_args_doc}
/// Arguments for getDestGroup.
/// {@endtemplate}
/// {@macro pulumi_iap_v1_get_dest_group_args_doc}
class GetDestGroupArgs {
  final pulumi.Input<String> destGroupId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetDestGroupArgs].
  /// [destGroupId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetDestGroupArgs({
    required String destGroupId,
    required String location,
    String? project,
  })  : destGroupId = pulumi.Input.asInput<String>(destGroupId),
        location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['destGroupId'] = destGroupId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetDestGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetDestGroupArgs(
      destGroupId: map['destGroupId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
