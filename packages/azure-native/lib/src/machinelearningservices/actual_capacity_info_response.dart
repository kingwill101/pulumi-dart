// ignore_for_file: unused_element, unnecessary_cast


class ActualCapacityInfoResponse {
  /// Gets or sets the number of instances (scale units) which have Failed provisioning state and have target group payload.
  final int? failed;
  /// Gets or sets the number of instances (scale units) which have Failed provisioning state but do not have target group payload.
  final int? outdatedFailed;
  /// Gets or sets the number of instances (scale units) which have Succeeded provisioning state but do not have target group payload.
  final int? outdatedSucceeded;
  /// Gets or sets the number of instances (scale units) which have Succeeded provisioning state and target group payload.
  final int? succeeded;
  /// Gets or sets the total number of instances (scale units) regardless of provisioning state or whether current group payload version matches the target group payload.
  final int? total;

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
      failed: map['failed'] == null ? null : map['failed'] as int,
      outdatedFailed: map['outdatedFailed'] == null ? null : map['outdatedFailed'] as int,
      outdatedSucceeded: map['outdatedSucceeded'] == null ? null : map['outdatedSucceeded'] as int,
      succeeded: map['succeeded'] == null ? null : map['succeeded'] as int,
      total: map['total'] == null ? null : map['total'] as int,
    );
  }
}

