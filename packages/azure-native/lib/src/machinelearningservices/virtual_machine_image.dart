// ignore_for_file: unused_element, unnecessary_cast


/// Virtual Machine image for Windows AML Compute
class VirtualMachineImage {
  /// Virtual Machine image path
  final String id;

  /// Creates a new [VirtualMachineImage].
  /// [id] Virtual Machine image path
  VirtualMachineImage({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory VirtualMachineImage.fromMap(Map<String, dynamic> map) {
    return VirtualMachineImage(
      id: map['id'] as String,
    );
  }
}

