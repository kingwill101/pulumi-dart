// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_bigquerydatapolicy_v1_get_data_policy_args_doc}
/// Arguments for getDataPolicy.
/// {@endtemplate}
/// {@macro pulumi_bigquerydatapolicy_v1_get_data_policy_args_doc}
class GetDataPolicyArgs {
  final pulumi.Input<String> dataPolicyId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetDataPolicyArgs].
  /// [dataPolicyId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetDataPolicyArgs({
    required String dataPolicyId,
    required String location,
    String? project,
  }) :
      dataPolicyId = pulumi.Input.asInput<String>(dataPolicyId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataPolicyId': dataPolicyId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetDataPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetDataPolicyArgs(
      dataPolicyId: map['dataPolicyId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

