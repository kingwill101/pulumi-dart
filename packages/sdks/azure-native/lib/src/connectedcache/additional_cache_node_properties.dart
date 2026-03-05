// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bgp_configuration.dart';
import 'cache_node_drive_configuration.dart';
import 'proxy_url_configuration.dart';

/// Model representing cache node for connected cache resource
class AdditionalCacheNodeProperties {
  /// Auto update or fast update version
  final pulumi.Input<String>? autoUpdateVersion;
  /// Cache node resource Bgp configuration.
  final pulumi.Input<BgpConfiguration>? bgpConfiguration;
  /// issues list to return the issues as part of the additional cache node properties
  final pulumi.Input<List<String>>? cacheNodePropertiesDetailsIssuesList;
  /// Cache node resource drive configurations.
  final pulumi.Input<List<CacheNodeDriveConfiguration>>? driveConfiguration;
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
  /// Cache node resource Mcc proxy Url
  final pulumi.Input<String>? proxyUrl;
  /// proxyUrl configuration of the cache node
  final pulumi.Input<ProxyUrlConfiguration>? proxyUrlConfiguration;
  /// Update Cycle Type
  final pulumi.Input<String>? updateCycleType;
  /// Update related information details
  final pulumi.Input<String>? updateInfoDetails;
  /// customer requested date time for mcc install of update cycle
  final pulumi.Input<String>? updateRequestedDateTime;

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
      'bgpConfiguration': ?pulumi.Input.mapOptionalInputValue<BgpConfiguration, Map<String, dynamic>>(bgpConfiguration, (value) => value.toMap()),
      'cacheNodePropertiesDetailsIssuesList': ?cacheNodePropertiesDetailsIssuesList,
      'driveConfiguration': ?pulumi.Input.mapOptionalInputValue<List<CacheNodeDriveConfiguration>, List<Map<String, dynamic>>>(driveConfiguration, (value) => pulumi.Input.encodeList<CacheNodeDriveConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'isProxyRequired': ?isProxyRequired,
      'optionalProperty1': ?optionalProperty1,
      'optionalProperty2': ?optionalProperty2,
      'optionalProperty3': ?optionalProperty3,
      'optionalProperty4': ?optionalProperty4,
      'optionalProperty5': ?optionalProperty5,
      'osType': ?osType,
      'proxyUrl': ?proxyUrl,
      'proxyUrlConfiguration': ?pulumi.Input.mapOptionalInputValue<ProxyUrlConfiguration, Map<String, dynamic>>(proxyUrlConfiguration, (value) => value.toMap()),
      'updateCycleType': ?updateCycleType,
      'updateInfoDetails': ?updateInfoDetails,
      'updateRequestedDateTime': ?updateRequestedDateTime,
    };
  }

  factory AdditionalCacheNodeProperties.fromMap(Map<String, dynamic> map) {
    return AdditionalCacheNodeProperties(
      autoUpdateVersion: (() { final guardedValue = map['autoUpdateVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bgpConfiguration: (() { final guardedValue = map['bgpConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BgpConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      cacheNodePropertiesDetailsIssuesList: (() { final guardedValue = map['cacheNodePropertiesDetailsIssuesList']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      driveConfiguration: (() { final guardedValue = map['driveConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CacheNodeDriveConfiguration>(guardedValue, (value) => CacheNodeDriveConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      isProxyRequired: (() { final guardedValue = map['isProxyRequired']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      optionalProperty1: (() { final guardedValue = map['optionalProperty1']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      optionalProperty2: (() { final guardedValue = map['optionalProperty2']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      optionalProperty3: (() { final guardedValue = map['optionalProperty3']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      optionalProperty4: (() { final guardedValue = map['optionalProperty4']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      optionalProperty5: (() { final guardedValue = map['optionalProperty5']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      osType: (() { final guardedValue = map['osType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      proxyUrl: (() { final guardedValue = map['proxyUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      proxyUrlConfiguration: (() { final guardedValue = map['proxyUrlConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProxyUrlConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      updateCycleType: (() { final guardedValue = map['updateCycleType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateInfoDetails: (() { final guardedValue = map['updateInfoDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateRequestedDateTime: (() { final guardedValue = map['updateRequestedDateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

