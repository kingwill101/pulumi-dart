// ignore_for_file: unused_element, unnecessary_cast


/// The configuration parameters used while performing resilient VM creation.
class ResilientVMCreationPolicyResponse {
  /// Specifies whether resilient VM creation should be enabled on the virtual machine scale set. The default value is false.
  final bool? enabled;

  /// Creates a new [ResilientVMCreationPolicyResponse].
  /// [enabled] Specifies whether resilient VM creation should be enabled on the virtual machine scale set. The default value is false.
  ResilientVMCreationPolicyResponse({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory ResilientVMCreationPolicyResponse.fromMap(Map<String, dynamic> map) {
    return ResilientVMCreationPolicyResponse(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}

