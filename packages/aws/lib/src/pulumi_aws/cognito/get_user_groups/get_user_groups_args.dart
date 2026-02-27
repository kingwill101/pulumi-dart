// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getUserGroups.
class GetUserGroupsArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// User pool the client belongs to.
  final pulumi.Input<String> userPoolId;

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
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      userPoolId: pulumi.Input.asInput<String>(map['userPoolId']),
    );
  }
}
