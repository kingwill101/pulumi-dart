// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../cloud_exadata_infrastructure_properties/cloud_exadata_infrastructure_properties.dart';

/// The set of arguments for CloudExadataInfrastructure.
class CloudExadataInfrastructureArgs {
  /// The ID of the Exadata Infrastructure to create. This value is restricted
  /// to (^a-z?$) and must be a maximum of 63
  /// characters in length. The value must start with a letter and end with
  /// a letter or a number.
  final Input<String> cloudExadataInfrastructureId;
  final Input<bool>? deletionProtection;

  /// User friendly name for this resource.
  final Input<String>? displayName;

  /// GCP location where Oracle Exadata is hosted.
  final Input<String>? gcpOracleZone;

  /// Labels or tags associated with the resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// Resource ID segment making up resource <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. See documentation for resource type `oracledatabase.googleapis.com/DbServer`.
  final Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// Various properties of Exadata Infrastructure.
  /// Structure is documented below.
  final Input<CloudExadataInfrastructureProperties>? properties;

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
      map['properties'] = Input.mapOptionalInputValue<
          CloudExadataInfrastructureProperties,
          Map<String, dynamic>>(propertiesValue, (value) => value.toMap());
    }
    return map;
  }

  factory CloudExadataInfrastructureArgs.fromMap(Map<String, dynamic> map) {
    return CloudExadataInfrastructureArgs(
      cloudExadataInfrastructureId:
          Input.asInput<String>(map['cloudExadataInfrastructureId']),
      deletionProtection:
          Input.asOptionalInput<bool>(map['deletionProtection']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      gcpOracleZone: Input.asOptionalInput<String>(map['gcpOracleZone']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      properties: Input.asOptionalInput<CloudExadataInfrastructureProperties>(
          map['properties']),
    );
  }
}
