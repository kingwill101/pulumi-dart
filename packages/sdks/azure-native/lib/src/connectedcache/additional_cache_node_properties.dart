// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bgp_configuration.dart';
import 'cache_node_drive_configuration.dart';
import 'proxy_url_configuration.dart';

/// Model representing cache node for connected cache resource
class AdditionalCacheNodeProperties {
  /// Auto update or fast update version
  final String? autoUpdateVersion;
  /// Cache node resource Bgp configuration.
  final BgpConfiguration? bgpConfiguration;
  /// issues list to return the issues as part of the additional cache node properties
  final List<String>? cacheNodePropertiesDetailsIssuesList;
  /// Cache node resource drive configurations.
  final List<CacheNodeDriveConfiguration>? driveConfiguration;
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
  /// Cache node resource Mcc proxy Url
  final String? proxyUrl;
  /// proxyUrl configuration of the cache node
  final ProxyUrlConfiguration? proxyUrlConfiguration;
  /// Update Cycle Type
  final String? updateCycleType;
  /// Update related information details
  final String? updateInfoDetails;
  /// customer requested date time for mcc install of update cycle
  final String? updateRequestedDateTime;

  /// Creates a new [AdditionalCacheNodeProperties].
  /// [autoUpdateVersion] Auto update or fast update version
  /// [bgpConfiguration] Cache node resource Bgp configuration.
  /// [cacheNodePropertiesDetailsIssuesList] issues list to return the issues as part of the additional cache node properties
  /// [driveConfiguration] Cache node resource drive configurations.
  /// [isProxyRequired] Cache node resource requires a proxy
  /// [optionalProperty1] Optional property #1 of Mcc response object
  /// [optionalProperty2] Optional property #2 of Mcc response object
  /// [optionalProperty3] Optional property #3 of Mcc response object
  /// [optionalProperty4] Optional property #4 of Mcc response object
  /// [optionalProperty5] Optional property #5 of Mcc response object
  /// [osType] Operating system of the cache node
  /// [proxyUrl] Cache node resource Mcc proxy Url
  /// [proxyUrlConfiguration] proxyUrl configuration of the cache node
  /// [updateCycleType] Update Cycle Type
  /// [updateInfoDetails] Update related information details
  /// [updateRequestedDateTime] customer requested date time for mcc install of update cycle
  AdditionalCacheNodeProperties({
    this.autoUpdateVersion,
    this.bgpConfiguration,
    this.cacheNodePropertiesDetailsIssuesList,
    this.driveConfiguration,
    this.isProxyRequired,
    this.optionalProperty1,
    this.optionalProperty2,
    this.optionalProperty3,
    this.optionalProperty4,
    this.optionalProperty5,
    this.osType,
    this.proxyUrl,
    this.proxyUrlConfiguration,
    this.updateCycleType,
    this.updateInfoDetails,
    this.updateRequestedDateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoUpdateVersion': ?autoUpdateVersion,
      'bgpConfiguration': ?bgpConfiguration == null ? null : bgpConfiguration!.toMap(),
      'cacheNodePropertiesDetailsIssuesList': ?cacheNodePropertiesDetailsIssuesList,
      'driveConfiguration': ?driveConfiguration == null ? null : pulumi.Input.encodeList<CacheNodeDriveConfiguration, Map<String, dynamic>>(driveConfiguration!, (value) => value.toMap()),
      'isProxyRequired': ?isProxyRequired,
      'optionalProperty1': ?optionalProperty1,
      'optionalProperty2': ?optionalProperty2,
      'optionalProperty3': ?optionalProperty3,
      'optionalProperty4': ?optionalProperty4,
      'optionalProperty5': ?optionalProperty5,
      'osType': ?osType,
      'proxyUrl': ?proxyUrl,
      'proxyUrlConfiguration': ?proxyUrlConfiguration == null ? null : proxyUrlConfiguration!.toMap(),
      'updateCycleType': ?updateCycleType,
      'updateInfoDetails': ?updateInfoDetails,
      'updateRequestedDateTime': ?updateRequestedDateTime,
    };
  }

  factory AdditionalCacheNodeProperties.fromMap(Map<String, dynamic> map) {
    return AdditionalCacheNodeProperties(
      autoUpdateVersion: map['autoUpdateVersion'] == null ? null : map['autoUpdateVersion'] as String,
      bgpConfiguration: map['bgpConfiguration'] == null ? null : BgpConfiguration.fromMap((map['bgpConfiguration'] as Map).cast<String, dynamic>()),
      cacheNodePropertiesDetailsIssuesList: map['cacheNodePropertiesDetailsIssuesList'] == null ? null : (map['cacheNodePropertiesDetailsIssuesList'] as List).cast<String>(),
      driveConfiguration: map['driveConfiguration'] == null ? null : pulumi.Input.decodeList<CacheNodeDriveConfiguration>(map['driveConfiguration'], (value) => CacheNodeDriveConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      isProxyRequired: map['isProxyRequired'] == null ? null : map['isProxyRequired'] as String,
      optionalProperty1: map['optionalProperty1'] == null ? null : map['optionalProperty1'] as String,
      optionalProperty2: map['optionalProperty2'] == null ? null : map['optionalProperty2'] as String,
      optionalProperty3: map['optionalProperty3'] == null ? null : map['optionalProperty3'] as String,
      optionalProperty4: map['optionalProperty4'] == null ? null : map['optionalProperty4'] as String,
      optionalProperty5: map['optionalProperty5'] == null ? null : map['optionalProperty5'] as String,
      osType: map['osType'] == null ? null : map['osType'] as String,
      proxyUrl: map['proxyUrl'] == null ? null : map['proxyUrl'] as String,
      proxyUrlConfiguration: map['proxyUrlConfiguration'] == null ? null : ProxyUrlConfiguration.fromMap((map['proxyUrlConfiguration'] as Map).cast<String, dynamic>()),
      updateCycleType: map['updateCycleType'] == null ? null : map['updateCycleType'] as String,
      updateInfoDetails: map['updateInfoDetails'] == null ? null : map['updateInfoDetails'] as String,
      updateRequestedDateTime: map['updateRequestedDateTime'] == null ? null : map['updateRequestedDateTime'] as String,
    );
  }
}

