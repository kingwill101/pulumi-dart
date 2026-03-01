// ignore_for_file: unused_element, unnecessary_cast


/// Properties of the delegation.
class DelegationProperties {
  /// The service name to which the NVA is delegated.
  final String? serviceName;

  /// Creates a new [DelegationProperties].
  /// [serviceName] The service name to which the NVA is delegated.
  DelegationProperties({
    this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serviceName': ?serviceName,
    };
  }

  factory DelegationProperties.fromMap(Map<String, dynamic> map) {
    return DelegationProperties(
      serviceName: map['serviceName'] == null ? null : map['serviceName'] as String,
    );
  }
}

