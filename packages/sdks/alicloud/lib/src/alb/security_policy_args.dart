// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_alb_security_policy_security_policy_args_doc}
/// The set of arguments for SecurityPolicy.
/// {@endtemplate}
/// {@macro pulumi_alb_security_policy_security_policy_args_doc}
class SecurityPolicyArgs {
  /// The supported cipher suites, which are determined by the TLS protocol version.The specified cipher suites must be supported by at least one TLS protocol version that you select.
  final pulumi.Input<List<String>> ciphers;
  /// The dry run.
  final pulumi.Input<bool>? dryRun;
  /// The ID of the resource group.
  final pulumi.Input<String>? resourceGroupId;
  /// The name of the resource. The name must be 2 to 128 characters in length and must start with a letter. It can contain digits, periods (.), underscores (_), and hyphens (-).
  final pulumi.Input<String> securityPolicyName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The TLS protocol versions that are supported. Valid values: TLSv1.0, TLSv1.1, TLSv1.2 and TLSv1.3.
  final pulumi.Input<List<String>> tlsVersions;

  /// Creates a new [SecurityPolicyArgs].
  /// [ciphers] The supported cipher suites, which are determined by the TLS protocol version.The specified cipher suites must be supported by at least one TLS protocol version that you select.
  /// [dryRun] The dry run.
  /// [resourceGroupId] The ID of the resource group.
  /// [securityPolicyName] The name of the resource. The name must be 2 to 128 characters in length and must start with a letter. It can contain digits, periods (.), underscores (_), and hyphens (-).
  /// [tags] A mapping of tags to assign to the resource.
  /// [tlsVersions] The TLS protocol versions that are supported. Valid values: TLSv1.0, TLSv1.1, TLSv1.2 and TLSv1.3.
  SecurityPolicyArgs({
    required this.ciphers,
    this.dryRun,
    this.resourceGroupId,
    required this.securityPolicyName,
    this.tags,
    required this.tlsVersions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ciphers': ciphers,
      'dryRun': ?dryRun,
      'resourceGroupId': ?resourceGroupId,
      'securityPolicyName': securityPolicyName,
      'tags': ?tags,
      'tlsVersions': tlsVersions,
    };
  }

  factory SecurityPolicyArgs.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyArgs(
      ciphers: ((map['ciphers'] as List).cast<String>()).input(),
      dryRun: map['dryRun'] == null ? null : (map['dryRun'] as bool).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId'] as String).input(),
      securityPolicyName: (map['securityPolicyName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tlsVersions: ((map['tlsVersions'] as List).cast<String>()).input(),
    );
  }
}

