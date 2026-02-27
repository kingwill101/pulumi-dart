import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_applicationinsights_args.dart';

/// Provides a ApplicationInsights Application resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import ApplicationInsights Applications using the `resource_group_name`. For example:
///
/// ```sh
/// $ pulumi import aws:applicationinsights/application:Application some some-application
/// ```
class ApplicationApplicationinsights extends pulumi.CustomResource {
  /// ARN of the Application.
  late final pulumi.Output<String> arn;

  /// Indicates whether Application Insights automatically configures unmonitored resources in the resource group.
  late final pulumi.Output<bool?> autoConfigEnabled;

  /// Configures all of the resources in the resource group by applying the recommended configurations.
  late final pulumi.Output<bool?> autoCreate;

  /// Indicates whether Application Insights can listen to CloudWatch events for the application resources, such as instance terminated, failed deployment, and others.
  late final pulumi.Output<bool?> cweMonitorEnabled;

  /// Application Insights can create applications based on a resource group or on an account. To create an account-based application using all of the resources in the account, set this parameter to `ACCOUNT_BASED`.
  late final pulumi.Output<String?> groupingType;

  /// When set to `true`, creates opsItems for any problems detected on an application.
  late final pulumi.Output<bool?> opsCenterEnabled;

  /// SNS topic provided to Application Insights that is associated to the created opsItem. Allows you to receive notifications for updates to the opsItem.
  late final pulumi.Output<String?> opsItemSnsTopicArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Name of the resource group.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> resourceGroupName;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  ApplicationApplicationinsights(
    String name, {
    ApplicationApplicationinsightsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:applicationinsights/application:Application',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.autoConfigEnabled = registerOutput<bool?>('autoConfigEnabled');
    this.autoCreate = registerOutput<bool?>('autoCreate');
    this.cweMonitorEnabled = registerOutput<bool?>('cweMonitorEnabled');
    this.groupingType = registerOutput<String?>('groupingType');
    this.opsCenterEnabled = registerOutput<bool?>('opsCenterEnabled');
    this.opsItemSnsTopicArn = registerOutput<String?>('opsItemSnsTopicArn');
    this.region = registerOutput<String>('region');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
