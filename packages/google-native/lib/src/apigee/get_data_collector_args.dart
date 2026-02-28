// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_v1_get_data_collector_args_doc}
/// Arguments for getDataCollector.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_get_data_collector_args_doc}
class GetDataCollectorArgs {
  final pulumi.Input<String> datacollectorId;
  final pulumi.Input<String> organizationId;

  /// Creates a new [GetDataCollectorArgs].
  /// [datacollectorId] Required.
  /// [organizationId] Required.
  GetDataCollectorArgs({
    required String datacollectorId,
    required String organizationId,
  })  : datacollectorId = pulumi.Input.asInput<String>(datacollectorId),
        organizationId = pulumi.Input.asInput<String>(organizationId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['datacollectorId'] = datacollectorId;
    map['organizationId'] = organizationId;
    return map;
  }

  factory GetDataCollectorArgs.fromMap(Map<String, dynamic> map) {
    return GetDataCollectorArgs(
      datacollectorId: map['datacollectorId'] as String,
      organizationId: map['organizationId'] as String,
    );
  }
}
