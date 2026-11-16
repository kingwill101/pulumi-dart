// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_configuration.dart';
import 'policy_template_or_rule.dart';

/// {@template pulumi_networksecuritymanager_policy_policy_args_doc}
/// The set of arguments for Policy.
/// {@endtemplate}
/// {@macro pulumi_networksecuritymanager_policy_policy_args_doc}
class PolicyArgs {
  /// Settings that control the policy's behavior. See `configuration` below.
  final pulumi.Input<PolicyConfiguration> configuration;
  /// Description of the policy.
  final pulumi.Input<String?>? description;
  /// Firewall type of the policy. Valid values: `WAF`, `SHIELD_ADVANCED`. Changing this value forces a new resource.
  final pulumi.Input<String> firewallType;
  /// Whether to publish the policy. When `true`, the policy is saved in the published (`ACTIVE`) state. When `false`, it is saved as a draft (`DRAFT`); for a published policy, the draft is saved on top of the published version. Defaults to `true`.
  final pulumi.Input<bool?>? isPublished;
  /// Name of the policy. Changing this value forces a new resource.
  final pulumi.Input<String?>? name;
  /// Priority of the policy. A lower number indicates a higher priority. Minimum value of `1`. Must be unique across policies in the AWS account.
  ///
  /// The following arguments are optional:
  final pulumi.Input<int> priority;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Ordered list of templates and rules to associate with the policy. For `WAF` policies, specify 1 to 100 entries, of which at most 2 can be templates. Must be omitted for `SHIELD_ADVANCED` policies. See `templateOrRule` below.
  ///
  /// &gt; **Note:** A rule or template referenced by a published policy cannot be deleted. Configure `createBeforeDestroy` on referenced rule and template resources so that a replacement is associated with the policy before the old resource is deleted.
  final pulumi.Input<List<PolicyTemplateOrRule>?>? templateOrRules;

  /// Creates a new [PolicyArgs].
  /// [configuration] Settings that control the policy's behavior. See `configuration` below.
  /// [description] Description of the policy.
  /// [firewallType] Firewall type of the policy. Valid values: `WAF`, `SHIELD_ADVANCED`. Changing this value forces a new resource.
  /// [isPublished] Whether to publish the policy. When `true`, the policy is saved in the published (`ACTIVE`) state. When `false`, it is saved as a draft (`DRAFT`); for a published policy, the draft is saved on top of the published version. Defaults to `true`.
  /// [name] Name of the policy. Changing this value forces a new resource.
  /// [priority] Priority of the policy. A lower number indicates a higher priority. Minimum value of `1`. Must be unique across policies in the AWS account.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [templateOrRules] Ordered list of templates and rules to associate with the policy. For `WAF` policies, specify 1 to 100 entries, of which at most 2 can be templates. Must be omitted for `SHIELD_ADVANCED` policies. See `templateOrRule` below.
  const PolicyArgs({
    required this.configuration,
    this.description,
    required this.firewallType,
    this.isPublished,
    this.name,
    required this.priority,
    this.region,
    this.tags,
    this.templateOrRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configuration': pulumi.Input.mapInputValue<PolicyConfiguration, Map<String, dynamic>>(configuration, (value) => value.toMap()),
      'description': ?description,
      'firewallType': firewallType,
      'isPublished': ?isPublished,
      'name': ?name,
      'priority': priority,
      'region': ?region,
      'tags': ?tags,
      'templateOrRules': ?pulumi.Input.mapOptionalInputValue<List<PolicyTemplateOrRule>, List<Map<String, dynamic>>>(templateOrRules, (value) => pulumi.Input.encodeList<PolicyTemplateOrRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PolicyArgs.fromMap(Map<String, dynamic> map) {
    return PolicyArgs(
      configuration: pulumi.Input.fromValue(PolicyConfiguration.fromMap((map['configuration']! as Map).cast<String, dynamic>())),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      firewallType: pulumi.Input.fromValue(map['firewallType'] as String),
      isPublished: (() { final guardedValue = map['isPublished']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      priority: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['priority'])),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      templateOrRules: (() { final guardedValue = map['templateOrRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PolicyTemplateOrRule>(guardedValue, (value) => PolicyTemplateOrRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
