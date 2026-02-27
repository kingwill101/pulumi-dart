// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getEntry.
class GetEntryArgs {
  final Input<String> apiId;
  final Input<String> entryId;
  final Input<String> keyvaluemapId;
  final Input<String> organizationId;

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
      apiId: Input.asInput<String>(map['apiId']),
      entryId: Input.asInput<String>(map['entryId']),
      keyvaluemapId: Input.asInput<String>(map['keyvaluemapId']),
      organizationId: Input.asInput<String>(map['organizationId']),
    );
  }
}
