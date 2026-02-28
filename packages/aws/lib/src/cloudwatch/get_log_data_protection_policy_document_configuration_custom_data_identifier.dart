// ignore_for_file: unused_element, unnecessary_cast

class GetLogDataProtectionPolicyDocumentConfigurationCustomDataIdentifier {
  /// Name of the custom data idenfitier
  final String name;

  /// Regular expression to match sensitive data
  final String regex;

  /// Creates a new [GetLogDataProtectionPolicyDocumentConfigurationCustomDataIdentifier].
  /// [name] Name of the custom data idenfitier
  /// [regex] Regular expression to match sensitive data
  GetLogDataProtectionPolicyDocumentConfigurationCustomDataIdentifier({
    required this.name,
    required this.regex,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['regex'] = regex;
    return map;
  }

  factory GetLogDataProtectionPolicyDocumentConfigurationCustomDataIdentifier.fromMap(
      Map<String, dynamic> map) {
    return GetLogDataProtectionPolicyDocumentConfigurationCustomDataIdentifier(
      name: map['name'] as String,
      regex: map['regex'] as String,
    );
  }
}
