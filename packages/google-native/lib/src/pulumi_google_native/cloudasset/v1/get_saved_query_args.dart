// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getSavedQuery.
class GetSavedQueryArgs {
  final pulumi.Input<String> savedQueryId;
  final pulumi.Input<String> v1Id;
  final pulumi.Input<String> v1Id1;

  GetSavedQueryArgs({
    required this.savedQueryId,
    required this.v1Id,
    required this.v1Id1,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['savedQueryId'] = savedQueryId;
    map['v1Id'] = v1Id;
    map['v1Id1'] = v1Id1;
    return map;
  }

  factory GetSavedQueryArgs.fromMap(Map<String, dynamic> map) {
    return GetSavedQueryArgs(
      savedQueryId: pulumi.Input.asInput<String>(map['savedQueryId']),
      v1Id: pulumi.Input.asInput<String>(map['v1Id']),
      v1Id1: pulumi.Input.asInput<String>(map['v1Id1']),
    );
  }
}
