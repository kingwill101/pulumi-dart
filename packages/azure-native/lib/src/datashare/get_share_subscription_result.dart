// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getShareSubscription.
class GetShareSubscriptionResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Time at which the share subscription was created.
  final String createdAt;
  /// The expiration date of the share subscription.
  final String? expirationDate;
  /// The resource id of the azure resource
  final String id;
  /// The invitation id.
  final String invitationId;
  /// Name of the azure resource
  final String name;
  /// Email of the provider who created the resource
  final String providerEmail;
  /// Name of the provider who created the resource
  final String providerName;
  /// Tenant name of the provider who created the resource
  final String providerTenantName;
  /// Provisioning state of the share subscription
  final String provisioningState;
  /// Description of share
  final String shareDescription;
  /// Kind of share
  final String shareKind;
  /// Name of the share
  final String shareName;
  /// Gets the current status of share subscription.
  final String shareSubscriptionStatus;
  /// Terms of a share
  final String shareTerms;
  /// Source share location.
  final String sourceShareLocation;
  /// System Data of the Azure resource.
  final SystemDataResponse systemData;
  /// Type of the azure resource
  final String type;
  /// Email of the user who created the resource
  final String userEmail;
  /// Name of the user who created the resource
  final String userName;

  /// Creates a new [GetShareSubscriptionResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [createdAt] Time at which the share subscription was created.
  /// [expirationDate] The expiration date of the share subscription.
  /// [id] The resource id of the azure resource
  /// [invitationId] The invitation id.
  /// [name] Name of the azure resource
  /// [providerEmail] Email of the provider who created the resource
  /// [providerName] Name of the provider who created the resource
  /// [providerTenantName] Tenant name of the provider who created the resource
  /// [provisioningState] Provisioning state of the share subscription
  /// [shareDescription] Description of share
  /// [shareKind] Kind of share
  /// [shareName] Name of the share
  /// [shareSubscriptionStatus] Gets the current status of share subscription.
  /// [shareTerms] Terms of a share
  /// [sourceShareLocation] Source share location.
  /// [systemData] System Data of the Azure resource.
  /// [type] Type of the azure resource
  /// [userEmail] Email of the user who created the resource
  /// [userName] Name of the user who created the resource
  GetShareSubscriptionResult({
    required this.azureApiVersion,
    required this.createdAt,
    this.expirationDate,
    required this.id,
    required this.invitationId,
    required this.name,
    required this.providerEmail,
    required this.providerName,
    required this.providerTenantName,
    required this.provisioningState,
    required this.shareDescription,
    required this.shareKind,
    required this.shareName,
    required this.shareSubscriptionStatus,
    required this.shareTerms,
    required this.sourceShareLocation,
    required this.systemData,
    required this.type,
    required this.userEmail,
    required this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'createdAt': createdAt,
      'expirationDate': ?expirationDate,
      'id': id,
      'invitationId': invitationId,
      'name': name,
      'providerEmail': providerEmail,
      'providerName': providerName,
      'providerTenantName': providerTenantName,
      'provisioningState': provisioningState,
      'shareDescription': shareDescription,
      'shareKind': shareKind,
      'shareName': shareName,
      'shareSubscriptionStatus': shareSubscriptionStatus,
      'shareTerms': shareTerms,
      'sourceShareLocation': sourceShareLocation,
      'systemData': systemData.toMap(),
      'type': type,
      'userEmail': userEmail,
      'userName': userName,
    };
  }

  factory GetShareSubscriptionResult.fromMap(Map<String, dynamic> map) {
    return GetShareSubscriptionResult(
      azureApiVersion: map['azureApiVersion'] as String,
      createdAt: map['createdAt'] as String,
      expirationDate: map['expirationDate'] == null ? null : map['expirationDate'] as String,
      id: map['id'] as String,
      invitationId: map['invitationId'] as String,
      name: map['name'] as String,
      providerEmail: map['providerEmail'] as String,
      providerName: map['providerName'] as String,
      providerTenantName: map['providerTenantName'] as String,
      provisioningState: map['provisioningState'] as String,
      shareDescription: map['shareDescription'] as String,
      shareKind: map['shareKind'] as String,
      shareName: map['shareName'] as String,
      shareSubscriptionStatus: map['shareSubscriptionStatus'] as String,
      shareTerms: map['shareTerms'] as String,
      sourceShareLocation: map['sourceShareLocation'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      userEmail: map['userEmail'] as String,
      userName: map['userName'] as String,
    );
  }
}

