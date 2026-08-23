// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Managed Certificate used for https
class ManagedCertificateParameters {
  /// The type of the secret resource.
  /// Expected value is 'ManagedCertificate'.
  final pulumi.Input<String> type;

  /// Creates a new [ManagedCertificateParameters].
  /// [type] The type of the secret resource.
  const ManagedCertificateParameters({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory ManagedCertificateParameters.fromMap(Map<String, dynamic> map) {
    return ManagedCertificateParameters(
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
