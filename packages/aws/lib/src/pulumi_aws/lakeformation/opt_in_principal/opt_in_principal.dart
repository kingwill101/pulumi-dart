// ignore_for_file: unused_element, unnecessary_cast

class OptInPrincipal {
  final String dataLakePrincipalIdentifier;

  OptInPrincipal({
    required this.dataLakePrincipalIdentifier,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dataLakePrincipalIdentifier'] = dataLakePrincipalIdentifier;
    return map;
  }

  factory OptInPrincipal.fromMap(Map<String, dynamic> map) {
    return OptInPrincipal(
      dataLakePrincipalIdentifier: map['dataLakePrincipalIdentifier'] as String,
    );
  }
}
