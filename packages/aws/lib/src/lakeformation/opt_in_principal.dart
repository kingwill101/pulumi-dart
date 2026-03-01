// ignore_for_file: unused_element, unnecessary_cast


class OptInPrincipal {
  final String dataLakePrincipalIdentifier;

  /// Creates a new [OptInPrincipal].
  /// [dataLakePrincipalIdentifier] Required.
  OptInPrincipal({
    required this.dataLakePrincipalIdentifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataLakePrincipalIdentifier': dataLakePrincipalIdentifier,
    };
  }

  factory OptInPrincipal.fromMap(Map<String, dynamic> map) {
    return OptInPrincipal(
      dataLakePrincipalIdentifier: map['dataLakePrincipalIdentifier'] as String,
    );
  }
}

