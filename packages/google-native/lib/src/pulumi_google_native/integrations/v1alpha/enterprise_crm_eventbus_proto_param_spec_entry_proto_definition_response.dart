// ignore_for_file: unused_element, unnecessary_cast

class EnterpriseCrmEventbusProtoParamSpecEntryProtoDefinitionResponse {
  /// The fully-qualified proto name. This message, for example, would be "enterprise.crm.eventbus.proto.ParamSpecEntry.ProtoDefinition".
  final String fullName;

  /// Path to the proto file that contains the message type's definition.
  final String path;

  EnterpriseCrmEventbusProtoParamSpecEntryProtoDefinitionResponse({
    required this.fullName,
    required this.path,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['fullName'] = fullName;
    map['path'] = path;
    return map;
  }

  factory EnterpriseCrmEventbusProtoParamSpecEntryProtoDefinitionResponse.fromMap(
      Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoParamSpecEntryProtoDefinitionResponse(
      fullName: map['fullName'] as String,
      path: map['path'] as String,
    );
  }
}
