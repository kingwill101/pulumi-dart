// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Company information of the user to be passed to partners.
class CompanyInfo {
  /// Business of the company
  final pulumi.Input<String?>? business;
  /// Country of the company location.
  final pulumi.Input<String?>? country;
  /// Domain of the company
  final pulumi.Input<String?>? domain;
  /// Number of employees in the company
  final pulumi.Input<String?>? employeesNumber;
  /// State of the company location.
  final pulumi.Input<String?>? state;

  /// Creates a new [CompanyInfo].
  /// [business] Business of the company
  /// [country] Country of the company location.
  /// [domain] Domain of the company
  /// [employeesNumber] Number of employees in the company
  /// [state] State of the company location.
  const CompanyInfo({
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
      business: (() { final guardedValue = map['business']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      country: (() { final guardedValue = map['country']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domain: (() { final guardedValue = map['domain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      employeesNumber: (() { final guardedValue = map['employeesNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
