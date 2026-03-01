// ignore_for_file: unused_element, unnecessary_cast


/// Model representing customer for connected cache resource
class AdditionalCustomerPropertiesResponse {
  /// Customer resource Asn (autonomous system number).
  final String? customerAsn;
  /// Customer resource estimated Asn peering peak in Gbps.
  final double customerAsnEstimatedEgressPeekGbps;
  /// Customer resource contact email.
  final String? customerEmail;
  /// Customer resource entitlement expiration date string.
  final String? customerEntitlementExpiration;
  /// Customer resource entitlement Sku Guid.
  final String? customerEntitlementSkuGuid;
  /// Customer resource entitlement Sku Id.
  final String? customerEntitlementSkuId;
  /// Customer resource entitlement Sku name.
  final String? customerEntitlementSkuName;
  /// Customer resource owner organization name.
  final String customerOrgName;
  /// Customer resource average egress in Mbps.
  final double customerPropertiesOverviewAverageEgressMbps;
  /// Customer resource average cache miss throughput in Mbps.
  final double customerPropertiesOverviewAverageMissMbps;
  /// Customer resource cache efficiency.
  final double customerPropertiesOverviewCacheEfficiency;
  /// Customer resource total healthy cache nodes.
  final int customerPropertiesOverviewCacheNodesHealthyCount;
  /// Customer resource total unhealthy cache nodes.
  final int customerPropertiesOverviewCacheNodesUnhealthyCount;
  /// Customer resource maximum egress in Mbps.
  final double customerPropertiesOverviewEgressMbpsMax;
  /// Customer resource peak egress timestamp.
  final String customerPropertiesOverviewEgressMbpsMaxDateTime;
  /// Customer resource maximum cache miss throughput in Mbps.
  final double customerPropertiesOverviewMissMbpsMax;
  /// Customer resource peak cache miss throughput timestamp.
  final String customerPropertiesOverviewMissMbpsMaxDateTime;
  /// Customer resource transit Asn (autonomous system number).
  final String? customerTransitAsn;
  /// Customer resource transit state.
  final String? customerTransitState;
  /// Optional property #1 of Mcc response object.
  final String? optionalProperty1;
  /// Optional property #2 of Mcc response object.
  final String? optionalProperty2;
  /// Optional property #3 of Mcc response object.
  final String? optionalProperty3;
  /// Optional property #4 of Mcc response object.
  final String? optionalProperty4;
  /// Optional property #5 of Mcc response object.
  final String? optionalProperty5;
  /// Customer resource last PeeringDB update timestamp.
  final String peeringDbLastUpdateDate;
  /// Customer resource last PeeringDB update timestamp.
  final String peeringDbLastUpdateTime;
  /// Customer resource signup phase status code as integer.
  final int signupPhaseStatusCode;
  /// Customer resource signup phase status as string text.
  final String signupPhaseStatusText;
  /// Customer resource signup status as boolean.
  final bool signupStatus;
  /// Customer resource signup status as integer code.
  final int signupStatusCode;
  /// Customer resource signup status as string text.
  final String signupStatusText;

