// ignore_for_file: unused_element, unnecessary_cast


class PipelineStageOnFailureConditionRuleRuleTypeId {
  /// A category defines what kind of rule can be run in the stage, and constrains the provider type for the rule. The valid category is `Rule`.
  final String category;
  /// The creator of the rule being called. The valid value for the Owner field in the rule category is `AWS`.
  final String? owner;
  /// The rule provider, such as the DeploymentWindow rule. For a list of rule provider names, see the rules listed in the [AWS CodePipeline rule reference](https://docs.aws.amazon.com/codepipeline/latest/userguide/rule-reference.html).
  final String provider;
  /// A string that describes the rule version.
  final String? version;

  /// Creates a new [PipelineStageOnFailureConditionRuleRuleTypeId].
  /// [category] A category defines what kind of rule can be run in the stage, and constrains the provider type for the rule. The valid category is `Rule`.
  /// [owner] The creator of the rule being called. The valid value for the Owner field in the rule category is `AWS`.
  /// [provider] The rule provider, such as the DeploymentWindow rule. For a list of rule provider names, see the rules listed in the [AWS CodePipeline rule reference](https://docs.aws.amazon.com/codepipeline/latest/userguide/rule-reference.html).
  /// [version] A string that describes the rule version.
  PipelineStageOnFailureConditionRuleRuleTypeId({
    required this.category,
    this.owner,
    required this.provider,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': category,
      'owner': ?owner,
      'provider': provider,
      'version': ?version,
    };
  }

  factory PipelineStageOnFailureConditionRuleRuleTypeId.fromMap(Map<String, dynamic> map) {
    return PipelineStageOnFailureConditionRuleRuleTypeId(
      category: map['category'] as String,
      owner: map['owner'] == null ? null : map['owner'] as String,
      provider: map['provider'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

