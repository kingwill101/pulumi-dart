// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for OdbSubnet.
class OdbSubnetArgs {
  /// The CIDR range of the subnet.
  final pulumi.Input<String> cidrRange;
  final pulumi.Input<bool>? deletionProtection;

  /// Labels or tags associated with the resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;

  /// The ID of the OdbSubnet to create. This value is restricted
  /// to (^a-z?$) and must be a maximum of 63
  /// characters in length. The value must start with a letter and end with
  /// a letter or a number.
  final pulumi.Input<String> odbSubnetId;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> odbnetwork;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Purpose of the subnet.
  /// Possible values:
  /// CLIENT_SUBNET
  /// BACKUP_SUBNET
  final pulumi.Input<String> purpose;

  OdbSubnetArgs({
    required this.cidrRange,
    this.deletionProtection,
    this.labels,
    required this.location,
    required this.odbSubnetId,
    required this.odbnetwork,
    this.project,
    required this.purpose,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cidrRange'] = cidrRange;
    final deletionProtectionValue = deletionProtection;
    if (deletionProtectionValue != null) {
      map['deletionProtection'] = deletionProtectionValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['location'] = location;
    map['odbSubnetId'] = odbSubnetId;
    map['odbnetwork'] = odbnetwork;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['purpose'] = purpose;
    return map;
  }

  factory OdbSubnetArgs.fromMap(Map<String, dynamic> map) {
    return OdbSubnetArgs(
      cidrRange: pulumi.Input.asInput<String>(map['cidrRange']),
      deletionProtection:
          pulumi.Input.asOptionalInput<bool>(map['deletionProtection']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asInput<String>(map['location']),
      odbSubnetId: pulumi.Input.asInput<String>(map['odbSubnetId']),
      odbnetwork: pulumi.Input.asInput<String>(map['odbnetwork']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      purpose: pulumi.Input.asInput<String>(map['purpose']),
    );
  }
}
