// ignore_for_file: unused_element, unnecessary_cast


class WorkforcePoolProviderExtendedAttributesOauth2ClientClientSecretValue {
  /// The plain text of the client secret value.
  final String plainText;
  /// (Output)
  /// A thumbprint to represent the current client secret value.
  final String? thumbprint;

  /// Creates a new [WorkforcePoolProviderExtendedAttributesOauth2ClientClientSecretValue].
  /// [plainText] The plain text of the client secret value.
  /// [thumbprint] (Output)
  WorkforcePoolProviderExtendedAttributesOauth2ClientClientSecretValue({
    required this.plainText,
    this.thumbprint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'plainText': plainText,
      'thumbprint': ?thumbprint,
    };
  }

  factory WorkforcePoolProviderExtendedAttributesOauth2ClientClientSecretValue.fromMap(Map<String, dynamic> map) {
    return WorkforcePoolProviderExtendedAttributesOauth2ClientClientSecretValue(
      plainText: map['plainText'] as String,
      thumbprint: map['thumbprint'] == null ? null : map['thumbprint'] as String,
    );
  }
}

