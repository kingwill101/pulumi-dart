// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for VpcscConfig.
class VpcscConfigArgs {
  /// The name of the location this config is located in.
  final pulumi.Input<String>? location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The VPC SC policy for project and location.
  /// Possible values are: `DENY`, `ALLOW`.
  final pulumi.Input<String>? vpcscPolicy;

  VpcscConfigArgs({
    this.location,
    this.project,
    this.vpcscPolicy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final vpcscPolicyValue = vpcscPolicy;
    if (vpcscPolicyValue != null) {
      map['vpcscPolicy'] = vpcscPolicyValue;
    }
    return map;
  }

  factory VpcscConfigArgs.fromMap(Map<String, dynamic> map) {
    return VpcscConfigArgs(
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      vpcscPolicy: pulumi.Input.asOptionalInput<String>(map['vpcscPolicy']),
    );
  }
}
