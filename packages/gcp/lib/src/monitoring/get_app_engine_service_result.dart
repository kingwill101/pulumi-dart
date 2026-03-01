// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_app_engine_service_telemetry.dart';

/// Result data returned by getAppEngineService.
class GetAppEngineServiceResult {
  /// Name used for UI elements listing this (Monitoring) Service.
  final String displayName;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String moduleId;

  /// The full REST resource name for this channel. The syntax is:
  /// `projects/[PROJECT_ID]/services/[SERVICE_ID]`.
  final String name;
  final String? project;
  final String serviceId;

  /// Configuration for how to query telemetry on the Service. Structure is documented below.
  final List<GetAppEngineServiceTelemetry> telemetries;
  final Map<String, String> userLabels;

  /// Creates a new [GetAppEngineServiceResult].
  /// [displayName] Name used for UI elements listing this (Monitoring) Service.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [moduleId] Required.
  /// [name] The full REST resource name for this channel. The syntax is:
  /// [project] Optional.
  /// [serviceId] Required.
  /// [telemetries] Configuration for how to query telemetry on the Service. Structure is documented below.
  /// [userLabels] Required.
  GetAppEngineServiceResult({
    required this.displayName,
    required this.id,
    required this.moduleId,
    required this.name,
    this.project,
    required this.serviceId,
    required this.telemetries,
    required this.userLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': displayName,
      'id': id,
      'moduleId': moduleId,
      'name': name,
      'project': ?project,
      'serviceId': serviceId,
      'telemetries':
          pulumi.Input.encodeList<
            GetAppEngineServiceTelemetry,
            Map<String, dynamic>
          >(telemetries, (value) => value.toMap()),
      'userLabels': userLabels,
    };
  }

  factory GetAppEngineServiceResult.fromMap(Map<String, dynamic> map) {
    return GetAppEngineServiceResult(
      displayName: map['displayName'] as String,
      id: map['id'] as String,
      moduleId: map['moduleId'] as String,
      name: map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      serviceId: map['serviceId'] as String,
      telemetries: pulumi.Input.decodeList<GetAppEngineServiceTelemetry>(
        map['telemetries'],
        (value) => GetAppEngineServiceTelemetry.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      userLabels: (map['userLabels'] as Map).cast<String, String>(),
    );
  }
}
