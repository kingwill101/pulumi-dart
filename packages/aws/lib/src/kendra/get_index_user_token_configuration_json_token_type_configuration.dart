// ignore_for_file: unused_element, unnecessary_cast

class GetIndexUserTokenConfigurationJsonTokenTypeConfiguration {
  /// The group attribute field.
  final String groupAttributeField;

  /// The user name attribute field.
  final String userNameAttributeField;

  /// Creates a new [GetIndexUserTokenConfigurationJsonTokenTypeConfiguration].
  /// [groupAttributeField] The group attribute field.
  /// [userNameAttributeField] The user name attribute field.
  GetIndexUserTokenConfigurationJsonTokenTypeConfiguration({
    required this.groupAttributeField,
    required this.userNameAttributeField,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['groupAttributeField'] = groupAttributeField;
    map['userNameAttributeField'] = userNameAttributeField;
    return map;
  }

  factory GetIndexUserTokenConfigurationJsonTokenTypeConfiguration.fromMap(
      Map<String, dynamic> map) {
    return GetIndexUserTokenConfigurationJsonTokenTypeConfiguration(
      groupAttributeField: map['groupAttributeField'] as String,
      userNameAttributeField: map['userNameAttributeField'] as String,
    );
  }
}
