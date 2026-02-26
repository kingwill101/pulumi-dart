// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getSubnetworkIamPolicy.
class GetSubnetworkIamPolicyArgs {
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final Input<String>? project;

  /// The GCP region for this subnetwork.
  /// Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no region is provided in the parent identifier and no
  /// region is specified, it is taken from the provider configuration.
  final Input<String>? region;

  /// Used to find the parent resource to bind the IAM policy to
  final Input<String> subnetwork;

  GetSubnetworkIamPolicyArgs({
    this.project,
    this.region,
    required this.subnetwork,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['subnetwork'] = subnetwork;
    return map;
  }

  factory GetSubnetworkIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetSubnetworkIamPolicyArgs(
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asOptionalInput<String>(map['region']),
      subnetwork: Input.asInput<String>(map['subnetwork']),
    );
  }
}
