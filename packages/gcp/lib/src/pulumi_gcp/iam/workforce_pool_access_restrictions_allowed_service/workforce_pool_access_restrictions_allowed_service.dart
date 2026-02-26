// ignore_for_file: unused_element, unnecessary_cast

class WorkforcePoolAccessRestrictionsAllowedService {
  /// Domain name of the service.
  /// Example: console.cloud.google
  final String? domain;

  WorkforcePoolAccessRestrictionsAllowedService({
    this.domain,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final domainValue = domain;
    if (domainValue != null) {
      map['domain'] = domainValue;
    }
    return map;
  }

  factory WorkforcePoolAccessRestrictionsAllowedService.fromMap(
      Map<String, dynamic> map) {
    return WorkforcePoolAccessRestrictionsAllowedService(
      domain: map['domain'] == null ? null : map['domain'] as String,
    );
  }
}
