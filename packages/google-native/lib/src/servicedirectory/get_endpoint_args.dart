// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicedirectory_v1_get_endpoint_args_doc}
/// Arguments for getEndpoint.
/// {@endtemplate}
/// {@macro pulumi_servicedirectory_v1_get_endpoint_args_doc}
class GetEndpointArgs {
  final pulumi.Input<String> endpointId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> namespaceId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> serviceId;

  /// Creates a new [GetEndpointArgs].
  /// [endpointId] Required.
  /// [location] Required.
  /// [namespaceId] Required.
  /// [project] Optional.
  /// [serviceId] Required.
  GetEndpointArgs({
    required String endpointId,
    required String location,
    required String namespaceId,
    String? project,
    required String serviceId,
  }) : endpointId = pulumi.Input.asInput<String>(endpointId),
       location = pulumi.Input.asInput<String>(location),
       namespaceId = pulumi.Input.asInput<String>(namespaceId),
       project = pulumi.Input.asOptionalInput<String>(project),
       serviceId = pulumi.Input.asInput<String>(serviceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointId': endpointId,
      'location': location,
      'namespaceId': namespaceId,
      'project': ?project,
      'serviceId': serviceId,
    };
  }

  factory GetEndpointArgs.fromMap(Map<String, dynamic> map) {
    return GetEndpointArgs(
      endpointId: map['endpointId'] as String,
      location: map['location'] as String,
      namespaceId: map['namespaceId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      serviceId: map['serviceId'] as String,
    );
  }
}
