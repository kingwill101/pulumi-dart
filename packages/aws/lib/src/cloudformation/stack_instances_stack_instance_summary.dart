// ignore_for_file: unused_element, unnecessary_cast

class StackInstancesStackInstanceSummary {
  /// Account ID in which the instance is deployed.
  final String? accountId;

  /// Detailed status of the stack instance. Values include `PENDING`, `RUNNING`, `SUCCEEDED`, `FAILED`, `CANCELLED`, `INOPERABLE`, `SKIPPED_SUSPENDED_ACCOUNT`, `FAILED_IMPORT`.
  final String? detailedStatus;

  /// Status of the stack instance's actual configuration compared to the expected template and parameter configuration of the stack set to which it belongs. Values include `DRIFTED`, `IN_SYNC`, `UNKNOWN`, `NOT_CHECKED`.
  final String? driftStatus;

  /// Organization root ID or organizational unit (OU) IDs that you specified for `deployment_targets`.
  final String? organizationalUnitId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final String? region;

  /// ID of the stack instance.
  final String? stackId;

  /// Name or unique ID of the stack set that the stack instance is associated with.
  final String? stackSetId;

  /// Status of the stack instance, in terms of its synchronization with its associated stack set. Values include `CURRENT`, `OUTDATED`, `INOPERABLE`.
  final String? status;

  /// Explanation for the specific status code assigned to this stack instance.
  final String? statusReason;

  /// Creates a new [StackInstancesStackInstanceSummary].
  /// [accountId] Account ID in which the instance is deployed.
  /// [detailedStatus] Detailed status of the stack instance. Values include `PENDING`, `RUNNING`, `SUCCEEDED`, `FAILED`, `CANCELLED`, `INOPERABLE`, `SKIPPED_SUSPENDED_ACCOUNT`, `FAILED_IMPORT`.
  /// [driftStatus] Status of the stack instance's actual configuration compared to the expected template and parameter configuration of the stack set to which it belongs. Values include `DRIFTED`, `IN_SYNC`, `UNKNOWN`, `NOT_CHECKED`.
  /// [organizationalUnitId] Organization root ID or organizational unit (OU) IDs that you specified for `deployment_targets`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [stackId] ID of the stack instance.
  /// [stackSetId] Name or unique ID of the stack set that the stack instance is associated with.
  /// [status] Status of the stack instance, in terms of its synchronization with its associated stack set. Values include `CURRENT`, `OUTDATED`, `INOPERABLE`.
  /// [statusReason] Explanation for the specific status code assigned to this stack instance.
  StackInstancesStackInstanceSummary({
    this.accountId,
    this.detailedStatus,
    this.driftStatus,
    this.organizationalUnitId,
    this.region,
    this.stackId,
    this.stackSetId,
    this.status,
    this.statusReason,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'detailedStatus': ?detailedStatus,
      'driftStatus': ?driftStatus,
      'organizationalUnitId': ?organizationalUnitId,
      'region': ?region,
      'stackId': ?stackId,
      'stackSetId': ?stackSetId,
      'status': ?status,
      'statusReason': ?statusReason,
    };
  }

  factory StackInstancesStackInstanceSummary.fromMap(Map<String, dynamic> map) {
    return StackInstancesStackInstanceSummary(
      accountId: map['accountId'] == null ? null : map['accountId'] as String,
      detailedStatus: map['detailedStatus'] == null
          ? null
          : map['detailedStatus'] as String,
      driftStatus: map['driftStatus'] == null
          ? null
          : map['driftStatus'] as String,
      organizationalUnitId: map['organizationalUnitId'] == null
          ? null
          : map['organizationalUnitId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      stackId: map['stackId'] == null ? null : map['stackId'] as String,
      stackSetId: map['stackSetId'] == null
          ? null
          : map['stackSetId'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      statusReason: map['statusReason'] == null
          ? null
          : map['statusReason'] as String,
    );
  }
}
