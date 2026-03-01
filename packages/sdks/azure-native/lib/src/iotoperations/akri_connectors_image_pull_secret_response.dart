// ignore_for_file: unused_element, unnecessary_cast


/// AkriConnectorsImagePullSecret properties.
class AkriConnectorsImagePullSecretResponse {
  /// The name of the image pull secret.
  final String secretRef;

  /// Creates a new [AkriConnectorsImagePullSecretResponse].
  /// [secretRef] The name of the image pull secret.
  AkriConnectorsImagePullSecretResponse({
    required this.secretRef,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretRef': secretRef,
    };
  }

  factory AkriConnectorsImagePullSecretResponse.fromMap(Map<String, dynamic> map) {
    return AkriConnectorsImagePullSecretResponse(
      secretRef: map['secretRef'] as String,
    );
  }
}

