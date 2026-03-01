// ignore_for_file: unused_element, unnecessary_cast


class GroupQuotasEntityResponseProperties {
  /// Display name of the GroupQuota entity.
  final String? displayName;
  /// Provisioning state of the operation.
  final String provisioningState;

  /// Creates a new [GroupQuotasEntityResponseProperties].
  /// [displayName] Display name of the GroupQuota entity.
  /// [provisioningState] Provisioning state of the operation.
  GroupQuotasEntityResponseProperties({
    this.displayName,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'provisioningState': provisioningState,
    };
  }

  factory GroupQuotasEntityResponseProperties.fromMap(Map<String, dynamic> map) {
    return GroupQuotasEntityResponseProperties(
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      provisioningState: map['provisioningState'] as String,
    );
  }
}

