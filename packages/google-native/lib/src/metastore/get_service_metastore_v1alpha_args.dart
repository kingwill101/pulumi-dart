// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_metastore_v1alpha_get_service_metastore_v1alpha_args_doc}
/// Arguments for getService.
/// {@endtemplate}
/// {@macro pulumi_metastore_v1alpha_get_service_metastore_v1alpha_args_doc}
class GetServiceMetastoreV1alphaArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> serviceId;

  /// Creates a new [GetServiceMetastoreV1alphaArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [serviceId] Required.
  GetServiceMetastoreV1alphaArgs({
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

  factory GetServiceMetastoreV1alphaArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceMetastoreV1alphaArgs(
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      serviceId: map['serviceId'] as String,
    );
  }
}
