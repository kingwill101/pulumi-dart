// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datashare_share_subscription_args_doc}
/// The set of arguments for ShareSubscription.
/// {@endtemplate}
/// {@macro pulumi_datashare_share_subscription_args_doc}
class ShareSubscriptionArgs {
  /// The name of the share account.
  final pulumi.Input<String> accountName;
  /// The expiration date of the share subscription.
  final pulumi.Input<String>? expirationDate;
  /// The invitation id.
  final pulumi.Input<String> invitationId;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the shareSubscription.
  final pulumi.Input<String>? shareSubscriptionName;
  /// Source share location.
  final pulumi.Input<String> sourceShareLocation;

  /// Creates a new [ShareSubscriptionArgs].
  /// [accountName] The name of the share account.
  /// [expirationDate] The expiration date of the share subscription.
  /// [invitationId] The invitation id.
  /// [resourceGroupName] The resource group name.
  /// [shareSubscriptionName] The name of the shareSubscription.
  /// [sourceShareLocation] Source share location.
  ShareSubscriptionArgs({
    required this.accountName,
    this.expirationDate,
    required this.invitationId,
    required this.resourceGroupName,
    this.shareSubscriptionName,
    required this.sourceShareLocation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'expirationDate': ?expirationDate,
      'invitationId': invitationId,
      'resourceGroupName': resourceGroupName,
      'shareSubscriptionName': ?shareSubscriptionName,
      'sourceShareLocation': sourceShareLocation,
    };
  }

  factory ShareSubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return ShareSubscriptionArgs(
      accountName: (map['accountName'] as String).input(),
      expirationDate: map['expirationDate'] == null ? null : (map['expirationDate']! as String).input(),
      invitationId: (map['invitationId'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      shareSubscriptionName: map['shareSubscriptionName'] == null ? null : (map['shareSubscriptionName']! as String).input(),
      sourceShareLocation: (map['sourceShareLocation'] as String).input(),
    );
  }
}

