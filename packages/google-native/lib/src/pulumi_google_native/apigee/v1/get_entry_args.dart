// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getEntry.
class GetEntryArgs {
  final pulumi.Input<String> apiId;
  final pulumi.Input<String> entryId;
  final pulumi.Input<String> keyvaluemapId;
  final pulumi.Input<String> organizationId;

  GetEntryArgs({
    required this.apiId,
    required this.entryId,
    required this.keyvaluemapId,
    required this.organizationId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['apiId'] = apiId;
    map['entryId'] = entryId;
    map['keyvaluemapId'] = keyvaluemapId;
    map['organizationId'] = organizationId;
    return map;
  }

  factory GetEntryArgs.fromMap(Map<String, dynamic> map) {
    return GetEntryArgs(
      apiId: pulumi.Input.asInput<String>(map['apiId']),
      entryId: pulumi.Input.asInput<String>(map['entryId']),
      keyvaluemapId: pulumi.Input.asInput<String>(map['keyvaluemapId']),
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
    );
  }
}
