// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getDefaultObjectAccessControl.
class GetDefaultObjectAccessControlArgs {
  final Input<String> bucket;
  final Input<String> entity;
  final Input<String>? userProject;

  GetDefaultObjectAccessControlArgs({
    required this.bucket,
    required this.entity,
    this.userProject,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    map['entity'] = entity;
    final userProjectValue = userProject;
    if (userProjectValue != null) {
      map['userProject'] = userProjectValue;
    }
    return map;
  }

  factory GetDefaultObjectAccessControlArgs.fromMap(Map<String, dynamic> map) {
    return GetDefaultObjectAccessControlArgs(
      bucket: Input.asInput<String>(map['bucket']),
      entity: Input.asInput<String>(map['entity']),
      userProject: Input.asOptionalInput<String>(map['userProject']),
    );
  }
}
