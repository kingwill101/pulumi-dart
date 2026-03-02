// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Model representing Cache Node for ConnectedCache resource
class CacheNodeEntityResponse {
  /// Cache node resource total addressable space defined by the Cidr Csv block.
  final pulumi.Input<int> addressSpace;
  /// Customer requested day of week for mcc install of auto update cycle. 0 is default no selection. 1-7 are days of week, 1 is Sunday, 2 is Monday, etc.
  final pulumi.Input<int>? autoUpdateRequestedDay;
  /// Customer requested time of the day for mcc install of auto update cycle, should be hh:mm
  final pulumi.Input<String>? autoUpdateRequestedTime;
  /// Customer requested week of month for mcc install of auto update cycle. 0 is default no selection. 1-5 are valid weeks of month, 1 is first week, 2 is second week, etc.
  final pulumi.Input<int>? autoUpdateRequestedWeek;
  /// Auto Update Ring Type which is slow or fast etc.
  final pulumi.Input<String>? autoUpdateRingType;
  /// Cache node resource total addressable space defined by Bgp and Cidr Csv blocks.
  final pulumi.Input<int> bgpAddressSpace;
  /// Cache node resource Bgp block count.
  final pulumi.Input<int> bgpCidrBlocksCount;
  /// Cache node resource last Bgp Cidr Csv update timestamp
  final pulumi.Input<String> bgpCidrCsvLastUpdateTime;
  /// Cache node resource bytes truncated from Bgp output file.
  final pulumi.Input<int> bgpFileBytesTruncated;
  /// Cache node resource last Bgp report timestamp.
  final pulumi.Input<String> bgpLastReportedTime;
  /// Cache node resource Bgp record count.
  final pulumi.Input<int> bgpNumberOfRecords;
  /// Cache node resource Bgp update count.
  final pulumi.Input<int> bgpNumberOfTimesUpdated;
  /// Cache node resource Bgp review feedback text.
  final pulumi.Input<String> bgpReviewFeedback;
  /// Cache node resource Bgp review state string text.
  final pulumi.Input<String> bgpReviewState;
  /// Cache node resource Bgp review state string text in detail.
  final pulumi.Input<String> bgpReviewStateText;
  /// Cache node resource identifier of the cache node
  final pulumi.Input<String>? cacheNodeId;
  /// Cache node resource name.
  final pulumi.Input<String>? cacheNodeName;
  /// Cache node resource category.
  final pulumi.Input<String> category;
  /// Cache node resource comma separated values of Cidrs.
  final pulumi.Input<List<String>>? cidrCsv;
  /// Cache node resource last Cidr Csv update timestamp
  final pulumi.Input<String> cidrCsvLastUpdateTime;
  /// Cache node resource current Cidr range precedence selection type.
  final pulumi.Input<int>? cidrSelectionType;
  /// Cache node resource customer resource client tenant Id of subscription.
  final pulumi.Input<String> clientTenantId;
  /// Cache node resource configuration state.
  final pulumi.Input<String> configurationState;
  /// Cache node resource configuration state text.
  final pulumi.Input<String> configurationStateText;
  /// Cache node resource container configuration details.
  final pulumi.Input<String> containerConfigurations;
  /// Cache node resource Mcc container configuration details re-sync trigger.
  final pulumi.Input<int> containerResyncTrigger;
  /// Cache node resource create async operation Id.
  final pulumi.Input<String> createAsyncOperationId;
  /// Cache node resource customer resource Asn (autonomous system number)
  final pulumi.Input<int>? customerAsn;
  /// Cache node resource customer resource GUID Id.
  final pulumi.Input<String> customerId;
  /// Cache node resource customer index as string.
  final pulumi.Input<String>? customerIndex;
  /// Cache node resource customer resource name.
  final pulumi.Input<String>? customerName;
  /// Cache node resource deletion async operation Id.
  final pulumi.Input<String> deleteAsyncOperationId;
  /// FQDN(fully qualified domain name) value of the mcc cache node
  final pulumi.Input<String>? fullyQualifiedDomainName;
  /// Cache node resource Azure fully qualified resource Id.
  final pulumi.Input<String>? fullyQualifiedResourceId;
  /// Cache node resource Mcc Container Id Uri.
  final pulumi.Input<String> imageUri;
  /// Cache node resource Ip address.
  final pulumi.Input<String>? ipAddress;
  /// Cache node resource flag for indicating if cache node is enabled.
  final pulumi.Input<bool>? isEnabled;
  /// Cache node resource flag for determining if managed by enterprise as boolean.
  final pulumi.Input<bool>? isEnterpriseManaged;
  /// Cache node resource flag for indicating the cache node resource is frozen (not selectable, not editable in UI).
  final pulumi.Input<bool> isFrozen;
  /// Cache node resource last sync timestamp.
  final pulumi.Input<String> lastSyncWithAzureTimestamp;
  /// Cache node resource last backend updated timestamp.
  final pulumi.Input<String> lastUpdatedTimestamp;
  /// Cache node resource maximum allowed egress in Mbps.
  final pulumi.Input<int>? maxAllowableEgressInMbps;
  /// Cache node resource maximum allowed probability of egress.
  final pulumi.Input<double> maxAllowableProbability;
  /// Cache node resource release version.
  final pulumi.Input<int> releaseVersion;
  /// Cache node resource review feedback text.
  final pulumi.Input<String> reviewFeedback;
  /// Cache node resource review process state as integer
  final pulumi.Input<int> reviewState;
  /// Cache node resource review state text.
  final pulumi.Input<String> reviewStateText;
  /// Cache node resource flag for determining if customer will be migrated.
  final pulumi.Input<bool>? shouldMigrate;
  /// Cache node resource attempts to sync with Azure.
  final pulumi.Input<int> synchWithAzureAttemptsCount;
  /// Cache node resource Mcc container deployment worker connection count.
  final pulumi.Input<int> workerConnections;
  /// Cache node resource last updated Mcc container deployment worker connection count timestamp.
  final pulumi.Input<String> workerConnectionsLastUpdatedDateTime;
  /// Cache node resource Azure XCid.
  final pulumi.Input<String> xCid;

