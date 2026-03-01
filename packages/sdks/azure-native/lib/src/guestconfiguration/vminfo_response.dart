// ignore_for_file: unused_element, unnecessary_cast


/// Information about the VM.
class VMInfoResponse {
  /// Azure resource Id of the VM.
  final String id;
  /// UUID(Universally Unique Identifier) of the VM.
  final String uuid;

  /// Creates a new [VMInfoResponse].
  /// [id] Azure resource Id of the VM.
  /// [uuid] UUID(Universally Unique Identifier) of the VM.
  VMInfoResponse({
    required this.id,
    required this.uuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'uuid': uuid,
    };
  }

  factory VMInfoResponse.fromMap(Map<String, dynamic> map) {
    return VMInfoResponse(
      id: map['id'] as String,
      uuid: map['uuid'] as String,
    );
  }
}

