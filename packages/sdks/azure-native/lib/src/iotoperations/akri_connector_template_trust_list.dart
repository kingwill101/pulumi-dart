// ignore_for_file: unused_element, unnecessary_cast


/// AkriConnectorTemplateTrustList properties.
class AkriConnectorTemplateTrustList {
  /// The secret reference for certificates to trust.
  final String trustListSecretRef;

  /// Creates a new [AkriConnectorTemplateTrustList].
  /// [trustListSecretRef] The secret reference for certificates to trust.
  AkriConnectorTemplateTrustList({
    required this.trustListSecretRef,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'trustListSecretRef': trustListSecretRef,
    };
  }

  factory AkriConnectorTemplateTrustList.fromMap(Map<String, dynamic> map) {
    return AkriConnectorTemplateTrustList(
      trustListSecretRef: map['trustListSecretRef'] as String,
    );
  }
}

