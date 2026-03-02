// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Customer Managed Identity
class MyWorkbookUserAssignedIdentitiesResponse {
  /// The principal ID of resource identity.
  final pulumi.Input<String> principalId;
  /// The tenant ID of resource.
  final pulumi.Input<String> tenantId;

  /// Creates a new [MyWorkbookUserAssignedIdentitiesResponse].
  /// [principalId] The principal ID of resource identity.
  /// [tenantId] The tenant ID of resource.
  MyWorkbookUserAssignedIdentitiesResponse({
    required this.principalId,
    required this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principalId': principalId,
      'tenantId': tenantId,
    };
  }

  factory MyWorkbookUserAssignedIdentitiesResponse.fromMap(Map<String, dynamic> map) {
    return MyWorkbookUserAssignedIdentitiesResponse(
      principalId: (map['principalId'] as String).input(),
      tenantId: (map['tenantId'] as String).input(),
    );
  }
}

