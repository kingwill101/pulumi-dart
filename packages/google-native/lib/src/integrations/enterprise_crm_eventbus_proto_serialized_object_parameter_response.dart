// ignore_for_file: unused_element, unnecessary_cast

class EnterpriseCrmEventbusProtoSerializedObjectParameterResponse {
  final String objectValue;

  /// Creates a new [EnterpriseCrmEventbusProtoSerializedObjectParameterResponse].
  /// [objectValue] Required.
  EnterpriseCrmEventbusProtoSerializedObjectParameterResponse({
    required this.objectValue,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['objectValue'] = objectValue;
    return map;
  }

  factory EnterpriseCrmEventbusProtoSerializedObjectParameterResponse.fromMap(
      Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoSerializedObjectParameterResponse(
      objectValue: map['objectValue'] as String,
    );
  }
}
