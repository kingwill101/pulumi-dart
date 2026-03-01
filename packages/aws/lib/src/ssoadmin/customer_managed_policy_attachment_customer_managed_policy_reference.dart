// ignore_for_file: unused_element, unnecessary_cast

class CustomerManagedPolicyAttachmentCustomerManagedPolicyReference {
  /// Name of the customer managed IAM Policy to be attached.
  final String name;

  /// The path to the IAM policy to be attached. The default is `/`. See [IAM Identifiers](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html#identifiers-friendly-names) for more information.
  final String? path;

  /// Creates a new [CustomerManagedPolicyAttachmentCustomerManagedPolicyReference].
  /// [name] Name of the customer managed IAM Policy to be attached.
  /// [path] The path to the IAM policy to be attached. The default is `/`. See [IAM Identifiers](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html#identifiers-friendly-names) for more information.
  CustomerManagedPolicyAttachmentCustomerManagedPolicyReference({
    required this.name,
    this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'path': ?path};
  }

  factory CustomerManagedPolicyAttachmentCustomerManagedPolicyReference.fromMap(
    Map<String, dynamic> map,
  ) {
    return CustomerManagedPolicyAttachmentCustomerManagedPolicyReference(
      name: map['name'] as String,
      path: map['path'] == null ? null : map['path'] as String,
    );
  }
}
