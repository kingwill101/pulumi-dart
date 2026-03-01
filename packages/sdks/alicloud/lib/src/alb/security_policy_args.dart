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
    required pulumi.Output<List<String>> ciphers,
    pulumi.Output<bool>? dryRun,
    pulumi.Output<String>? resourceGroupId,
    required pulumi.Output<String> securityPolicyName,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<List<String>> tlsVersions,
  }) :
      ciphers = pulumi.Input.asInput<List<String>>(ciphers),
      dryRun = pulumi.Input.asOptionalInput<bool>(dryRun),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      securityPolicyName = pulumi.Input.asInput<String>(securityPolicyName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tlsVersions = pulumi.Input.asInput<List<String>>(tlsVersions);

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
      ciphers: pulumi.Output.create<List<String>>((map['ciphers'] as List).cast<String>()),
      dryRun: map['dryRun'] == null ? null : pulumi.Output.create<bool>(map['dryRun'] as bool),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      securityPolicyName: pulumi.Output.create<String>(map['securityPolicyName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tlsVersions: pulumi.Output.create<List<String>>((map['tlsVersions'] as List).cast<String>()),
    );
  }
}

