// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_run_v2_get_service_run_v2_args_doc}
/// Arguments for getService.
/// {@endtemplate}
/// {@macro pulumi_run_v2_get_service_run_v2_args_doc}
class GetServiceRunV2Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> serviceId;

  /// Creates a new [GetServiceRunV2Args].
  /// [location] Required.
  /// [project] Optional.
  /// [serviceId] Required.
  GetServiceRunV2Args({
    required String location,
    String? project,
    required String serviceId,
  })  : location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project),
        serviceId = pulumi.Input.asInput<String>(serviceId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['serviceId'] = serviceId;
    return map;
  }

  factory GetServiceRunV2Args.fromMap(Map<String, dynamic> map) {
    return GetServiceRunV2Args(
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      serviceId: map['serviceId'] as String,
    );
  }
}
