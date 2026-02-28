// ignore_for_file: unused_element, unnecessary_cast

class IndexUserTokenConfigurationsJsonTokenTypeConfiguration {
  /// The group attribute field. Minimum length of 1. Maximum length of 2048.
  final String groupAttributeField;

  /// The user name attribute field. Minimum length of 1. Maximum length of 2048.
  final String userNameAttributeField;

  /// Creates a new [IndexUserTokenConfigurationsJsonTokenTypeConfiguration].
  /// [groupAttributeField] The group attribute field. Minimum length of 1. Maximum length of 2048.
  /// [userNameAttributeField] The user name attribute field. Minimum length of 1. Maximum length of 2048.
  IndexUserTokenConfigurationsJsonTokenTypeConfiguration({
    required this.groupAttributeField,
    required this.userNameAttributeField,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['groupAttributeField'] = groupAttributeField;
    map['userNameAttributeField'] = userNameAttributeField;
    return map;
  }

  factory IndexUserTokenConfigurationsJsonTokenTypeConfiguration.fromMap(
      Map<String, dynamic> map) {
    return IndexUserTokenConfigurationsJsonTokenTypeConfiguration(
      groupAttributeField: map['groupAttributeField'] as String,
      userNameAttributeField: map['userNameAttributeField'] as String,
    );
  }
}
