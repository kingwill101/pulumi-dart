// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_app_connector_principal_info/get_app_connector_principal_info.dart';

/// Result data returned by getAppConnector.
class GetAppConnectorResult {
  final String displayName;
  final Map<String, String> effectiveLabels;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final Map<String, String> labels;
  final String name;
  final List<GetAppConnectorPrincipalInfo> principalInfos;
  final String? project;
  final Map<String, String> pulumiLabels;
  final String? region;
  final String state;

  GetAppConnectorResult({
    required this.displayName,
    required this.effectiveLabels,
    required this.id,
    required this.labels,
    required this.name,
    required this.principalInfos,
    this.project,
    required this.pulumiLabels,
    this.region,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['displayName'] = displayName;
    map['effectiveLabels'] = effectiveLabels;
    map['id'] = id;
    map['labels'] = labels;
    map['name'] = name;
    map['principalInfos'] = pulumi.Input.encodeList<
        GetAppConnectorPrincipalInfo,
        Map<String, dynamic>>(principalInfos, (value) => value.toMap());
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['pulumiLabels'] = pulumiLabels;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['state'] = state;
    return map;
  }

  factory GetAppConnectorResult.fromMap(Map<String, dynamic> map) {
    return GetAppConnectorResult(
      displayName: map['displayName'] as String,
      effectiveLabels: (map['effectiveLabels'] as Map).cast<String, String>(),
      id: map['id'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      principalInfos: pulumi.Input.decodeList<GetAppConnectorPrincipalInfo>(
          map['principalInfos'],
          (value) => GetAppConnectorPrincipalInfo.fromMap(
              (value as Map).cast<String, dynamic>())),
      project: map['project'] == null ? null : map['project'] as String,
      pulumiLabels: (map['pulumiLabels'] as Map).cast<String, String>(),
      region: map['region'] == null ? null : map['region'] as String,
      state: map['state'] as String,
    );
  }
}