  /// Creates a new [AdditionalCustomerPropertiesResponse].
  /// [customerAsn] Customer resource Asn (autonomous system number).
  /// [customerAsnEstimatedEgressPeekGbps] Customer resource estimated Asn peering peak in Gbps.
  /// [customerEmail] Customer resource contact email.
  /// [customerEntitlementExpiration] Customer resource entitlement expiration date string.
  /// [customerEntitlementSkuGuid] Customer resource entitlement Sku Guid.
  /// [customerEntitlementSkuId] Customer resource entitlement Sku Id.
  /// [customerEntitlementSkuName] Customer resource entitlement Sku name.
  /// [customerOrgName] Customer resource owner organization name.
  /// [customerPropertiesOverviewAverageEgressMbps] Customer resource average egress in Mbps.
  /// [customerPropertiesOverviewAverageMissMbps] Customer resource average cache miss throughput in Mbps.
  /// [customerPropertiesOverviewCacheEfficiency] Customer resource cache efficiency.
  /// [customerPropertiesOverviewCacheNodesHealthyCount] Customer resource total healthy cache nodes.
  /// [customerPropertiesOverviewCacheNodesUnhealthyCount] Customer resource total unhealthy cache nodes.
  /// [customerPropertiesOverviewEgressMbpsMax] Customer resource maximum egress in Mbps.
  /// [customerPropertiesOverviewEgressMbpsMaxDateTime] Customer resource peak egress timestamp.
  /// [customerPropertiesOverviewMissMbpsMax] Customer resource maximum cache miss throughput in Mbps.
  /// [customerPropertiesOverviewMissMbpsMaxDateTime] Customer resource peak cache miss throughput timestamp.
  /// [customerTransitAsn] Customer resource transit Asn (autonomous system number).
  /// [customerTransitState] Customer resource transit state.
  /// [optionalProperty1] Optional property #1 of Mcc response object.
  /// [optionalProperty2] Optional property #2 of Mcc response object.
  /// [optionalProperty3] Optional property #3 of Mcc response object.
  /// [optionalProperty4] Optional property #4 of Mcc response object.
  /// [optionalProperty5] Optional property #5 of Mcc response object.
  /// [peeringDbLastUpdateDate] Customer resource last PeeringDB update timestamp.
  /// [peeringDbLastUpdateTime] Customer resource last PeeringDB update timestamp.
  /// [signupPhaseStatusCode] Customer resource signup phase status code as integer.
  /// [signupPhaseStatusText] Customer resource signup phase status as string text.
  /// [signupStatus] Customer resource signup status as boolean.
  /// [signupStatusCode] Customer resource signup status as integer code.
  /// [signupStatusText] Customer resource signup status as string text.
  AdditionalCustomerPropertiesResponse({
    this.customerAsn,
    required this.customerAsnEstimatedEgressPeekGbps,
    this.customerEmail,
    this.customerEntitlementExpiration,
    this.customerEntitlementSkuGuid,
    this.customerEntitlementSkuId,
    this.customerEntitlementSkuName,
    required this.customerOrgName,
    required this.customerPropertiesOverviewAverageEgressMbps,
    required this.customerPropertiesOverviewAverageMissMbps,
    required this.customerPropertiesOverviewCacheEfficiency,
    required this.customerPropertiesOverviewCacheNodesHealthyCount,
    required this.customerPropertiesOverviewCacheNodesUnhealthyCount,
    required this.customerPropertiesOverviewEgressMbpsMax,
    required this.customerPropertiesOverviewEgressMbpsMaxDateTime,
    required this.customerPropertiesOverviewMissMbpsMax,
    required this.customerPropertiesOverviewMissMbpsMaxDateTime,
    this.customerTransitAsn,
    this.customerTransitState,
    this.optionalProperty1,
    this.optionalProperty2,
    this.optionalProperty3,
    this.optionalProperty4,
    this.optionalProperty5,
    required this.peeringDbLastUpdateDate,
    required this.peeringDbLastUpdateTime,
    required this.signupPhaseStatusCode,
    required this.signupPhaseStatusText,
    required this.signupStatus,
    required this.signupStatusCode,
    required this.signupStatusText,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerAsn': ?customerAsn,
      'customerAsnEstimatedEgressPeekGbps': customerAsnEstimatedEgressPeekGbps,
      'customerEmail': ?customerEmail,
      'customerEntitlementExpiration': ?customerEntitlementExpiration,
      'customerEntitlementSkuGuid': ?customerEntitlementSkuGuid,
      'customerEntitlementSkuId': ?customerEntitlementSkuId,
      'customerEntitlementSkuName': ?customerEntitlementSkuName,
      'customerOrgName': customerOrgName,
      'customerPropertiesOverviewAverageEgressMbps': customerPropertiesOverviewAverageEgressMbps,
      'customerPropertiesOverviewAverageMissMbps': customerPropertiesOverviewAverageMissMbps,
      'customerPropertiesOverviewCacheEfficiency': customerPropertiesOverviewCacheEfficiency,
      'customerPropertiesOverviewCacheNodesHealthyCount': customerPropertiesOverviewCacheNodesHealthyCount,
      'customerPropertiesOverviewCacheNodesUnhealthyCount': customerPropertiesOverviewCacheNodesUnhealthyCount,
      'customerPropertiesOverviewEgressMbpsMax': customerPropertiesOverviewEgressMbpsMax,
      'customerPropertiesOverviewEgressMbpsMaxDateTime': customerPropertiesOverviewEgressMbpsMaxDateTime,
      'customerPropertiesOverviewMissMbpsMax': customerPropertiesOverviewMissMbpsMax,
      'customerPropertiesOverviewMissMbpsMaxDateTime': customerPropertiesOverviewMissMbpsMaxDateTime,
      'customerTransitAsn': ?customerTransitAsn,
      'customerTransitState': ?customerTransitState,
      'optionalProperty1': ?optionalProperty1,
      'optionalProperty2': ?optionalProperty2,
      'optionalProperty3': ?optionalProperty3,
      'optionalProperty4': ?optionalProperty4,
      'optionalProperty5': ?optionalProperty5,
      'peeringDbLastUpdateDate': peeringDbLastUpdateDate,
      'peeringDbLastUpdateTime': peeringDbLastUpdateTime,
      'signupPhaseStatusCode': signupPhaseStatusCode,
      'signupPhaseStatusText': signupPhaseStatusText,
      'signupStatus': signupStatus,
      'signupStatusCode': signupStatusCode,
      'signupStatusText': signupStatusText,
    };
  }

