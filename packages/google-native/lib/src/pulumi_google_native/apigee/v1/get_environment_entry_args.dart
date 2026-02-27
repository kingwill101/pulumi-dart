// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getEnvironmentEntry.
class GetEnvironmentEntryArgs {
  final pulumi.Input<String> entryId;
  final pulumi.Input<String> environmentId;
  final pulumi.Input<String> keyvaluemapId;
  final pulumi.Input<String> organizationId;

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
      entryId: pulumi.Input.asInput<String>(map['entryId']),
      environmentId: pulumi.Input.asInput<String>(map['environmentId']),
      keyvaluemapId: pulumi.Input.asInput<String>(map['keyvaluemapId']),
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
    );
  }
}
