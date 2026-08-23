// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Model representing customer for connected cache resource
class AdditionalCustomerPropertiesResponse {
  /// Customer resource Asn (autonomous system number).
  final pulumi.Input<String>? customerAsn;
  /// Customer resource estimated Asn peering peak in Gbps.
  final pulumi.Input<double> customerAsnEstimatedEgressPeekGbps;
  /// Customer resource contact email.
  final pulumi.Input<String>? customerEmail;
  /// Customer resource entitlement expiration date string.
  final pulumi.Input<String>? customerEntitlementExpiration;
  /// Customer resource entitlement Sku Guid.
  final pulumi.Input<String>? customerEntitlementSkuGuid;
  /// Customer resource entitlement Sku Id.
  final pulumi.Input<String>? customerEntitlementSkuId;
  /// Customer resource entitlement Sku name.
  final pulumi.Input<String>? customerEntitlementSkuName;
  /// Customer resource owner organization name.
  final pulumi.Input<String> customerOrgName;
  /// Customer resource average egress in Mbps.
  final pulumi.Input<double> customerPropertiesOverviewAverageEgressMbps;
  /// Customer resource average cache miss throughput in Mbps.
  final pulumi.Input<double> customerPropertiesOverviewAverageMissMbps;
  /// Customer resource cache efficiency.
  final pulumi.Input<double> customerPropertiesOverviewCacheEfficiency;
  /// Customer resource total healthy cache nodes.
  final pulumi.Input<int> customerPropertiesOverviewCacheNodesHealthyCount;
  /// Customer resource total unhealthy cache nodes.
  final pulumi.Input<int> customerPropertiesOverviewCacheNodesUnhealthyCount;
  /// Customer resource maximum egress in Mbps.
  final pulumi.Input<double> customerPropertiesOverviewEgressMbpsMax;
  /// Customer resource peak egress timestamp.
  final pulumi.Input<String> customerPropertiesOverviewEgressMbpsMaxDateTime;
  /// Customer resource maximum cache miss throughput in Mbps.
  final pulumi.Input<double> customerPropertiesOverviewMissMbpsMax;
  /// Customer resource peak cache miss throughput timestamp.
  final pulumi.Input<String> customerPropertiesOverviewMissMbpsMaxDateTime;
  /// Customer resource transit Asn (autonomous system number).
  final pulumi.Input<String>? customerTransitAsn;
  /// Customer resource transit state.
  final pulumi.Input<String>? customerTransitState;
  /// Optional property #1 of Mcc response object.
  final pulumi.Input<String>? optionalProperty1;
  /// Optional property #2 of Mcc response object.
  final pulumi.Input<String>? optionalProperty2;
  /// Optional property #3 of Mcc response object.
  final pulumi.Input<String>? optionalProperty3;
  /// Optional property #4 of Mcc response object.
  final pulumi.Input<String>? optionalProperty4;
  /// Optional property #5 of Mcc response object.
  final pulumi.Input<String>? optionalProperty5;
  /// Customer resource last PeeringDB update timestamp.
  final pulumi.Input<String> peeringDbLastUpdateDate;
  /// Customer resource last PeeringDB update timestamp.
  final pulumi.Input<String> peeringDbLastUpdateTime;
  /// Customer resource signup phase status code as integer.
  final pulumi.Input<int> signupPhaseStatusCode;
  /// Customer resource signup phase status as string text.
  final pulumi.Input<String> signupPhaseStatusText;
  /// Customer resource signup status as boolean.
  final pulumi.Input<bool> signupStatus;
  /// Customer resource signup status as integer code.
  final pulumi.Input<int> signupStatusCode;
  /// Customer resource signup status as string text.
  final pulumi.Input<String> signupStatusText;

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
  const AdditionalCustomerPropertiesResponse({
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
      customerAsn: (() { final guardedValue = map['customerAsn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customerAsnEstimatedEgressPeekGbps: pulumi.Input.fromValue(map['customerAsnEstimatedEgressPeekGbps'] as double),
      customerEmail: (() { final guardedValue = map['customerEmail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customerEntitlementExpiration: (() { final guardedValue = map['customerEntitlementExpiration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customerEntitlementSkuGuid: (() { final guardedValue = map['customerEntitlementSkuGuid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customerEntitlementSkuId: (() { final guardedValue = map['customerEntitlementSkuId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customerEntitlementSkuName: (() { final guardedValue = map['customerEntitlementSkuName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customerOrgName: pulumi.Input.fromValue(map['customerOrgName'] as String),
      customerPropertiesOverviewAverageEgressMbps: pulumi.Input.fromValue(map['customerPropertiesOverviewAverageEgressMbps'] as double),
      customerPropertiesOverviewAverageMissMbps: pulumi.Input.fromValue(map['customerPropertiesOverviewAverageMissMbps'] as double),
      customerPropertiesOverviewCacheEfficiency: pulumi.Input.fromValue(map['customerPropertiesOverviewCacheEfficiency'] as double),
      customerPropertiesOverviewCacheNodesHealthyCount: pulumi.Input.fromValue(map['customerPropertiesOverviewCacheNodesHealthyCount'] as int),
      customerPropertiesOverviewCacheNodesUnhealthyCount: pulumi.Input.fromValue(map['customerPropertiesOverviewCacheNodesUnhealthyCount'] as int),
      customerPropertiesOverviewEgressMbpsMax: pulumi.Input.fromValue(map['customerPropertiesOverviewEgressMbpsMax'] as double),
      customerPropertiesOverviewEgressMbpsMaxDateTime: pulumi.Input.fromValue(map['customerPropertiesOverviewEgressMbpsMaxDateTime'] as String),
      customerPropertiesOverviewMissMbpsMax: pulumi.Input.fromValue(map['customerPropertiesOverviewMissMbpsMax'] as double),
      customerPropertiesOverviewMissMbpsMaxDateTime: pulumi.Input.fromValue(map['customerPropertiesOverviewMissMbpsMaxDateTime'] as String),
      customerTransitAsn: (() { final guardedValue = map['customerTransitAsn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customerTransitState: (() { final guardedValue = map['customerTransitState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      optionalProperty1: (() { final guardedValue = map['optionalProperty1']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      optionalProperty2: (() { final guardedValue = map['optionalProperty2']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      optionalProperty3: (() { final guardedValue = map['optionalProperty3']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      optionalProperty4: (() { final guardedValue = map['optionalProperty4']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      optionalProperty5: (() { final guardedValue = map['optionalProperty5']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      peeringDbLastUpdateDate: pulumi.Input.fromValue(map['peeringDbLastUpdateDate'] as String),
      peeringDbLastUpdateTime: pulumi.Input.fromValue(map['peeringDbLastUpdateTime'] as String),
      signupPhaseStatusCode: pulumi.Input.fromValue(map['signupPhaseStatusCode'] as int),
      signupPhaseStatusText: pulumi.Input.fromValue(map['signupPhaseStatusText'] as String),
      signupStatus: pulumi.Input.fromValue(map['signupStatus'] as bool),
      signupStatusCode: pulumi.Input.fromValue(map['signupStatusCode'] as int),
      signupStatusText: pulumi.Input.fromValue(map['signupStatusText'] as String),
    );
  }
}
