// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getObjectIamPolicy.
class GetObjectIamPolicyArgs {
  final pulumi.Input<String> bucket;
  final pulumi.Input<String>? generation;
  final pulumi.Input<String> object;
  final pulumi.Input<String>? userProject;

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
      bucket: pulumi.Input.asInput<String>(map['bucket']),
      generation: pulumi.Input.asOptionalInput<String>(map['generation']),
      object: pulumi.Input.asInput<String>(map['object']),
      userProject: pulumi.Input.asOptionalInput<String>(map['userProject']),
    );
  }
}
