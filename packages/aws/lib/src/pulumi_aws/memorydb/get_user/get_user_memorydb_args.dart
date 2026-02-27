// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getUser.
class GetUserMemorydbArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Map of tags assigned to the user.
  final pulumi.Input<Map<String, String>>? tags;

  /// Name of the user.
  final pulumi.Input<String> userName;

  GetUserMemorydbArgs({
    this.region,
    this.tags,
    required this.userName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['userName'] = userName;
    return map;
  }

  factory GetUserMemorydbArgs.fromMap(Map<String, dynamic> map) {
    return GetUserMemorydbArgs(
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      userName: pulumi.Input.asInput<String>(map['userName']),
    );
  }
}
