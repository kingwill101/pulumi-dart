// ignore_for_file: unused_element, unnecessary_cast

class EnterpriseCrmFrontendsEventbusProtoSerializedObjectParameterResponse {
  final String objectValue;

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
