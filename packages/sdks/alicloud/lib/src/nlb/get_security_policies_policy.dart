// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSecurityPoliciesPolicy {
  /// The supported cipher suites, which are determined by the TLS protocol version.
  final pulumi.Input<List<String>> ciphers;
  /// The id of the TLS security policy.
  final pulumi.Input<String> id;
  /// The ID of the resource group.
  final pulumi.Input<String> resourceGroupId;
  /// The name of the TLS security policy.
  final pulumi.Input<String> securityPolicyName;
  /// The status of the resource.
  final pulumi.Input<String> status;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>> tags;
  /// The TLS protocol versions that are supported.
  final pulumi.Input<List<String>> tlsVersions;

  /// Creates a new [GetSecurityPoliciesPolicy].
  /// [ciphers] The supported cipher suites, which are determined by the TLS protocol version.
  /// [id] The id of the TLS security policy.
  /// [resourceGroupId] The ID of the resource group.
  /// [securityPolicyName] The name of the TLS security policy.
  /// [status] The status of the resource.
  /// [tags] A mapping of tags to assign to the resource.
  /// [tlsVersions] The TLS protocol versions that are supported.
  const GetSecurityPoliciesPolicy({
    required this.ciphers,
    required this.id,
    required this.resourceGroupId,
    required this.securityPolicyName,
    required this.status,
    required this.tags,
    required this.tlsVersions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ciphers': ciphers,
      'id': id,
      'resourceGroupId': resourceGroupId,
      'securityPolicyName': securityPolicyName,
      'status': status,
      'tags': tags,
      'tlsVersions': tlsVersions,
    };
  }

  factory GetSecurityPoliciesPolicy.fromMap(Map<String, dynamic> map) {
    return GetSecurityPoliciesPolicy(
      ciphers: pulumi.Input.fromValue((map['ciphers'] as List).cast<String>()),
      id: pulumi.Input.fromValue(map['id'] as String),
      resourceGroupId: pulumi.Input.fromValue(map['resourceGroupId'] as String),
      securityPolicyName: pulumi.Input.fromValue(map['securityPolicyName'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      tags: pulumi.Input.fromValue((map['tags'] as Map).cast<String, String>()),
      tlsVersions: pulumi.Input.fromValue((map['tlsVersions'] as List).cast<String>()),
    );
  }
}

