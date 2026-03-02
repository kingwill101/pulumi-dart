// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'company_info.dart';

/// User Information to be passed to partners.
class UserInfo {
  /// Company information of the user to be passed to partners.
  final pulumi.Input<CompanyInfo>? companyInfo;
  /// Company name of the user
  final pulumi.Input<String>? companyName;
  /// Email of the user used by Elastic for contacting them if needed
  final pulumi.Input<String>? emailAddress;
  /// First name of the user
  final pulumi.Input<String>? firstName;
  /// Last name of the user
  final pulumi.Input<String>? lastName;

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
      'companyInfo': ?pulumi.Input.mapOptionalInputValue<CompanyInfo, Map<String, dynamic>>(companyInfo, (value) => value.toMap()),
      'companyName': ?companyName,
      'emailAddress': ?emailAddress,
      'firstName': ?firstName,
      'lastName': ?lastName,
    };
  }

  factory UserInfo.fromMap(Map<String, dynamic> map) {
    return UserInfo(
      companyInfo: map['companyInfo'] == null ? null : (CompanyInfo.fromMap((map['companyInfo']! as Map).cast<String, dynamic>())).input(),
      companyName: map['companyName'] == null ? null : (map['companyName']! as String).input(),
      emailAddress: map['emailAddress'] == null ? null : (map['emailAddress']! as String).input(),
      firstName: map['firstName'] == null ? null : (map['firstName']! as String).input(),
      lastName: map['lastName'] == null ? null : (map['lastName']! as String).input(),
    );
  }
}

