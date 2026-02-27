// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getObjectAccessControl.
class GetObjectAccessControlArgs {
  final Input<String> bucket;
  final Input<String> entity;
  final Input<String>? generation;
  final Input<String> object;
  final Input<String>? userProject;

  GetObjectAccessControlArgs({
    required this.bucket,
    required this.entity,
    this.generation,
    required this.object,
    this.userProject,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    map['entity'] = entity;
    final generationValue = generation;
    if (generationValue != null) {
      map['generation'] = generationValue;
    }
    map['object'] = object;
    final userProjectValue = userProject;
    if (userProjectValue != null) {
      map['userProject'] = userProjectValue;
    }
    return map;
  }

  factory GetObjectAccessControlArgs.fromMap(Map<String, dynamic> map) {
    return GetObjectAccessControlArgs(
      bucket: Input.asInput<String>(map['bucket']),
      entity: Input.asInput<String>(map['entity']),
      generation: Input.asOptionalInput<String>(map['generation']),
      object: Input.asInput<String>(map['object']),
      userProject: Input.asOptionalInput<String>(map['userProject']),
    );
  }
}
