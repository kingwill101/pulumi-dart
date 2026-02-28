// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'analysis_parameters.dart';
import 'analysis_permission.dart';
import 'analysis_source_entity.dart';

/// {@template pulumi_quicksight_analysis_analysis_args_doc}
/// The set of arguments for Analysis.
/// {@endtemplate}
/// {@macro pulumi_quicksight_analysis_analysis_args_doc}
class AnalysisArgs {
  /// Identifier for the analysis.
  final pulumi.Input<String> analysisId;

  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  final pulumi.Input<String>? awsAccountId;

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

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// The Amazon Resource Name (ARN) of the theme that is being used for this analysis. The theme ARN must exist in the same AWS account where you create the analysis.
  final pulumi.Input<String>? themeArn;

  /// Creates a new [AnalysisArgs].
  /// [analysisId] Identifier for the analysis.
  /// [awsAccountId] AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  /// [name] Display name for the analysis.
  /// [parameters] The parameters for the creation of the analysis, which you want to use to override the default settings. An analysis can have any type of parameters, and some parameters might accept multiple values. See parameters.
  /// [permissions] A set of resource permissions on the analysis. Maximum of 64 items. See permissions.
  /// [recoveryWindowInDays] A value that specifies the number of days that Amazon QuickSight waits before it deletes the analysis. Use `0` to force deletion without recovery. Minimum value of `7`. Maximum value of `30`. Default to `30`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sourceEntity] The entity that you are using as a source when you create the analysis (template). Only one of `definition` or `source_entity` should be configured. See source_entity.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [themeArn] The Amazon Resource Name (ARN) of the theme that is being used for this analysis. The theme ARN must exist in the same AWS account where you create the analysis.
  AnalysisArgs({
    required String analysisId,
    String? awsAccountId,
    String? name,
    AnalysisParameters? parameters,
    List<AnalysisPermission>? permissions,
    int? recoveryWindowInDays,
    String? region,
    AnalysisSourceEntity? sourceEntity,
    Map<String, String>? tags,
    String? themeArn,
  })  : analysisId = pulumi.Input.asInput<String>(analysisId),
        awsAccountId = pulumi.Input.asOptionalInput<String>(awsAccountId),
        name = pulumi.Input.asOptionalInput<String>(name),
        parameters =
            pulumi.Input.asOptionalInput<AnalysisParameters>(parameters),
        permissions =
            pulumi.Input.asOptionalInput<List<AnalysisPermission>>(permissions),
        recoveryWindowInDays =
            pulumi.Input.asOptionalInput<int>(recoveryWindowInDays),
        region = pulumi.Input.asOptionalInput<String>(region),
        sourceEntity =
            pulumi.Input.asOptionalInput<AnalysisSourceEntity>(sourceEntity),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
        themeArn = pulumi.Input.asOptionalInput<String>(themeArn);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['analysisId'] = analysisId;
    final awsAccountIdValue = awsAccountId;
    if (awsAccountIdValue != null) {
      map['awsAccountId'] = awsAccountIdValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final parametersValue = parameters;
    if (parametersValue != null) {
      map['parameters'] = pulumi.Input.mapOptionalInputValue<AnalysisParameters,
          Map<String, dynamic>>(parametersValue, (value) => value.toMap());
    }
    final permissionsValue = permissions;
    if (permissionsValue != null) {
      map['permissions'] = pulumi.Input.mapOptionalInputValue<
              List<AnalysisPermission>, List<Map<String, dynamic>>>(
          permissionsValue,
          (value) =>
              pulumi.Input.encodeList<AnalysisPermission, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final recoveryWindowInDaysValue = recoveryWindowInDays;
    if (recoveryWindowInDaysValue != null) {
      map['recoveryWindowInDays'] = recoveryWindowInDaysValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final sourceEntityValue = sourceEntity;
    if (sourceEntityValue != null) {
      map['sourceEntity'] = pulumi.Input.mapOptionalInputValue<
          AnalysisSourceEntity,
          Map<String, dynamic>>(sourceEntityValue, (value) => value.toMap());
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final themeArnValue = themeArn;
    if (themeArnValue != null) {
      map['themeArn'] = themeArnValue;
    }
    return map;
  }

  factory AnalysisArgs.fromMap(Map<String, dynamic> map) {
    return AnalysisArgs(
      analysisId: map['analysisId'] as String,
      awsAccountId:
          map['awsAccountId'] == null ? null : map['awsAccountId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      parameters: map['parameters'] == null
          ? null
          : AnalysisParameters.fromMap(
              (map['parameters'] as Map).cast<String, dynamic>()),
      permissions: map['permissions'] == null
          ? null
          : pulumi.Input.decodeList<AnalysisPermission>(
              map['permissions'],
              (value) => AnalysisPermission.fromMap(
                  (value as Map).cast<String, dynamic>())),
      recoveryWindowInDays: map['recoveryWindowInDays'] == null
          ? null
          : map['recoveryWindowInDays'] as int,
      region: map['region'] == null ? null : map['region'] as String,
      sourceEntity: map['sourceEntity'] == null
          ? null
          : AnalysisSourceEntity.fromMap(
              (map['sourceEntity'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      themeArn: map['themeArn'] == null ? null : map['themeArn'] as String,
    );
  }
}
