// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetUsersUser {
  /// The email of the user email.
  final pulumi.Input<String> email;
  /// The Username. The custom setting is composed of lowercase letters, numbers and underscores, and the length is 3~24 characters.
  final pulumi.Input<String> endUserId;
  /// The ID of the user id.
  final pulumi.Input<String> id;
  /// The phone of the mobile phone number.
  final pulumi.Input<String> phone;
  /// The status of the resource.
  final pulumi.Input<String> status;

  /// Creates a new [GetUsersUser].
  /// [email] The email of the user email.
  /// [endUserId] The Username. The custom setting is composed of lowercase letters, numbers and underscores, and the length is 3~24 characters.
  /// [id] The ID of the user id.
  /// [phone] The phone of the mobile phone number.
  /// [status] The status of the resource.
  GetUsersUser({
    required this.email,
    required this.endUserId,
    required this.id,
    required this.phone,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
      'endUserId': endUserId,
      'id': id,
      'phone': phone,
      'status': status,
    };
  }

  factory GetUsersUser.fromMap(Map<String, dynamic> map) {
    return GetUsersUser(
      email: (map['email'] as String).input(),
      endUserId: (map['endUserId'] as String).input(),
      id: (map['id'] as String).input(),
      phone: (map['phone'] as String).input(),
      status: (map['status'] as String).input(),
    );
  }
}

