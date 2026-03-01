// ignore_for_file: unused_element, unnecessary_cast


/// A machine reference with a hint of the machine's name and operating system.
class MachineReferenceWithHintsResponse {
  /// Last known display name.
  final String displayNameHint;
  /// Resource URI.
  final String id;
  /// Specifies the sub-class of the reference.
  /// Expected value is 'ref:machinewithhints'.
  final String kind;
  /// Resource name.
  final String name;
  /// Last known operating system family.
  final String osFamilyHint;
  /// Resource type qualifier.
  final String type;

  /// Creates a new [MachineReferenceWithHintsResponse].
  /// [displayNameHint] Last known display name.
  /// [id] Resource URI.
  /// [kind] Specifies the sub-class of the reference.
  /// [name] Resource name.
  /// [osFamilyHint] Last known operating system family.
  /// [type] Resource type qualifier.
  MachineReferenceWithHintsResponse({
    required this.displayNameHint,
    required this.id,
    required this.kind,
    required this.name,
    required this.osFamilyHint,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayNameHint': displayNameHint,
      'id': id,
      'kind': kind,
      'name': name,
      'osFamilyHint': osFamilyHint,
      'type': type,
    };
  }

  factory MachineReferenceWithHintsResponse.fromMap(Map<String, dynamic> map) {
    return MachineReferenceWithHintsResponse(
      displayNameHint: map['displayNameHint'] as String,
      id: map['id'] as String,
      kind: map['kind'] as String,
      name: map['name'] as String,
      osFamilyHint: map['osFamilyHint'] as String,
      type: map['type'] as String,
    );
  }
}

