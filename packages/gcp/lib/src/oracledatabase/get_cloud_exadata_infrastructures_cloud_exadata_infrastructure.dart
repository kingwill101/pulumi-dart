// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cloud_exadata_infrastructures_cloud_exadata_infrastructure_property.dart';

class GetCloudExadataInfrastructuresCloudExadataInfrastructure {
  /// The ID of the Exadata Infrastructure to create. This value is restricted
  /// to (^a-z?$) and must be a maximum of 63
  /// characters in length. The value must start with a letter and end with
  /// a letter or a number.
  final String cloudExadataInfrastructureId;

  /// The date and time that the Exadata Infrastructure was created.
  final String createTime;
  final bool deletionProtection;

  /// User friendly name for this resource.
  final String displayName;
  final Map<String, String> effectiveLabels;

  /// Entitlement ID of the private offer against which this infrastructure
  /// resource is provisioned.
  final String entitlementId;

  /// GCP location where Oracle Exadata is hosted.
  final String gcpOracleZone;

  /// Labels or tags associated with the resource.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field 'effective_labels' for all of the labels present on the resource.
  final Map<String, String> labels;

  /// The location of the resource.
  ///
  /// - - -
  final String location;

  /// Identifier. The name of the Exadata Infrastructure resource with the following format:
  /// projects/{project}/locations/{region}/cloudExadataInfrastructures/{cloud_exadata_infrastructure}
  final String name;

  /// The project to which the resource belongs. If it
  /// is not provided, the provider project is used.
  final String project;

  /// Various properties of Exadata Infrastructure.
  final List<GetCloudExadataInfrastructuresCloudExadataInfrastructureProperty>
  properties;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final Map<String, String> pulumiLabels;

  /// Creates a new [GetCloudExadataInfrastructuresCloudExadataInfrastructure].
  /// [cloudExadataInfrastructureId] The ID of the Exadata Infrastructure to create. This value is restricted
  /// [createTime] The date and time that the Exadata Infrastructure was created.
  /// [deletionProtection] Required.
  /// [displayName] User friendly name for this resource.
  /// [effectiveLabels] Required.
  /// [entitlementId] Entitlement ID of the private offer against which this infrastructure
  /// [gcpOracleZone] GCP location where Oracle Exadata is hosted.
  /// [labels] Labels or tags associated with the resource.
  /// [location] The location of the resource.
  /// [name] Identifier. The name of the Exadata Infrastructure resource with the following format:
  /// [project] The project to which the resource belongs. If it
  /// [properties] Various properties of Exadata Infrastructure.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  GetCloudExadataInfrastructuresCloudExadataInfrastructure({
    required this.cloudExadataInfrastructureId,
    required this.createTime,
    required this.deletionProtection,
    required this.displayName,
    required this.effectiveLabels,
    required this.entitlementId,
    required this.gcpOracleZone,
    required this.labels,
    required this.location,
    required this.name,
    required this.project,
    required this.properties,
    required this.pulumiLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudExadataInfrastructureId': cloudExadataInfrastructureId,
      'createTime': createTime,
      'deletionProtection': deletionProtection,
      'displayName': displayName,
      'effectiveLabels': effectiveLabels,
      'entitlementId': entitlementId,
      'gcpOracleZone': gcpOracleZone,
      'labels': labels,
      'location': location,
      'name': name,
      'project': project,
      'properties':
          pulumi.Input.encodeList<
            GetCloudExadataInfrastructuresCloudExadataInfrastructureProperty,
            Map<String, dynamic>
          >(properties, (value) => value.toMap()),
      'pulumiLabels': pulumiLabels,
    };
  }

  factory GetCloudExadataInfrastructuresCloudExadataInfrastructure.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetCloudExadataInfrastructuresCloudExadataInfrastructure(
      cloudExadataInfrastructureId:
          map['cloudExadataInfrastructureId'] as String,
      createTime: map['createTime'] as String,
      deletionProtection: map['deletionProtection'] as bool,
      displayName: map['displayName'] as String,
      effectiveLabels: (map['effectiveLabels'] as Map).cast<String, String>(),
      entitlementId: map['entitlementId'] as String,
      gcpOracleZone: map['gcpOracleZone'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      location: map['location'] as String,
      name: map['name'] as String,
      project: map['project'] as String,
      properties:
          pulumi.Input.decodeList<
            GetCloudExadataInfrastructuresCloudExadataInfrastructureProperty
          >(
            map['properties'],
            (value) =>
                GetCloudExadataInfrastructuresCloudExadataInfrastructureProperty.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      pulumiLabels: (map['pulumiLabels'] as Map).cast<String, String>(),
    );
  }
}
