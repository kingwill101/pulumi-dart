import 'package:pulumi/pulumi.dart';
import '../dashboard_dashboard_publish_options/dashboard_dashboard_publish_options.dart';
import '../dashboard_parameters/dashboard_parameters.dart';
import '../dashboard_permission/dashboard_permission.dart';
import '../dashboard_source_entity/dashboard_source_entity.dart';
import 'dashboard_args2.dart';

/// Resource for managing a QuickSight Dashboard.
///
/// ## Example Usage
///
/// ### From Source Template
///
///
///
/// ### With Definition
///
///
///
/// ## Import
///
/// Using `pulumi import`, import a QuickSight Dashboard using the AWS account ID and dashboard ID separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:quicksight/dashboard:Dashboard example 123456789012,example-id
/// ```
class Dashboard2 extends CustomResource {
  /// ARN of the dashboard.
  late final Output<String> arn;

  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  late final Output<String> awsAccountId;

  /// The time that the dashboard was created.
  late final Output<String> createdTime;

  /// Identifier for the dashboard.
  late final Output<String> dashboardId;

  /// Options for publishing the dashboard. See dashboard_publish_options.
  late final Output<DashboardDashboardPublishOptions> dashboardPublishOptions;
  late final Output<String> lastPublishedTime;

  /// The time that the dashboard was last updated.
  late final Output<String> lastUpdatedTime;

  /// Display name for the dashboard.
  late final Output<String> name;

  /// The parameters for the creation of the dashboard, which you want to use to override the default settings. A dashboard can have any type of parameters, and some parameters might accept multiple values. See parameters.
  late final Output<DashboardParameters> parameters;

  /// A set of resource permissions on the dashboard. Maximum of 64 items. See permissions.
  late final Output<List<DashboardPermission>?> permissions;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The entity that you are using as a source when you create the dashboard (template). Only one of `definition` or `source_entity` should be configured. See source_entity.
  late final Output<DashboardSourceEntity?> sourceEntity;

  /// Amazon Resource Name (ARN) of a template that was used to create this dashboard.
  late final Output<String> sourceEntityArn;

  /// The dashboard creation status.
  late final Output<String> status;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The Amazon Resource Name (ARN) of the theme that is being used for this dashboard. The theme ARN must exist in the same AWS account where you create the dashboard.
  late final Output<String?> themeArn;

  /// A description of the current dashboard version being created/updated.
  ///
  /// The following arguments are optional:
  late final Output<String> versionDescription;

  /// The version number of the dashboard version.
  late final Output<int> versionNumber;

  Dashboard2(
    String name, {
    DashboardArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:quicksight/dashboard:Dashboard',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.awsAccountId = registerOutput<String>('awsAccountId');
    this.createdTime = registerOutput<String>('createdTime');
    this.dashboardId = registerOutput<String>('dashboardId');
    this.dashboardPublishOptions =
        registerOutput<DashboardDashboardPublishOptions>(
            'dashboardPublishOptions');
    this.lastPublishedTime = registerOutput<String>('lastPublishedTime');
    this.lastUpdatedTime = registerOutput<String>('lastUpdatedTime');
    this.name = registerOutput<String>('name');
    this.parameters = registerOutput<DashboardParameters>('parameters');
    this.permissions =
        registerOutput<List<DashboardPermission>?>('permissions');
    this.region = registerOutput<String>('region');
    this.sourceEntity = registerOutput<DashboardSourceEntity?>('sourceEntity');
    this.sourceEntityArn = registerOutput<String>('sourceEntityArn');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.themeArn = registerOutput<String?>('themeArn');
    this.versionDescription = registerOutput<String>('versionDescription');
    this.versionNumber = registerOutput<int>('versionNumber');
  }
}
