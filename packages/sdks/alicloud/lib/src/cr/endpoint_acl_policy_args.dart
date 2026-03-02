// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cr_endpoint_acl_policy_endpoint_acl_policy_args_doc}
/// The set of arguments for EndpointAclPolicy.
/// {@endtemplate}
/// {@macro pulumi_cr_endpoint_acl_policy_endpoint_acl_policy_args_doc}
class EndpointAclPolicyArgs {
  /// The description of the entry.
  final pulumi.Input<String>? description;
  /// The type of endpoint. Valid values: `internet`.
  final pulumi.Input<String> endpointType;
  /// The IP segment that allowed to access.
  final pulumi.Input<String> entry;
  /// The ID of the CR Instance.
  final pulumi.Input<String> instanceId;
  /// The module that needs to set the access policy. Valid values: `Registry`.
  final pulumi.Input<String>? moduleName;

  /// Creates a new [EndpointAclPolicyArgs].
  /// [description] The description of the entry.
  /// [endpointType] The type of endpoint. Valid values: `internet`.
  /// [entry] The IP segment that allowed to access.
  /// [instanceId] The ID of the CR Instance.
  /// [moduleName] The module that needs to set the access policy. Valid values: `Registry`.
  EndpointAclPolicyArgs({
    this.description,
    required this.endpointType,
    required this.entry,
    required this.instanceId,
    this.moduleName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'endpointType': endpointType,
      'entry': entry,
      'instanceId': instanceId,
      'moduleName': ?moduleName,
    };
  }

  factory EndpointAclPolicyArgs.fromMap(Map<String, dynamic> map) {
    return EndpointAclPolicyArgs(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      endpointType: (map['endpointType'] as String).input(),
      entry: (map['entry'] as String).input(),
      instanceId: (map['instanceId'] as String).input(),
      moduleName: map['moduleName'] == null ? null : (map['moduleName'] as String).input(),
    );
  }
}

