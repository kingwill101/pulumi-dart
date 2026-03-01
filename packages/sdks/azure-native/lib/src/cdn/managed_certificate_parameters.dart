// ignore_for_file: unused_element, unnecessary_cast


/// Managed Certificate used for https
class ManagedCertificateParameters {
  /// The type of the secret resource.
  /// Expected value is 'ManagedCertificate'.
  final String type;

  /// Creates a new [ManagedCertificateParameters].
  /// [type] The type of the secret resource.
  ManagedCertificateParameters({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory ManagedCertificateParameters.fromMap(Map<String, dynamic> map) {
    return ManagedCertificateParameters(
      type: map['type'] as String,
    );
  }
}

