// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// AkriConnectorsImagePullSecret properties.
class AkriConnectorsImagePullSecret {
  /// The name of the image pull secret.
  final pulumi.Input<String> secretRef;

  /// Creates a new [AkriConnectorsImagePullSecret].
  /// [secretRef] The name of the image pull secret.
  const AkriConnectorsImagePullSecret({
    required this.secretRef,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretRef': secretRef,
    };
  }

  factory AkriConnectorsImagePullSecret.fromMap(Map<String, dynamic> map) {
    return AkriConnectorsImagePullSecret(
      secretRef: pulumi.Input.fromValue(map['secretRef'] as String),
    );
  }
}

