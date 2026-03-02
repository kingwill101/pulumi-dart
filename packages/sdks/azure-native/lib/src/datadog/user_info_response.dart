// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Includes name, email and optionally, phone number. User Information can't be null.
class UserInfoResponse {
  /// Email of the user used by Datadog for contacting them if needed
  final pulumi.Input<String>? emailAddress;
  /// Name of the user
  final pulumi.Input<String>? name;
  /// Phone number of the user used by Datadog for contacting them if needed
  final pulumi.Input<String>? phoneNumber;

  /// Creates a new [UserInfoResponse].
  /// [emailAddress] Email of the user used by Datadog for contacting them if needed
  /// [name] Name of the user
  /// [phoneNumber] Phone number of the user used by Datadog for contacting them if needed
  UserInfoResponse({
    this.emailAddress,
    this.name,
    this.phoneNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'emailAddress': ?emailAddress,
      'name': ?name,
      'phoneNumber': ?phoneNumber,
    };
  }

  factory UserInfoResponse.fromMap(Map<String, dynamic> map) {
    return UserInfoResponse(
      emailAddress: map['emailAddress'] == null ? null : (map['emailAddress']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      phoneNumber: map['phoneNumber'] == null ? null : (map['phoneNumber']! as String).input(),
    );
  }
}

