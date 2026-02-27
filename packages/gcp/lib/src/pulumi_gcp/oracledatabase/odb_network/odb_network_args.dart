// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for OdbNetwork.
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

  OdbNetworkArgs({
    this.deletionProtection,
    this.gcpOracleZone,
    this.labels,
    required this.location,
    required this.network,
    required this.odbNetworkId,
    this.project,
  });

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
      deletionProtection:
          pulumi.Input.asOptionalInput<bool>(map['deletionProtection']),
      gcpOracleZone: pulumi.Input.asOptionalInput<String>(map['gcpOracleZone']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asInput<String>(map['location']),
      network: pulumi.Input.asInput<String>(map['network']),
      odbNetworkId: pulumi.Input.asInput<String>(map['odbNetworkId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
