// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_nlb_security_policy_security_policy_args_doc}
/// The set of arguments for SecurityPolicy.
/// {@endtemplate}
/// {@macro pulumi_nlb_security_policy_security_policy_args_doc}
class SecurityPolicyArgs {
  /// The supported cipher suites, which are determined by the TLS protocol version. You can specify at most 32 cipher suites.
  /// - TLS 1.0 and TLS 1.1 support the following cipher suites: `ECDHE-ECDSA-AES128-SHA`, `ECDHE-ECDSA-AES256-SHA`, `ECDHE-RSA-AES128-SHA`, `ECDHE-RSA-AES256-SHA`, `AES128-SHA`, `AES256-SHA`, `DES-CBC3-SHA`
  /// - TLS 1.2 supports the following cipher suites: `ECDHE-ECDSA-AES128-SHA`, `ECDHE-ECDSA-AES256-SHA`, `ECDHE-RSA-AES128-SHA`, `ECDHE-RSA-AES256-SHA`, `AES128-SHA`, `AES256-SHA, DES-CBC3-SHA`, `ECDHE-ECDSA-AES128-GCM-SHA256`, `ECDHE-ECDSA-AES256-GCM-SHA384`, `ECDHE-ECDSA-AES128-SHA256`, `ECDHE-ECDSA-AES256-SHA384`, `ECDHE-RSA-AES128-GCM-SHA256`, `ECDHE-RSA-AES256-GCM-SHA384`, `ECDHE-RSA-AES128-SHA256`, `ECDHE-RSA-AES256-SHA384`, `AES128-GCM-SHA256`, `AES256-GCM-SHA384`, `AES128-SHA256`, `AES256-SHA256`
  /// - TLS 1.3 supports the following cipher suites: `TLS_AES_128_GCM_SHA256`, `TLS_AES_256_GCM_SHA384`, `TLS_CHACHA20_POLY1305_SHA256`, `TLS_AES_128_CCM_SHA256`, `TLS_AES_128_CCM_8_SHA256`.
  final pulumi.Input<List<String>> ciphers;
  /// The ID of the new resource group.
  ///
  /// You can log on to the [Resource Management console](https://resourcemanager.console.aliyun.com/resource-groups) to view resource group IDs.
  final pulumi.Input<String>? resourceGroupId;
  /// The name of the security policy.
  ///
  /// The name must be 1 to 200 characters in length, and can contain letters, digits, periods (.), underscores (\_), and hyphens (-).
  final pulumi.Input<String>? securityPolicyName;
  /// The tag of the resource
  final pulumi.Input<Map<String, String>>? tags;
  /// The supported versions of the Transport Layer Security (TLS) protocol. Valid values: `TLSv1.0`, `TLSv1.1`, `TLSv1.2`, and `TLSv1.3`. You can specify at most four TLS versions.
  final pulumi.Input<List<String>> tlsVersions;

  /// Creates a new [SecurityPolicyArgs].
  /// [ciphers] The supported cipher suites, which are determined by the TLS protocol version. You can specify at most 32 cipher suites.
  /// [resourceGroupId] The ID of the new resource group.
  /// [securityPolicyName] The name of the security policy.
  /// [tags] The tag of the resource
  /// [tlsVersions] The supported versions of the Transport Layer Security (TLS) protocol. Valid values: `TLSv1.0`, `TLSv1.1`, `TLSv1.2`, and `TLSv1.3`. You can specify at most four TLS versions.
  SecurityPolicyArgs({
    required this.ciphers,
    this.resourceGroupId,
    this.securityPolicyName,
    this.tags,
    required this.tlsVersions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ciphers': ciphers,
      'resourceGroupId': ?resourceGroupId,
      'securityPolicyName': ?securityPolicyName,
      'tags': ?tags,
      'tlsVersions': tlsVersions,
    };
  }

  factory SecurityPolicyArgs.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyArgs(
      ciphers: ((map['ciphers'] as List).cast<String>()).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId'] as String).input(),
      securityPolicyName: map['securityPolicyName'] == null ? null : (map['securityPolicyName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tlsVersions: ((map['tlsVersions'] as List).cast<String>()).input(),
    );
  }
}

