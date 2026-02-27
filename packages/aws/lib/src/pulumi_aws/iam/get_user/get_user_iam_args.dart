// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getUser.
class GetUserIamArgs {
  /// Map of key-value pairs associated with the user.
  final pulumi.Input<Map<String, String>>? tags;

  /// Friendly IAM user name to match.
  final pulumi.Input<String> userName;

  GetUserIamArgs({
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

  factory GetUserIamArgs.fromMap(Map<String, dynamic> map) {
    return GetUserIamArgs(
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      userName: pulumi.Input.asInput<String>(map['userName']),
    );
  }
}
