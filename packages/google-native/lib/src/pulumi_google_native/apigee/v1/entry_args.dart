// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Entry.
class EntryArgs {
  final pulumi.Input<String> apiId;
  final pulumi.Input<String> keyvaluemapId;

  /// Resource URI that can be used to identify the scope of the key value map entries.
  final pulumi.Input<String>? name;
  final pulumi.Input<String> organizationId;

  /// Data or payload that is being retrieved and associated with the unique key.
  final pulumi.Input<String> value;

  EntryArgs({
    required this.apiId,
    required this.keyvaluemapId,
    this.name,
    required this.organizationId,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['apiId'] = apiId;
    map['keyvaluemapId'] = keyvaluemapId;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['organizationId'] = organizationId;
    map['value'] = value;
    return map;
  }

  factory EntryArgs.fromMap(Map<String, dynamic> map) {
    return EntryArgs(
      apiId: pulumi.Input.asInput<String>(map['apiId']),
      keyvaluemapId: pulumi.Input.asInput<String>(map['keyvaluemapId']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
      value: pulumi.Input.asInput<String>(map['value']),
    );
  }
}
