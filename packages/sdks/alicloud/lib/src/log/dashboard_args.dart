// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_log_dashboard_dashboard_args_doc}
/// The set of arguments for Dashboard.
/// {@endtemplate}
/// {@macro pulumi_log_dashboard_dashboard_args_doc}
class DashboardArgs {
  /// Dashboard attribute.
  final pulumi.Input<String>? attribute;
  /// Configuration of charts in the dashboard.
  /// **Note:** From version 1.164.0, `char_list` can set parameter "action".
  final pulumi.Input<String> charList;
  /// The name of the Log Dashboard.
  final pulumi.Input<String> dashboardName;
  /// Dashboard alias.
  final pulumi.Input<String>? displayName;
  /// The name of the log project. It is the only in one Alicloud account.
  final pulumi.Input<String> projectName;

  /// Creates a new [DashboardArgs].
  /// [attribute] Dashboard attribute.
  /// [charList] Configuration of charts in the dashboard.
  /// [dashboardName] The name of the Log Dashboard.
  /// [displayName] Dashboard alias.
  /// [projectName] The name of the log project. It is the only in one Alicloud account.
  DashboardArgs({
    pulumi.Output<String>? attribute,
    required pulumi.Output<String> charList,
    required pulumi.Output<String> dashboardName,
    pulumi.Output<String>? displayName,
    required pulumi.Output<String> projectName,
  }) :
      attribute = pulumi.Input.asOptionalInput<String>(attribute),
      charList = pulumi.Input.asInput<String>(charList),
      dashboardName = pulumi.Input.asInput<String>(dashboardName),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      projectName = pulumi.Input.asInput<String>(projectName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attribute': ?attribute,
      'charList': charList,
      'dashboardName': dashboardName,
      'displayName': ?displayName,
      'projectName': projectName,
    };
  }

  factory DashboardArgs.fromMap(Map<String, dynamic> map) {
    return DashboardArgs(
      attribute: map['attribute'] == null ? null : pulumi.Output.create<String>(map['attribute'] as String),
      charList: pulumi.Output.create<String>(map['charList'] as String),
      dashboardName: pulumi.Output.create<String>(map['dashboardName'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      projectName: pulumi.Output.create<String>(map['projectName'] as String),
    );
  }
}

