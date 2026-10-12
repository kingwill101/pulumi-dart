// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetIndexUserTokenConfigurationJsonTokenTypeConfiguration {
  /// Group attribute field.
  final pulumi.Input<String> groupAttributeField;
  /// User name attribute field.
  final pulumi.Input<String> userNameAttributeField;

  /// Creates a new [GetIndexUserTokenConfigurationJsonTokenTypeConfiguration].
  /// [groupAttributeField] Group attribute field.
  /// [userNameAttributeField] User name attribute field.
  const GetIndexUserTokenConfigurationJsonTokenTypeConfiguration({
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
