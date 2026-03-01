// ignore_for_file: unused_element, unnecessary_cast


/// A machine reference with a hint of the machine's name and operating system.
class MachineReferenceWithHints {
  /// Resource URI.
  final String id;
  /// Specifies the sub-class of the reference.
  /// Expected value is 'ref:machinewithhints'.
  final String kind;

  /// Creates a new [MachineReferenceWithHints].
  /// [id] Resource URI.
  /// [kind] Specifies the sub-class of the reference.
  MachineReferenceWithHints({
    required this.id,
    required this.kind,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'kind': kind,
    };
  }

  factory MachineReferenceWithHints.fromMap(Map<String, dynamic> map) {
    return MachineReferenceWithHints(
      id: map['id'] as String,
      kind: map['kind'] as String,
    );
  }
}

