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
    required String accountName,
    String? expirationDate,
    required String invitationId,
    required String resourceGroupName,
    String? shareSubscriptionName,
    required String sourceShareLocation,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      expirationDate = pulumi.Input.asOptionalInput<String>(expirationDate),
      invitationId = pulumi.Input.asInput<String>(invitationId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      shareSubscriptionName = pulumi.Input.asOptionalInput<String>(shareSubscriptionName),
      sourceShareLocation = pulumi.Input.asInput<String>(sourceShareLocation);

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
      accountName: map['accountName'] as String,
      expirationDate: map['expirationDate'] == null ? null : map['expirationDate'] as String,
      invitationId: map['invitationId'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      shareSubscriptionName: map['shareSubscriptionName'] == null ? null : map['shareSubscriptionName'] as String,
      sourceShareLocation: map['sourceShareLocation'] as String,
    );
  }
}

