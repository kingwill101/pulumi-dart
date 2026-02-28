// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_istio_service_telemetry.dart';

/// Result data returned by getClusterIstioService.
class GetClusterIstioServiceResult {
  final String clusterName;
  /// Name used for UI elements listing this (Monitoring) Service.
  final String displayName;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String location;
  /// The full REST resource name for this channel. The syntax is:
  /// `projects/[PROJECT_ID]/services/[SERVICE_ID]`.
  final String name;
  final String? project;
  final String serviceId;
  final String serviceName;
  final String serviceNamespace;
  /// Configuration for how to query telemetry on the Service. Structure is documented below.
  final List<GetClusterIstioServiceTelemetry> telemetries;
  final Map<String, String> userLabels;

  /// Creates a new [GetClusterIstioServiceResult].
  /// [clusterName] Required.
  /// [displayName] Name used for UI elements listing this (Monitoring) Service.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Required.
  /// [name] The full REST resource name for this channel. The syntax is:
  /// [project] Optional.
  /// [serviceId] Required.
  /// [serviceName] Required.
  /// [serviceNamespace] Required.
  /// [telemetries] Configuration for how to query telemetry on the Service. Structure is documented below.
  /// [userLabels] Required.
  GetClusterIstioServiceResult({
    required this.clusterName,
    required this.displayName,
    required this.id,
    required this.location,
    required this.name,
    this.project,
    required this.serviceId,
    required this.serviceName,
    required this.serviceNamespace,
    required this.telemetries,
    required this.userLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'displayName': displayName,
      'id': id,
      'location': location,
      'name': name,
      'project': ?project,
      'serviceId': serviceId,
      'serviceName': serviceName,
      'serviceNamespace': serviceNamespace,
      'telemetries': pulumi.Input.encodeList<GetClusterIstioServiceTelemetry, Map<String, dynamic>>(telemetries, (value) => value.toMap()),
      'userLabels': userLabels,
    };
  }

  factory GetClusterIstioServiceResult.fromMap(Map<String, dynamic> map) {
    return GetClusterIstioServiceResult(
      clusterName: map['clusterName'] as String,
      displayName: map['displayName'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      serviceId: map['serviceId'] as String,
      serviceName: map['serviceName'] as String,
      serviceNamespace: map['serviceNamespace'] as String,
      telemetries: pulumi.Input.decodeList<GetClusterIstioServiceTelemetry>(map['telemetries'], (value) => GetClusterIstioServiceTelemetry.fromMap((value as Map).cast<String, dynamic>())),
      userLabels: (map['userLabels'] as Map).cast<String, String>(),
    );
  }
}

