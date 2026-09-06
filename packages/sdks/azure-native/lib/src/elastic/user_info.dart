// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'company_info.dart';

/// User Information to be passed to partners.
class UserInfo {
  /// Company information of the user to be passed to partners.
  final pulumi.Input<CompanyInfo?>? companyInfo;
  /// Company name of the user
  final pulumi.Input<String?>? companyName;
  /// Email of the user used by Elastic for contacting them if needed
  final pulumi.Input<String?>? emailAddress;
  /// First name of the user
  final pulumi.Input<String?>? firstName;
  /// Last name of the user
  final pulumi.Input<String?>? lastName;

  /// Creates a new [UserInfo].
  /// [companyInfo] Company information of the user to be passed to partners.
  /// [companyName] Company name of the user
  /// [emailAddress] Email of the user used by Elastic for contacting them if needed
  /// [firstName] First name of the user
  /// [lastName] Last name of the user
  const UserInfo({
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
      companyInfo: (() { final guardedValue = map['companyInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CompanyInfo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      companyName: (() { final guardedValue = map['companyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      emailAddress: (() { final guardedValue = map['emailAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      firstName: (() { final guardedValue = map['firstName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastName: (() { final guardedValue = map['lastName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
