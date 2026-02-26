// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getUserGroups.
class GetUserGroupsArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// User pool the client belongs to.
  final Input<String> userPoolId;

  GetUserGroupsArgs({
    this.region,
    required this.userPoolId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['userPoolId'] = userPoolId;
    return map;
  }

  factory GetUserGroupsArgs.fromMap(Map<String, dynamic> map) {
    return GetUserGroupsArgs(
      region: Input.asOptionalInput<String>(map['region']),
      userPoolId: Input.asInput<String>(map['userPoolId']),
    );
  }
}