  factory AdditionalCustomerPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AdditionalCustomerPropertiesResponse(
      customerAsn: map['customerAsn'] == null ? null : map['customerAsn'] as String,
      customerAsnEstimatedEgressPeekGbps: map['customerAsnEstimatedEgressPeekGbps'] as double,
      customerEmail: map['customerEmail'] == null ? null : map['customerEmail'] as String,
      customerEntitlementExpiration: map['customerEntitlementExpiration'] == null ? null : map['customerEntitlementExpiration'] as String,
      customerEntitlementSkuGuid: map['customerEntitlementSkuGuid'] == null ? null : map['customerEntitlementSkuGuid'] as String,
      customerEntitlementSkuId: map['customerEntitlementSkuId'] == null ? null : map['customerEntitlementSkuId'] as String,
      customerEntitlementSkuName: map['customerEntitlementSkuName'] == null ? null : map['customerEntitlementSkuName'] as String,
      customerOrgName: map['customerOrgName'] as String,
      customerPropertiesOverviewAverageEgressMbps: map['customerPropertiesOverviewAverageEgressMbps'] as double,
      customerPropertiesOverviewAverageMissMbps: map['customerPropertiesOverviewAverageMissMbps'] as double,
      customerPropertiesOverviewCacheEfficiency: map['customerPropertiesOverviewCacheEfficiency'] as double,
      customerPropertiesOverviewCacheNodesHealthyCount: map['customerPropertiesOverviewCacheNodesHealthyCount'] as int,
      customerPropertiesOverviewCacheNodesUnhealthyCount: map['customerPropertiesOverviewCacheNodesUnhealthyCount'] as int,
      customerPropertiesOverviewEgressMbpsMax: map['customerPropertiesOverviewEgressMbpsMax'] as double,
      customerPropertiesOverviewEgressMbpsMaxDateTime: map['customerPropertiesOverviewEgressMbpsMaxDateTime'] as String,
      customerPropertiesOverviewMissMbpsMax: map['customerPropertiesOverviewMissMbpsMax'] as double,
      customerPropertiesOverviewMissMbpsMaxDateTime: map['customerPropertiesOverviewMissMbpsMaxDateTime'] as String,
      customerTransitAsn: map['customerTransitAsn'] == null ? null : map['customerTransitAsn'] as String,
      customerTransitState: map['customerTransitState'] == null ? null : map['customerTransitState'] as String,
      optionalProperty1: map['optionalProperty1'] == null ? null : map['optionalProperty1'] as String,
      optionalProperty2: map['optionalProperty2'] == null ? null : map['optionalProperty2'] as String,
      optionalProperty3: map['optionalProperty3'] == null ? null : map['optionalProperty3'] as String,
      optionalProperty4: map['optionalProperty4'] == null ? null : map['optionalProperty4'] as String,
      optionalProperty5: map['optionalProperty5'] == null ? null : map['optionalProperty5'] as String,
      peeringDbLastUpdateDate: map['peeringDbLastUpdateDate'] as String,
      peeringDbLastUpdateTime: map['peeringDbLastUpdateTime'] as String,
      signupPhaseStatusCode: map['signupPhaseStatusCode'] as int,
      signupPhaseStatusText: map['signupPhaseStatusText'] as String,
      signupStatus: map['signupStatus'] as bool,
      signupStatusCode: map['signupStatusCode'] as int,
      signupStatusText: map['signupStatusText'] as String,
    );
  }
}

