// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_monitoring_v3_get_service_level_objective_args_doc}
/// Arguments for getServiceLevelObjective.
/// {@endtemplate}
/// {@macro pulumi_monitoring_v3_get_service_level_objective_args_doc}
class GetServiceLevelObjectiveArgs {
  final pulumi.Input<String> serviceId;
  final pulumi.Input<String> serviceLevelObjectiveId;
  final pulumi.Input<String> v3Id;
  final pulumi.Input<String> v3Id1;
  final pulumi.Input<String>? view;

  /// Creates a new [GetServiceLevelObjectiveArgs].
  /// [serviceId] Required.
  /// [serviceLevelObjectiveId] Required.
  /// [v3Id] Required.
  /// [v3Id1] Required.
  /// [view] Optional.
  GetServiceLevelObjectiveArgs({
    required String serviceId,
    required String serviceLevelObjectiveId,
    required String v3Id,
    required String v3Id1,
    String? view,
  }) :
      serviceId = pulumi.Input.asInput<String>(serviceId),
      serviceLevelObjectiveId = pulumi.Input.asInput<String>(serviceLevelObjectiveId),
      v3Id = pulumi.Input.asInput<String>(v3Id),
      v3Id1 = pulumi.Input.asInput<String>(v3Id1),
      view = pulumi.Input.asOptionalInput<String>(view);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serviceId': serviceId,
      'serviceLevelObjectiveId': serviceLevelObjectiveId,
      'v3Id': v3Id,
      'v3Id1': v3Id1,
      'view': ?view,
    };
  }

  factory GetServiceLevelObjectiveArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceLevelObjectiveArgs(
      serviceId: map['serviceId'] as String,
      serviceLevelObjectiveId: map['serviceLevelObjectiveId'] as String,
      v3Id: map['v3Id'] as String,
      v3Id1: map['v3Id1'] as String,
      view: map['view'] == null ? null : map['view'] as String,
    );
  }
}

