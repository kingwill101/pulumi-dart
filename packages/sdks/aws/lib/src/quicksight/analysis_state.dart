// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'analysis_parameters.dart';
import 'analysis_permission.dart';
import 'analysis_source_entity.dart';

/// Input properties used for looking up and filtering Analysis resources.
class AnalysisState {
  /// Identifier for the analysis.
  final pulumi.Input<String>? analysisId;
  /// ARN of the analysis.
  final pulumi.Input<String>? arn;
  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  final pulumi.Input<String>? awsAccountId;
  /// The time that the analysis was created.
  final pulumi.Input<String>? createdTime;
  final pulumi.Input<String>? lastPublishedTime;
  /// The time that the analysis was last updated.
  final pulumi.Input<String>? lastUpdatedTime;
  /// Display name for the analysis.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;
  /// The parameters for the creation of the analysis, which you want to use to override the default settings. An analysis can have any type of parameters, and some parameters might accept multiple values. See parameters.
  final pulumi.Input<AnalysisParameters>? parameters;
  /// A set of resource permissions on the analysis. Maximum of 64 items. See permissions.
  final pulumi.Input<List<AnalysisPermission>>? permissions;
  /// A value that specifies the number of days that Amazon QuickSight waits before it deletes the analysis. Use `0` to force deletion without recovery. Minimum value of `7`. Maximum value of `30`. Default to `30`.
  final pulumi.Input<int>? recoveryWindowInDays;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The entity that you are using as a source when you create the analysis (template). Only one of `definition` or `source_entity` should be configured. See source_entity.
  final pulumi.Input<AnalysisSourceEntity>? sourceEntity;
  /// The analysis creation status.
  final pulumi.Input<String>? status;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The Amazon Resource Name (ARN) of the theme that is being used for this analysis. The theme ARN must exist in the same AWS account where you create the analysis.
  final pulumi.Input<String>? themeArn;

  /// Creates a new [AnalysisState].
  /// [analysisId] Identifier for the analysis.
  /// [arn] ARN of the analysis.
  /// [awsAccountId] AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  /// [createdTime] The time that the analysis was created.
  /// [lastPublishedTime] Optional.
  /// [lastUpdatedTime] The time that the analysis was last updated.
  /// [name] Display name for the analysis.
  /// [parameters] The parameters for the creation of the analysis, which you want to use to override the default settings. An analysis can have any type of parameters, and some parameters might accept multiple values. See parameters.
  /// [permissions] A set of resource permissions on the analysis. Maximum of 64 items. See permissions.
  /// [recoveryWindowInDays] A value that specifies the number of days that Amazon QuickSight waits before it deletes the analysis. Use `0` to force deletion without recovery. Minimum value of `7`. Maximum value of `30`. Default to `30`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sourceEntity] The entity that you are using as a source when you create the analysis (template). Only one of `definition` or `source_entity` should be configured. See source_entity.
  /// [status] The analysis creation status.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [themeArn] The Amazon Resource Name (ARN) of the theme that is being used for this analysis. The theme ARN must exist in the same AWS account where you create the analysis.
  AnalysisState({
    pulumi.Output<String>? analysisId,
    pulumi.Output<String>? arn,
    pulumi.Output<String>? awsAccountId,
    pulumi.Output<String>? createdTime,
    pulumi.Output<String>? lastPublishedTime,
    pulumi.Output<String>? lastUpdatedTime,
    pulumi.Output<String>? name,
    pulumi.Output<AnalysisParameters>? parameters,
    pulumi.Output<List<AnalysisPermission>>? permissions,
    pulumi.Output<int>? recoveryWindowInDays,
    pulumi.Output<String>? region,
    pulumi.Output<AnalysisSourceEntity>? sourceEntity,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? themeArn,
  }) :
      analysisId = pulumi.Input.asOptionalInput<String>(analysisId),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      awsAccountId = pulumi.Input.asOptionalInput<String>(awsAccountId),
      createdTime = pulumi.Input.asOptionalInput<String>(createdTime),
      lastPublishedTime = pulumi.Input.asOptionalInput<String>(lastPublishedTime),
      lastUpdatedTime = pulumi.Input.asOptionalInput<String>(lastUpdatedTime),
      name = pulumi.Input.asOptionalInput<String>(name),
      parameters = pulumi.Input.asOptionalInput<AnalysisParameters>(parameters),
      permissions = pulumi.Input.asOptionalInput<List<AnalysisPermission>>(permissions),
      recoveryWindowInDays = pulumi.Input.asOptionalInput<int>(recoveryWindowInDays),
      region = pulumi.Input.asOptionalInput<String>(region),
      sourceEntity = pulumi.Input.asOptionalInput<AnalysisSourceEntity>(sourceEntity),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      themeArn = pulumi.Input.asOptionalInput<String>(themeArn);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'analysisId': ?analysisId,
      'arn': ?arn,
      'awsAccountId': ?awsAccountId,
      'createdTime': ?createdTime,
      'lastPublishedTime': ?lastPublishedTime,
      'lastUpdatedTime': ?lastUpdatedTime,
      'name': ?name,
      'parameters': ?pulumi.Input.mapOptionalInputValue<AnalysisParameters, Map<String, dynamic>>(parameters, (value) => value.toMap()),
      'permissions': ?pulumi.Input.mapOptionalInputValue<List<AnalysisPermission>, List<Map<String, dynamic>>>(permissions, (value) => pulumi.Input.encodeList<AnalysisPermission, Map<String, dynamic>>(value, (value) => value.toMap())),
      'recoveryWindowInDays': ?recoveryWindowInDays,
      'region': ?region,
      'sourceEntity': ?pulumi.Input.mapOptionalInputValue<AnalysisSourceEntity, Map<String, dynamic>>(sourceEntity, (value) => value.toMap()),
      'status': ?status,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'themeArn': ?themeArn,
    };
  }

  factory AnalysisState.fromMap(Map<String, dynamic> map) {
    return AnalysisState(
      analysisId: map['analysisId'] == null ? null : pulumi.Output.create<String>(map['analysisId'] as String),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      awsAccountId: map['awsAccountId'] == null ? null : pulumi.Output.create<String>(map['awsAccountId'] as String),
      createdTime: map['createdTime'] == null ? null : pulumi.Output.create<String>(map['createdTime'] as String),
      lastPublishedTime: map['lastPublishedTime'] == null ? null : pulumi.Output.create<String>(map['lastPublishedTime'] as String),
      lastUpdatedTime: map['lastUpdatedTime'] == null ? null : pulumi.Output.create<String>(map['lastUpdatedTime'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      parameters: map['parameters'] == null ? null : pulumi.Output.create<AnalysisParameters>(AnalysisParameters.fromMap((map['parameters'] as Map).cast<String, dynamic>())),
      permissions: map['permissions'] == null ? null : pulumi.Output.create<List<AnalysisPermission>>(pulumi.Input.decodeList<AnalysisPermission>(map['permissions'], (value) => AnalysisPermission.fromMap((value as Map).cast<String, dynamic>()))),
      recoveryWindowInDays: map['recoveryWindowInDays'] == null ? null : pulumi.Output.create<int>(map['recoveryWindowInDays'] as int),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      sourceEntity: map['sourceEntity'] == null ? null : pulumi.Output.create<AnalysisSourceEntity>(AnalysisSourceEntity.fromMap((map['sourceEntity'] as Map).cast<String, dynamic>())),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      themeArn: map['themeArn'] == null ? null : pulumi.Output.create<String>(map['themeArn'] as String),
    );
  }
}

