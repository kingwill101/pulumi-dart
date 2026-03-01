// ignore_for_file: unused_element, unnecessary_cast

class PolicyAdmissionWhitelistPattern {
  /// An image name pattern to whitelist, in the form
  /// `registry/path/to/image`. This supports a trailing * as a
  /// wildcard, but this is allowed only in text after the registry/
  /// part.
  final String namePattern;

  /// Creates a new [PolicyAdmissionWhitelistPattern].
  /// [namePattern] An image name pattern to whitelist, in the form
  PolicyAdmissionWhitelistPattern({required this.namePattern});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'namePattern': namePattern};
  }

  factory PolicyAdmissionWhitelistPattern.fromMap(Map<String, dynamic> map) {
    return PolicyAdmissionWhitelistPattern(
      namePattern: map['namePattern'] as String,
    );
  }
}
