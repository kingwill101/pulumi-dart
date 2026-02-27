// ignore_for_file: unused_element, unnecessary_cast

class AclAclEntry {
  /// The host. Must be set to "*" for Managed Service for Apache Kafka.
  final String? host;

  /// The operation type. Allowed values are (case insensitive): ALL, READ,
  /// WRITE, CREATE, DELETE, ALTER, DESCRIBE, CLUSTER_ACTION, DESCRIBE_CONFIGS,
  /// ALTER_CONFIGS, and IDEMPOTENT_WRITE. See https://kafka.apache.org/documentation/#operations_resources_and_protocols
  /// for valid combinations of resource_type and operation for different Kafka API requests.
  final String operation;

  /// The permission type. Accepted values are (case insensitive): ALLOW, DENY.
  final String? permissionType;

  /// The principal. Specified as Google Cloud account, with the Kafka StandardAuthorizer prefix User:". For example: "User:test-kafka-client@test-project.iam.gserviceaccount.com". Can be the wildcard "User:*" to refer to all users.
  final String principal;

  AclAclEntry({
    this.host,
    required this.operation,
    this.permissionType,
    required this.principal,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final hostValue = host;
    if (hostValue != null) {
      map['host'] = hostValue;
    }
    map['operation'] = operation;
    final permissionTypeValue = permissionType;
    if (permissionTypeValue != null) {
      map['permissionType'] = permissionTypeValue;
    }
    map['principal'] = principal;
    return map;
  }

  factory AclAclEntry.fromMap(Map<String, dynamic> map) {
    return AclAclEntry(
      host: map['host'] == null ? null : map['host'] as String,
      operation: map['operation'] as String,
      permissionType: map['permissionType'] == null
          ? null
          : map['permissionType'] as String,
      principal: map['principal'] as String,
    );
  }
}
