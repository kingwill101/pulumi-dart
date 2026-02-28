// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_app_connection_application_endpoint.dart';
import 'get_app_connection_gateway.dart';

/// Result data returned by getAppConnection.
class GetAppConnectionResult {
  final List<GetAppConnectionApplicationEndpoint> applicationEndpoints;
  final List<String> connectors;
  final String displayName;
  final Map<String, String> effectiveLabels;
  final List<GetAppConnectionGateway> gateways;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final Map<String, String> labels;
  final String name;
  final String? project;
  final Map<String, String> pulumiLabels;
  final String? region;
  final String type;

  /// Creates a new [GetAppConnectionResult].
  /// [applicationEndpoints] Required.
  /// [connectors] Required.
  /// [displayName] Required.
  /// [effectiveLabels] Required.
  /// [gateways] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [labels] Required.
  /// [name] Required.
  /// [project] Optional.
  /// [pulumiLabels] Required.
  /// [region] Optional.
  /// [type] Required.
  GetAppConnectionResult({
    required this.applicationEndpoints,
    required this.connectors,
    required this.displayName,
    required this.effectiveLabels,
    required this.gateways,
    required this.id,
    required this.labels,
    required this.name,
    this.project,
    required this.pulumiLabels,
    this.region,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['applicationEndpoints'] = pulumi.Input.encodeList<
        GetAppConnectionApplicationEndpoint,
        Map<String, dynamic>>(applicationEndpoints, (value) => value.toMap());
    map['connectors'] = connectors;
    map['displayName'] = displayName;
    map['effectiveLabels'] = effectiveLabels;
    map['gateways'] =
        pulumi.Input.encodeList<GetAppConnectionGateway, Map<String, dynamic>>(
            gateways, (value) => value.toMap());
    map['id'] = id;
    map['labels'] = labels;
    map['name'] = name;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['pulumiLabels'] = pulumiLabels;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['type'] = type;
    return map;
  }

  factory GetAppConnectionResult.fromMap(Map<String, dynamic> map) {
    return GetAppConnectionResult(
      applicationEndpoints:
          pulumi.Input.decodeList<GetAppConnectionApplicationEndpoint>(
              map['applicationEndpoints'],
              (value) => GetAppConnectionApplicationEndpoint.fromMap(
                  (value as Map).cast<String, dynamic>())),
      connectors: (map['connectors'] as List).cast<String>(),
      displayName: map['displayName'] as String,
      effectiveLabels: (map['effectiveLabels'] as Map).cast<String, String>(),
      gateways: pulumi.Input.decodeList<GetAppConnectionGateway>(
          map['gateways'],
          (value) => GetAppConnectionGateway.fromMap(
              (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      pulumiLabels: (map['pulumiLabels'] as Map).cast<String, String>(),
      region: map['region'] == null ? null : map['region'] as String,
      type: map['type'] as String,
    );
  }
}
