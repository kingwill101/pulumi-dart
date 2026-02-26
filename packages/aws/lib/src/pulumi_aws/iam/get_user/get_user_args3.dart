// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getUser.
class GetUserArgs3 {
  /// Map of key-value pairs associated with the user.
  final Input<Map<String, String>>? tags;

  /// Friendly IAM user name to match.
  final Input<String> userName;

  GetUserArgs3({
    this.tags,
    required this.userName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['userName'] = userName;
    return map;
  }

  factory GetUserArgs3.fromMap(Map<String, dynamic> map) {
    return GetUserArgs3(
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      userName: Input.asInput<String>(map['userName']),
    );
  }
}
