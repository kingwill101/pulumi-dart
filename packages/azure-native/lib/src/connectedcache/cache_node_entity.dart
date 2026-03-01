// ignore_for_file: unused_element, unnecessary_cast


/// Model representing Cache Node for ConnectedCache resource
class CacheNodeEntity {
  /// Customer requested day of week for mcc install of auto update cycle. 0 is default no selection. 1-7 are days of week, 1 is Sunday, 2 is Monday, etc.
  final int? autoUpdateRequestedDay;
  /// Customer requested time of the day for mcc install of auto update cycle, should be hh:mm
  final String? autoUpdateRequestedTime;
  /// Customer requested week of month for mcc install of auto update cycle. 0 is default no selection. 1-5 are valid weeks of month, 1 is first week, 2 is second week, etc.
  final int? autoUpdateRequestedWeek;
  /// Auto Update Ring Type which is slow or fast etc.
  final String? autoUpdateRingType;
  /// Cache node resource identifier of the cache node
  final String? cacheNodeId;
  /// Cache node resource name.
  final String? cacheNodeName;
  /// Cache node resource comma separated values of Cidrs.
  final List<String>? cidrCsv;
  /// Cache node resource current Cidr range precedence selection type.
  final int? cidrSelectionType;
  /// Cache node resource customer resource Asn (autonomous system number)
  final int? customerAsn;
  /// Cache node resource customer index as string.
  final String? customerIndex;
  /// Cache node resource customer resource name.
  final String? customerName;
  /// FQDN(fully qualified domain name) value of the mcc cache node
  final String? fullyQualifiedDomainName;
  /// Cache node resource Azure fully qualified resource Id.
  final String? fullyQualifiedResourceId;
  /// Cache node resource Ip address.
  final String? ipAddress;
  /// Cache node resource flag for indicating if cache node is enabled.
  final bool? isEnabled;
  /// Cache node resource flag for determining if managed by enterprise as boolean.
  final bool? isEnterpriseManaged;
  /// Cache node resource maximum allowed egress in Mbps.
  final int? maxAllowableEgressInMbps;
  /// Cache node resource flag for determining if customer will be migrated.
  final bool? shouldMigrate;

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
  CacheNodeEntity({
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
      autoUpdateRequestedDay: map['autoUpdateRequestedDay'] == null ? null : map['autoUpdateRequestedDay'] as int,
      autoUpdateRequestedTime: map['autoUpdateRequestedTime'] == null ? null : map['autoUpdateRequestedTime'] as String,
      autoUpdateRequestedWeek: map['autoUpdateRequestedWeek'] == null ? null : map['autoUpdateRequestedWeek'] as int,
      autoUpdateRingType: map['autoUpdateRingType'] == null ? null : map['autoUpdateRingType'] as String,
      cacheNodeId: map['cacheNodeId'] == null ? null : map['cacheNodeId'] as String,
      cacheNodeName: map['cacheNodeName'] == null ? null : map['cacheNodeName'] as String,
      cidrCsv: map['cidrCsv'] == null ? null : (map['cidrCsv'] as List).cast<String>(),
      cidrSelectionType: map['cidrSelectionType'] == null ? null : map['cidrSelectionType'] as int,
      customerAsn: map['customerAsn'] == null ? null : map['customerAsn'] as int,
      customerIndex: map['customerIndex'] == null ? null : map['customerIndex'] as String,
      customerName: map['customerName'] == null ? null : map['customerName'] as String,
      fullyQualifiedDomainName: map['fullyQualifiedDomainName'] == null ? null : map['fullyQualifiedDomainName'] as String,
      fullyQualifiedResourceId: map['fullyQualifiedResourceId'] == null ? null : map['fullyQualifiedResourceId'] as String,
      ipAddress: map['ipAddress'] == null ? null : map['ipAddress'] as String,
      isEnabled: map['isEnabled'] == null ? null : map['isEnabled'] as bool,
      isEnterpriseManaged: map['isEnterpriseManaged'] == null ? null : map['isEnterpriseManaged'] as bool,
      maxAllowableEgressInMbps: map['maxAllowableEgressInMbps'] == null ? null : map['maxAllowableEgressInMbps'] as int,
      shouldMigrate: map['shouldMigrate'] == null ? null : map['shouldMigrate'] as bool,
    );
  }
}

