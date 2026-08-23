// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_policy_encryption_configuration.dart';
import 'firewall_policy_firewall_policy.dart';

/// Input properties used for looking up and filtering FirewallPolicy resources.
class FirewallPolicyState {
  /// The Amazon Resource Name (ARN) that identifies the firewall policy.
  final pulumi.Input<String>? arn;
  /// A friendly description of the firewall policy.
  final pulumi.Input<String>? description;
  /// KMS encryption configuration settings. See Encryption Configuration below for details.
  final pulumi.Input<FirewallPolicyEncryptionConfiguration>? encryptionConfiguration;
  /// A configuration block describing the rule groups and policy actions to use in the firewall policy. See Firewall Policy below for details.
  final pulumi.Input<FirewallPolicyFirewallPolicy>? firewallPolicy;
  /// A friendly name of the firewall policy.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Map of resource tags to associate with the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// A string token used when updating a firewall policy.
  final pulumi.Input<String>? updateToken;

  /// Creates a new [FirewallPolicyState].
  /// [arn] The Amazon Resource Name (ARN) that identifies the firewall policy.
  /// [description] A friendly description of the firewall policy.
  /// [encryptionConfiguration] KMS encryption configuration settings. See Encryption Configuration below for details.
  /// [firewallPolicy] A configuration block describing the rule groups and policy actions to use in the firewall policy. See Firewall Policy below for details.
  /// [name] A friendly name of the firewall policy.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of resource tags to associate with the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [updateToken] A string token used when updating a firewall policy.
  const FirewallPolicyState({
    this.arn,
    this.description,
    this.encryptionConfiguration,
    this.firewallPolicy,
    this.name,
    this.region,
    this.tags,
    this.tagsAll,
    this.updateToken,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'description': ?description,
      'encryptionConfiguration': ?pulumi.Input.mapOptionalInputValue<FirewallPolicyEncryptionConfiguration, Map<String, dynamic>>(encryptionConfiguration, (value) => value.toMap()),
      'firewallPolicy': ?pulumi.Input.mapOptionalInputValue<FirewallPolicyFirewallPolicy, Map<String, dynamic>>(firewallPolicy, (value) => value.toMap()),
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'updateToken': ?updateToken,
    };
  }

  factory FirewallPolicyState.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptionConfiguration: (() { final guardedValue = map['encryptionConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FirewallPolicyEncryptionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      firewallPolicy: (() { final guardedValue = map['firewallPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FirewallPolicyFirewallPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      updateToken: (() { final guardedValue = map['updateToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
