// ignore_for_file: unused_element, unnecessary_cast


/// Company information of the user to be passed to partners.
class CompanyInfo {
  /// Business of the company
  final String? business;
  /// Country of the company location.
  final String? country;
  /// Domain of the company
  final String? domain;
  /// Number of employees in the company
  final String? employeesNumber;
  /// State of the company location.
  final String? state;

  /// Creates a new [CompanyInfo].
  /// [business] Business of the company
  /// [country] Country of the company location.
  /// [domain] Domain of the company
  /// [employeesNumber] Number of employees in the company
  /// [state] State of the company location.
  CompanyInfo({
    this.business,
    this.country,
    this.domain,
    this.employeesNumber,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'business': ?business,
      'country': ?country,
      'domain': ?domain,
      'employeesNumber': ?employeesNumber,
      'state': ?state,
    };
  }

  factory CompanyInfo.fromMap(Map<String, dynamic> map) {
    return CompanyInfo(
      business: map['business'] == null ? null : map['business'] as String,
      country: map['country'] == null ? null : map['country'] as String,
      domain: map['domain'] == null ? null : map['domain'] as String,
      employeesNumber: map['employeesNumber'] == null ? null : map['employeesNumber'] as String,
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

