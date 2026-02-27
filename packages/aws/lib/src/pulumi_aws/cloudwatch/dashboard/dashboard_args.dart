// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Dashboard.
class DashboardArgs {
  /// The detailed information about the dashboard, including what widgets are included and their location on the dashboard. You can read more about the body structure in the [documentation](https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/CloudWatch-Dashboard-Body-Structure.html).
  final pulumi.Input<String> dashboardBody;

  /// The name of the dashboard.
  final pulumi.Input<String> dashboardName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  DashboardArgs({
    required this.dashboardBody,
    required this.dashboardName,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dashboardBody'] = dashboardBody;
    map['dashboardName'] = dashboardName;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory DashboardArgs.fromMap(Map<String, dynamic> map) {
    return DashboardArgs(
      dashboardBody: pulumi.Input.asInput<String>(map['dashboardBody']),
      dashboardName: pulumi.Input.asInput<String>(map['dashboardName']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
