// ignore_for_file: unused_element, unnecessary_cast


/// Solution resource properties.
class SolutionPropertiesResponse {
  /// SaaS application Marketplace Publisher Id.
  final String marketplacePublisherId;
  /// SaaS application Offer Id.
  final String offerId;
  /// Partner Id of the Solution.
  final String partnerId;
  /// SaaS application Plan Id.
  final String planId;
  /// Role Assignment Id.
  final String? roleAssignmentId;
  /// SaaS subscriptionId of the installed SaaS application.
  final String saasSubscriptionId;
  /// SaaS subscription name of the installed SaaS application.
  final String saasSubscriptionName;
  /// SaaS application Term Id.
  final String termId;

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
      marketplacePublisherId: map['marketplacePublisherId'] as String,
      offerId: map['offerId'] as String,
      partnerId: map['partnerId'] as String,
      planId: map['planId'] as String,
      roleAssignmentId: map['roleAssignmentId'] == null ? null : map['roleAssignmentId'] as String,
      saasSubscriptionId: map['saasSubscriptionId'] as String,
      saasSubscriptionName: map['saasSubscriptionName'] as String,
      termId: map['termId'] as String,
    );
  }
}

