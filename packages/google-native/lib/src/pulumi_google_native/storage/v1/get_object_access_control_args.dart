// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getObjectAccessControl.
class GetObjectAccessControlArgs {
  final pulumi.Input<String> bucket;
  final pulumi.Input<String> entity;
  final pulumi.Input<String>? generation;
  final pulumi.Input<String> object;
  final pulumi.Input<String>? userProject;

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
      bucket: pulumi.Input.asInput<String>(map['bucket']),
      entity: pulumi.Input.asInput<String>(map['entity']),
      generation: pulumi.Input.asOptionalInput<String>(map['generation']),
      object: pulumi.Input.asInput<String>(map['object']),
      userProject: pulumi.Input.asOptionalInput<String>(map['userProject']),
    );
  }
}
