// ignore_for_file: unused_element, unnecessary_cast


/// Datastore Service Principal secrets.
class ServicePrincipalDatastoreSecrets {
  /// Service principal secret.
  final String? clientSecret;
  /// Enum to determine the datastore secrets type.
  /// Expected value is 'ServicePrincipal'.
  final String secretsType;

  /// Creates a new [ServicePrincipalDatastoreSecrets].
  /// [clientSecret] Service principal secret.
  /// [secretsType] Enum to determine the datastore secrets type.
  ServicePrincipalDatastoreSecrets({
    this.clientSecret,
    required this.secretsType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientSecret': ?clientSecret,
      'secretsType': secretsType,
    };
  }

  factory ServicePrincipalDatastoreSecrets.fromMap(Map<String, dynamic> map) {
    return ServicePrincipalDatastoreSecrets(
      clientSecret: map['clientSecret'] == null ? null : map['clientSecret'] as String,
      secretsType: map['secretsType'] as String,
    );
  }
}

