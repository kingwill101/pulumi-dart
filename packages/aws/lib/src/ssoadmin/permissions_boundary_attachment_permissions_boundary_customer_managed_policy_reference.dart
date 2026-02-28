// ignore_for_file: unused_element, unnecessary_cast

class PermissionsBoundaryAttachmentPermissionsBoundaryCustomerManagedPolicyReference {
  /// Name of the customer managed IAM Policy to be attached.
  final String name;

  /// The path to the IAM policy to be attached. The default is `/`. See [IAM Identifiers](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html#identifiers-friendly-names) for more information.
  final String? path;

  /// Creates a new [PermissionsBoundaryAttachmentPermissionsBoundaryCustomerManagedPolicyReference].
  /// [name] Name of the customer managed IAM Policy to be attached.
  /// [path] The path to the IAM policy to be attached. The default is `/`. See [IAM Identifiers](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html#identifiers-friendly-names) for more information.
  PermissionsBoundaryAttachmentPermissionsBoundaryCustomerManagedPolicyReference({
    required this.name,
    this.path,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    final pathValue = path;
    if (pathValue != null) {
      map['path'] = pathValue;
    }
    return map;
  }

  factory PermissionsBoundaryAttachmentPermissionsBoundaryCustomerManagedPolicyReference.fromMap(
      Map<String, dynamic> map) {
    return PermissionsBoundaryAttachmentPermissionsBoundaryCustomerManagedPolicyReference(
      name: map['name'] as String,
      path: map['path'] == null ? null : map['path'] as String,
    );
  }
}
