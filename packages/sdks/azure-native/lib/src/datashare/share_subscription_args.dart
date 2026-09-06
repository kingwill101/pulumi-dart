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
  final pulumi.Input<String?>? expirationDate;
  /// The invitation id.
  final pulumi.Input<String> invitationId;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the shareSubscription.
  final pulumi.Input<String?>? shareSubscriptionName;
  /// Source share location.
  final pulumi.Input<String> sourceShareLocation;

  /// Creates a new [ShareSubscriptionArgs].
  /// [accountName] The name of the share account.
  /// [expirationDate] The expiration date of the share subscription.
  /// [invitationId] The invitation id.
  /// [resourceGroupName] The resource group name.
  /// [shareSubscriptionName] The name of the shareSubscription.
  /// [sourceShareLocation] Source share location.
  const ShareSubscriptionArgs({
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
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      expirationDate: (() { final guardedValue = map['expirationDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      invitationId: pulumi.Input.fromValue(map['invitationId'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      shareSubscriptionName: (() { final guardedValue = map['shareSubscriptionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceShareLocation: pulumi.Input.fromValue(map['sourceShareLocation'] as String),
    );
  }
}
