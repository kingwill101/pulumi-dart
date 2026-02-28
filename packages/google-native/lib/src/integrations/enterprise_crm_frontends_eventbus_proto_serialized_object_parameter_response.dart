// ignore_for_file: unused_element, unnecessary_cast

class EnterpriseCrmFrontendsEventbusProtoSerializedObjectParameterResponse {
  final String objectValue;

  /// Creates a new [EnterpriseCrmFrontendsEventbusProtoSerializedObjectParameterResponse].
  /// [objectValue] Required.
  EnterpriseCrmFrontendsEventbusProtoSerializedObjectParameterResponse({
    required this.objectValue,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['objectValue'] = objectValue;
    return map;
  }

  factory EnterpriseCrmFrontendsEventbusProtoSerializedObjectParameterResponse.fromMap(
      Map<String, dynamic> map) {
    return EnterpriseCrmFrontendsEventbusProtoSerializedObjectParameterResponse(
      objectValue: map['objectValue'] as String,
    );
  }
}
