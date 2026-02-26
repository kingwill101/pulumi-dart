// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for DefaultObjectACL.
class DefaultObjectACLArgs {
  /// The name of the bucket it applies to.
  final Input<String> bucket;

  /// List of role/entity pairs in the form `ROLE:entity`.
  /// See [GCS Object ACL documentation](https://cloud.google.com/storage/docs/json_api/v1/objectAccessControls) for more details.
  /// Omitting the field is the same as providing an empty list.
  final Input<List<String>>? roleEntities;

  DefaultObjectACLArgs({
    required this.bucket,
    this.roleEntities,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    final roleEntitiesValue = roleEntities;
    if (roleEntitiesValue != null) {
      map['roleEntities'] = roleEntitiesValue;
    }
    return map;
  }

  factory DefaultObjectACLArgs.fromMap(Map<String, dynamic> map) {
    return DefaultObjectACLArgs(
      bucket: Input.asInput<String>(map['bucket']),
      roleEntities: Input.asOptionalInput<List<String>>(map['roleEntities']),
    );
  }
}
