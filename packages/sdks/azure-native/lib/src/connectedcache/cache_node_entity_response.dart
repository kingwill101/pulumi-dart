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
      addressSpace: pulumi.Input.fromValue(map['addressSpace'] as int),
      autoUpdateRequestedDay: (() { final guardedValue = map['autoUpdateRequestedDay']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      autoUpdateRequestedTime: (() { final guardedValue = map['autoUpdateRequestedTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      autoUpdateRequestedWeek: (() { final guardedValue = map['autoUpdateRequestedWeek']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      autoUpdateRingType: (() { final guardedValue = map['autoUpdateRingType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bgpAddressSpace: pulumi.Input.fromValue(map['bgpAddressSpace'] as int),
      bgpCidrBlocksCount: pulumi.Input.fromValue(map['bgpCidrBlocksCount'] as int),
      bgpCidrCsvLastUpdateTime: pulumi.Input.fromValue(map['bgpCidrCsvLastUpdateTime'] as String),
      bgpFileBytesTruncated: pulumi.Input.fromValue(map['bgpFileBytesTruncated'] as int),
      bgpLastReportedTime: pulumi.Input.fromValue(map['bgpLastReportedTime'] as String),
      bgpNumberOfRecords: pulumi.Input.fromValue(map['bgpNumberOfRecords'] as int),
      bgpNumberOfTimesUpdated: pulumi.Input.fromValue(map['bgpNumberOfTimesUpdated'] as int),
      bgpReviewFeedback: pulumi.Input.fromValue(map['bgpReviewFeedback'] as String),
      bgpReviewState: pulumi.Input.fromValue(map['bgpReviewState'] as String),
      bgpReviewStateText: pulumi.Input.fromValue(map['bgpReviewStateText'] as String),
      cacheNodeId: (() { final guardedValue = map['cacheNodeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cacheNodeName: (() { final guardedValue = map['cacheNodeName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      category: pulumi.Input.fromValue(map['category'] as String),
      cidrCsv: (() { final guardedValue = map['cidrCsv']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      cidrCsvLastUpdateTime: pulumi.Input.fromValue(map['cidrCsvLastUpdateTime'] as String),
      cidrSelectionType: (() { final guardedValue = map['cidrSelectionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      clientTenantId: pulumi.Input.fromValue(map['clientTenantId'] as String),
      configurationState: pulumi.Input.fromValue(map['configurationState'] as String),
      configurationStateText: pulumi.Input.fromValue(map['configurationStateText'] as String),
      containerConfigurations: pulumi.Input.fromValue(map['containerConfigurations'] as String),
      containerResyncTrigger: pulumi.Input.fromValue(map['containerResyncTrigger'] as int),
      createAsyncOperationId: pulumi.Input.fromValue(map['createAsyncOperationId'] as String),
      customerAsn: (() { final guardedValue = map['customerAsn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      customerId: pulumi.Input.fromValue(map['customerId'] as String),
      customerIndex: (() { final guardedValue = map['customerIndex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customerName: (() { final guardedValue = map['customerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deleteAsyncOperationId: pulumi.Input.fromValue(map['deleteAsyncOperationId'] as String),
      fullyQualifiedDomainName: (() { final guardedValue = map['fullyQualifiedDomainName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fullyQualifiedResourceId: (() { final guardedValue = map['fullyQualifiedResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      imageUri: pulumi.Input.fromValue(map['imageUri'] as String),
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isEnabled: (() { final guardedValue = map['isEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isEnterpriseManaged: (() { final guardedValue = map['isEnterpriseManaged']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isFrozen: pulumi.Input.fromValue(map['isFrozen'] as bool),
      lastSyncWithAzureTimestamp: pulumi.Input.fromValue(map['lastSyncWithAzureTimestamp'] as String),
      lastUpdatedTimestamp: pulumi.Input.fromValue(map['lastUpdatedTimestamp'] as String),
      maxAllowableEgressInMbps: (() { final guardedValue = map['maxAllowableEgressInMbps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maxAllowableProbability: pulumi.Input.fromValue(map['maxAllowableProbability'] as double),
      releaseVersion: pulumi.Input.fromValue(map['releaseVersion'] as int),
      reviewFeedback: pulumi.Input.fromValue(map['reviewFeedback'] as String),
      reviewState: pulumi.Input.fromValue(map['reviewState'] as int),
      reviewStateText: pulumi.Input.fromValue(map['reviewStateText'] as String),
      shouldMigrate: (() { final guardedValue = map['shouldMigrate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      synchWithAzureAttemptsCount: pulumi.Input.fromValue(map['synchWithAzureAttemptsCount'] as int),
      workerConnections: pulumi.Input.fromValue(map['workerConnections'] as int),
      workerConnectionsLastUpdatedDateTime: pulumi.Input.fromValue(map['workerConnectionsLastUpdatedDateTime'] as String),
      xCid: pulumi.Input.fromValue(map['xCid'] as String),
    );
  }
}

