// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_oracledatabase_odb_subnet_odb_subnet_args_doc}
/// The set of arguments for OdbSubnet.
/// {@endtemplate}
/// {@macro pulumi_oracledatabase_odb_subnet_odb_subnet_args_doc}
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

  /// Creates a new [OdbSubnetArgs].
  /// [cidrRange] The CIDR range of the subnet.
  /// [deletionProtection] Optional.
  /// [labels] Labels or tags associated with the resource.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [odbSubnetId] The ID of the OdbSubnet to create. This value is restricted
  /// [odbnetwork] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [project] The ID of the project in which the resource belongs.
  /// [purpose] Purpose of the subnet.
  OdbSubnetArgs({
    required String cidrRange,
    bool? deletionProtection,
    Map<String, String>? labels,
    required String location,
    required String odbSubnetId,
    required String odbnetwork,
    String? project,
    required String purpose,
  })  : cidrRange = pulumi.Input.asInput<String>(cidrRange),
        deletionProtection =
            pulumi.Input.asOptionalInput<bool>(deletionProtection),
        labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        location = pulumi.Input.asInput<String>(location),
        odbSubnetId = pulumi.Input.asInput<String>(odbSubnetId),
        odbnetwork = pulumi.Input.asInput<String>(odbnetwork),
        project = pulumi.Input.asOptionalInput<String>(project),
        purpose = pulumi.Input.asInput<String>(purpose);

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
      cidrRange: map['cidrRange'] as String,
      deletionProtection: map['deletionProtection'] == null
          ? null
          : map['deletionProtection'] as bool,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] as String,
      odbSubnetId: map['odbSubnetId'] as String,
      odbnetwork: map['odbnetwork'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      purpose: map['purpose'] as String,
    );
  }
}
