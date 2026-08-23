// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Service level resource model
class ServiceLevelResourceResponse {
  /// The arm id of the service level indicator resource
  final pulumi.Input<String> serviceLevelIndicatorResourceId;
  /// The arm id of the service level object resource
  final pulumi.Input<String> serviceLevelObjectiveResourceId;

  /// Creates a new [ServiceLevelResourceResponse].
  /// [serviceLevelIndicatorResourceId] The arm id of the service level indicator resource
  /// [serviceLevelObjectiveResourceId] The arm id of the service level object resource
  const ServiceLevelResourceResponse({
    required this.serviceLevelIndicatorResourceId,
    required this.serviceLevelObjectiveResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serviceLevelIndicatorResourceId': serviceLevelIndicatorResourceId,
      'serviceLevelObjectiveResourceId': serviceLevelObjectiveResourceId,
    };
  }

  factory ServiceLevelResourceResponse.fromMap(Map<String, dynamic> map) {
    return ServiceLevelResourceResponse(
      serviceLevelIndicatorResourceId: pulumi.Input.fromValue(map['serviceLevelIndicatorResourceId'] as String),
      serviceLevelObjectiveResourceId: pulumi.Input.fromValue(map['serviceLevelObjectiveResourceId'] as String),
    );
  }
}
