// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ActualCapacityInfoResponse {
  /// Gets or sets the number of instances (scale units) which have Failed provisioning state and have target group payload.
  final pulumi.Input<int>? failed;

  /// Gets or sets the number of instances (scale units) which have Failed provisioning state but do not have target group payload.
  final pulumi.Input<int>? outdatedFailed;

  /// Gets or sets the number of instances (scale units) which have Succeeded provisioning state but do not have target group payload.
  final pulumi.Input<int>? outdatedSucceeded;

  /// Gets or sets the number of instances (scale units) which have Succeeded provisioning state and target group payload.
  final pulumi.Input<int>? succeeded;

  /// Gets or sets the total number of instances (scale units) regardless of provisioning state or whether current group payload version matches the target group payload.
  final pulumi.Input<int>? total;

  /// Creates a new [ActualCapacityInfoResponse].
  /// [failed] Gets or sets the number of instances (scale units) which have Failed provisioning state and have target group payload.
  /// [outdatedFailed] Gets or sets the number of instances (scale units) which have Failed provisioning state but do not have target group payload.
  /// [outdatedSucceeded] Gets or sets the number of instances (scale units) which have Succeeded provisioning state but do not have target group payload.
  /// [succeeded] Gets or sets the number of instances (scale units) which have Succeeded provisioning state and target group payload.
  /// [total] Gets or sets the total number of instances (scale units) regardless of provisioning state or whether current group payload version matches the target group payload.
  ActualCapacityInfoResponse({
    this.failed,
    this.outdatedFailed,
    this.outdatedSucceeded,
    this.succeeded,
    this.total,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failed': ?failed,
      'outdatedFailed': ?outdatedFailed,
      'outdatedSucceeded': ?outdatedSucceeded,
      'succeeded': ?succeeded,
      'total': ?total,
    };
  }

  factory ActualCapacityInfoResponse.fromMap(Map<String, dynamic> map) {
    return ActualCapacityInfoResponse(
      failed: (() {
        final guardedValue = map['failed'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      outdatedFailed: (() {
        final guardedValue = map['outdatedFailed'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      outdatedSucceeded: (() {
        final guardedValue = map['outdatedSucceeded'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      succeeded: (() {
        final guardedValue = map['succeeded'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      total: (() {
        final guardedValue = map['total'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
