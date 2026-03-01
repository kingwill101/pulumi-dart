// ignore_for_file: unused_element, unnecessary_cast


/// Azure Managed Disk to attach to the Disk Pool.
class Disk {
  /// Unique Azure Resource ID of the Managed Disk.
  final String id;

  /// Creates a new [Disk].
  /// [id] Unique Azure Resource ID of the Managed Disk.
  Disk({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory Disk.fromMap(Map<String, dynamic> map) {
    return Disk(
      id: map['id'] as String,
    );
  }
}

