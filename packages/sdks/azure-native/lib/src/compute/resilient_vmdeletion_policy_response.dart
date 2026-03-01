// ignore_for_file: unused_element, unnecessary_cast


/// The configuration parameters used while performing resilient VM deletion.
class ResilientVMDeletionPolicyResponse {
  /// Specifies whether resilient VM deletion should be enabled on the virtual machine scale set. The default value is false.
  final bool? enabled;

  /// Creates a new [ResilientVMDeletionPolicyResponse].
  /// [enabled] Specifies whether resilient VM deletion should be enabled on the virtual machine scale set. The default value is false.
  ResilientVMDeletionPolicyResponse({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory ResilientVMDeletionPolicyResponse.fromMap(Map<String, dynamic> map) {
    return ResilientVMDeletionPolicyResponse(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}

