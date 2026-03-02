// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The configuration parameters used while performing resilient VM creation.
class ResilientVMCreationPolicy {
  /// Specifies whether resilient VM creation should be enabled on the virtual machine scale set. The default value is false.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [ResilientVMCreationPolicy].
  /// [enabled] Specifies whether resilient VM creation should be enabled on the virtual machine scale set. The default value is false.
  ResilientVMCreationPolicy({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory ResilientVMCreationPolicy.fromMap(Map<String, dynamic> map) {
    return ResilientVMCreationPolicy(
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
    );
  }
}

