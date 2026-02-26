// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../exascale_db_storage_vault_properties/exascale_db_storage_vault_properties.dart';

/// The set of arguments for ExascaleDbStorageVault.
class ExascaleDbStorageVaultArgs {
  final Input<bool>? deletionProtection;

  /// The display name for the ExascaleDbStorageVault. The name does not have to
  /// be unique within your project. The name must be 1-255 characters long and
  /// can only contain alphanumeric characters.
  final Input<String> displayName;

  /// The ID of the ExascaleDbStorageVault to create. This value is
  /// restricted to (^a-z?$) and must be a maximum of
  /// 63 characters in length. The value must start with a letter and end with a
  /// letter or a number.
  final Input<String> exascaleDbStorageVaultId;

  /// The GCP Oracle zone where Oracle ExascaleDbStorageVault is hosted.
  /// Example: us-east4-b-r2.
  /// If not specified, the system will pick a zone based on availability.
  final Input<String>? gcpOracleZone;

  /// The labels or tags associated with the ExascaleDbStorageVault.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// Resource ID segment making up resource <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The properties of the ExascaleDbStorageVault.
  /// next ID: 12
  /// Structure is documented below.
  final Input<ExascaleDbStorageVaultProperties> properties;

  ExascaleDbStorageVaultArgs({
    this.deletionProtection,
    required this.displayName,
    required this.exascaleDbStorageVaultId,
    this.gcpOracleZone,
    this.labels,
    required this.location,
    this.project,
    required this.properties,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final deletionProtectionValue = deletionProtection;
    if (deletionProtectionValue != null) {
      map['deletionProtection'] = deletionProtectionValue;
    }
    map['displayName'] = displayName;
    map['exascaleDbStorageVaultId'] = exascaleDbStorageVaultId;
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
    map['properties'] = Input.mapInputValue<ExascaleDbStorageVaultProperties,
        Map<String, dynamic>>(properties, (value) => value.toMap());
    return map;
  }

  factory ExascaleDbStorageVaultArgs.fromMap(Map<String, dynamic> map) {
    return ExascaleDbStorageVaultArgs(
      deletionProtection:
          Input.asOptionalInput<bool>(map['deletionProtection']),
      displayName: Input.asInput<String>(map['displayName']),
      exascaleDbStorageVaultId:
          Input.asInput<String>(map['exascaleDbStorageVaultId']),
      gcpOracleZone: Input.asOptionalInput<String>(map['gcpOracleZone']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      properties:
          Input.asInput<ExascaleDbStorageVaultProperties>(map['properties']),
    );
  }
}
