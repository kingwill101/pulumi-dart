// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Monitoring account destination.
class MonitoringAccountDestinationResponse {
  /// The immutable ID  of the account.
  final pulumi.Input<String> accountId;
  /// The resource ID of the monitoring account.
  final pulumi.Input<String>? accountResourceId;
  /// A friendly name for the destination.
  /// This name should be unique across all destinations (regardless of type) within the data collection rule.
  final pulumi.Input<String>? name;

  /// Creates a new [MonitoringAccountDestinationResponse].
  /// [accountId] The immutable ID  of the account.
  /// [accountResourceId] The resource ID of the monitoring account.
  /// [name] A friendly name for the destination.
  MonitoringAccountDestinationResponse({
    required this.accountId,
    this.accountResourceId,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'accountResourceId': ?accountResourceId,
      'name': ?name,
    };
  }

  factory MonitoringAccountDestinationResponse.fromMap(Map<String, dynamic> map) {
    return MonitoringAccountDestinationResponse(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      accountResourceId: (() { final guardedValue = map['accountResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

