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
      accountName: (() { final guardedValue = map['accountName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subscriptionId: (() { final guardedValue = map['subscriptionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

