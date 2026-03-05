// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Secret deployment resource id reference.
class SecretDeploymentResourceReferenceResponse {
  /// The resource reference arm id type.
  /// Expected value is 'Secret'.
  final pulumi.Input<String> idType;

  /// Creates a new [SecretDeploymentResourceReferenceResponse].
  /// [idType] The resource reference arm id type.
  SecretDeploymentResourceReferenceResponse({
    required this.idType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'idType': idType,
    };
  }

  factory SecretDeploymentResourceReferenceResponse.fromMap(Map<String, dynamic> map) {
    return SecretDeploymentResourceReferenceResponse(
      idType: pulumi.Input.fromValue(map['idType'] as String),
    );
  }
}

