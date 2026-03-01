// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bgp_configuration_response.dart';
import 'cache_node_drive_configuration_response.dart';
import 'proxy_url_configuration_response.dart';

/// Model representing cache node for connected cache resource
class AdditionalCacheNodePropertiesResponse {
  /// Cache node resource aggregated status code.
  final int aggregatedStatusCode;
  /// Cache node resource aggregated status details.
  final String aggregatedStatusDetails;
  /// Cache node resource aggregated status text.
  final String aggregatedStatusText;
  /// Auto update version that is the applied to update on mcc cache node
  final String autoUpdateAppliedVersion;
  /// Auto update last applied date time of mcc install
  final String autoUpdateLastAppliedDateTime;
  /// Auto Update status details from the backend after applying the new version details
  final String autoUpdateLastAppliedDetails;
  /// Last applied auto update state for mcc install of auto update cycle
  final String autoUpdateLastAppliedState;
  /// Auto update last triggered date time of mcc install
  final String autoUpdateLastTriggeredDateTime;
  /// Auto update last applied date time of mcc install
  final String autoUpdateNextAvailableDateTime;
  /// Auto update version that is the Next available version to update on mcc cache node
  final String autoUpdateNextAvailableVersion;
  /// Auto update or fast update version
  final String? autoUpdateVersion;
  /// Cache node resource Bgp configuration.
  final BgpConfigurationResponse? bgpConfiguration;
  /// issues list to return the issues as part of the additional cache node properties
  final List<String>? cacheNodePropertiesDetailsIssuesList;
  /// Cache node resource state as integer.
  final int cacheNodeState;
  /// Cache node resource detailed state text.
  final String cacheNodeStateDetailedText;
  /// Cache node resource short state text.
  final String cacheNodeStateShortText;
  /// Cache node resource drive configurations.
  final List<CacheNodeDriveConfigurationResponse>? driveConfiguration;
  /// Cache node resource flag indicating if cache node has been physically installed or provisioned on their physical lab.
  final bool isProvisioned;
  /// Cache node resource requires a proxy
  final String? isProxyRequired;
  /// Optional property #1 of Mcc response object
  final String? optionalProperty1;
  /// Optional property #2 of Mcc response object
  final String? optionalProperty2;
  /// Optional property #3 of Mcc response object
  final String? optionalProperty3;
  /// Optional property #4 of Mcc response object
  final String? optionalProperty4;
  /// Optional property #5 of Mcc response object
  final String? optionalProperty5;
  /// Operating system of the cache node
  final String? osType;
  /// Cache node resource Mcc product version.
  final String productVersion;
  /// Cache node resource Mcc proxy Url
  final String? proxyUrl;
  /// proxyUrl configuration of the cache node
  final ProxyUrlConfigurationResponse? proxyUrlConfiguration;
  /// Update Cycle Type
  final String? updateCycleType;
  /// Update related information details
  final String? updateInfoDetails;
  /// customer requested date time for mcc install of update cycle
  final String? updateRequestedDateTime;

