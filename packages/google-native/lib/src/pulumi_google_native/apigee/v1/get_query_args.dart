// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getQuery.
class GetQueryArgs {
  final Input<String> environmentId;
  final Input<String> organizationId;
  final Input<String> queryId;

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
      environmentId: Input.asInput<String>(map['environmentId']),
      organizationId: Input.asInput<String>(map['organizationId']),
      queryId: Input.asInput<String>(map['queryId']),
    );
  }
}
