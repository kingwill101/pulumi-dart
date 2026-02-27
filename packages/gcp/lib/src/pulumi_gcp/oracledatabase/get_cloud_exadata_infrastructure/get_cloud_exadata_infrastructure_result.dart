// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_cloud_exadata_infrastructure_property/get_cloud_exadata_infrastructure_property.dart';

/// Result data returned by getCloudExadataInfrastructure.
class GetCloudExadataInfrastructureResult {
  final String cloudExadataInfrastructureId;
  final String createTime;
  final bool deletionProtection;
  final String displayName;
  final Map<String, String> effectiveLabels;
  final String entitlementId;
  final String gcpOracleZone;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final Map<String, String> labels;
  final String location;
  final String name;
  final String? project;
  final List<GetCloudExadataInfrastructureProperty> properties;
  final Map<String, String> pulumiLabels;

  GetCloudExadataInfrastructureResult({
    required this.cloudExadataInfrastructureId,
    required this.createTime,
    required this.deletionProtection,
    required this.displayName,
    required this.effectiveLabels,
    required this.entitlementId,
    required this.gcpOracleZone,
    required this.id,
    required this.labels,
    required this.location,
    required this.name,
    this.project,
    required this.properties,
    required this.pulumiLabels,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cloudExadataInfrastructureId'] = cloudExadataInfrastructureId;
    map['createTime'] = createTime;
    map['deletionProtection'] = deletionProtection;
    map['displayName'] = displayName;
    map['effectiveLabels'] = effectiveLabels;
    map['entitlementId'] = entitlementId;
    map['gcpOracleZone'] = gcpOracleZone;
    map['id'] = id;
    map['labels'] = labels;
    map['location'] = location;
    map['name'] = name;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['properties'] = pulumi.Input.encodeList<
        GetCloudExadataInfrastructureProperty,
        Map<String, dynamic>>(properties, (value) => value.toMap());
    map['pulumiLabels'] = pulumiLabels;
    return map;
  }

  factory GetCloudExadataInfrastructureResult.fromMap(
      Map<String, dynamic> map) {
    return GetCloudExadataInfrastructureResult(
      cloudExadataInfrastructureId:
          map['cloudExadataInfrastructureId'] as String,
      createTime: map['createTime'] as String,
      deletionProtection: map['deletionProtection'] as bool,
      displayName: map['displayName'] as String,
      effectiveLabels: (map['effectiveLabels'] as Map).cast<String, String>(),
      entitlementId: map['entitlementId'] as String,
      gcpOracleZone: map['gcpOracleZone'] as String,
      id: map['id'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      location: map['location'] as String,
      name: map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      properties:
          pulumi.Input.decodeList<GetCloudExadataInfrastructureProperty>(
              map['properties'],
              (value) => GetCloudExadataInfrastructureProperty.fromMap(
                  (value as Map).cast<String, dynamic>())),
      pulumiLabels: (map['pulumiLabels'] as Map).cast<String, String>(),
    );
  }
}