  /// Creates a new [AdditionalCacheNodePropertiesResponse].
  /// [aggregatedStatusCode] Cache node resource aggregated status code.
  /// [aggregatedStatusDetails] Cache node resource aggregated status details.
  /// [aggregatedStatusText] Cache node resource aggregated status text.
  /// [autoUpdateAppliedVersion] Auto update version that is the applied to update on mcc cache node
  /// [autoUpdateLastAppliedDateTime] Auto update last applied date time of mcc install
  /// [autoUpdateLastAppliedDetails] Auto Update status details from the backend after applying the new version details
  /// [autoUpdateLastAppliedState] Last applied auto update state for mcc install of auto update cycle
  /// [autoUpdateLastTriggeredDateTime] Auto update last triggered date time of mcc install
  /// [autoUpdateNextAvailableDateTime] Auto update last applied date time of mcc install
  /// [autoUpdateNextAvailableVersion] Auto update version that is the Next available version to update on mcc cache node
  /// [autoUpdateVersion] Auto update or fast update version
  /// [bgpConfiguration] Cache node resource Bgp configuration.
  /// [cacheNodePropertiesDetailsIssuesList] issues list to return the issues as part of the additional cache node properties
  /// [cacheNodeState] Cache node resource state as integer.
  /// [cacheNodeStateDetailedText] Cache node resource detailed state text.
  /// [cacheNodeStateShortText] Cache node resource short state text.
  /// [driveConfiguration] Cache node resource drive configurations.
  /// [isProvisioned] Cache node resource flag indicating if cache node has been physically installed or provisioned on their physical lab.
  /// [isProxyRequired] Cache node resource requires a proxy
  /// [optionalProperty1] Optional property #1 of Mcc response object
  /// [optionalProperty2] Optional property #2 of Mcc response object
  /// [optionalProperty3] Optional property #3 of Mcc response object
  /// [optionalProperty4] Optional property #4 of Mcc response object
  /// [optionalProperty5] Optional property #5 of Mcc response object
  /// [osType] Operating system of the cache node
  /// [productVersion] Cache node resource Mcc product version.
  /// [proxyUrl] Cache node resource Mcc proxy Url
  /// [proxyUrlConfiguration] proxyUrl configuration of the cache node
  /// [updateCycleType] Update Cycle Type
  /// [updateInfoDetails] Update related information details
  /// [updateRequestedDateTime] customer requested date time for mcc install of update cycle
  AdditionalCacheNodePropertiesResponse({
    required this.aggregatedStatusCode,
    required this.aggregatedStatusDetails,
    required this.aggregatedStatusText,
    required this.autoUpdateAppliedVersion,
    required this.autoUpdateLastAppliedDateTime,
    required this.autoUpdateLastAppliedDetails,
    required this.autoUpdateLastAppliedState,
    required this.autoUpdateLastTriggeredDateTime,
    required this.autoUpdateNextAvailableDateTime,
    required this.autoUpdateNextAvailableVersion,
    this.autoUpdateVersion,
    this.bgpConfiguration,
    this.cacheNodePropertiesDetailsIssuesList,
    required this.cacheNodeState,
    required this.cacheNodeStateDetailedText,
    required this.cacheNodeStateShortText,
    this.driveConfiguration,
    required this.isProvisioned,
    this.isProxyRequired,
    this.optionalProperty1,
    this.optionalProperty2,
    this.optionalProperty3,
    this.optionalProperty4,
    this.optionalProperty5,
    this.osType,
    required this.productVersion,
    this.proxyUrl,
    this.proxyUrlConfiguration,
    this.updateCycleType,
    this.updateInfoDetails,
    this.updateRequestedDateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregatedStatusCode': aggregatedStatusCode,
      'aggregatedStatusDetails': aggregatedStatusDetails,
      'aggregatedStatusText': aggregatedStatusText,
      'autoUpdateAppliedVersion': autoUpdateAppliedVersion,
      'autoUpdateLastAppliedDateTime': autoUpdateLastAppliedDateTime,
      'autoUpdateLastAppliedDetails': autoUpdateLastAppliedDetails,
      'autoUpdateLastAppliedState': autoUpdateLastAppliedState,
      'autoUpdateLastTriggeredDateTime': autoUpdateLastTriggeredDateTime,
      'autoUpdateNextAvailableDateTime': autoUpdateNextAvailableDateTime,
      'autoUpdateNextAvailableVersion': autoUpdateNextAvailableVersion,
      'autoUpdateVersion': ?autoUpdateVersion,
      'bgpConfiguration': ?bgpConfiguration == null ? null : bgpConfiguration!.toMap(),
      'cacheNodePropertiesDetailsIssuesList': ?cacheNodePropertiesDetailsIssuesList,
      'cacheNodeState': cacheNodeState,
      'cacheNodeStateDetailedText': cacheNodeStateDetailedText,
      'cacheNodeStateShortText': cacheNodeStateShortText,
      'driveConfiguration': ?driveConfiguration == null ? null : pulumi.Input.encodeList<CacheNodeDriveConfigurationResponse, Map<String, dynamic>>(driveConfiguration!, (value) => value.toMap()),
      'isProvisioned': isProvisioned,
      'isProxyRequired': ?isProxyRequired,
      'optionalProperty1': ?optionalProperty1,
      'optionalProperty2': ?optionalProperty2,
      'optionalProperty3': ?optionalProperty3,
      'optionalProperty4': ?optionalProperty4,
      'optionalProperty5': ?optionalProperty5,
      'osType': ?osType,
      'productVersion': productVersion,
      'proxyUrl': ?proxyUrl,
      'proxyUrlConfiguration': ?proxyUrlConfiguration == null ? null : proxyUrlConfiguration!.toMap(),
      'updateCycleType': ?updateCycleType,
      'updateInfoDetails': ?updateInfoDetails,
      'updateRequestedDateTime': ?updateRequestedDateTime,
    };
  }

