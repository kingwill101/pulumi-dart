// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Monitoring account destination.
class MonitoringAccountDestination {
  /// The resource ID of the monitoring account.
  final pulumi.Input<String>? accountResourceId;
  /// A friendly name for the destination.
  /// This name should be unique across all destinations (regardless of type) within the data collection rule.
  final pulumi.Input<String>? name;

  /// Creates a new [MonitoringAccountDestination].
  /// [accountResourceId] The resource ID of the monitoring account.
  /// [name] A friendly name for the destination.
  MonitoringAccountDestination({
    this.accountResourceId,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountResourceId': ?accountResourceId,
      'name': ?name,
    };
  }

  factory MonitoringAccountDestination.fromMap(Map<String, dynamic> map) {
    return MonitoringAccountDestination(
      accountResourceId: map['accountResourceId'] == null ? null : (map['accountResourceId'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
    );
  }
}

