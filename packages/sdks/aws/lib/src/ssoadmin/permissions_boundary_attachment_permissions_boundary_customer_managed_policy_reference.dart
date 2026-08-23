// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PermissionsBoundaryAttachmentPermissionsBoundaryCustomerManagedPolicyReference {
  /// Name of the customer managed IAM Policy to be attached.
  final pulumi.Input<String> name;
  /// The path to the IAM policy to be attached. The default is `/`. See [IAM Identifiers](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html#identifiers-friendly-names) for more information.
  final pulumi.Input<String>? path;

  /// Creates a new [PermissionsBoundaryAttachmentPermissionsBoundaryCustomerManagedPolicyReference].
  /// [name] Name of the customer managed IAM Policy to be attached.
  /// [path] The path to the IAM policy to be attached. The default is `/`. See [IAM Identifiers](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html#identifiers-friendly-names) for more information.
  const PermissionsBoundaryAttachmentPermissionsBoundaryCustomerManagedPolicyReference({
    required this.name,
    this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'path': ?path,
    };
  }

  factory PermissionsBoundaryAttachmentPermissionsBoundaryCustomerManagedPolicyReference.fromMap(Map<String, dynamic> map) {
    return PermissionsBoundaryAttachmentPermissionsBoundaryCustomerManagedPolicyReference(
      name: pulumi.Input.fromValue(map['name'] as String),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
