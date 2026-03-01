// ignore_for_file: unused_element, unnecessary_cast

class EnterpriseCrmFrontendsEventbusProtoSerializedObjectParameterResponse {
  final String objectValue;

  /// Creates a new [EnterpriseCrmFrontendsEventbusProtoSerializedObjectParameterResponse].
  /// [objectValue] Required.
  EnterpriseCrmFrontendsEventbusProtoSerializedObjectParameterResponse({
    required this.objectValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'objectValue': objectValue};
  }

  factory EnterpriseCrmFrontendsEventbusProtoSerializedObjectParameterResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return EnterpriseCrmFrontendsEventbusProtoSerializedObjectParameterResponse(
      objectValue: map['objectValue'] as String,
    );
  }
}