  /// Creates a new [CacheNodeEntityResponse].
  /// [addressSpace] Cache node resource total addressable space defined by the Cidr Csv block.
  /// [autoUpdateRequestedDay] Customer requested day of week for mcc install of auto update cycle. 0 is default no selection. 1-7 are days of week, 1 is Sunday, 2 is Monday, etc.
  /// [autoUpdateRequestedTime] Customer requested time of the day for mcc install of auto update cycle, should be hh:mm
  /// [autoUpdateRequestedWeek] Customer requested week of month for mcc install of auto update cycle. 0 is default no selection. 1-5 are valid weeks of month, 1 is first week, 2 is second week, etc.
  /// [autoUpdateRingType] Auto Update Ring Type which is slow or fast etc.
  /// [bgpAddressSpace] Cache node resource total addressable space defined by Bgp and Cidr Csv blocks.
  /// [bgpCidrBlocksCount] Cache node resource Bgp block count.
  /// [bgpCidrCsvLastUpdateTime] Cache node resource last Bgp Cidr Csv update timestamp
  /// [bgpFileBytesTruncated] Cache node resource bytes truncated from Bgp output file.
  /// [bgpLastReportedTime] Cache node resource last Bgp report timestamp.
  /// [bgpNumberOfRecords] Cache node resource Bgp record count.
  /// [bgpNumberOfTimesUpdated] Cache node resource Bgp update count.
  /// [bgpReviewFeedback] Cache node resource Bgp review feedback text.
  /// [bgpReviewState] Cache node resource Bgp review state string text.
  /// [bgpReviewStateText] Cache node resource Bgp review state string text in detail.
  /// [cacheNodeId] Cache node resource identifier of the cache node
  /// [cacheNodeName] Cache node resource name.
  /// [category] Cache node resource category.
  /// [cidrCsv] Cache node resource comma separated values of Cidrs.
  /// [cidrCsvLastUpdateTime] Cache node resource last Cidr Csv update timestamp
  /// [cidrSelectionType] Cache node resource current Cidr range precedence selection type.
  /// [clientTenantId] Cache node resource customer resource client tenant Id of subscription.
  /// [configurationState] Cache node resource configuration state.
  /// [configurationStateText] Cache node resource configuration state text.
  /// [containerConfigurations] Cache node resource container configuration details.
  /// [containerResyncTrigger] Cache node resource Mcc container configuration details re-sync trigger.
  /// [createAsyncOperationId] Cache node resource create async operation Id.
  /// [customerAsn] Cache node resource customer resource Asn (autonomous system number)
  /// [customerId] Cache node resource customer resource GUID Id.
  /// [customerIndex] Cache node resource customer index as string.
  /// [customerName] Cache node resource customer resource name.
  /// [deleteAsyncOperationId] Cache node resource deletion async operation Id.
  /// [fullyQualifiedDomainName] FQDN(fully qualified domain name) value of the mcc cache node
  /// [fullyQualifiedResourceId] Cache node resource Azure fully qualified resource Id.
  /// [imageUri] Cache node resource Mcc Container Id Uri.
  /// [ipAddress] Cache node resource Ip address.
  /// [isEnabled] Cache node resource flag for indicating if cache node is enabled.
  /// [isEnterpriseManaged] Cache node resource flag for determining if managed by enterprise as boolean.
  /// [isFrozen] Cache node resource flag for indicating the cache node resource is frozen (not selectable, not editable in UI).
  /// [lastSyncWithAzureTimestamp] Cache node resource last sync timestamp.
  /// [lastUpdatedTimestamp] Cache node resource last backend updated timestamp.
  /// [maxAllowableEgressInMbps] Cache node resource maximum allowed egress in Mbps.
  /// [maxAllowableProbability] Cache node resource maximum allowed probability of egress.
  /// [releaseVersion] Cache node resource release version.
  /// [reviewFeedback] Cache node resource review feedback text.
  /// [reviewState] Cache node resource review process state as integer
  /// [reviewStateText] Cache node resource review state text.
  /// [shouldMigrate] Cache node resource flag for determining if customer will be migrated.
  /// [synchWithAzureAttemptsCount] Cache node resource attempts to sync with Azure.
  /// [workerConnections] Cache node resource Mcc container deployment worker connection count.
  /// [workerConnectionsLastUpdatedDateTime] Cache node resource last updated Mcc container deployment worker connection count timestamp.
  /// [xCid] Cache node resource Azure XCid.
  CacheNodeEntityResponse({
    required this.addressSpace,
    this.autoUpdateRequestedDay,
    this.autoUpdateRequestedTime,
    this.autoUpdateRequestedWeek,
    this.autoUpdateRingType,
    required this.bgpAddressSpace,
    required this.bgpCidrBlocksCount,
    required this.bgpCidrCsvLastUpdateTime,
    required this.bgpFileBytesTruncated,
    required this.bgpLastReportedTime,
    required this.bgpNumberOfRecords,
    required this.bgpNumberOfTimesUpdated,
    required this.bgpReviewFeedback,
    required this.bgpReviewState,
    required this.bgpReviewStateText,
    this.cacheNodeId,
    this.cacheNodeName,
    required this.category,
    this.cidrCsv,
    required this.cidrCsvLastUpdateTime,
    this.cidrSelectionType,
    required this.clientTenantId,
    required this.configurationState,
    required this.configurationStateText,
    required this.containerConfigurations,
    required this.containerResyncTrigger,
    required this.createAsyncOperationId,
    this.customerAsn,
    required this.customerId,
    this.customerIndex,
    this.customerName,
    required this.deleteAsyncOperationId,
    this.fullyQualifiedDomainName,
    this.fullyQualifiedResourceId,
    required this.imageUri,
    this.ipAddress,
    this.isEnabled,
    this.isEnterpriseManaged,
    required this.isFrozen,
    required this.lastSyncWithAzureTimestamp,
    required this.lastUpdatedTimestamp,
    this.maxAllowableEgressInMbps,
    required this.maxAllowableProbability,
    required this.releaseVersion,
    required this.reviewFeedback,
    required this.reviewState,
    required this.reviewStateText,
    this.shouldMigrate,
    required this.synchWithAzureAttemptsCount,
    required this.workerConnections,
    required this.workerConnectionsLastUpdatedDateTime,
    required this.xCid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressSpace': addressSpace,
      'autoUpdateRequestedDay': ?autoUpdateRequestedDay,
      'autoUpdateRequestedTime': ?autoUpdateRequestedTime,
      'autoUpdateRequestedWeek': ?autoUpdateRequestedWeek,
      'autoUpdateRingType': ?autoUpdateRingType,
      'bgpAddressSpace': bgpAddressSpace,
      'bgpCidrBlocksCount': bgpCidrBlocksCount,
      'bgpCidrCsvLastUpdateTime': bgpCidrCsvLastUpdateTime,
      'bgpFileBytesTruncated': bgpFileBytesTruncated,
      'bgpLastReportedTime': bgpLastReportedTime,
      'bgpNumberOfRecords': bgpNumberOfRecords,
      'bgpNumberOfTimesUpdated': bgpNumberOfTimesUpdated,
      'bgpReviewFeedback': bgpReviewFeedback,
      'bgpReviewState': bgpReviewState,
      'bgpReviewStateText': bgpReviewStateText,
      'cacheNodeId': ?cacheNodeId,
      'cacheNodeName': ?cacheNodeName,
      'category': category,
      'cidrCsv': ?cidrCsv,
      'cidrCsvLastUpdateTime': cidrCsvLastUpdateTime,
      'cidrSelectionType': ?cidrSelectionType,
      'clientTenantId': clientTenantId,
      'configurationState': configurationState,
      'configurationStateText': configurationStateText,
      'containerConfigurations': containerConfigurations,
      'containerResyncTrigger': containerResyncTrigger,
      'createAsyncOperationId': createAsyncOperationId,
      'customerAsn': ?customerAsn,
      'customerId': customerId,
      'customerIndex': ?customerIndex,
      'customerName': ?customerName,
      'deleteAsyncOperationId': deleteAsyncOperationId,
      'fullyQualifiedDomainName': ?fullyQualifiedDomainName,
      'fullyQualifiedResourceId': ?fullyQualifiedResourceId,
      'imageUri': imageUri,
      'ipAddress': ?ipAddress,
      'isEnabled': ?isEnabled,
      'isEnterpriseManaged': ?isEnterpriseManaged,
      'isFrozen': isFrozen,
      'lastSyncWithAzureTimestamp': lastSyncWithAzureTimestamp,
      'lastUpdatedTimestamp': lastUpdatedTimestamp,
      'maxAllowableEgressInMbps': ?maxAllowableEgressInMbps,
      'maxAllowableProbability': maxAllowableProbability,
      'releaseVersion': releaseVersion,
      'reviewFeedback': reviewFeedback,
      'reviewState': reviewState,
      'reviewStateText': reviewStateText,
      'shouldMigrate': ?shouldMigrate,
      'synchWithAzureAttemptsCount': synchWithAzureAttemptsCount,
      'workerConnections': workerConnections,
      'workerConnectionsLastUpdatedDateTime': workerConnectionsLastUpdatedDateTime,
      'xCid': xCid,
    };
  }

