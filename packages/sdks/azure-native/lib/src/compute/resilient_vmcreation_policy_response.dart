// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The configuration parameters used while performing resilient VM creation.
class ResilientVMCreationPolicyResponse {
  /// Specifies whether resilient VM creation should be enabled on the virtual machine scale set. The default value is false.
  final pulumi.Input<bool?>? enabled;

  /// Creates a new [ResilientVMCreationPolicyResponse].
  /// [enabled] Specifies whether resilient VM creation should be enabled on the virtual machine scale set. The default value is false.
  const ResilientVMCreationPolicyResponse({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory ResilientVMCreationPolicyResponse.fromMap(Map<String, dynamic> map) {
    return ResilientVMCreationPolicyResponse(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
