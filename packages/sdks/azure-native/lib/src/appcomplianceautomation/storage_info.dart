// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The information of 'bring your own storage' account binding to the report
class StorageInfo {
  /// 'bring your own storage' account name
  final pulumi.Input<String>? accountName;
  /// The region of 'bring your own storage' account
  final pulumi.Input<String>? location;
  /// The resourceGroup which 'bring your own storage' account belongs to
  final pulumi.Input<String>? resourceGroup;
  /// The subscription id which 'bring your own storage' account belongs to
  final pulumi.Input<String>? subscriptionId;

  /// Creates a new [StorageInfo].
  /// [accountName] 'bring your own storage' account name
  /// [location] The region of 'bring your own storage' account
  /// [resourceGroup] The resourceGroup which 'bring your own storage' account belongs to
  /// [subscriptionId] The subscription id which 'bring your own storage' account belongs to
  const StorageInfo({
    this.accountName,
    this.location,
    this.resourceGroup,
    this.subscriptionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': ?accountName,
      'location': ?location,
      'resourceGroup': ?resourceGroup,
      'subscriptionId': ?subscriptionId,
    };
  }

  factory StorageInfo.fromMap(Map<String, dynamic> map) {
    return StorageInfo(
      accountName: (() { final guardedValue = map['accountName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroup: (() { final guardedValue = map['resourceGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subscriptionId: (() { final guardedValue = map['subscriptionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

