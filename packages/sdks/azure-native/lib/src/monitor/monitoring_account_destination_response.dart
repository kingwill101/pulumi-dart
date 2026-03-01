// ignore_for_file: unused_element, unnecessary_cast


/// Monitoring account destination.
class MonitoringAccountDestinationResponse {
  /// The immutable ID  of the account.
  final String accountId;
  /// The resource ID of the monitoring account.
  final String? accountResourceId;
  /// A friendly name for the destination.
  /// This name should be unique across all destinations (regardless of type) within the data collection rule.
  final String? name;

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
      accountId: map['accountId'] as String,
      accountResourceId: map['accountResourceId'] == null ? null : map['accountResourceId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

