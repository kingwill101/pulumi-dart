// ignore_for_file: unused_element, unnecessary_cast

class WorkforcePoolAccessRestrictionsAllowedService {
  /// Domain name of the service.
  /// Example: console.cloud.google
  final String? domain;

  /// Creates a new [WorkforcePoolAccessRestrictionsAllowedService].
  /// [domain] Domain name of the service.
  WorkforcePoolAccessRestrictionsAllowedService({this.domain});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'domain': ?domain};
  }

  factory WorkforcePoolAccessRestrictionsAllowedService.fromMap(
    Map<String, dynamic> map,
  ) {
    return WorkforcePoolAccessRestrictionsAllowedService(
      domain: map['domain'] == null ? null : map['domain'] as String,
    );
  }
}
