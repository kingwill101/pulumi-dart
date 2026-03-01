// ignore_for_file: unused_element, unnecessary_cast


class GroupQuotasEntityProperties {
  /// Display name of the GroupQuota entity.
  final String? displayName;

  /// Creates a new [GroupQuotasEntityProperties].
  /// [displayName] Display name of the GroupQuota entity.
  GroupQuotasEntityProperties({
    this.displayName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
    };
  }

  factory GroupQuotasEntityProperties.fromMap(Map<String, dynamic> map) {
    return GroupQuotasEntityProperties(
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
    );
  }
}

