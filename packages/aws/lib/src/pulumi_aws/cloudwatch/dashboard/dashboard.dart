import 'package:pulumi/pulumi.dart' as pulumi;
import 'dashboard_args.dart';

/// Provides a CloudWatch Dashboard resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import CloudWatch dashboards using the `dashboard_name`. For example:
///
/// ```sh
/// $ pulumi import aws:cloudwatch/dashboard:Dashboard sample dashboard_name
/// ```
class Dashboard extends pulumi.CustomResource {
  /// The Amazon Resource Name (ARN) of the dashboard.
  late final pulumi.Output<String> dashboardArn;

  /// The detailed information about the dashboard, including what widgets are included and their location on the dashboard. You can read more about the body structure in the [documentation](https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/CloudWatch-Dashboard-Body-Structure.html).
  late final pulumi.Output<String> dashboardBody;

  /// The name of the dashboard.
  late final pulumi.Output<String> dashboardName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  Dashboard(
    String name, {
    DashboardArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatch/dashboard:Dashboard',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.dashboardArn = registerOutput<String>('dashboardArn');
    this.dashboardBody = registerOutput<String>('dashboardBody');
    this.dashboardName = registerOutput<String>('dashboardName');
    this.region = registerOutput<String>('region');
  }
}
