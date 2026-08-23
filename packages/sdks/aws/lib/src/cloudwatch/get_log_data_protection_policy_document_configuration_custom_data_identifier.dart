// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLogDataProtectionPolicyDocumentConfigurationCustomDataIdentifier {
  /// Name of the custom data idenfitier
  final pulumi.Input<String> name;
  /// Regular expression to match sensitive data
  final pulumi.Input<String> regex;

  /// Creates a new [GetLogDataProtectionPolicyDocumentConfigurationCustomDataIdentifier].
  /// [name] Name of the custom data idenfitier
  /// [regex] Regular expression to match sensitive data
  const GetLogDataProtectionPolicyDocumentConfigurationCustomDataIdentifier({
    required this.name,
    required this.regex,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'regex': regex,
    };
  }

  factory GetLogDataProtectionPolicyDocumentConfigurationCustomDataIdentifier.fromMap(Map<String, dynamic> map) {
    return GetLogDataProtectionPolicyDocumentConfigurationCustomDataIdentifier(
      name: pulumi.Input.fromValue(map['name'] as String),
      regex: pulumi.Input.fromValue(map['regex'] as String),
    );
  }
}
