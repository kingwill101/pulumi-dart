// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_artifactregistry_vpcsc_config_vpcsc_config_args_doc}
/// The set of arguments for VpcscConfig.
/// {@endtemplate}
/// {@macro pulumi_artifactregistry_vpcsc_config_vpcsc_config_args_doc}
class VpcscConfigArgs {
  /// The name of the location this config is located in.
  final pulumi.Input<String>? location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The VPC SC policy for project and location.
  /// Possible values are: `DENY`, `ALLOW`.
  final pulumi.Input<String>? vpcscPolicy;

  /// Creates a new [VpcscConfigArgs].
  /// [location] The name of the location this config is located in.
  /// [project] The ID of the project in which the resource belongs.
  /// [vpcscPolicy] The VPC SC policy for project and location.
  VpcscConfigArgs({
    String? location,
    String? project,
    String? vpcscPolicy,
  })  : location = pulumi.Input.asOptionalInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project),
        vpcscPolicy = pulumi.Input.asOptionalInput<String>(vpcscPolicy);

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
      location: map['location'] == null ? null : map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      vpcscPolicy:
          map['vpcscPolicy'] == null ? null : map['vpcscPolicy'] as String,
    );
  }
}