  factory CacheNodeEntityResponse.fromMap(Map<String, dynamic> map) {
    return CacheNodeEntityResponse(
      addressSpace: (map['addressSpace'] as int).input(),
      autoUpdateRequestedDay: map['autoUpdateRequestedDay'] == null ? null : (map['autoUpdateRequestedDay']! as int).input(),
      autoUpdateRequestedTime: map['autoUpdateRequestedTime'] == null ? null : (map['autoUpdateRequestedTime']! as String).input(),
      autoUpdateRequestedWeek: map['autoUpdateRequestedWeek'] == null ? null : (map['autoUpdateRequestedWeek']! as int).input(),
      autoUpdateRingType: map['autoUpdateRingType'] == null ? null : (map['autoUpdateRingType']! as String).input(),
      bgpAddressSpace: (map['bgpAddressSpace'] as int).input(),
      bgpCidrBlocksCount: (map['bgpCidrBlocksCount'] as int).input(),
      bgpCidrCsvLastUpdateTime: (map['bgpCidrCsvLastUpdateTime'] as String).input(),
      bgpFileBytesTruncated: (map['bgpFileBytesTruncated'] as int).input(),
      bgpLastReportedTime: (map['bgpLastReportedTime'] as String).input(),
      bgpNumberOfRecords: (map['bgpNumberOfRecords'] as int).input(),
      bgpNumberOfTimesUpdated: (map['bgpNumberOfTimesUpdated'] as int).input(),
      bgpReviewFeedback: (map['bgpReviewFeedback'] as String).input(),
      bgpReviewState: (map['bgpReviewState'] as String).input(),
      bgpReviewStateText: (map['bgpReviewStateText'] as String).input(),
      cacheNodeId: map['cacheNodeId'] == null ? null : (map['cacheNodeId']! as String).input(),
      cacheNodeName: map['cacheNodeName'] == null ? null : (map['cacheNodeName']! as String).input(),
      category: (map['category'] as String).input(),
      cidrCsv: map['cidrCsv'] == null ? null : ((map['cidrCsv']! as List).cast<String>()).input(),
      cidrCsvLastUpdateTime: (map['cidrCsvLastUpdateTime'] as String).input(),
      cidrSelectionType: map['cidrSelectionType'] == null ? null : (map['cidrSelectionType']! as int).input(),
      clientTenantId: (map['clientTenantId'] as String).input(),
      configurationState: (map['configurationState'] as String).input(),
      configurationStateText: (map['configurationStateText'] as String).input(),
      containerConfigurations: (map['containerConfigurations'] as String).input(),
      containerResyncTrigger: (map['containerResyncTrigger'] as int).input(),
      createAsyncOperationId: (map['createAsyncOperationId'] as String).input(),
      customerAsn: map['customerAsn'] == null ? null : (map['customerAsn']! as int).input(),
      customerId: (map['customerId'] as String).input(),
      customerIndex: map['customerIndex'] == null ? null : (map['customerIndex']! as String).input(),
      customerName: map['customerName'] == null ? null : (map['customerName']! as String).input(),
      deleteAsyncOperationId: (map['deleteAsyncOperationId'] as String).input(),
      fullyQualifiedDomainName: map['fullyQualifiedDomainName'] == null ? null : (map['fullyQualifiedDomainName']! as String).input(),
      fullyQualifiedResourceId: map['fullyQualifiedResourceId'] == null ? null : (map['fullyQualifiedResourceId']! as String).input(),
      imageUri: (map['imageUri'] as String).input(),
      ipAddress: map['ipAddress'] == null ? null : (map['ipAddress']! as String).input(),
      isEnabled: map['isEnabled'] == null ? null : (map['isEnabled']! as bool).input(),
      isEnterpriseManaged: map['isEnterpriseManaged'] == null ? null : (map['isEnterpriseManaged']! as bool).input(),
      isFrozen: (map['isFrozen'] as bool).input(),
      lastSyncWithAzureTimestamp: (map['lastSyncWithAzureTimestamp'] as String).input(),
      lastUpdatedTimestamp: (map['lastUpdatedTimestamp'] as String).input(),
      maxAllowableEgressInMbps: map['maxAllowableEgressInMbps'] == null ? null : (map['maxAllowableEgressInMbps']! as int).input(),
      maxAllowableProbability: (map['maxAllowableProbability'] as double).input(),
      releaseVersion: (map['releaseVersion'] as int).input(),
      reviewFeedback: (map['reviewFeedback'] as String).input(),
      reviewState: (map['reviewState'] as int).input(),
      reviewStateText: (map['reviewStateText'] as String).input(),
      shouldMigrate: map['shouldMigrate'] == null ? null : (map['shouldMigrate']! as bool).input(),
      synchWithAzureAttemptsCount: (map['synchWithAzureAttemptsCount'] as int).input(),
      workerConnections: (map['workerConnections'] as int).input(),
      workerConnectionsLastUpdatedDateTime: (map['workerConnectionsLastUpdatedDateTime'] as String).input(),
      xCid: (map['xCid'] as String).input(),
    );
  }
}

