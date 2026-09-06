// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Non secret deployment resource id reference.
class OpenDeploymentResourceReference {
  /// Resource ID.
  final pulumi.Input<String?>? id;
  /// The resource reference arm id type.
  /// Expected value is 'Open'.
  final pulumi.Input<String> idType;

  /// Creates a new [OpenDeploymentResourceReference].
  /// [id] Resource ID.
  /// [idType] The resource reference arm id type.
  const OpenDeploymentResourceReference({
    this.id,
    required this.idType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'idType': idType,
    };
  }

  factory OpenDeploymentResourceReference.fromMap(Map<String, dynamic> map) {
    return OpenDeploymentResourceReference(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      idType: pulumi.Input.fromValue(map['idType'] as String),
    );
  }
}
