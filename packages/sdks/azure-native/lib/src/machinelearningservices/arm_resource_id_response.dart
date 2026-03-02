// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ARM ResourceId of a resource
class ArmResourceIdResponse {
  /// Arm ResourceId is in the format "/subscriptions/{SubscriptionId}/resourceGroups/{ResourceGroupName}/providers/Microsoft.Storage/storageAccounts/{StorageAccountName}"
  /// or "/subscriptions/{SubscriptionId}/resourceGroups/{ResourceGroupName}/providers/Microsoft.ContainerRegistry/registries/{AcrName}"
  final pulumi.Input<String>? resourceId;

  /// Creates a new [ArmResourceIdResponse].
  /// [resourceId] Arm ResourceId is in the format "/subscriptions/{SubscriptionId}/resourceGroups/{ResourceGroupName}/providers/Microsoft.Storage/storageAccounts/{StorageAccountName}"
  ArmResourceIdResponse({
    this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceId': ?resourceId,
    };
  }

  factory ArmResourceIdResponse.fromMap(Map<String, dynamic> map) {
    return ArmResourceIdResponse(
      resourceId: map['resourceId'] == null ? null : (map['resourceId']! as String).input(),
    );
  }
}

