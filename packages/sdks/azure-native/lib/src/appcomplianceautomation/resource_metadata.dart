// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Single resource Id's metadata.
class ResourceMetadata {
  /// Account Id. For example - the AWS account id.
  final pulumi.Input<String>? accountId;

  /// Resource Id - e.g. "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Compute/virtualMachines/vm1".
  final pulumi.Input<String> resourceId;

  /// Resource kind.
  final pulumi.Input<String>? resourceKind;

  /// Resource Origin.
  final pulumi.Input<String>? resourceOrigin;

  /// Resource type. e.g. "Microsoft.Compute/virtualMachines"
  final pulumi.Input<String>? resourceType;

  /// Creates a new [ResourceMetadata].
  /// [accountId] Account Id. For example - the AWS account id.
  /// [resourceId] Resource Id - e.g. "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Compute/virtualMachines/vm1".
  /// [resourceKind] Resource kind.
  /// [resourceOrigin] Resource Origin.
  /// [resourceType] Resource type. e.g. "Microsoft.Compute/virtualMachines"
  ResourceMetadata({
    this.accountId,
    required this.resourceId,
    this.resourceKind,
    this.resourceOrigin,
    this.resourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'resourceId': resourceId,
      'resourceKind': ?resourceKind,
      'resourceOrigin': ?resourceOrigin,
      'resourceType': ?resourceType,
    };
  }

  factory ResourceMetadata.fromMap(Map<String, dynamic> map) {
    return ResourceMetadata(
      accountId: (() {
        final guardedValue = map['accountId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceId: pulumi.Input.fromValue(map['resourceId'] as String),
      resourceKind: (() {
        final guardedValue = map['resourceKind'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceOrigin: (() {
        final guardedValue = map['resourceOrigin'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceType: (() {
        final guardedValue = map['resourceType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
