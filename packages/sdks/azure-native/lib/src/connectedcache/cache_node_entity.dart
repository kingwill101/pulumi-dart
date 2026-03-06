// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Model representing Cache Node for ConnectedCache resource
class CacheNodeEntity {
  /// Customer requested day of week for mcc install of auto update cycle. 0 is default no selection. 1-7 are days of week, 1 is Sunday, 2 is Monday, etc.
  final pulumi.Input<int>? autoUpdateRequestedDay;
  /// Customer requested time of the day for mcc install of auto update cycle, should be hh:mm
  final pulumi.Input<String>? autoUpdateRequestedTime;
  /// Customer requested week of month for mcc install of auto update cycle. 0 is default no selection. 1-5 are valid weeks of month, 1 is first week, 2 is second week, etc.
  final pulumi.Input<int>? autoUpdateRequestedWeek;
  /// Auto Update Ring Type which is slow or fast etc.
  final pulumi.Input<String>? autoUpdateRingType;
  /// Cache node resource identifier of the cache node
  final pulumi.Input<String>? cacheNodeId;
  /// Cache node resource name.
  final pulumi.Input<String>? cacheNodeName;
  /// Cache node resource comma separated values of Cidrs.
  final pulumi.Input<List<String>>? cidrCsv;
  /// Cache node resource current Cidr range precedence selection type.
  final pulumi.Input<int>? cidrSelectionType;
  /// Cache node resource customer resource Asn (autonomous system number)
  final pulumi.Input<int>? customerAsn;
  /// Cache node resource customer index as string.
  final pulumi.Input<String>? customerIndex;
  /// Cache node resource customer resource name.
  final pulumi.Input<String>? customerName;
  /// FQDN(fully qualified domain name) value of the mcc cache node
  final pulumi.Input<String>? fullyQualifiedDomainName;
  /// Cache node resource Azure fully qualified resource Id.
  final pulumi.Input<String>? fullyQualifiedResourceId;
  /// Cache node resource Ip address.
  final pulumi.Input<String>? ipAddress;
  /// Cache node resource flag for indicating if cache node is enabled.
  final pulumi.Input<bool>? isEnabled;
  /// Cache node resource flag for determining if managed by enterprise as boolean.
  final pulumi.Input<bool>? isEnterpriseManaged;
  /// Cache node resource maximum allowed egress in Mbps.
  final pulumi.Input<int>? maxAllowableEgressInMbps;
  /// Cache node resource flag for determining if customer will be migrated.
  final pulumi.Input<bool>? shouldMigrate;

  /// Creates a new [CacheNodeEntity].
  /// [autoUpdateRequestedDay] Customer requested day of week for mcc install of auto update cycle. 0 is default no selection. 1-7 are days of week, 1 is Sunday, 2 is Monday, etc.
  /// [autoUpdateRequestedTime] Customer requested time of the day for mcc install of auto update cycle, should be hh:mm
  /// [autoUpdateRequestedWeek] Customer requested week of month for mcc install of auto update cycle. 0 is default no selection. 1-5 are valid weeks of month, 1 is first week, 2 is second week, etc.
  /// [autoUpdateRingType] Auto Update Ring Type which is slow or fast etc.
  /// [cacheNodeId] Cache node resource identifier of the cache node
  /// [cacheNodeName] Cache node resource name.
  /// [cidrCsv] Cache node resource comma separated values of Cidrs.
  /// [cidrSelectionType] Cache node resource current Cidr range precedence selection type.
  /// [customerAsn] Cache node resource customer resource Asn (autonomous system number)
  /// [customerIndex] Cache node resource customer index as string.
  /// [customerName] Cache node resource customer resource name.
  /// [fullyQualifiedDomainName] FQDN(fully qualified domain name) value of the mcc cache node
  /// [fullyQualifiedResourceId] Cache node resource Azure fully qualified resource Id.
  /// [ipAddress] Cache node resource Ip address.
  /// [isEnabled] Cache node resource flag for indicating if cache node is enabled.
  /// [isEnterpriseManaged] Cache node resource flag for determining if managed by enterprise as boolean.
  /// [maxAllowableEgressInMbps] Cache node resource maximum allowed egress in Mbps.
  /// [shouldMigrate] Cache node resource flag for determining if customer will be migrated.
  const CacheNodeEntity({
    this.autoUpdateRequestedDay,
    this.autoUpdateRequestedTime,
    this.autoUpdateRequestedWeek,
    this.autoUpdateRingType,
    this.cacheNodeId,
    this.cacheNodeName,
    this.cidrCsv,
    this.cidrSelectionType,
    this.customerAsn,
    this.customerIndex,
    this.customerName,
    this.fullyQualifiedDomainName,
    this.fullyQualifiedResourceId,
    this.ipAddress,
    this.isEnabled,
    this.isEnterpriseManaged,
    this.maxAllowableEgressInMbps,
    this.shouldMigrate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoUpdateRequestedDay': ?autoUpdateRequestedDay,
      'autoUpdateRequestedTime': ?autoUpdateRequestedTime,
      'autoUpdateRequestedWeek': ?autoUpdateRequestedWeek,
      'autoUpdateRingType': ?autoUpdateRingType,
      'cacheNodeId': ?cacheNodeId,
      'cacheNodeName': ?cacheNodeName,
      'cidrCsv': ?cidrCsv,
      'cidrSelectionType': ?cidrSelectionType,
      'customerAsn': ?customerAsn,
      'customerIndex': ?customerIndex,
      'customerName': ?customerName,
      'fullyQualifiedDomainName': ?fullyQualifiedDomainName,
      'fullyQualifiedResourceId': ?fullyQualifiedResourceId,
      'ipAddress': ?ipAddress,
      'isEnabled': ?isEnabled,
      'isEnterpriseManaged': ?isEnterpriseManaged,
      'maxAllowableEgressInMbps': ?maxAllowableEgressInMbps,
      'shouldMigrate': ?shouldMigrate,
    };
  }

  factory CacheNodeEntity.fromMap(Map<String, dynamic> map) {
    return CacheNodeEntity(
      autoUpdateRequestedDay: (() { final guardedValue = map['autoUpdateRequestedDay']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      autoUpdateRequestedTime: (() { final guardedValue = map['autoUpdateRequestedTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      autoUpdateRequestedWeek: (() { final guardedValue = map['autoUpdateRequestedWeek']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      autoUpdateRingType: (() { final guardedValue = map['autoUpdateRingType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cacheNodeId: (() { final guardedValue = map['cacheNodeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cacheNodeName: (() { final guardedValue = map['cacheNodeName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cidrCsv: (() { final guardedValue = map['cidrCsv']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      cidrSelectionType: (() { final guardedValue = map['cidrSelectionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      customerAsn: (() { final guardedValue = map['customerAsn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      customerIndex: (() { final guardedValue = map['customerIndex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customerName: (() { final guardedValue = map['customerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fullyQualifiedDomainName: (() { final guardedValue = map['fullyQualifiedDomainName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fullyQualifiedResourceId: (() { final guardedValue = map['fullyQualifiedResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isEnabled: (() { final guardedValue = map['isEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isEnterpriseManaged: (() { final guardedValue = map['isEnterpriseManaged']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      maxAllowableEgressInMbps: (() { final guardedValue = map['maxAllowableEgressInMbps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      shouldMigrate: (() { final guardedValue = map['shouldMigrate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

