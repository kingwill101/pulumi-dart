// ignore_for_file: unused_element, unnecessary_cast

class WorkforcePoolProviderExtraAttributesOauth2ClientClientSecretValue {
  /// The plain text of the client secret value.
  final String plainText;

  /// (Output)
  /// A thumbprint to represent the current client secret value.
  final String? thumbprint;

  /// Creates a new [WorkforcePoolProviderExtraAttributesOauth2ClientClientSecretValue].
  /// [plainText] The plain text of the client secret value.
  /// [thumbprint] (Output)
  WorkforcePoolProviderExtraAttributesOauth2ClientClientSecretValue({
    required this.plainText,
    this.thumbprint,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['plainText'] = plainText;
    final thumbprintValue = thumbprint;
    if (thumbprintValue != null) {
      map['thumbprint'] = thumbprintValue;
    }
    return map;
  }

  factory WorkforcePoolProviderExtraAttributesOauth2ClientClientSecretValue.fromMap(
      Map<String, dynamic> map) {
    return WorkforcePoolProviderExtraAttributesOauth2ClientClientSecretValue(
      plainText: map['plainText'] as String,
      thumbprint:
          map['thumbprint'] == null ? null : map['thumbprint'] as String,
    );
  }
}
