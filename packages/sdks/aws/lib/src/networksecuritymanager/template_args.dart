// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networksecuritymanager_template_template_args_doc}
/// The set of arguments for Template.
/// {@endtemplate}
/// {@macro pulumi_networksecuritymanager_template_template_args_doc}
class TemplateArgs {
  /// Description of the template.
  final pulumi.Input<String?>? description;
  /// Firewall type of the template. Valid values: `WAF`.
  final pulumi.Input<String> firewallType;
  /// Whether to publish the template. When `true`, the template is saved in the published (`ACTIVE`) state. When `false`, it is saved as a draft (`DRAFT`); for a published template, the draft is saved on top of the published version. Defaults to `true`.
  final pulumi.Input<bool?>? isPublished;
  /// Name of the template.
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Ordered list of ARNs of the rules to associate with the template. Specify 1 to 50 rules. Each rule can be associated only once.
  ///
  /// The following arguments are optional:
  final pulumi.Input<List<String>> ruleArns;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [TemplateArgs].
  /// [description] Description of the template.
  /// [firewallType] Firewall type of the template. Valid values: `WAF`.
  /// [isPublished] Whether to publish the template. When `true`, the template is saved in the published (`ACTIVE`) state. When `false`, it is saved as a draft (`DRAFT`); for a published template, the draft is saved on top of the published version. Defaults to `true`.
  /// [name] Name of the template.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [ruleArns] Ordered list of ARNs of the rules to associate with the template. Specify 1 to 50 rules. Each rule can be associated only once.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const TemplateArgs({
    this.description,
    required this.firewallType,
    this.isPublished,
    this.name,
    this.region,
    required this.ruleArns,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'firewallType': firewallType,
      'isPublished': ?isPublished,
      'name': ?name,
      'region': ?region,
      'ruleArns': ruleArns,
      'tags': ?tags,
    };
  }

  factory TemplateArgs.fromMap(Map<String, dynamic> map) {
    return TemplateArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      firewallType: pulumi.Input.fromValue(map['firewallType'] as String),
      isPublished: (() { final guardedValue = map['isPublished']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ruleArns: pulumi.Input.fromValue((map['ruleArns'] as List).cast<String>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
