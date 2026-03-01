// ignore_for_file: unused_element, unnecessary_cast


/// Includes name, email and optionally, phone number. User Information can't be null.
class UserInfo {
  /// Email of the user used by Datadog for contacting them if needed
  final String? emailAddress;
  /// Name of the user
  final String? name;
  /// Phone number of the user used by Datadog for contacting them if needed
  final String? phoneNumber;

  /// Creates a new [UserInfo].
  /// [emailAddress] Email of the user used by Datadog for contacting them if needed
  /// [name] Name of the user
  /// [phoneNumber] Phone number of the user used by Datadog for contacting them if needed
  UserInfo({
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

  factory UserInfo.fromMap(Map<String, dynamic> map) {
    return UserInfo(
      emailAddress: map['emailAddress'] == null ? null : map['emailAddress'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      phoneNumber: map['phoneNumber'] == null ? null : map['phoneNumber'] as String,
    );
  }
}

