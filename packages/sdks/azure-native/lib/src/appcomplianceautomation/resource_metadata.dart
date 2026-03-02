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
      accountId: map['accountId'] == null ? null : (map['accountId'] as String).input(),
      resourceId: (map['resourceId'] as String).input(),
      resourceKind: map['resourceKind'] == null ? null : (map['resourceKind'] as String).input(),
      resourceOrigin: map['resourceOrigin'] == null ? null : (map['resourceOrigin'] as String).input(),
      resourceType: map['resourceType'] == null ? null : (map['resourceType'] as String).input(),
    );
  }
}

