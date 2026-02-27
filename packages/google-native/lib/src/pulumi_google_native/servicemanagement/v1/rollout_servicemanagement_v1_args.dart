// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'traffic_percent_strategy.dart';

/// The set of arguments for Rollout.
class RolloutServicemanagementV1Args {
  /// Creation time of the rollout. Readonly.
  final pulumi.Input<String>? createTime;

  /// The user who created the Rollout. Readonly.
  final pulumi.Input<String>? createdBy;

  /// The strategy associated with a rollout to delete a `ManagedService`. Readonly.
  final pulumi.Input<Map<String, dynamic>>? deleteServiceStrategy;

  /// Optional. Unique identifier of this Rollout. Must be no longer than 63 characters and only lower case letters, digits, '.', '_' and '-' are allowed. If not specified by client, the server will generate one. The generated id will have the form of , where "date" is the create date in ISO 8601 format. "revision number" is a monotonically increasing positive number that is reset every day for each service. An example of the generated rollout_id is '2016-02-16r1'
  final pulumi.Input<String>? rolloutId;

  /// The name of the service associated with this Rollout.
  final pulumi.Input<String> serviceName;

  /// Google Service Control selects service configurations based on traffic percentage.
  final pulumi.Input<TrafficPercentStrategy>? trafficPercentStrategy;

  RolloutServicemanagementV1Args({
    this.createTime,
    this.createdBy,
    this.deleteServiceStrategy,
    this.rolloutId,
    required this.serviceName,
    this.trafficPercentStrategy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final createTimeValue = createTime;
    if (createTimeValue != null) {
      map['createTime'] = createTimeValue;
    }
    final createdByValue = createdBy;
    if (createdByValue != null) {
      map['createdBy'] = createdByValue;
    }
    final deleteServiceStrategyValue = deleteServiceStrategy;
    if (deleteServiceStrategyValue != null) {
      map['deleteServiceStrategy'] = deleteServiceStrategyValue;
    }
    final rolloutIdValue = rolloutId;
    if (rolloutIdValue != null) {
      map['rolloutId'] = rolloutIdValue;
    }
    map['serviceName'] = serviceName;
    final trafficPercentStrategyValue = trafficPercentStrategy;
    if (trafficPercentStrategyValue != null) {
      map['trafficPercentStrategy'] = pulumi.Input.mapOptionalInputValue<
              TrafficPercentStrategy, Map<String, dynamic>>(
          trafficPercentStrategyValue, (value) => value.toMap());
    }
    return map;
  }

  factory RolloutServicemanagementV1Args.fromMap(Map<String, dynamic> map) {
    return RolloutServicemanagementV1Args(
      createTime: pulumi.Input.asOptionalInput<String>(map['createTime']),
      createdBy: pulumi.Input.asOptionalInput<String>(map['createdBy']),
      deleteServiceStrategy: pulumi.Input.asOptionalInput<Map<String, dynamic>>(
          map['deleteServiceStrategy']),
      rolloutId: pulumi.Input.asOptionalInput<String>(map['rolloutId']),
      serviceName: pulumi.Input.asInput<String>(map['serviceName']),
      trafficPercentStrategy:
          pulumi.Input.asOptionalInput<TrafficPercentStrategy>(
              map['trafficPercentStrategy']),
    );
  }
}
