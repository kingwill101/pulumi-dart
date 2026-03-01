// ignore_for_file: unused_element, unnecessary_cast


class GetConfigurationRecordersRecorder {
  /// The ID of the Alicloud account.
  final String accountId;
  /// The ID of the Config Configuration Recorder. Value as the `account_id`.
  final String id;
  /// Enterprise version configuration audit enabled status.
  final String organizationEnableStatus;
  /// The ID of the Enterprise management account.
  final int organizationMasterId;
  /// A list of resource types to be monitored.
  final List<String> resourceTypes;
  /// Status of resource monitoring.
  final String status;

  /// Creates a new [GetConfigurationRecordersRecorder].
  /// [accountId] The ID of the Alicloud account.
  /// [id] The ID of the Config Configuration Recorder. Value as the `account_id`.
  /// [organizationEnableStatus] Enterprise version configuration audit enabled status.
  /// [organizationMasterId] The ID of the Enterprise management account.
  /// [resourceTypes] A list of resource types to be monitored.
  /// [status] Status of resource monitoring.
  GetConfigurationRecordersRecorder({
    required this.accountId,
    required this.id,
    required this.organizationEnableStatus,
    required this.organizationMasterId,
    required this.resourceTypes,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'id': id,
      'organizationEnableStatus': organizationEnableStatus,
      'organizationMasterId': organizationMasterId,
      'resourceTypes': resourceTypes,
      'status': status,
    };
  }

  factory GetConfigurationRecordersRecorder.fromMap(Map<String, dynamic> map) {
    return GetConfigurationRecordersRecorder(
      accountId: map['accountId'] as String,
      id: map['id'] as String,
      organizationEnableStatus: map['organizationEnableStatus'] as String,
      organizationMasterId: map['organizationMasterId'] as int,
      resourceTypes: (map['resourceTypes'] as List).cast<String>(),
      status: map['status'] as String,
    );
  }
}

