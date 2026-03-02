// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Installed data manager for Agriculture solution detail.
class Solution {
  /// Application name of the solution.
  final pulumi.Input<String>? applicationName;
  /// Marketplace publisher Id.
  final pulumi.Input<String>? marketPlacePublisherId;
  /// Partner Id.
  final pulumi.Input<String>? partnerId;
  /// Plan Id.
  final pulumi.Input<String>? planId;
  /// Saas subscription Id.
  final pulumi.Input<String>? saasSubscriptionId;
  /// Saas subscription name.
  final pulumi.Input<String>? saasSubscriptionName;

  /// Creates a new [Solution].
  /// [applicationName] Application name of the solution.
  /// [marketPlacePublisherId] Marketplace publisher Id.
  /// [partnerId] Partner Id.
  /// [planId] Plan Id.
  /// [saasSubscriptionId] Saas subscription Id.
  /// [saasSubscriptionName] Saas subscription name.
  Solution({
    this.applicationName,
    this.marketPlacePublisherId,
    this.partnerId,
    this.planId,
    this.saasSubscriptionId,
    this.saasSubscriptionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationName': ?applicationName,
      'marketPlacePublisherId': ?marketPlacePublisherId,
      'partnerId': ?partnerId,
      'planId': ?planId,
      'saasSubscriptionId': ?saasSubscriptionId,
      'saasSubscriptionName': ?saasSubscriptionName,
    };
  }

  factory Solution.fromMap(Map<String, dynamic> map) {
    return Solution(
      applicationName: map['applicationName'] == null ? null : (map['applicationName']! as String).input(),
      marketPlacePublisherId: map['marketPlacePublisherId'] == null ? null : (map['marketPlacePublisherId']! as String).input(),
      partnerId: map['partnerId'] == null ? null : (map['partnerId']! as String).input(),
      planId: map['planId'] == null ? null : (map['planId']! as String).input(),
      saasSubscriptionId: map['saasSubscriptionId'] == null ? null : (map['saasSubscriptionId']! as String).input(),
      saasSubscriptionName: map['saasSubscriptionName'] == null ? null : (map['saasSubscriptionName']! as String).input(),
    );
  }
}

