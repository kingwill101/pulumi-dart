// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getDebugSession.
class GetDebugSessionArgs {
  final Input<String> apiId;
  final Input<String> debugsessionId;
  final Input<String> environmentId;
  final Input<String> organizationId;
  final Input<String> revisionId;

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
      apiId: Input.asInput<String>(map['apiId']),
      debugsessionId: Input.asInput<String>(map['debugsessionId']),
      environmentId: Input.asInput<String>(map['environmentId']),
      organizationId: Input.asInput<String>(map['organizationId']),
      revisionId: Input.asInput<String>(map['revisionId']),
    );
  }
}
