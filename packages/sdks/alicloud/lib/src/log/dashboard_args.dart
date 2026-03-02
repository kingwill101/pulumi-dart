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
    this.attribute,
    required this.charList,
    required this.dashboardName,
    this.displayName,
    required this.projectName,
  });

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
      attribute: map['attribute'] == null ? null : (map['attribute']! as String).input(),
      charList: (map['charList'] as String).input(),
      dashboardName: (map['dashboardName'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      projectName: (map['projectName'] as String).input(),
    );
  }
}

