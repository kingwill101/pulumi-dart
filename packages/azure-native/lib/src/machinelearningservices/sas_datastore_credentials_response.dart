// ignore_for_file: unused_element, unnecessary_cast


/// SAS datastore credentials configuration.
class SasDatastoreCredentialsResponse {
  /// Enum to determine the datastore credentials type.
  /// Expected value is 'Sas'.
  final String credentialsType;

  /// Creates a new [SasDatastoreCredentialsResponse].
  /// [credentialsType] Enum to determine the datastore credentials type.
  SasDatastoreCredentialsResponse({
    required this.credentialsType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'credentialsType': credentialsType,
    };
  }

  factory SasDatastoreCredentialsResponse.fromMap(Map<String, dynamic> map) {
    return SasDatastoreCredentialsResponse(
      credentialsType: map['credentialsType'] as String,
    );
  }
}

