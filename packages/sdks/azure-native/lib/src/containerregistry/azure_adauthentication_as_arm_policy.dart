// ignore_for_file: unused_element, unnecessary_cast


/// The policy for using ARM audience token for a container registry.
class AzureADAuthenticationAsArmPolicy {
  /// The value that indicates whether the policy is enabled or not.
  final String? status;

  /// Creates a new [AzureADAuthenticationAsArmPolicy].
  /// [status] The value that indicates whether the policy is enabled or not.
  AzureADAuthenticationAsArmPolicy({
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': ?status,
    };
  }

  factory AzureADAuthenticationAsArmPolicy.fromMap(Map<String, dynamic> map) {
    return AzureADAuthenticationAsArmPolicy(
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

