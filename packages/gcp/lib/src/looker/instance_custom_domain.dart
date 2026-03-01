// ignore_for_file: unused_element, unnecessary_cast

class InstanceCustomDomain {
  /// Domain name
  final String? domain;

  /// (Output)
  /// Status of the custom domain.
  final String? state;

  /// Creates a new [InstanceCustomDomain].
  /// [domain] Domain name
  /// [state] (Output)
  InstanceCustomDomain({this.domain, this.state});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'domain': ?domain, 'state': ?state};
  }

  factory InstanceCustomDomain.fromMap(Map<String, dynamic> map) {
    return InstanceCustomDomain(
      domain: map['domain'] == null ? null : map['domain'] as String,
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}
