// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PipelineStageAction {
  /// A category defines what kind of action can be taken in the stage, and constrains the provider type for the action. Possible values are `Approval`, `Build`, `Deploy`, `Invoke`, `Source` and `Test`.
  final pulumi.Input<String> category;
  /// A map of the action declaration's configuration. Configurations options for action types and providers can be found in the [Pipeline Structure Reference](http://docs.aws.amazon.com/codepipeline/latest/userguide/reference-pipeline-structure.html#action-requirements) and [Action Structure Reference](https://docs.aws.amazon.com/codepipeline/latest/userguide/action-reference.html) documentation. Note: The `DetectChanges` parameter (optional, default value is true) in the `configuration` section causes CodePipeline to automatically start your pipeline upon new commits. Please refer to AWS Documentation for more details: https://docs.aws.amazon.com/codepipeline/latest/userguide/action-reference-CodestarConnectionSource.html#action-reference-CodestarConnectionSource-config.
  final pulumi.Input<Map<String, String>>? configuration;
  /// A list of artifact names to be worked on.
  final pulumi.Input<List<String>>? inputArtifacts;
  /// The action declaration's name.
  final pulumi.Input<String> name;
  /// The namespace all output variables will be accessed from.
  final pulumi.Input<String>? namespace;
  /// A list of artifact names to output. Output artifact names must be unique within a pipeline.
  final pulumi.Input<List<String>>? outputArtifacts;
  /// The creator of the action being called. Possible values are `AWS`, `Custom` and `ThirdParty`.
  final pulumi.Input<String> owner;
  /// The provider of the service being called by the action. Valid providers are determined by the action category. Provider names are listed in the [Action Structure Reference](https://docs.aws.amazon.com/codepipeline/latest/userguide/action-reference.html) documentation.
  final pulumi.Input<String> provider;
  /// The region in which to run the action.
  final pulumi.Input<String>? region;
  /// The ARN of the IAM service role that will perform the declared action. This is assumed through the roleArn for the pipeline.
  final pulumi.Input<String>? roleArn;
  /// The order in which actions are run.
  final pulumi.Input<int>? runOrder;
  /// The action timeout for the rule.
  final pulumi.Input<int>? timeoutInMinutes;
  /// A string that identifies the action type.
  final pulumi.Input<String> version;

  /// Creates a new [PipelineStageAction].
  /// [category] A category defines what kind of action can be taken in the stage, and constrains the provider type for the action. Possible values are `Approval`, `Build`, `Deploy`, `Invoke`, `Source` and `Test`.
  /// [configuration] A map of the action declaration's configuration. Configurations options for action types and providers can be found in the [Pipeline Structure Reference](http://docs.aws.amazon.com/codepipeline/latest/userguide/reference-pipeline-structure.html#action-requirements) and [Action Structure Reference](https://docs.aws.amazon.com/codepipeline/latest/userguide/action-reference.html) documentation. Note: The `DetectChanges` parameter (optional, default value is true) in the `configuration` section causes CodePipeline to automatically start your pipeline upon new commits. Please refer to AWS Documentation for more details: https://docs.aws.amazon.com/codepipeline/latest/userguide/action-reference-CodestarConnectionSource.html#action-reference-CodestarConnectionSource-config.
  /// [inputArtifacts] A list of artifact names to be worked on.
  /// [name] The action declaration's name.
  /// [namespace] The namespace all output variables will be accessed from.
  /// [outputArtifacts] A list of artifact names to output. Output artifact names must be unique within a pipeline.
  /// [owner] The creator of the action being called. Possible values are `AWS`, `Custom` and `ThirdParty`.
  /// [provider] The provider of the service being called by the action. Valid providers are determined by the action category. Provider names are listed in the [Action Structure Reference](https://docs.aws.amazon.com/codepipeline/latest/userguide/action-reference.html) documentation.
  /// [region] The region in which to run the action.
  /// [roleArn] The ARN of the IAM service role that will perform the declared action. This is assumed through the roleArn for the pipeline.
  /// [runOrder] The order in which actions are run.
  /// [timeoutInMinutes] The action timeout for the rule.
  /// [version] A string that identifies the action type.
  PipelineStageAction({
    required this.category,
    this.configuration,
    this.inputArtifacts,
    required this.name,
    this.namespace,
    this.outputArtifacts,
    required this.owner,
    required this.provider,
    this.region,
    this.roleArn,
    this.runOrder,
    this.timeoutInMinutes,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': category,
      'configuration': ?configuration,
      'inputArtifacts': ?inputArtifacts,
      'name': name,
      'namespace': ?namespace,
      'outputArtifacts': ?outputArtifacts,
      'owner': owner,
      'provider': provider,
      'region': ?region,
      'roleArn': ?roleArn,
      'runOrder': ?runOrder,
      'timeoutInMinutes': ?timeoutInMinutes,
      'version': version,
    };
  }

  factory PipelineStageAction.fromMap(Map<String, dynamic> map) {
    return PipelineStageAction(
      category: (map['category'] as String).input(),
      configuration: map['configuration'] == null ? null : ((map['configuration'] as Map).cast<String, String>()).input(),
      inputArtifacts: map['inputArtifacts'] == null ? null : ((map['inputArtifacts'] as List).cast<String>()).input(),
      name: (map['name'] as String).input(),
      namespace: map['namespace'] == null ? null : (map['namespace'] as String).input(),
      outputArtifacts: map['outputArtifacts'] == null ? null : ((map['outputArtifacts'] as List).cast<String>()).input(),
      owner: (map['owner'] as String).input(),
      provider: (map['provider'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      roleArn: map['roleArn'] == null ? null : (map['roleArn'] as String).input(),
      runOrder: map['runOrder'] == null ? null : (map['runOrder'] as int).input(),
      timeoutInMinutes: map['timeoutInMinutes'] == null ? null : (map['timeoutInMinutes'] as int).input(),
      version: (map['version'] as String).input(),
    );
  }
}

