// ignore_for_file: unused_element, unnecessary_cast


/// Recovery plan protected item.
class RecoveryPlanProtectedItemResponse {
  /// The ARM Id of the recovery plan protected item.
  final String? id;
  /// The virtual machine Id.
  final String? virtualMachineId;

  /// Creates a new [RecoveryPlanProtectedItemResponse].
  /// [id] The ARM Id of the recovery plan protected item.
  /// [virtualMachineId] The virtual machine Id.
  RecoveryPlanProtectedItemResponse({
    this.id,
    this.virtualMachineId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'virtualMachineId': ?virtualMachineId,
    };
  }

  factory RecoveryPlanProtectedItemResponse.fromMap(Map<String, dynamic> map) {
    return RecoveryPlanProtectedItemResponse(
      id: map['id'] == null ? null : map['id'] as String,
      virtualMachineId: map['virtualMachineId'] == null ? null : map['virtualMachineId'] as String,
    );
  }
}

