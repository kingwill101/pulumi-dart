// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getEnvironmentEntry.
class GetEnvironmentEntryArgs {
  final Input<String> entryId;
  final Input<String> environmentId;
  final Input<String> keyvaluemapId;
  final Input<String> organizationId;

  GetEnvironmentEntryArgs({
    required this.entryId,
    required this.environmentId,
    required this.keyvaluemapId,
    required this.organizationId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['entryId'] = entryId;
    map['environmentId'] = environmentId;
    map['keyvaluemapId'] = keyvaluemapId;
    map['organizationId'] = organizationId;
    return map;
  }

  factory GetEnvironmentEntryArgs.fromMap(Map<String, dynamic> map) {
    return GetEnvironmentEntryArgs(
      entryId: Input.asInput<String>(map['entryId']),
      environmentId: Input.asInput<String>(map['environmentId']),
      keyvaluemapId: Input.asInput<String>(map['keyvaluemapId']),
      organizationId: Input.asInput<String>(map['organizationId']),
    );
  }
}
