// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// AkriConnectorsImagePullSecret properties.
class AkriConnectorsImagePullSecretResponse {
  /// The name of the image pull secret.
  final pulumi.Input<String> secretRef;

  /// Creates a new [AkriConnectorsImagePullSecretResponse].
  /// [secretRef] The name of the image pull secret.
  AkriConnectorsImagePullSecretResponse({required this.secretRef});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'secretRef': secretRef};
  }

  factory AkriConnectorsImagePullSecretResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return AkriConnectorsImagePullSecretResponse(
      secretRef: pulumi.Input.fromValue(map['secretRef'] as String),
    );
  }
}
