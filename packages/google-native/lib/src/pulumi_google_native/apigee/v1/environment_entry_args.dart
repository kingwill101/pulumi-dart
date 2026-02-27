// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for EnvironmentEntry.
class EnvironmentEntryArgs {
  final pulumi.Input<String> environmentId;
  final pulumi.Input<String> keyvaluemapId;

  /// Resource URI that can be used to identify the scope of the key value map entries.
  final pulumi.Input<String>? name;
  final pulumi.Input<String> organizationId;

  /// Data or payload that is being retrieved and associated with the unique key.
  final pulumi.Input<String> value;

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
      environmentId: pulumi.Input.asInput<String>(map['environmentId']),
      keyvaluemapId: pulumi.Input.asInput<String>(map['keyvaluemapId']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
      value: pulumi.Input.asInput<String>(map['value']),
    );
  }
}
