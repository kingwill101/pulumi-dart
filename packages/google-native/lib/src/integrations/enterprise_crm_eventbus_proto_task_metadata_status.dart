/// Allows author to indicate if the task is ready to use or not. If not set, then it will default to INACTIVE.
enum EnterpriseCrmEventbusProtoTaskMetadataStatus {
  unspecifiedStatus("UNSPECIFIED_STATUS"),
  defaultInactive("DEFAULT_INACTIVE"),
  active("ACTIVE");

  const EnterpriseCrmEventbusProtoTaskMetadataStatus(this.value);
  final String value;

  static EnterpriseCrmEventbusProtoTaskMetadataStatus fromValue(String value) {
    for (final item in EnterpriseCrmEventbusProtoTaskMetadataStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnterpriseCrmEventbusProtoTaskMetadataStatus value: $value');
  }
}

