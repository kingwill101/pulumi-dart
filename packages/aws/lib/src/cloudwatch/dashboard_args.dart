// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudwatch_dashboard_dashboard_args_doc}
/// The set of arguments for Dashboard.
/// {@endtemplate}
/// {@macro pulumi_cloudwatch_dashboard_dashboard_args_doc}
class DashboardArgs {
  /// The detailed information about the dashboard, including what widgets are included and their location on the dashboard. You can read more about the body structure in the [documentation](https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/CloudWatch-Dashboard-Body-Structure.html).
  final pulumi.Input<String> dashboardBody;
  /// The name of the dashboard.
  final pulumi.Input<String> dashboardName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [DashboardArgs].
  /// [dashboardBody] The detailed information about the dashboard, including what widgets are included and their location on the dashboard. You can read more about the body structure in the [documentation](https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/CloudWatch-Dashboard-Body-Structure.html).
  /// [dashboardName] The name of the dashboard.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  DashboardArgs({
    required String dashboardBody,
    required String dashboardName,
    String? region,
  }) :
      dashboardBody = pulumi.Input.asInput<String>(dashboardBody),
      dashboardName = pulumi.Input.asInput<String>(dashboardName),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dashboardBody': dashboardBody,
      'dashboardName': dashboardName,
      'region': ?region,
    };
  }

  factory DashboardArgs.fromMap(Map<String, dynamic> map) {
    return DashboardArgs(
      dashboardBody: map['dashboardBody'] as String,
      dashboardName: map['dashboardName'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}

