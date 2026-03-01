// ignore_for_file: unused_element, unnecessary_cast

import 'company_info.dart';

/// User Information to be passed to partners.
class UserInfo {
  /// Company information of the user to be passed to partners.
  final CompanyInfo? companyInfo;
  /// Company name of the user
  final String? companyName;
  /// Email of the user used by Elastic for contacting them if needed
  final String? emailAddress;
  /// First name of the user
  final String? firstName;
  /// Last name of the user
  final String? lastName;

  /// Creates a new [UserInfo].
  /// [companyInfo] Company information of the user to be passed to partners.
  /// [companyName] Company name of the user
  /// [emailAddress] Email of the user used by Elastic for contacting them if needed
  /// [firstName] First name of the user
  /// [lastName] Last name of the user
  UserInfo({
    this.companyInfo,
    this.companyName,
    this.emailAddress,
    this.firstName,
    this.lastName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'companyInfo': ?companyInfo == null ? null : companyInfo!.toMap(),
      'companyName': ?companyName,
      'emailAddress': ?emailAddress,
      'firstName': ?firstName,
      'lastName': ?lastName,
    };
  }

  factory UserInfo.fromMap(Map<String, dynamic> map) {
    return UserInfo(
      companyInfo: map['companyInfo'] == null ? null : CompanyInfo.fromMap((map['companyInfo'] as Map).cast<String, dynamic>()),
      companyName: map['companyName'] == null ? null : map['companyName'] as String,
      emailAddress: map['emailAddress'] == null ? null : map['emailAddress'] as String,
      firstName: map['firstName'] == null ? null : map['firstName'] as String,
      lastName: map['lastName'] == null ? null : map['lastName'] as String,
    );
  }
}

