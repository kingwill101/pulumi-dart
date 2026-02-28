// ignore_for_file: unused_element, unnecessary_cast

/// Custom domain information.
class CustomDomainResponse {
  /// Domain name.
  final String domain;

  /// Domain state.
  final String state;

  /// Creates a new [CustomDomainResponse].
  /// [domain] Domain name.
  /// [state] Domain state.
  CustomDomainResponse({
    required this.domain,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['domain'] = domain;
    map['state'] = state;
    return map;
  }

  factory CustomDomainResponse.fromMap(Map<String, dynamic> map) {
    return CustomDomainResponse(
      domain: map['domain'] as String,
      state: map['state'] as String,
    );
  }
}
