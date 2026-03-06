// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSecurityPoliciesPolicy {
  /// The supported cipher suites, which are determined by the TLS protocol version.
  final pulumi.Input<List<String>> ciphers;
  /// The ID of the Security Policy.
  final pulumi.Input<String> id;
  /// The ID of the resource group.
  final pulumi.Input<String> resourceGroupId;
  /// The first ID of the resource.
  final pulumi.Input<String> securityPolicyId;
  /// The name of the resource. The name must be 2 to 128 characters in length and must start with a letter. It can contain digits, periods (.), underscores (_), and hyphens (-).
  final pulumi.Input<String> securityPolicyName;
  /// The status of the resource.
  final pulumi.Input<String> status;
  /// The TLS protocol versions that are supported. Valid values: TLSv1.0, TLSv1.1, TLSv1.2 and TLSv1.3.
  final pulumi.Input<List<String>> tlsVersions;

  /// Creates a new [GetSecurityPoliciesPolicy].
  /// [ciphers] The supported cipher suites, which are determined by the TLS protocol version.
  /// [id] The ID of the Security Policy.
  /// [resourceGroupId] The ID of the resource group.
  /// [securityPolicyId] The first ID of the resource.
  /// [securityPolicyName] The name of the resource. The name must be 2 to 128 characters in length and must start with a letter. It can contain digits, periods (.), underscores (_), and hyphens (-).
  /// [status] The status of the resource.
  /// [tlsVersions] The TLS protocol versions that are supported. Valid values: TLSv1.0, TLSv1.1, TLSv1.2 and TLSv1.3.
  const GetSecurityPoliciesPolicy({
    required this.ciphers,
    required this.id,
    required this.resourceGroupId,
    required this.securityPolicyId,
    required this.securityPolicyName,
    required this.status,
    required this.tlsVersions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ciphers': ciphers,
      'id': id,
      'resourceGroupId': resourceGroupId,
      'securityPolicyId': securityPolicyId,
      'securityPolicyName': securityPolicyName,
      'status': status,
      'tlsVersions': tlsVersions,
    };
  }

  factory GetSecurityPoliciesPolicy.fromMap(Map<String, dynamic> map) {
    return GetSecurityPoliciesPolicy(
      ciphers: pulumi.Input.fromValue((map['ciphers'] as List).cast<String>()),
      id: pulumi.Input.fromValue(map['id'] as String),
      resourceGroupId: pulumi.Input.fromValue(map['resourceGroupId'] as String),
      securityPolicyId: pulumi.Input.fromValue(map['securityPolicyId'] as String),
      securityPolicyName: pulumi.Input.fromValue(map['securityPolicyName'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      tlsVersions: pulumi.Input.fromValue((map['tlsVersions'] as List).cast<String>()),
    );
  }
}

