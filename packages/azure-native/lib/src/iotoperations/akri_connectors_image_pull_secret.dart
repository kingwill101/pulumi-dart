// ignore_for_file: unused_element, unnecessary_cast


/// AkriConnectorsImagePullSecret properties.
class AkriConnectorsImagePullSecret {
  /// The name of the image pull secret.
  final String secretRef;

  /// Creates a new [AkriConnectorsImagePullSecret].
  /// [secretRef] The name of the image pull secret.
  AkriConnectorsImagePullSecret({
    required this.secretRef,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretRef': secretRef,
    };
  }

  factory AkriConnectorsImagePullSecret.fromMap(Map<String, dynamic> map) {
    return AkriConnectorsImagePullSecret(
      secretRef: map['secretRef'] as String,
    );
  }
}

