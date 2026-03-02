// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Storage Account configurations
class StorageAccountResponse {
  /// Storage account name
  final pulumi.Input<String>? accountName;
  /// Resource ID of storage account
  final pulumi.Input<String>? id;
  /// Subscription Id
  final pulumi.Input<String>? subscriptionId;

  /// Creates a new [StorageAccountResponse].
  /// [accountName] Storage account name
  /// [id] Resource ID of storage account
  /// [subscriptionId] Subscription Id
  StorageAccountResponse({
    this.accountName,
    this.id,
    this.subscriptionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': ?accountName,
      'id': ?id,
      'subscriptionId': ?subscriptionId,
    };
  }

  factory StorageAccountResponse.fromMap(Map<String, dynamic> map) {
    return StorageAccountResponse(
      accountName: map['accountName'] == null ? null : (map['accountName']! as String).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      subscriptionId: map['subscriptionId'] == null ? null : (map['subscriptionId']! as String).input(),
    );
  }
}

