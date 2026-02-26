// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getObjectIamPolicy.
class GetObjectIamPolicyArgs {
  final Input<String> bucket;
  final Input<String>? generation;
  final Input<String> object;
  final Input<String>? userProject;

  GetObjectIamPolicyArgs({
    required this.bucket,
    this.generation,
    required this.object,
    this.userProject,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
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

  factory GetObjectIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetObjectIamPolicyArgs(
      bucket: Input.asInput<String>(map['bucket']),
      generation: Input.asOptionalInput<String>(map['generation']),
      object: Input.asInput<String>(map['object']),
      userProject: Input.asOptionalInput<String>(map['userProject']),
    );
  }
}
