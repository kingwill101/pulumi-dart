// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_policy_encryption_configuration.dart';
import 'firewall_policy_firewall_policy.dart';

/// {@template pulumi_networkfirewall_firewall_policy_firewall_policy_args_doc}
/// The set of arguments for FirewallPolicy.
/// {@endtemplate}
/// {@macro pulumi_networkfirewall_firewall_policy_firewall_policy_args_doc}
class FirewallPolicyArgs {
  /// A friendly description of the firewall policy.
  final pulumi.Input<String?>? description;
  /// KMS encryption configuration settings. See Encryption Configuration below for details.
  final pulumi.Input<FirewallPolicyEncryptionConfiguration?>? encryptionConfiguration;
  /// A configuration block describing the rule groups and policy actions to use in the firewall policy. See Firewall Policy below for details.
  final pulumi.Input<FirewallPolicyFirewallPolicy> firewallPolicy;
  /// A friendly name of the firewall policy.
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Map of resource tags to associate with the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [FirewallPolicyArgs].
  /// [description] A friendly description of the firewall policy.
  /// [encryptionConfiguration] KMS encryption configuration settings. See Encryption Configuration below for details.
  /// [firewallPolicy] A configuration block describing the rule groups and policy actions to use in the firewall policy. See Firewall Policy below for details.
  /// [name] A friendly name of the firewall policy.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of resource tags to associate with the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const FirewallPolicyArgs({
    this.description,
    this.encryptionConfiguration,
    required this.firewallPolicy,
    this.name,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'encryptionConfiguration': ?pulumi.Input.mapOptionalInputValue<FirewallPolicyEncryptionConfiguration, Map<String, dynamic>>(encryptionConfiguration, (value) => value.toMap()),
      'firewallPolicy': pulumi.Input.mapInputValue<FirewallPolicyFirewallPolicy, Map<String, dynamic>>(firewallPolicy, (value) => value.toMap()),
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory FirewallPolicyArgs.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptionConfiguration: (() { final guardedValue = map['encryptionConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FirewallPolicyEncryptionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      firewallPolicy: pulumi.Input.fromValue(FirewallPolicyFirewallPolicy.fromMap((map['firewallPolicy']! as Map).cast<String, dynamic>())),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
