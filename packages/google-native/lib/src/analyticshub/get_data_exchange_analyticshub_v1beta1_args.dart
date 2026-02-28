// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_analyticshub_v1beta1_get_data_exchange_analyticshub_v1beta1_args_doc}
/// Arguments for getDataExchange.
/// {@endtemplate}
/// {@macro pulumi_analyticshub_v1beta1_get_data_exchange_analyticshub_v1beta1_args_doc}
class GetDataExchangeAnalyticshubV1beta1Args {
  final pulumi.Input<String> dataExchangeId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetDataExchangeAnalyticshubV1beta1Args].
  /// [dataExchangeId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetDataExchangeAnalyticshubV1beta1Args({
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

  factory GetDataExchangeAnalyticshubV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetDataExchangeAnalyticshubV1beta1Args(
      dataExchangeId: map['dataExchangeId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

