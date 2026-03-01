// ignore_for_file: unused_element, unnecessary_cast


/// Installed data manager for Agriculture solution detail.
class SolutionResponse {
  /// Application name of the solution.
  final String? applicationName;
  /// Marketplace publisher Id.
  final String? marketPlacePublisherId;
  /// Partner Id.
  final String? partnerId;
  /// Plan Id.
  final String? planId;
  /// Saas subscription Id.
  final String? saasSubscriptionId;
  /// Saas subscription name.
  final String? saasSubscriptionName;

  /// Creates a new [SolutionResponse].
  /// [applicationName] Application name of the solution.
  /// [marketPlacePublisherId] Marketplace publisher Id.
  /// [partnerId] Partner Id.
  /// [planId] Plan Id.
  /// [saasSubscriptionId] Saas subscription Id.
  /// [saasSubscriptionName] Saas subscription name.
  SolutionResponse({
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

  factory SolutionResponse.fromMap(Map<String, dynamic> map) {
    return SolutionResponse(
      applicationName: map['applicationName'] == null ? null : map['applicationName'] as String,
      marketPlacePublisherId: map['marketPlacePublisherId'] == null ? null : map['marketPlacePublisherId'] as String,
      partnerId: map['partnerId'] == null ? null : map['partnerId'] as String,
      planId: map['planId'] == null ? null : map['planId'] as String,
      saasSubscriptionId: map['saasSubscriptionId'] == null ? null : map['saasSubscriptionId'] as String,
      saasSubscriptionName: map['saasSubscriptionName'] == null ? null : map['saasSubscriptionName'] as String,
    );
  }
}

