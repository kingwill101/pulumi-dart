// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'usage_plan_api_stage.dart';
import 'usage_plan_quota_settings.dart';
import 'usage_plan_throttle_settings.dart';

/// Input properties used for looking up and filtering UsagePlan resources.
class UsagePlanState {
  /// Associated API stages of the usage plan.
  final pulumi.Input<List<UsagePlanApiStage>>? apiStages;
  /// ARN
  final pulumi.Input<String>? arn;
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
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The throttling limits of the usage plan.
  final pulumi.Input<UsagePlanThrottleSettings>? throttleSettings;

  /// Creates a new [UsagePlanState].
  /// [apiStages] Associated API stages of the usage plan.
  /// [arn] ARN
  /// [description] Description of a usage plan.
  /// [name] Name of the usage plan.
  /// [productCode] AWS Marketplace product identifier to associate with the usage plan as a SaaS product on AWS Marketplace.
  /// [quotaSettings] The quota settings of the usage plan.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [throttleSettings] The throttling limits of the usage plan.
  UsagePlanState({
    pulumi.Output<List<UsagePlanApiStage>>? apiStages,
    pulumi.Output<String>? arn,
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    pulumi.Output<String>? productCode,
    pulumi.Output<UsagePlanQuotaSettings>? quotaSettings,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<UsagePlanThrottleSettings>? throttleSettings,
  }) :
      apiStages = pulumi.Input.asOptionalInput<List<UsagePlanApiStage>>(apiStages),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      productCode = pulumi.Input.asOptionalInput<String>(productCode),
      quotaSettings = pulumi.Input.asOptionalInput<UsagePlanQuotaSettings>(quotaSettings),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      throttleSettings = pulumi.Input.asOptionalInput<UsagePlanThrottleSettings>(throttleSettings);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiStages': ?pulumi.Input.mapOptionalInputValue<List<UsagePlanApiStage>, List<Map<String, dynamic>>>(apiStages, (value) => pulumi.Input.encodeList<UsagePlanApiStage, Map<String, dynamic>>(value, (value) => value.toMap())),
      'arn': ?arn,
      'description': ?description,
      'name': ?name,
      'productCode': ?productCode,
      'quotaSettings': ?pulumi.Input.mapOptionalInputValue<UsagePlanQuotaSettings, Map<String, dynamic>>(quotaSettings, (value) => value.toMap()),
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'throttleSettings': ?pulumi.Input.mapOptionalInputValue<UsagePlanThrottleSettings, Map<String, dynamic>>(throttleSettings, (value) => value.toMap()),
    };
  }

  factory UsagePlanState.fromMap(Map<String, dynamic> map) {
    return UsagePlanState(
      apiStages: map['apiStages'] == null ? null : pulumi.Output.create<List<UsagePlanApiStage>>(pulumi.Input.decodeList<UsagePlanApiStage>(map['apiStages'], (value) => UsagePlanApiStage.fromMap((value as Map).cast<String, dynamic>()))),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      productCode: map['productCode'] == null ? null : pulumi.Output.create<String>(map['productCode'] as String),
      quotaSettings: map['quotaSettings'] == null ? null : pulumi.Output.create<UsagePlanQuotaSettings>(UsagePlanQuotaSettings.fromMap((map['quotaSettings'] as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      throttleSettings: map['throttleSettings'] == null ? null : pulumi.Output.create<UsagePlanThrottleSettings>(UsagePlanThrottleSettings.fromMap((map['throttleSettings'] as Map).cast<String, dynamic>())),
    );
  }
}

