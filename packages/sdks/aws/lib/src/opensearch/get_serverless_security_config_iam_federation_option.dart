// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServerlessSecurityConfigIamFederationOption {
  /// Group attribute for this SAML integration.
  final pulumi.Input<String> groupAttribute;
  /// User attribute for this SAML integration.
  final pulumi.Input<String> userAttribute;

  /// Creates a new [GetServerlessSecurityConfigIamFederationOption].
  /// [groupAttribute] Group attribute for this SAML integration.
  /// [userAttribute] User attribute for this SAML integration.
  const GetServerlessSecurityConfigIamFederationOption({
    required this.groupAttribute,
    required this.userAttribute,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupAttribute': groupAttribute,
      'userAttribute': userAttribute,
    };
  }

  factory GetServerlessSecurityConfigIamFederationOption.fromMap(Map<String, dynamic> map) {
    return GetServerlessSecurityConfigIamFederationOption(
      groupAttribute: pulumi.Input.fromValue(map['groupAttribute'] as String),
      userAttribute: pulumi.Input.fromValue(map['userAttribute'] as String),
    );
  }
}
