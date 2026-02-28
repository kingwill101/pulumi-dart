// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_oracledatabase_odb_network_odb_network_args_doc}
/// The set of arguments for OdbNetwork.
/// {@endtemplate}
/// {@macro pulumi_oracledatabase_odb_network_odb_network_args_doc}
class OdbNetworkArgs {
  final pulumi.Input<bool>? deletionProtection;

  /// The GCP Oracle zone where OdbNetwork is hosted.
  /// Example: us-east4-b-r2.
  /// If not specified, the system will pick a zone based on availability.
  final pulumi.Input<String>? gcpOracleZone;

  /// Labels or tags associated with the resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;

  /// The name of the VPC network in the following format:
  /// projects/{project}/global/networks/{network}
  final pulumi.Input<String> network;

  /// The ID of the OdbNetwork to create. This value is restricted
  /// to (^a-z?$) and must be a maximum of 63
  /// characters in length. The value must start with a letter and end with
  /// a letter or a number.
  final pulumi.Input<String> odbNetworkId;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [OdbNetworkArgs].
  /// [deletionProtection] Optional.
  /// [gcpOracleZone] The GCP Oracle zone where OdbNetwork is hosted.
  /// [labels] Labels or tags associated with the resource.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [network] The name of the VPC network in the following format:
  /// [odbNetworkId] The ID of the OdbNetwork to create. This value is restricted
  /// [project] The ID of the project in which the resource belongs.
  OdbNetworkArgs({
    bool? deletionProtection,
    String? gcpOracleZone,
    Map<String, String>? labels,
    required String location,
    required String network,
    required String odbNetworkId,
    String? project,
  })  : deletionProtection =
            pulumi.Input.asOptionalInput<bool>(deletionProtection),
        gcpOracleZone = pulumi.Input.asOptionalInput<String>(gcpOracleZone),
        labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        location = pulumi.Input.asInput<String>(location),
        network = pulumi.Input.asInput<String>(network),
        odbNetworkId = pulumi.Input.asInput<String>(odbNetworkId),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final deletionProtectionValue = deletionProtection;
    if (deletionProtectionValue != null) {
      map['deletionProtection'] = deletionProtectionValue;
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
    map['network'] = network;
    map['odbNetworkId'] = odbNetworkId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory OdbNetworkArgs.fromMap(Map<String, dynamic> map) {
    return OdbNetworkArgs(
      deletionProtection: map['deletionProtection'] == null
          ? null
          : map['deletionProtection'] as bool,
      gcpOracleZone:
          map['gcpOracleZone'] == null ? null : map['gcpOracleZone'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] as String,
      network: map['network'] as String,
      odbNetworkId: map['odbNetworkId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
