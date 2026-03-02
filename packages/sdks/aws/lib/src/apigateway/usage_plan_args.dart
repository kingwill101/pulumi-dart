// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'usage_plan_api_stage.dart';
import 'usage_plan_quota_settings.dart';
import 'usage_plan_throttle_settings.dart';

/// {@template pulumi_apigateway_usage_plan_usage_plan_args_doc}
/// The set of arguments for UsagePlan.
/// {@endtemplate}
/// {@macro pulumi_apigateway_usage_plan_usage_plan_args_doc}
class UsagePlanArgs {
  /// Associated API stages of the usage plan.
  final pulumi.Input<List<UsagePlanApiStage>>? apiStages;
  /// Description of a usage plan.
  final pulumi.Input<String>? description;
  /// Name of the usage plan.
  final pulumi.Input<String>? name;
  /// AWS Marketplace product identifier to associate with the usage plan as a SaaS product on AWS Marketplace.
  final pulumi.Input<String>? productCode;
  /// The quota settings of the usage plan.
  final pulumi.Input<UsagePlanQuotaSettings>? quotaSettings;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// The throttling limits of the usage plan.
  final pulumi.Input<UsagePlanThrottleSettings>? throttleSettings;

  /// Creates a new [UsagePlanArgs].
  /// [apiStages] Associated API stages of the usage plan.
  /// [description] Description of a usage plan.
  /// [name] Name of the usage plan.
  /// [productCode] AWS Marketplace product identifier to associate with the usage plan as a SaaS product on AWS Marketplace.
  /// [quotaSettings] The quota settings of the usage plan.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [throttleSettings] The throttling limits of the usage plan.
  UsagePlanArgs({
    this.apiStages,
    this.description,
    this.name,
    this.productCode,
    this.quotaSettings,
    this.region,
    this.tags,
    this.throttleSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiStages': ?pulumi.Input.mapOptionalInputValue<List<UsagePlanApiStage>, List<Map<String, dynamic>>>(apiStages, (value) => pulumi.Input.encodeList<UsagePlanApiStage, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'name': ?name,
      'productCode': ?productCode,
      'quotaSettings': ?pulumi.Input.mapOptionalInputValue<UsagePlanQuotaSettings, Map<String, dynamic>>(quotaSettings, (value) => value.toMap()),
      'region': ?region,
      'tags': ?tags,
      'throttleSettings': ?pulumi.Input.mapOptionalInputValue<UsagePlanThrottleSettings, Map<String, dynamic>>(throttleSettings, (value) => value.toMap()),
    };
  }

  factory UsagePlanArgs.fromMap(Map<String, dynamic> map) {
    return UsagePlanArgs(
      apiStages: map['apiStages'] == null ? null : ((pulumi.Input.decodeList<UsagePlanApiStage>(map['apiStages']!, (value) => UsagePlanApiStage.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      productCode: map['productCode'] == null ? null : ((map['productCode'] as String).input()).input(),
      quotaSettings: map['quotaSettings'] == null ? null : ((UsagePlanQuotaSettings.fromMap((map['quotaSettings']! as Map).cast<String, dynamic>())).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      throttleSettings: map['throttleSettings'] == null ? null : ((UsagePlanThrottleSettings.fromMap((map['throttleSettings']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

