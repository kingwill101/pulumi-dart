// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties of Task Hub
class TaskHubPropertiesResponse {
  /// URL of the durable task scheduler dashboard
  final pulumi.Input<String> dashboardUrl;

  /// The status of the last operation
  final pulumi.Input<String> provisioningState;

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
      dashboardUrl: pulumi.Input.fromValue(map['dashboardUrl'] as String),
      provisioningState: pulumi.Input.fromValue(
        map['provisioningState'] as String,
      ),
    );
  }
}
