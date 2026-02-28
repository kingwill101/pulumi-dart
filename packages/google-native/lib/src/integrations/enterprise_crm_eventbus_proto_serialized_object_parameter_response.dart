// ignore_for_file: unused_element, unnecessary_cast


class EnterpriseCrmEventbusProtoSerializedObjectParameterResponse {
  final String objectValue;

  /// Creates a new [EnterpriseCrmEventbusProtoSerializedObjectParameterResponse].
  /// [objectValue] Required.
  EnterpriseCrmEventbusProtoSerializedObjectParameterResponse({
    required this.objectValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'objectValue': objectValue,
    };
  }

  factory EnterpriseCrmEventbusProtoSerializedObjectParameterResponse.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoSerializedObjectParameterResponse(
      objectValue: map['objectValue'] as String,
    );
  }
}

