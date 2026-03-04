// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// AkriConnectorTemplateTrustList properties.
class AkriConnectorTemplateTrustListResponse {
  /// The secret reference for certificates to trust.
  final pulumi.Input<String> trustListSecretRef;

  /// Creates a new [AkriConnectorTemplateTrustListResponse].
  /// [trustListSecretRef] The secret reference for certificates to trust.
  AkriConnectorTemplateTrustListResponse({required this.trustListSecretRef});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'trustListSecretRef': trustListSecretRef};
  }

  factory AkriConnectorTemplateTrustListResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return AkriConnectorTemplateTrustListResponse(
      trustListSecretRef: pulumi.Input.fromValue(
        map['trustListSecretRef'] as String,
      ),
    );
  }
}
