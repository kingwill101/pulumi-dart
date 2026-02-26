// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getEntityPath.
class GetEntityPathArgs {
  /// Entity ID. Must be an organizational unit (OU) or AWS account ID.
  final Input<String> entityId;

  GetEntityPathArgs({
    required this.entityId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['entityId'] = entityId;
    return map;
  }

  factory GetEntityPathArgs.fromMap(Map<String, dynamic> map) {
    return GetEntityPathArgs(
      entityId: Input.asInput<String>(map['entityId']),
    );
  }
}
