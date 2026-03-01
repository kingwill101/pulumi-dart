// ignore_for_file: unused_element, unnecessary_cast


/// Virtual Machine image for Windows AML Compute
class VirtualMachineImageResponse {
  /// Virtual Machine image path
  final String id;

  /// Creates a new [VirtualMachineImageResponse].
  /// [id] Virtual Machine image path
  VirtualMachineImageResponse({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory VirtualMachineImageResponse.fromMap(Map<String, dynamic> map) {
    return VirtualMachineImageResponse(
      id: map['id'] as String,
    );
  }
}

