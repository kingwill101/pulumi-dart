// ignore_for_file: unused_element, unnecessary_cast


/// PodSchedulingGate is associated to a Pod to guard its scheduling.
class PodSchedulingGate {
  /// Name of the scheduling gate. Each scheduling gate must have a unique name field.
  final String name;

  /// Creates a new [PodSchedulingGate].
  /// [name] Name of the scheduling gate. Each scheduling gate must have a unique name field.
  PodSchedulingGate({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory PodSchedulingGate.fromMap(Map<String, dynamic> map) {
    return PodSchedulingGate(
      name: map['name'] as String,
    );
  }
}

