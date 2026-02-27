// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getCallerIdentity.
class GetCallerIdentityArgs {
  /// Account ID number of the account that owns or contains the calling entity.
  final pulumi.Input<String>? id;

  GetCallerIdentityArgs({
    this.id,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    return map;
  }

  factory GetCallerIdentityArgs.fromMap(Map<String, dynamic> map) {
    return GetCallerIdentityArgs(
      id: pulumi.Input.asOptionalInput<String>(map['id']),
    );
  }
}
