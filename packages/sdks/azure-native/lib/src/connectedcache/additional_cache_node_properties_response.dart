// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bgp_configuration_response.dart';
import 'cache_node_drive_configuration_response.dart';
import 'proxy_url_configuration_response.dart';

/// Model representing cache node for connected cache resource
class AdditionalCacheNodePropertiesResponse {
  /// Cache node resource aggregated status code.
  final pulumi.Input<int> aggregatedStatusCode;
  /// Cache node resource aggregated status details.
  final pulumi.Input<String> aggregatedStatusDetails;
  /// Cache node resource aggregated status text.
  final pulumi.Input<String> aggregatedStatusText;
  /// Auto update version that is the applied to update on mcc cache node
  final pulumi.Input<String> autoUpdateAppliedVersion;
  /// Auto update last applied date time of mcc install
  final pulumi.Input<String> autoUpdateLastAppliedDateTime;
  /// Auto Update status details from the backend after applying the new version details
  final pulumi.Input<String> autoUpdateLastAppliedDetails;
  /// Last applied auto update state for mcc install of auto update cycle
  final pulumi.Input<String> autoUpdateLastAppliedState;
  /// Auto update last triggered date time of mcc install
  final pulumi.Input<String> autoUpdateLastTriggeredDateTime;
  /// Auto update last applied date time of mcc install
  final pulumi.Input<String> autoUpdateNextAvailableDateTime;
  /// Auto update version that is the Next available version to update on mcc cache node
  final pulumi.Input<String> autoUpdateNextAvailableVersion;
  /// Auto update or fast update version
  final pulumi.Input<String>? autoUpdateVersion;
  /// Cache node resource Bgp configuration.
  final pulumi.Input<BgpConfigurationResponse>? bgpConfiguration;
  /// issues list to return the issues as part of the additional cache node properties
  final pulumi.Input<List<String>>? cacheNodePropertiesDetailsIssuesList;
  /// Cache node resource state as integer.
  final pulumi.Input<int> cacheNodeState;
  /// Cache node resource detailed state text.
  final pulumi.Input<String> cacheNodeStateDetailedText;
  /// Cache node resource short state text.
  final pulumi.Input<String> cacheNodeStateShortText;
  /// Cache node resource drive configurations.
  final pulumi.Input<List<CacheNodeDriveConfigurationResponse>>? driveConfiguration;
  /// Cache node resource flag indicating if cache node has been physically installed or provisioned on their physical lab.
  final pulumi.Input<bool> isProvisioned;
  /// Cache node resource requires a proxy
  final pulumi.Input<String>? isProxyRequired;
  /// Optional property #1 of Mcc response object
  final pulumi.Input<String>? optionalProperty1;
  /// Optional property #2 of Mcc response object
  final pulumi.Input<String>? optionalProperty2;
  /// Optional property #3 of Mcc response object
  final pulumi.Input<String>? optionalProperty3;
  /// Optional property #4 of Mcc response object
  final pulumi.Input<String>? optionalProperty4;
  /// Optional property #5 of Mcc response object
  final pulumi.Input<String>? optionalProperty5;
  /// Operating system of the cache node
  final pulumi.Input<String>? osType;
  /// Cache node resource Mcc product version.
  final pulumi.Input<String> productVersion;
  /// Cache node resource Mcc proxy Url
  final pulumi.Input<String>? proxyUrl;
  /// proxyUrl configuration of the cache node
  final pulumi.Input<ProxyUrlConfigurationResponse>? proxyUrlConfiguration;
  /// Update Cycle Type
  final pulumi.Input<String>? updateCycleType;
  /// Update related information details
  final pulumi.Input<String>? updateInfoDetails;
  /// customer requested date time for mcc install of update cycle
  final pulumi.Input<String>? updateRequestedDateTime;

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
  const AdditionalCacheNodePropertiesResponse({
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
      'bgpConfiguration': ?pulumi.Input.mapOptionalInputValue<BgpConfigurationResponse, Map<String, dynamic>>(bgpConfiguration, (value) => value.toMap()),
      'cacheNodePropertiesDetailsIssuesList': ?cacheNodePropertiesDetailsIssuesList,
      'cacheNodeState': cacheNodeState,
      'cacheNodeStateDetailedText': cacheNodeStateDetailedText,
      'cacheNodeStateShortText': cacheNodeStateShortText,
      'driveConfiguration': ?pulumi.Input.mapOptionalInputValue<List<CacheNodeDriveConfigurationResponse>, List<Map<String, dynamic>>>(driveConfiguration, (value) => pulumi.Input.encodeList<CacheNodeDriveConfigurationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
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
      'proxyUrlConfiguration': ?pulumi.Input.mapOptionalInputValue<ProxyUrlConfigurationResponse, Map<String, dynamic>>(proxyUrlConfiguration, (value) => value.toMap()),
      'updateCycleType': ?updateCycleType,
      'updateInfoDetails': ?updateInfoDetails,
      'updateRequestedDateTime': ?updateRequestedDateTime,
    };
  }

  factory AdditionalCacheNodePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AdditionalCacheNodePropertiesResponse(
      aggregatedStatusCode: pulumi.Input.fromValue(map['aggregatedStatusCode'] as int),
      aggregatedStatusDetails: pulumi.Input.fromValue(map['aggregatedStatusDetails'] as String),
      aggregatedStatusText: pulumi.Input.fromValue(map['aggregatedStatusText'] as String),
      autoUpdateAppliedVersion: pulumi.Input.fromValue(map['autoUpdateAppliedVersion'] as String),
      autoUpdateLastAppliedDateTime: pulumi.Input.fromValue(map['autoUpdateLastAppliedDateTime'] as String),
      autoUpdateLastAppliedDetails: pulumi.Input.fromValue(map['autoUpdateLastAppliedDetails'] as String),
      autoUpdateLastAppliedState: pulumi.Input.fromValue(map['autoUpdateLastAppliedState'] as String),
      autoUpdateLastTriggeredDateTime: pulumi.Input.fromValue(map['autoUpdateLastTriggeredDateTime'] as String),
      autoUpdateNextAvailableDateTime: pulumi.Input.fromValue(map['autoUpdateNextAvailableDateTime'] as String),
      autoUpdateNextAvailableVersion: pulumi.Input.fromValue(map['autoUpdateNextAvailableVersion'] as String),
      autoUpdateVersion: (() { final guardedValue = map['autoUpdateVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bgpConfiguration: (() { final guardedValue = map['bgpConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BgpConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      cacheNodePropertiesDetailsIssuesList: (() { final guardedValue = map['cacheNodePropertiesDetailsIssuesList']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      cacheNodeState: pulumi.Input.fromValue(map['cacheNodeState'] as int),
      cacheNodeStateDetailedText: pulumi.Input.fromValue(map['cacheNodeStateDetailedText'] as String),
      cacheNodeStateShortText: pulumi.Input.fromValue(map['cacheNodeStateShortText'] as String),
      driveConfiguration: (() { final guardedValue = map['driveConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CacheNodeDriveConfigurationResponse>(guardedValue, (value) => CacheNodeDriveConfigurationResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      isProvisioned: pulumi.Input.fromValue(map['isProvisioned'] as bool),
      isProxyRequired: (() { final guardedValue = map['isProxyRequired']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      optionalProperty1: (() { final guardedValue = map['optionalProperty1']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      optionalProperty2: (() { final guardedValue = map['optionalProperty2']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      optionalProperty3: (() { final guardedValue = map['optionalProperty3']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      optionalProperty4: (() { final guardedValue = map['optionalProperty4']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      optionalProperty5: (() { final guardedValue = map['optionalProperty5']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      osType: (() { final guardedValue = map['osType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      productVersion: pulumi.Input.fromValue(map['productVersion'] as String),
      proxyUrl: (() { final guardedValue = map['proxyUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      proxyUrlConfiguration: (() { final guardedValue = map['proxyUrlConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProxyUrlConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      updateCycleType: (() { final guardedValue = map['updateCycleType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateInfoDetails: (() { final guardedValue = map['updateInfoDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateRequestedDateTime: (() { final guardedValue = map['updateRequestedDateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
