// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Dashboard resources.
class DashboardState {
  /// Dashboard attribute.
  final pulumi.Input<String>? attribute;
  /// Configuration of charts in the dashboard.
  /// **Note:** From version 1.164.0, `char_list` can set parameter "action".
  final pulumi.Input<String>? charList;
  /// The name of the Log Dashboard.
  final pulumi.Input<String>? dashboardName;
  /// Dashboard alias.
  final pulumi.Input<String>? displayName;
  /// The name of the log project. It is the only in one Alicloud account.
  final pulumi.Input<String>? projectName;

  /// Creates a new [DashboardState].
  /// [attribute] Dashboard attribute.
  /// [charList] Configuration of charts in the dashboard.
  /// [dashboardName] The name of the Log Dashboard.
  /// [displayName] Dashboard alias.
  /// [projectName] The name of the log project. It is the only in one Alicloud account.
  DashboardState({
    this.attribute,
    this.charList,
    this.dashboardName,
    this.displayName,
    this.projectName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attribute': ?attribute,
      'charList': ?charList,
      'dashboardName': ?dashboardName,
      'displayName': ?displayName,
      'projectName': ?projectName,
    };
  }

  factory DashboardState.fromMap(Map<String, dynamic> map) {
    return DashboardState(
      attribute: map['attribute'] == null ? null : (map['attribute'] as String).input(),
      charList: map['charList'] == null ? null : (map['charList'] as String).input(),
      dashboardName: map['dashboardName'] == null ? null : (map['dashboardName'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      projectName: map['projectName'] == null ? null : (map['projectName'] as String).input(),
    );
  }
}

