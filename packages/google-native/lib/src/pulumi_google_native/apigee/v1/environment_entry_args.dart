// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// The set of arguments for EnvironmentEntry.
class EnvironmentEntryArgs {
  final Input<String> environmentId;
  final Input<String> keyvaluemapId;

  /// Resource URI that can be used to identify the scope of the key value map entries.
  final Input<String>? name;
  final Input<String> organizationId;

  /// Data or payload that is being retrieved and associated with the unique key.
  final Input<String> value;

  EnvironmentEntryArgs({
    required this.environmentId,
    required this.keyvaluemapId,
    this.name,
    required this.organizationId,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['environmentId'] = environmentId;
    map['keyvaluemapId'] = keyvaluemapId;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['organizationId'] = organizationId;
    map['value'] = value;
    return map;
  }

  factory EnvironmentEntryArgs.fromMap(Map<String, dynamic> map) {
    return EnvironmentEntryArgs(
      environmentId: Input.asInput<String>(map['environmentId']),
      keyvaluemapId: Input.asInput<String>(map['keyvaluemapId']),
      name: Input.asOptionalInput<String>(map['name']),
      organizationId: Input.asInput<String>(map['organizationId']),
      value: Input.asInput<String>(map['value']),
    );
  }
}
