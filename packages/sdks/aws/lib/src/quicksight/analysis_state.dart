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
  /// The entity that you are using as a source when you create the analysis (template). Only one of `definition` or `sourceEntity` should be configured. See source_entity.
  final pulumi.Input<AnalysisSourceEntity>? sourceEntity;
  /// The analysis creation status.
  final pulumi.Input<String>? status;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
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
  /// [sourceEntity] The entity that you are using as a source when you create the analysis (template). Only one of `definition` or `sourceEntity` should be configured. See source_entity.
  /// [status] The analysis creation status.
  /// [tags] Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [themeArn] The Amazon Resource Name (ARN) of the theme that is being used for this analysis. The theme ARN must exist in the same AWS account where you create the analysis.
  const AnalysisState({
    this.analysisId,
    this.arn,
    this.awsAccountId,
    this.createdTime,
    this.lastPublishedTime,
    this.lastUpdatedTime,
    this.name,
    this.parameters,
    this.permissions,
    this.recoveryWindowInDays,
    this.region,
    this.sourceEntity,
    this.status,
    this.tags,
    this.tagsAll,
    this.themeArn,
  });

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
      analysisId: (() { final guardedValue = map['analysisId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      awsAccountId: (() { final guardedValue = map['awsAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdTime: (() { final guardedValue = map['createdTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastPublishedTime: (() { final guardedValue = map['lastPublishedTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastUpdatedTime: (() { final guardedValue = map['lastUpdatedTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AnalysisParameters.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      permissions: (() { final guardedValue = map['permissions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AnalysisPermission>(guardedValue, (value) => AnalysisPermission.fromMap((value as Map).cast<String, dynamic>()))); })(),
      recoveryWindowInDays: (() { final guardedValue = map['recoveryWindowInDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceEntity: (() { final guardedValue = map['sourceEntity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AnalysisSourceEntity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      themeArn: (() { final guardedValue = map['themeArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
