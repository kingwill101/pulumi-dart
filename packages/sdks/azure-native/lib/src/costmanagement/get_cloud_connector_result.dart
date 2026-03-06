// ignore_for_file: unused_element, unnecessary_cast

import 'connector_collection_info_response.dart';

/// Result data returned by getCloudConnector.
class GetCloudConnectorResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Connector billing model
  final String? billingModel;
  /// Collection information
  final ConnectorCollectionInfoResponse collectionInfo;
  /// Connector definition creation datetime
  final String createdOn;
  /// Credentials authentication key (eg AWS ARN)
  final String? credentialsKey;
  /// Number of days remaining of trial
  final int daysTrialRemaining;
  /// Default ManagementGroupId
  final String? defaultManagementGroupId;
  /// Connector DisplayName
  final String? displayName;
  /// Associated ExternalBillingAccountId
  final String externalBillingAccountId;
  /// Connector id
  final String id;
  /// Connector kind (eg aws)
  final String? kind;
  /// Connector last modified datetime
  final String modifiedOn;
  /// Connector name
  final String name;
  /// The display name of the providerBillingAccountId as defined on the external provider
  final String providerBillingAccountDisplayName;
  /// Connector providerBillingAccountId, determined from credentials (eg AWS Consolidated account number)
  final String providerBillingAccountId;
  /// Identifying source report. (For AWS this is a CUR report name, defined with Daily and with Resources)
  final String? reportId;
  /// Connector status
  final String status;
  /// Billing SubscriptionId
  final String? subscriptionId;
  /// Connector type
  final String type;

  /// Creates a new [GetCloudConnectorResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [billingModel] Connector billing model
  /// [collectionInfo] Collection information
  /// [createdOn] Connector definition creation datetime
  /// [credentialsKey] Credentials authentication key (eg AWS ARN)
  /// [daysTrialRemaining] Number of days remaining of trial
  /// [defaultManagementGroupId] Default ManagementGroupId
  /// [displayName] Connector DisplayName
  /// [externalBillingAccountId] Associated ExternalBillingAccountId
  /// [id] Connector id
  /// [kind] Connector kind (eg aws)
  /// [modifiedOn] Connector last modified datetime
  /// [name] Connector name
  /// [providerBillingAccountDisplayName] The display name of the providerBillingAccountId as defined on the external provider
  /// [providerBillingAccountId] Connector providerBillingAccountId, determined from credentials (eg AWS Consolidated account number)
  /// [reportId] Identifying source report. (For AWS this is a CUR report name, defined with Daily and with Resources)
  /// [status] Connector status
  /// [subscriptionId] Billing SubscriptionId
  /// [type] Connector type
  const GetCloudConnectorResult({
    required this.azureApiVersion,
    this.billingModel,
    required this.collectionInfo,
    required this.createdOn,
    this.credentialsKey,
    required this.daysTrialRemaining,
    this.defaultManagementGroupId,
    this.displayName,
    required this.externalBillingAccountId,
    required this.id,
    this.kind,
    required this.modifiedOn,
    required this.name,
    required this.providerBillingAccountDisplayName,
    required this.providerBillingAccountId,
    this.reportId,
    required this.status,
    this.subscriptionId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'billingModel': ?billingModel,
      'collectionInfo': collectionInfo.toMap(),
      'createdOn': createdOn,
      'credentialsKey': ?credentialsKey,
      'daysTrialRemaining': daysTrialRemaining,
      'defaultManagementGroupId': ?defaultManagementGroupId,
      'displayName': ?displayName,
      'externalBillingAccountId': externalBillingAccountId,
      'id': id,
      'kind': ?kind,
      'modifiedOn': modifiedOn,
      'name': name,
      'providerBillingAccountDisplayName': providerBillingAccountDisplayName,
      'providerBillingAccountId': providerBillingAccountId,
      'reportId': ?reportId,
      'status': status,
      'subscriptionId': ?subscriptionId,
      'type': type,
    };
  }

  factory GetCloudConnectorResult.fromMap(Map<String, dynamic> map) {
    return GetCloudConnectorResult(
      azureApiVersion: map['azureApiVersion'] as String,
      billingModel: (() { final guardedValue = map['billingModel']; if (guardedValue == null) return null; return guardedValue as String; })(),
      collectionInfo: ConnectorCollectionInfoResponse.fromMap((map['collectionInfo']! as Map).cast<String, dynamic>()),
      createdOn: map['createdOn'] as String,
      credentialsKey: (() { final guardedValue = map['credentialsKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      daysTrialRemaining: map['daysTrialRemaining'] as int,
      defaultManagementGroupId: (() { final guardedValue = map['defaultManagementGroupId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      externalBillingAccountId: map['externalBillingAccountId'] as String,
      id: map['id'] as String,
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      modifiedOn: map['modifiedOn'] as String,
      name: map['name'] as String,
      providerBillingAccountDisplayName: map['providerBillingAccountDisplayName'] as String,
      providerBillingAccountId: map['providerBillingAccountId'] as String,
      reportId: (() { final guardedValue = map['reportId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: map['status'] as String,
      subscriptionId: (() { final guardedValue = map['subscriptionId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: map['type'] as String,
    );
  }
}

