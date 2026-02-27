// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getDebugSession.
class GetDebugSessionArgs {
  final pulumi.Input<String> apiId;
  final pulumi.Input<String> debugsessionId;
  final pulumi.Input<String> environmentId;
  final pulumi.Input<String> organizationId;
  final pulumi.Input<String> revisionId;

  GetDebugSessionArgs({
    required this.apiId,
    required this.debugsessionId,
    required this.environmentId,
    required this.organizationId,
    required this.revisionId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['apiId'] = apiId;
    map['debugsessionId'] = debugsessionId;
    map['environmentId'] = environmentId;
    map['organizationId'] = organizationId;
    map['revisionId'] = revisionId;
    return map;
  }

  factory GetDebugSessionArgs.fromMap(Map<String, dynamic> map) {
    return GetDebugSessionArgs(
      apiId: pulumi.Input.asInput<String>(map['apiId']),
      debugsessionId: pulumi.Input.asInput<String>(map['debugsessionId']),
      environmentId: pulumi.Input.asInput<String>(map['environmentId']),
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
      revisionId: pulumi.Input.asInput<String>(map['revisionId']),
    );
  }
}
