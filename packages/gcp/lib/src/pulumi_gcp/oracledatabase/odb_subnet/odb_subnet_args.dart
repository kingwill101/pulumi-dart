// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for OdbSubnet.
class OdbSubnetArgs {
  /// The CIDR range of the subnet.
  final Input<String> cidrRange;
  final Input<bool>? deletionProtection;

  /// Labels or tags associated with the resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// Resource ID segment making up resource <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final Input<String> location;

  /// The ID of the OdbSubnet to create. This value is restricted
  /// to (^a-z?$) and must be a maximum of 63
  /// characters in length. The value must start with a letter and end with
  /// a letter or a number.
  final Input<String> odbSubnetId;

  /// Resource ID segment making up resource <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final Input<String> odbnetwork;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// Purpose of the subnet.
  /// Possible values:
  /// CLIENT_SUBNET
  /// BACKUP_SUBNET
  final Input<String> purpose;

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
      cidrRange: Input.asInput<String>(map['cidrRange']),
      deletionProtection:
          Input.asOptionalInput<bool>(map['deletionProtection']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asInput<String>(map['location']),
      odbSubnetId: Input.asInput<String>(map['odbSubnetId']),
      odbnetwork: Input.asInput<String>(map['odbnetwork']),
      project: Input.asOptionalInput<String>(map['project']),
      purpose: Input.asInput<String>(map['purpose']),
    );
  }
}
