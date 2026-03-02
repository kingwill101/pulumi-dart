// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Dashboard resources.
class DashboardState {
  /// The Amazon Resource Name (ARN) of the dashboard.
  final pulumi.Input<String>? dashboardArn;
  /// The detailed information about the dashboard, including what widgets are included and their location on the dashboard. You can read more about the body structure in the [documentation](https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/CloudWatch-Dashboard-Body-Structure.html).
  final pulumi.Input<String>? dashboardBody;
  /// The name of the dashboard.
  final pulumi.Input<String>? dashboardName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [DashboardState].
  /// [dashboardArn] The Amazon Resource Name (ARN) of the dashboard.
  /// [dashboardBody] The detailed information about the dashboard, including what widgets are included and their location on the dashboard. You can read more about the body structure in the [documentation](https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/CloudWatch-Dashboard-Body-Structure.html).
  /// [dashboardName] The name of the dashboard.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  DashboardState({
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
      dashboardArn: map['dashboardArn'] == null ? null : ((map['dashboardArn'] as String).input()).input(),
      dashboardBody: map['dashboardBody'] == null ? null : ((map['dashboardBody'] as String).input()).input(),
      dashboardName: map['dashboardName'] == null ? null : ((map['dashboardName'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
    );
  }
}