  factory AdditionalCacheNodePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AdditionalCacheNodePropertiesResponse(
      aggregatedStatusCode: map['aggregatedStatusCode'] as int,
      aggregatedStatusDetails: map['aggregatedStatusDetails'] as String,
      aggregatedStatusText: map['aggregatedStatusText'] as String,
      autoUpdateAppliedVersion: map['autoUpdateAppliedVersion'] as String,
      autoUpdateLastAppliedDateTime: map['autoUpdateLastAppliedDateTime'] as String,
      autoUpdateLastAppliedDetails: map['autoUpdateLastAppliedDetails'] as String,
      autoUpdateLastAppliedState: map['autoUpdateLastAppliedState'] as String,
      autoUpdateLastTriggeredDateTime: map['autoUpdateLastTriggeredDateTime'] as String,
      autoUpdateNextAvailableDateTime: map['autoUpdateNextAvailableDateTime'] as String,
      autoUpdateNextAvailableVersion: map['autoUpdateNextAvailableVersion'] as String,
      autoUpdateVersion: map['autoUpdateVersion'] == null ? null : map['autoUpdateVersion'] as String,
      bgpConfiguration: map['bgpConfiguration'] == null ? null : BgpConfigurationResponse.fromMap((map['bgpConfiguration'] as Map).cast<String, dynamic>()),
      cacheNodePropertiesDetailsIssuesList: map['cacheNodePropertiesDetailsIssuesList'] == null ? null : (map['cacheNodePropertiesDetailsIssuesList'] as List).cast<String>(),
      cacheNodeState: map['cacheNodeState'] as int,
      cacheNodeStateDetailedText: map['cacheNodeStateDetailedText'] as String,
      cacheNodeStateShortText: map['cacheNodeStateShortText'] as String,
      driveConfiguration: map['driveConfiguration'] == null ? null : pulumi.Input.decodeList<CacheNodeDriveConfigurationResponse>(map['driveConfiguration'], (value) => CacheNodeDriveConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())),
      isProvisioned: map['isProvisioned'] as bool,
      isProxyRequired: map['isProxyRequired'] == null ? null : map['isProxyRequired'] as String,
      optionalProperty1: map['optionalProperty1'] == null ? null : map['optionalProperty1'] as String,
      optionalProperty2: map['optionalProperty2'] == null ? null : map['optionalProperty2'] as String,
      optionalProperty3: map['optionalProperty3'] == null ? null : map['optionalProperty3'] as String,
      optionalProperty4: map['optionalProperty4'] == null ? null : map['optionalProperty4'] as String,
      optionalProperty5: map['optionalProperty5'] == null ? null : map['optionalProperty5'] as String,
      osType: map['osType'] == null ? null : map['osType'] as String,
      productVersion: map['productVersion'] as String,
      proxyUrl: map['proxyUrl'] == null ? null : map['proxyUrl'] as String,
      proxyUrlConfiguration: map['proxyUrlConfiguration'] == null ? null : ProxyUrlConfigurationResponse.fromMap((map['proxyUrlConfiguration'] as Map).cast<String, dynamic>()),
      updateCycleType: map['updateCycleType'] == null ? null : map['updateCycleType'] as String,
      updateInfoDetails: map['updateInfoDetails'] == null ? null : map['updateInfoDetails'] as String,
      updateRequestedDateTime: map['updateRequestedDateTime'] == null ? null : map['updateRequestedDateTime'] as String,
    );
  }
}

