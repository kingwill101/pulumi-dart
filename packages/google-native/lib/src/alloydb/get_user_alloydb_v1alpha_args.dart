// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_alloydb_v1alpha_get_user_alloydb_v1alpha_args_doc}
/// Arguments for getUser.
/// {@endtemplate}
/// {@macro pulumi_alloydb_v1alpha_get_user_alloydb_v1alpha_args_doc}
class GetUserAlloydbV1alphaArgs {
  final pulumi.Input<String> clusterId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> userId;

  /// Creates a new [GetUserAlloydbV1alphaArgs].
  /// [clusterId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [userId] Required.
  GetUserAlloydbV1alphaArgs({
    required String clusterId,
    required String location,
    String? project,
    required String userId,
  })  : clusterId = pulumi.Input.asInput<String>(clusterId),
        location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project),
        userId = pulumi.Input.asInput<String>(userId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clusterId'] = clusterId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['userId'] = userId;
    return map;
  }

  factory GetUserAlloydbV1alphaArgs.fromMap(Map<String, dynamic> map) {
    return GetUserAlloydbV1alphaArgs(
      clusterId: map['clusterId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      userId: map['userId'] as String,
    );
  }
}
