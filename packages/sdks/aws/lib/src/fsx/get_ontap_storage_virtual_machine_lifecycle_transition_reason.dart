// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetOntapStorageVirtualMachineLifecycleTransitionReason {
  /// A detailed message.
  final pulumi.Input<String> message;

  /// Creates a new [GetOntapStorageVirtualMachineLifecycleTransitionReason].
  /// [message] A detailed message.
  const GetOntapStorageVirtualMachineLifecycleTransitionReason({
    required this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'message': message,
    };
  }

  factory GetOntapStorageVirtualMachineLifecycleTransitionReason.fromMap(Map<String, dynamic> map) {
    return GetOntapStorageVirtualMachineLifecycleTransitionReason(
      message: pulumi.Input.fromValue(map['message'] as String),
    );
  }
}

