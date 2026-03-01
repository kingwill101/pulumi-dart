// ignore_for_file: unused_element, unnecessary_cast


/// Model representing Cache Node for ConnectedCache resource
class CacheNodeEntityResponse {
  /// Cache node resource total addressable space defined by the Cidr Csv block.
  final int addressSpace;
  /// Customer requested day of week for mcc install of auto update cycle. 0 is default no selection. 1-7 are days of week, 1 is Sunday, 2 is Monday, etc.
  final int? autoUpdateRequestedDay;
  /// Customer requested time of the day for mcc install of auto update cycle, should be hh:mm
  final String? autoUpdateRequestedTime;
  /// Customer requested week of month for mcc install of auto update cycle. 0 is default no selection. 1-5 are valid weeks of month, 1 is first week, 2 is second week, etc.
  final int? autoUpdateRequestedWeek;
  /// Auto Update Ring Type which is slow or fast etc.
  final String? autoUpdateRingType;
  /// Cache node resource total addressable space defined by Bgp and Cidr Csv blocks.
  final int bgpAddressSpace;
  /// Cache node resource Bgp block count.
  final int bgpCidrBlocksCount;
  /// Cache node resource last Bgp Cidr Csv update timestamp
  final String bgpCidrCsvLastUpdateTime;
  /// Cache node resource bytes truncated from Bgp output file.
  final int bgpFileBytesTruncated;
  /// Cache node resource last Bgp report timestamp.
  final String bgpLastReportedTime;
  /// Cache node resource Bgp record count.
  final int bgpNumberOfRecords;
  /// Cache node resource Bgp update count.
  final int bgpNumberOfTimesUpdated;
  /// Cache node resource Bgp review feedback text.
  final String bgpReviewFeedback;
  /// Cache node resource Bgp review state string text.
  final String bgpReviewState;
  /// Cache node resource Bgp review state string text in detail.
  final String bgpReviewStateText;
  /// Cache node resource identifier of the cache node
  final String? cacheNodeId;
  /// Cache node resource name.
  final String? cacheNodeName;
  /// Cache node resource category.
  final String category;
  /// Cache node resource comma separated values of Cidrs.
  final List<String>? cidrCsv;
  /// Cache node resource last Cidr Csv update timestamp
  final String cidrCsvLastUpdateTime;
  /// Cache node resource current Cidr range precedence selection type.
  final int? cidrSelectionType;
  /// Cache node resource customer resource client tenant Id of subscription.
  final String clientTenantId;
  /// Cache node resource configuration state.
  final String configurationState;
  /// Cache node resource configuration state text.
  final String configurationStateText;
  /// Cache node resource container configuration details.
  final String containerConfigurations;
  /// Cache node resource Mcc container configuration details re-sync trigger.
  final int containerResyncTrigger;
  /// Cache node resource create async operation Id.
  final String createAsyncOperationId;
  /// Cache node resource customer resource Asn (autonomous system number)
  final int? customerAsn;
  /// Cache node resource customer resource GUID Id.
  final String customerId;
  /// Cache node resource customer index as string.
  final String? customerIndex;
  /// Cache node resource customer resource name.
  final String? customerName;
  /// Cache node resource deletion async operation Id.
  final String deleteAsyncOperationId;
  /// FQDN(fully qualified domain name) value of the mcc cache node
  final String? fullyQualifiedDomainName;
  /// Cache node resource Azure fully qualified resource Id.
  final String? fullyQualifiedResourceId;
  /// Cache node resource Mcc Container Id Uri.
  final String imageUri;
  /// Cache node resource Ip address.
  final String? ipAddress;
  /// Cache node resource flag for indicating if cache node is enabled.
  final bool? isEnabled;
  /// Cache node resource flag for determining if managed by enterprise as boolean.
  final bool? isEnterpriseManaged;
  /// Cache node resource flag for indicating the cache node resource is frozen (not selectable, not editable in UI).
  final bool isFrozen;
  /// Cache node resource last sync timestamp.
  final String lastSyncWithAzureTimestamp;
  /// Cache node resource last backend updated timestamp.
  final String lastUpdatedTimestamp;
  /// Cache node resource maximum allowed egress in Mbps.
  final int? maxAllowableEgressInMbps;
  /// Cache node resource maximum allowed probability of egress.
  final double maxAllowableProbability;
  /// Cache node resource release version.
  final int releaseVersion;
  /// Cache node resource review feedback text.
  final String reviewFeedback;
  /// Cache node resource review process state as integer
  final int reviewState;
  /// Cache node resource review state text.
  final String reviewStateText;
  /// Cache node resource flag for determining if customer will be migrated.
  final bool? shouldMigrate;
  /// Cache node resource attempts to sync with Azure.
  final int synchWithAzureAttemptsCount;
  /// Cache node resource Mcc container deployment worker connection count.
  final int workerConnections;
  /// Cache node resource last updated Mcc container deployment worker connection count timestamp.
  final String workerConnectionsLastUpdatedDateTime;
  /// Cache node resource Azure XCid.
  final String xCid;

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
      addressSpace: map['addressSpace'] as int,
      autoUpdateRequestedDay: map['autoUpdateRequestedDay'] == null ? null : map['autoUpdateRequestedDay'] as int,
      autoUpdateRequestedTime: map['autoUpdateRequestedTime'] == null ? null : map['autoUpdateRequestedTime'] as String,
      autoUpdateRequestedWeek: map['autoUpdateRequestedWeek'] == null ? null : map['autoUpdateRequestedWeek'] as int,
      autoUpdateRingType: map['autoUpdateRingType'] == null ? null : map['autoUpdateRingType'] as String,
      bgpAddressSpace: map['bgpAddressSpace'] as int,
      bgpCidrBlocksCount: map['bgpCidrBlocksCount'] as int,
      bgpCidrCsvLastUpdateTime: map['bgpCidrCsvLastUpdateTime'] as String,
      bgpFileBytesTruncated: map['bgpFileBytesTruncated'] as int,
      bgpLastReportedTime: map['bgpLastReportedTime'] as String,
      bgpNumberOfRecords: map['bgpNumberOfRecords'] as int,
      bgpNumberOfTimesUpdated: map['bgpNumberOfTimesUpdated'] as int,
      bgpReviewFeedback: map['bgpReviewFeedback'] as String,
      bgpReviewState: map['bgpReviewState'] as String,
      bgpReviewStateText: map['bgpReviewStateText'] as String,
      cacheNodeId: map['cacheNodeId'] == null ? null : map['cacheNodeId'] as String,
      cacheNodeName: map['cacheNodeName'] == null ? null : map['cacheNodeName'] as String,
      category: map['category'] as String,
      cidrCsv: map['cidrCsv'] == null ? null : (map['cidrCsv'] as List).cast<String>(),
      cidrCsvLastUpdateTime: map['cidrCsvLastUpdateTime'] as String,
      cidrSelectionType: map['cidrSelectionType'] == null ? null : map['cidrSelectionType'] as int,
      clientTenantId: map['clientTenantId'] as String,
      configurationState: map['configurationState'] as String,
      configurationStateText: map['configurationStateText'] as String,
      containerConfigurations: map['containerConfigurations'] as String,
      containerResyncTrigger: map['containerResyncTrigger'] as int,
      createAsyncOperationId: map['createAsyncOperationId'] as String,
      customerAsn: map['customerAsn'] == null ? null : map['customerAsn'] as int,
      customerId: map['customerId'] as String,
      customerIndex: map['customerIndex'] == null ? null : map['customerIndex'] as String,
      customerName: map['customerName'] == null ? null : map['customerName'] as String,
      deleteAsyncOperationId: map['deleteAsyncOperationId'] as String,
      fullyQualifiedDomainName: map['fullyQualifiedDomainName'] == null ? null : map['fullyQualifiedDomainName'] as String,
      fullyQualifiedResourceId: map['fullyQualifiedResourceId'] == null ? null : map['fullyQualifiedResourceId'] as String,
      imageUri: map['imageUri'] as String,
      ipAddress: map['ipAddress'] == null ? null : map['ipAddress'] as String,
      isEnabled: map['isEnabled'] == null ? null : map['isEnabled'] as bool,
      isEnterpriseManaged: map['isEnterpriseManaged'] == null ? null : map['isEnterpriseManaged'] as bool,
      isFrozen: map['isFrozen'] as bool,
      lastSyncWithAzureTimestamp: map['lastSyncWithAzureTimestamp'] as String,
      lastUpdatedTimestamp: map['lastUpdatedTimestamp'] as String,
      maxAllowableEgressInMbps: map['maxAllowableEgressInMbps'] == null ? null : map['maxAllowableEgressInMbps'] as int,
      maxAllowableProbability: map['maxAllowableProbability'] as double,
      releaseVersion: map['releaseVersion'] as int,
      reviewFeedback: map['reviewFeedback'] as String,
      reviewState: map['reviewState'] as int,
      reviewStateText: map['reviewStateText'] as String,
      shouldMigrate: map['shouldMigrate'] == null ? null : map['shouldMigrate'] as bool,
      synchWithAzureAttemptsCount: map['synchWithAzureAttemptsCount'] as int,
      workerConnections: map['workerConnections'] as int,
      workerConnectionsLastUpdatedDateTime: map['workerConnectionsLastUpdatedDateTime'] as String,
      xCid: map['xCid'] as String,
    );
  }
}

