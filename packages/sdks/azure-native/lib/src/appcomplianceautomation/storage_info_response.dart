// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The information of 'bring your own storage' account binding to the report
class StorageInfoResponse {
  /// 'bring your own storage' account name
  final pulumi.Input<String>? accountName;
  /// The region of 'bring your own storage' account
  final pulumi.Input<String>? location;
  /// The resourceGroup which 'bring your own storage' account belongs to
  final pulumi.Input<String>? resourceGroup;
  /// The subscription id which 'bring your own storage' account belongs to
  final pulumi.Input<String>? subscriptionId;

  /// Creates a new [StorageInfoResponse].
  /// [accountName] 'bring your own storage' account name
  /// [location] The region of 'bring your own storage' account
  /// [resourceGroup] The resourceGroup which 'bring your own storage' account belongs to
  /// [subscriptionId] The subscription id which 'bring your own storage' account belongs to
  StorageInfoResponse({
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

  factory StorageInfoResponse.fromMap(Map<String, dynamic> map) {
    return StorageInfoResponse(
      accountName: map['accountName'] == null ? null : (map['accountName']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      resourceGroup: map['resourceGroup'] == null ? null : (map['resourceGroup']! as String).input(),
      subscriptionId: map['subscriptionId'] == null ? null : (map['subscriptionId']! as String).input(),
    );
  }
}

