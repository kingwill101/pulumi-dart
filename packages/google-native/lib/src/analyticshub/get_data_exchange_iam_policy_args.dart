// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_analyticshub_v1_get_data_exchange_iam_policy_args_doc}
/// Arguments for getDataExchangeIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_analyticshub_v1_get_data_exchange_iam_policy_args_doc}
class GetDataExchangeIamPolicyArgs {
  final pulumi.Input<String> dataExchangeId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetDataExchangeIamPolicyArgs].
  /// [dataExchangeId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetDataExchangeIamPolicyArgs({
    required String dataExchangeId,
    required String location,
    String? project,
  }) :
      dataExchangeId = pulumi.Input.asInput<String>(dataExchangeId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataExchangeId': dataExchangeId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetDataExchangeIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetDataExchangeIamPolicyArgs(
      dataExchangeId: map['dataExchangeId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

