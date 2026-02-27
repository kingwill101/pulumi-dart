// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getReference.
class GetReferenceArgs {
  final pulumi.Input<String> environmentId;
  final pulumi.Input<String> organizationId;
  final pulumi.Input<String> referenceId;

  GetReferenceArgs({
    required this.environmentId,
    required this.organizationId,
    required this.referenceId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['environmentId'] = environmentId;
    map['organizationId'] = organizationId;
    map['referenceId'] = referenceId;
    return map;
  }

  factory GetReferenceArgs.fromMap(Map<String, dynamic> map) {
    return GetReferenceArgs(
      environmentId: pulumi.Input.asInput<String>(map['environmentId']),
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
      referenceId: pulumi.Input.asInput<String>(map['referenceId']),
    );
  }
}
