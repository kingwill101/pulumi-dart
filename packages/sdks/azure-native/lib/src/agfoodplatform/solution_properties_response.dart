// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Solution resource properties.
class SolutionPropertiesResponse {
  /// SaaS application Marketplace Publisher Id.
  final pulumi.Input<String> marketplacePublisherId;
  /// SaaS application Offer Id.
  final pulumi.Input<String> offerId;
  /// Partner Id of the Solution.
  final pulumi.Input<String> partnerId;
  /// SaaS application Plan Id.
  final pulumi.Input<String> planId;
  /// Role Assignment Id.
  final pulumi.Input<String>? roleAssignmentId;
  /// SaaS subscriptionId of the installed SaaS application.
  final pulumi.Input<String> saasSubscriptionId;
  /// SaaS subscription name of the installed SaaS application.
  final pulumi.Input<String> saasSubscriptionName;
  /// SaaS application Term Id.
  final pulumi.Input<String> termId;

  /// Creates a new [SolutionPropertiesResponse].
  /// [marketplacePublisherId] SaaS application Marketplace Publisher Id.
  /// [offerId] SaaS application Offer Id.
  /// [partnerId] Partner Id of the Solution.
  /// [planId] SaaS application Plan Id.
  /// [roleAssignmentId] Role Assignment Id.
  /// [saasSubscriptionId] SaaS subscriptionId of the installed SaaS application.
  /// [saasSubscriptionName] SaaS subscription name of the installed SaaS application.
  /// [termId] SaaS application Term Id.
  const SolutionPropertiesResponse({
    required this.marketplacePublisherId,
    required this.offerId,
    required this.partnerId,
    required this.planId,
    this.roleAssignmentId,
    required this.saasSubscriptionId,
    required this.saasSubscriptionName,
    required this.termId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'marketplacePublisherId': marketplacePublisherId,
      'offerId': offerId,
      'partnerId': partnerId,
      'planId': planId,
      'roleAssignmentId': ?roleAssignmentId,
      'saasSubscriptionId': saasSubscriptionId,
      'saasSubscriptionName': saasSubscriptionName,
      'termId': termId,
    };
  }

  factory SolutionPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return SolutionPropertiesResponse(
      marketplacePublisherId: pulumi.Input.fromValue(map['marketplacePublisherId'] as String),
      offerId: pulumi.Input.fromValue(map['offerId'] as String),
      partnerId: pulumi.Input.fromValue(map['partnerId'] as String),
      planId: pulumi.Input.fromValue(map['planId'] as String),
      roleAssignmentId: (() { final guardedValue = map['roleAssignmentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      saasSubscriptionId: pulumi.Input.fromValue(map['saasSubscriptionId'] as String),
      saasSubscriptionName: pulumi.Input.fromValue(map['saasSubscriptionName'] as String),
      termId: pulumi.Input.fromValue(map['termId'] as String),
    );
  }
}

