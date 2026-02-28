// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicedirectory_v1beta1_get_service_servicedirectory_v1beta1_args_doc}
/// Arguments for getService.
/// {@endtemplate}
/// {@macro pulumi_servicedirectory_v1beta1_get_service_servicedirectory_v1beta1_args_doc}
class GetServiceServicedirectoryV1beta1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String> namespaceId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> serviceId;

  /// Creates a new [GetServiceServicedirectoryV1beta1Args].
  /// [location] Required.
  /// [namespaceId] Required.
  /// [project] Optional.
  /// [serviceId] Required.
  GetServiceServicedirectoryV1beta1Args({
    required String location,
    required String namespaceId,
    String? project,
    required String serviceId,
  })  : location = pulumi.Input.asInput<String>(location),
        namespaceId = pulumi.Input.asInput<String>(namespaceId),
        project = pulumi.Input.asOptionalInput<String>(project),
        serviceId = pulumi.Input.asInput<String>(serviceId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    map['namespaceId'] = namespaceId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['serviceId'] = serviceId;
    return map;
  }

  factory GetServiceServicedirectoryV1beta1Args.fromMap(
      Map<String, dynamic> map) {
    return GetServiceServicedirectoryV1beta1Args(
      location: map['location'] as String,
      namespaceId: map['namespaceId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      serviceId: map['serviceId'] as String,
    );
  }
}
