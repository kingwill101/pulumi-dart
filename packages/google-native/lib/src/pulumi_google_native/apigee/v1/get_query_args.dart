// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getQuery.
class GetQueryArgs {
  final pulumi.Input<String> environmentId;
  final pulumi.Input<String> organizationId;
  final pulumi.Input<String> queryId;

  GetQueryArgs({
    required this.environmentId,
    required this.organizationId,
    required this.queryId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['environmentId'] = environmentId;
    map['organizationId'] = organizationId;
    map['queryId'] = queryId;
    return map;
  }

  factory GetQueryArgs.fromMap(Map<String, dynamic> map) {
    return GetQueryArgs(
      environmentId: pulumi.Input.asInput<String>(map['environmentId']),
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
      queryId: pulumi.Input.asInput<String>(map['queryId']),
    );
  }
}
