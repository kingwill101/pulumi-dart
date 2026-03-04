// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRoleRoleLastUsed {
  /// The date and time, in RFC 3339 format, that the role was last used.
  final pulumi.Input<String> lastUsedDate;

  /// The name of the AWS Region in which the role was last used.
  final pulumi.Input<String> region;

  /// Creates a new [GetRoleRoleLastUsed].
  /// [lastUsedDate] The date and time, in RFC 3339 format, that the role was last used.
  /// [region] The name of the AWS Region in which the role was last used.
  GetRoleRoleLastUsed({required this.lastUsedDate, required this.region});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'lastUsedDate': lastUsedDate, 'region': region};
  }

  factory GetRoleRoleLastUsed.fromMap(Map<String, dynamic> map) {
    return GetRoleRoleLastUsed(
      lastUsedDate: pulumi.Input.fromValue(map['lastUsedDate'] as String),
      region: pulumi.Input.fromValue(map['region'] as String),
    );
  }
}
