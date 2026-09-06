// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The configuration parameters used while performing resilient VM deletion.
class ResilientVMDeletionPolicy {
  /// Specifies whether resilient VM deletion should be enabled on the virtual machine scale set. The default value is false.
  final pulumi.Input<bool?>? enabled;

  /// Creates a new [ResilientVMDeletionPolicy].
  /// [enabled] Specifies whether resilient VM deletion should be enabled on the virtual machine scale set. The default value is false.
  const ResilientVMDeletionPolicy({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory ResilientVMDeletionPolicy.fromMap(Map<String, dynamic> map) {
    return ResilientVMDeletionPolicy(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
