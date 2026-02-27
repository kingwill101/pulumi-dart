// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_istio_canonical_service_telemetry/get_istio_canonical_service_telemetry.dart';

/// Result data returned by getIstioCanonicalService.
class GetIstioCanonicalServiceResult {
  final String canonicalService;
  final String canonicalServiceNamespace;

  /// Name used for UI elements listing this (Monitoring) Service.
  final String displayName;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String meshUid;

  /// The full REST resource name for this channel. The syntax is:
  /// `projects/[PROJECT_ID]/services/[SERVICE_ID]`.
  final String name;
  final String? project;
  final String serviceId;

  /// Configuration for how to query telemetry on the Service. Structure is documented below.
  final List<GetIstioCanonicalServiceTelemetry> telemetries;
  final Map<String, String> userLabels;

  GetIstioCanonicalServiceResult({
    required this.canonicalService,
    required this.canonicalServiceNamespace,
    required this.displayName,
    required this.id,
    required this.meshUid,
    required this.name,
    this.project,
    required this.serviceId,
    required this.telemetries,
    required this.userLabels,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['canonicalService'] = canonicalService;
    map['canonicalServiceNamespace'] = canonicalServiceNamespace;
    map['displayName'] = displayName;
    map['id'] = id;
    map['meshUid'] = meshUid;
    map['name'] = name;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['serviceId'] = serviceId;
    map['telemetries'] = pulumi.Input.encodeList<
        GetIstioCanonicalServiceTelemetry,
        Map<String, dynamic>>(telemetries, (value) => value.toMap());
    map['userLabels'] = userLabels;
    return map;
  }

  factory GetIstioCanonicalServiceResult.fromMap(Map<String, dynamic> map) {
    return GetIstioCanonicalServiceResult(
      canonicalService: map['canonicalService'] as String,
      canonicalServiceNamespace: map['canonicalServiceNamespace'] as String,
      displayName: map['displayName'] as String,
      id: map['id'] as String,
      meshUid: map['meshUid'] as String,
      name: map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      serviceId: map['serviceId'] as String,
      telemetries: pulumi.Input.decodeList<GetIstioCanonicalServiceTelemetry>(
          map['telemetries'],
          (value) => GetIstioCanonicalServiceTelemetry.fromMap(
              (value as Map).cast<String, dynamic>())),
      userLabels: (map['userLabels'] as Map).cast<String, String>(),
    );
  }
}
