// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetConfigurationRecordersRecorder {
  /// The ID of the Alicloud account.
  final pulumi.Input<String> accountId;

  /// The ID of the Config Configuration Recorder. Value as the `account_id`.
  final pulumi.Input<String> id;

  /// Enterprise version configuration audit enabled status.
  final pulumi.Input<String> organizationEnableStatus;

  /// The ID of the Enterprise management account.
  final pulumi.Input<int> organizationMasterId;

  /// A list of resource types to be monitored.
  final pulumi.Input<List<String>> resourceTypes;

  /// Status of resource monitoring.
  final pulumi.Input<String> status;

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
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      organizationEnableStatus: pulumi.Input.fromValue(
        map['organizationEnableStatus'] as String,
      ),
      organizationMasterId: pulumi.Input.fromValue(
        map['organizationMasterId'] as int,
      ),
      resourceTypes: pulumi.Input.fromValue(
        (map['resourceTypes'] as List).cast<String>(),
      ),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}
