// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getGatewayIamPolicy.
class GetGatewayIamPolicyArgs {
  /// Used to find the parent resource to bind the IAM policy to
  final Input<String> gateway;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final Input<String>? project;

  /// The region of the gateway for the API.
  /// Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no region is provided in the parent identifier and no
  /// region is specified, it is taken from the provider configuration.
  final Input<String>? region;

  GetGatewayIamPolicyArgs({
    required this.gateway,
    this.project,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['gateway'] = gateway;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetGatewayIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetGatewayIamPolicyArgs(
      gateway: Input.asInput<String>(map['gateway']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
