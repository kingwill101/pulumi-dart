// ignore_for_file: unused_element, unnecessary_cast

class EnterpriseCrmFrontendsEventbusProtoSerializedObjectParameter {
  final String? objectValue;

  EnterpriseCrmFrontendsEventbusProtoSerializedObjectParameter({
    this.objectValue,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final objectValueValue = objectValue;
    if (objectValueValue != null) {
      map['objectValue'] = objectValueValue;
    }
    return map;
  }

  factory EnterpriseCrmFrontendsEventbusProtoSerializedObjectParameter.fromMap(
      Map<String, dynamic> map) {
    return EnterpriseCrmFrontendsEventbusProtoSerializedObjectParameter(
      objectValue:
          map['objectValue'] == null ? null : map['objectValue'] as String,
    );
  }
}
