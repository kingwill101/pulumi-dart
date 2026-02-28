// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_applicationinsights_application_application_args_doc}
/// The set of arguments for Application.
/// {@endtemplate}
/// {@macro pulumi_applicationinsights_application_application_args_doc}
class ApplicationArgs {
  /// Indicates whether Application Insights automatically configures unmonitored resources in the resource group.
  final pulumi.Input<bool>? autoConfigEnabled;
  /// Configures all of the resources in the resource group by applying the recommended configurations.
  final pulumi.Input<bool>? autoCreate;
  /// Indicates whether Application Insights can listen to CloudWatch events for the application resources, such as instance terminated, failed deployment, and others.
  final pulumi.Input<bool>? cweMonitorEnabled;
  /// Application Insights can create applications based on a resource group or on an account. To create an account-based application using all of the resources in the account, set this parameter to `ACCOUNT_BASED`.
  final pulumi.Input<String>? groupingType;
  /// When set to `true`, creates opsItems for any problems detected on an application.
  final pulumi.Input<bool>? opsCenterEnabled;
  /// SNS topic provided to Application Insights that is associated to the created opsItem. Allows you to receive notifications for updates to the opsItem.
  final pulumi.Input<String>? opsItemSnsTopicArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Name of the resource group.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> resourceGroupName;
  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ApplicationArgs].
  /// [autoConfigEnabled] Indicates whether Application Insights automatically configures unmonitored resources in the resource group.
  /// [autoCreate] Configures all of the resources in the resource group by applying the recommended configurations.
  /// [cweMonitorEnabled] Indicates whether Application Insights can listen to CloudWatch events for the application resources, such as instance terminated, failed deployment, and others.
  /// [groupingType] Application Insights can create applications based on a resource group or on an account. To create an account-based application using all of the resources in the account, set this parameter to `ACCOUNT_BASED`.
  /// [opsCenterEnabled] When set to `true`, creates opsItems for any problems detected on an application.
  /// [opsItemSnsTopicArn] SNS topic provided to Application Insights that is associated to the created opsItem. Allows you to receive notifications for updates to the opsItem.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceGroupName] Name of the resource group.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ApplicationArgs({
    bool? autoConfigEnabled,
    bool? autoCreate,
    bool? cweMonitorEnabled,
    String? groupingType,
    bool? opsCenterEnabled,
    String? opsItemSnsTopicArn,
    String? region,
    required String resourceGroupName,
    Map<String, String>? tags,
  }) :
      autoConfigEnabled = pulumi.Input.asOptionalInput<bool>(autoConfigEnabled),
      autoCreate = pulumi.Input.asOptionalInput<bool>(autoCreate),
      cweMonitorEnabled = pulumi.Input.asOptionalInput<bool>(cweMonitorEnabled),
      groupingType = pulumi.Input.asOptionalInput<String>(groupingType),
      opsCenterEnabled = pulumi.Input.asOptionalInput<bool>(opsCenterEnabled),
      opsItemSnsTopicArn = pulumi.Input.asOptionalInput<String>(opsItemSnsTopicArn),
      region = pulumi.Input.asOptionalInput<String>(region),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoConfigEnabled': ?autoConfigEnabled,
      'autoCreate': ?autoCreate,
      'cweMonitorEnabled': ?cweMonitorEnabled,
      'groupingType': ?groupingType,
      'opsCenterEnabled': ?opsCenterEnabled,
      'opsItemSnsTopicArn': ?opsItemSnsTopicArn,
      'region': ?region,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory ApplicationArgs.fromMap(Map<String, dynamic> map) {
    return ApplicationArgs(
      autoConfigEnabled: map['autoConfigEnabled'] == null ? null : map['autoConfigEnabled'] as bool,
      autoCreate: map['autoCreate'] == null ? null : map['autoCreate'] as bool,
      cweMonitorEnabled: map['cweMonitorEnabled'] == null ? null : map['cweMonitorEnabled'] as bool,
      groupingType: map['groupingType'] == null ? null : map['groupingType'] as String,
      opsCenterEnabled: map['opsCenterEnabled'] == null ? null : map['opsCenterEnabled'] as bool,
      opsItemSnsTopicArn: map['opsItemSnsTopicArn'] == null ? null : map['opsItemSnsTopicArn'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

