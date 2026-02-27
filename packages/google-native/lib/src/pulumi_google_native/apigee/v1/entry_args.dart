// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// The set of arguments for Entry.
class EntryArgs {
  final Input<String> apiId;
  final Input<String> keyvaluemapId;

  /// Resource URI that can be used to identify the scope of the key value map entries.
  final Input<String>? name;
  final Input<String> organizationId;

  /// Data or payload that is being retrieved and associated with the unique key.
  final Input<String> value;

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
      apiId: Input.asInput<String>(map['apiId']),
      keyvaluemapId: Input.asInput<String>(map['keyvaluemapId']),
      name: Input.asOptionalInput<String>(map['name']),
      organizationId: Input.asInput<String>(map['organizationId']),
      value: Input.asInput<String>(map['value']),
    );
  }
}
