// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class IndexUserTokenConfigurationsJsonTokenTypeConfiguration {
  /// The group attribute field. Minimum length of 1. Maximum length of 2048.
  final pulumi.Input<String> groupAttributeField;
  /// The user name attribute field. Minimum length of 1. Maximum length of 2048.
  final pulumi.Input<String> userNameAttributeField;

  /// Creates a new [IndexUserTokenConfigurationsJsonTokenTypeConfiguration].
  /// [groupAttributeField] The group attribute field. Minimum length of 1. Maximum length of 2048.
  /// [userNameAttributeField] The user name attribute field. Minimum length of 1. Maximum length of 2048.
  IndexUserTokenConfigurationsJsonTokenTypeConfiguration({
    required this.groupAttributeField,
    required this.userNameAttributeField,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupAttributeField': groupAttributeField,
      'userNameAttributeField': userNameAttributeField,
    };
  }

  factory IndexUserTokenConfigurationsJsonTokenTypeConfiguration.fromMap(Map<String, dynamic> map) {
    return IndexUserTokenConfigurationsJsonTokenTypeConfiguration(
      groupAttributeField: (map['groupAttributeField'] as String).input(),
      userNameAttributeField: (map['userNameAttributeField'] as String).input(),
    );
  }
}

