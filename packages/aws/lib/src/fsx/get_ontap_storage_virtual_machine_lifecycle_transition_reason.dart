// ignore_for_file: unused_element, unnecessary_cast

class GetOntapStorageVirtualMachineLifecycleTransitionReason {
  /// A detailed message.
  final String message;

  /// Creates a new [GetOntapStorageVirtualMachineLifecycleTransitionReason].
  /// [message] A detailed message.
  GetOntapStorageVirtualMachineLifecycleTransitionReason({
    required this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'message': message};
  }

  factory GetOntapStorageVirtualMachineLifecycleTransitionReason.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetOntapStorageVirtualMachineLifecycleTransitionReason(
      message: map['message'] as String,
    );
  }
}
