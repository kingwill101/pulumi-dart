// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../cloud_exadata_infrastructure_properties/cloud_exadata_infrastructure_properties.dart';

/// The set of arguments for CloudExadataInfrastructure.
class CloudExadataInfrastructureArgs {
  /// The ID of the Exadata Infrastructure to create. This value is restricted
  /// to (^a-z?$) and must be a maximum of 63
  /// characters in length. The value must start with a letter and end with
  /// a letter or a number.
  final pulumi.Input<String> cloudExadataInfrastructureId;
  final pulumi.Input<bool>? deletionProtection;

  /// User friendly name for this resource.
  final pulumi.Input<String>? displayName;

  /// GCP location where Oracle Exadata is hosted.
  final pulumi.Input<String>? gcpOracleZone;

  /// Labels or tags associated with the resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// Resource ID segment making up resource `name`. See documentation for resource type `oracledatabase.googleapis.com/DbServer`.
  final pulumi.Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Various properties of Exadata Infrastructure.
  /// Structure is documented below.
  final pulumi.Input<CloudExadataInfrastructureProperties>? properties;

  CloudExadataInfrastructureArgs({
    required this.cloudExadataInfrastructureId,
    this.deletionProtection,
    this.displayName,
    this.gcpOracleZone,
    this.labels,
    required this.location,
    this.project,
    this.properties,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cloudExadataInfrastructureId'] = cloudExadataInfrastructureId;
    final deletionProtectionValue = deletionProtection;
    if (deletionProtectionValue != null) {
      map['deletionProtection'] = deletionProtectionValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final gcpOracleZoneValue = gcpOracleZone;
    if (gcpOracleZoneValue != null) {
      map['gcpOracleZone'] = gcpOracleZoneValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final propertiesValue = properties;
    if (propertiesValue != null) {
      map['properties'] = pulumi.Input.mapOptionalInputValue<
          CloudExadataInfrastructureProperties,
          Map<String, dynamic>>(propertiesValue, (value) => value.toMap());
    }
    return map;
  }

  factory CloudExadataInfrastructureArgs.fromMap(Map<String, dynamic> map) {
    return CloudExadataInfrastructureArgs(
      cloudExadataInfrastructureId:
          pulumi.Input.asInput<String>(map['cloudExadataInfrastructureId']),
      deletionProtection:
          pulumi.Input.asOptionalInput<bool>(map['deletionProtection']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      gcpOracleZone: pulumi.Input.asOptionalInput<String>(map['gcpOracleZone']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      properties:
          pulumi.Input.asOptionalInput<CloudExadataInfrastructureProperties>(
              map['properties']),
    );
  }
}
