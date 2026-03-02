// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Information about the VM.
class VMInfoResponse {
  /// Azure resource Id of the VM.
  final pulumi.Input<String> id;
  /// UUID(Universally Unique Identifier) of the VM.
  final pulumi.Input<String> uuid;

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
      id: (map['id'] as String).input(),
      uuid: (map['uuid'] as String).input(),
    );
  }
}

