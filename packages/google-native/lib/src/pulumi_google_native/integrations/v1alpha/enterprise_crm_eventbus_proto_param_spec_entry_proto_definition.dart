// ignore_for_file: unused_element, unnecessary_cast

class EnterpriseCrmEventbusProtoParamSpecEntryProtoDefinition {
  /// The fully-qualified proto name. This message, for example, would be "enterprise.crm.eventbus.proto.ParamSpecEntry.ProtoDefinition".
  final String? fullName;

  /// Path to the proto file that contains the message type's definition.
  final String? path;

  EnterpriseCrmEventbusProtoParamSpecEntryProtoDefinition({
    this.fullName,
    this.path,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final fullNameValue = fullName;
    if (fullNameValue != null) {
      map['fullName'] = fullNameValue;
    }
    final pathValue = path;
    if (pathValue != null) {
      map['path'] = pathValue;
    }
    return map;
  }

  factory EnterpriseCrmEventbusProtoParamSpecEntryProtoDefinition.fromMap(
      Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoParamSpecEntryProtoDefinition(
      fullName: map['fullName'] == null ? null : map['fullName'] as String,
      path: map['path'] == null ? null : map['path'] as String,
    );
  }
}
