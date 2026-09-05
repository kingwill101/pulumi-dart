// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Dashboard resources.
class DashboardState {
  /// ARN of the dashboard.
  final pulumi.Input<String?>? dashboardArn;
  /// The detailed information about the dashboard, including what widgets are included and their location on the dashboard. You can read more about the body structure in the [documentation](https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/CloudWatch-Dashboard-Body-Structure.html).
  final pulumi.Input<String?>? dashboardBody;
  /// The name of the dashboard.
  final pulumi.Input<String?>? dashboardName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;

  /// Creates a new [DashboardState].
  /// [dashboardArn] ARN of the dashboard.
  /// [dashboardBody] The detailed information about the dashboard, including what widgets are included and their location on the dashboard. You can read more about the body structure in the [documentation](https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/CloudWatch-Dashboard-Body-Structure.html).
  /// [dashboardName] The name of the dashboard.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const DashboardState({
    this.dashboardArn,
    this.dashboardBody,
    this.dashboardName,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dashboardArn': ?dashboardArn,
      'dashboardBody': ?dashboardBody,
      'dashboardName': ?dashboardName,
      'region': ?region,
    };
  }

  factory DashboardState.fromMap(Map<String, dynamic> map) {
    return DashboardState(
      dashboardArn: (() { final guardedValue = map['dashboardArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dashboardBody: (() { final guardedValue = map['dashboardBody']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dashboardName: (() { final guardedValue = map['dashboardName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
