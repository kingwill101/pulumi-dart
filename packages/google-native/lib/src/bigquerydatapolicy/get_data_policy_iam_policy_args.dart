// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_bigquerydatapolicy_v1_get_data_policy_iam_policy_args_doc}
/// Arguments for getDataPolicyIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_bigquerydatapolicy_v1_get_data_policy_iam_policy_args_doc}
class GetDataPolicyIamPolicyArgs {
  final pulumi.Input<String> dataPolicyId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetDataPolicyIamPolicyArgs].
  /// [dataPolicyId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetDataPolicyIamPolicyArgs({
    required String dataPolicyId,
    required String location,
    String? project,
  })  : dataPolicyId = pulumi.Input.asInput<String>(dataPolicyId),
        location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dataPolicyId'] = dataPolicyId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetDataPolicyIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetDataPolicyIamPolicyArgs(
      dataPolicyId: map['dataPolicyId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
