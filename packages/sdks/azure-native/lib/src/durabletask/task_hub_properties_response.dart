// ignore_for_file: unused_element, unnecessary_cast


/// The properties of Task Hub
class TaskHubPropertiesResponse {
  /// URL of the durable task scheduler dashboard
  final String dashboardUrl;
  /// The status of the last operation
  final String provisioningState;

  /// Creates a new [TaskHubPropertiesResponse].
  /// [dashboardUrl] URL of the durable task scheduler dashboard
  /// [provisioningState] The status of the last operation
  TaskHubPropertiesResponse({
    required this.dashboardUrl,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dashboardUrl': dashboardUrl,
      'provisioningState': provisioningState,
    };
  }

  factory TaskHubPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return TaskHubPropertiesResponse(
      dashboardUrl: map['dashboardUrl'] as String,
      provisioningState: map['provisioningState'] as String,
    );
  }
}

