// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getOriginAccessControl.
class GetOriginAccessControlArgs {
  /// The identifier for the origin access control settings. For example: `E2T5VTFBZJ3BJB`.
  final pulumi.Input<String> id;

  GetOriginAccessControlArgs({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    return map;
  }

  factory GetOriginAccessControlArgs.fromMap(Map<String, dynamic> map) {
    return GetOriginAccessControlArgs(
      id: pulumi.Input.asInput<String>(map['id']),
    );
  }
}
