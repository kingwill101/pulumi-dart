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
  SolutionPropertiesResponse({
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
      marketplacePublisherId: (map['marketplacePublisherId'] as String).input(),
      offerId: (map['offerId'] as String).input(),
      partnerId: (map['partnerId'] as String).input(),
      planId: (map['planId'] as String).input(),
      roleAssignmentId: map['roleAssignmentId'] == null ? null : (map['roleAssignmentId'] as String).input(),
      saasSubscriptionId: (map['saasSubscriptionId'] as String).input(),
      saasSubscriptionName: (map['saasSubscriptionName'] as String).input(),
      termId: (map['termId'] as String).input(),
    );
  }
}

