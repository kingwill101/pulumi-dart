// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetIndexUserTokenConfigurationJsonTokenTypeConfiguration {
  /// The group attribute field.
  final pulumi.Input<String> groupAttributeField;
  /// The user name attribute field.
  final pulumi.Input<String> userNameAttributeField;

  /// Creates a new [GetIndexUserTokenConfigurationJsonTokenTypeConfiguration].
  /// [groupAttributeField] The group attribute field.
  /// [userNameAttributeField] The user name attribute field.
  GetIndexUserTokenConfigurationJsonTokenTypeConfiguration({
    required this.groupAttributeField,
    required this.userNameAttributeField,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupAttributeField': groupAttributeField,
      'userNameAttributeField': userNameAttributeField,
    };
  }

  factory GetIndexUserTokenConfigurationJsonTokenTypeConfiguration.fromMap(Map<String, dynamic> map) {
    return GetIndexUserTokenConfigurationJsonTokenTypeConfiguration(
      groupAttributeField: pulumi.Input.fromValue(map['groupAttributeField'] as String),
      userNameAttributeField: pulumi.Input.fromValue(map['userNameAttributeField'] as String),
    );
  }
}

