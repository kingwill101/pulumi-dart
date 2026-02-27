// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../firewall_policy_encryption_configuration/firewall_policy_encryption_configuration.dart';
import '../firewall_policy_firewall_policy/firewall_policy_firewall_policy.dart';

/// The set of arguments for FirewallPolicy.
class FirewallPolicyArgs {
  /// A friendly description of the firewall policy.
  final pulumi.Input<String>? description;

  /// KMS encryption configuration settings. See Encryption Configuration below for details.
  final pulumi.Input<FirewallPolicyEncryptionConfiguration>?
      encryptionConfiguration;

  /// A configuration block describing the rule groups and policy actions to use in the firewall policy. See Firewall Policy below for details.
  final pulumi.Input<FirewallPolicyFirewallPolicy> firewallPolicy;

  /// A friendly name of the firewall policy.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Map of resource tags to associate with the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  FirewallPolicyArgs({
    this.description,
    this.encryptionConfiguration,
    required this.firewallPolicy,
    this.name,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final encryptionConfigurationValue = encryptionConfiguration;
    if (encryptionConfigurationValue != null) {
      map['encryptionConfiguration'] = pulumi.Input.mapOptionalInputValue<
              FirewallPolicyEncryptionConfiguration, Map<String, dynamic>>(
          encryptionConfigurationValue, (value) => value.toMap());
    }
    map['firewallPolicy'] = pulumi.Input.mapInputValue<
        FirewallPolicyFirewallPolicy,
        Map<String, dynamic>>(firewallPolicy, (value) => value.toMap());
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory FirewallPolicyArgs.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      encryptionConfiguration:
          pulumi.Input.asOptionalInput<FirewallPolicyEncryptionConfiguration>(
              map['encryptionConfiguration']),
      firewallPolicy: pulumi.Input.asInput<FirewallPolicyFirewallPolicy>(
          map['firewallPolicy']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
