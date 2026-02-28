// ignore_for_file: unused_element, unnecessary_cast


class ServiceServicePropertyIdentity {
  /// (Output)
  /// The principal of the identity.
  final String? principal;

  /// Creates a new [ServiceServicePropertyIdentity].
  /// [principal] (Output)
  ServiceServicePropertyIdentity({
    this.principal,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principal': ?principal,
    };
  }

  factory ServiceServicePropertyIdentity.fromMap(Map<String, dynamic> map) {
    return ServiceServicePropertyIdentity(
      principal: map['principal'] == null ? null : map['principal'] as String,
    );
  }
}

