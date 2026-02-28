// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_analyticshub_v1beta1_get_data_exchange_iam_policy_analyticshub_v1beta1_args_doc}
/// Arguments for getDataExchangeIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_analyticshub_v1beta1_get_data_exchange_iam_policy_analyticshub_v1beta1_args_doc}
class GetDataExchangeIamPolicyAnalyticshubV1beta1Args {
  final pulumi.Input<String> dataExchangeId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetDataExchangeIamPolicyAnalyticshubV1beta1Args].
  /// [dataExchangeId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetDataExchangeIamPolicyAnalyticshubV1beta1Args({
    required String dataExchangeId,
    required String location,
    String? project,
  })  : dataExchangeId = pulumi.Input.asInput<String>(dataExchangeId),
        location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dataExchangeId'] = dataExchangeId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetDataExchangeIamPolicyAnalyticshubV1beta1Args.fromMap(
      Map<String, dynamic> map) {
    return GetDataExchangeIamPolicyAnalyticshubV1beta1Args(
      dataExchangeId: map['dataExchangeId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
