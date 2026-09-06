// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getShareSubscription.
class GetShareSubscriptionResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Time at which the share subscription was created.
  final String? createdAt;
  /// The expiration date of the share subscription.
  final String? expirationDate;
  /// The resource id of the azure resource
  final String? id;
  /// The invitation id.
  final String? invitationId;
  /// Name of the azure resource
  final String? name;
  /// Email of the provider who created the resource
  final String? providerEmail;
  /// Name of the provider who created the resource
  final String? providerName;
  /// Tenant name of the provider who created the resource
  final String? providerTenantName;
  /// Provisioning state of the share subscription
  final String? provisioningState;
  /// Description of share
  final String? shareDescription;
  /// Kind of share
  final String? shareKind;
  /// Name of the share
  final String? shareName;
  /// Gets the current status of share subscription.
  final String? shareSubscriptionStatus;
  /// Terms of a share
  final String? shareTerms;
  /// Source share location.
  final String? sourceShareLocation;
  /// System Data of the Azure resource.
  final SystemDataResponse? systemData;
  /// Type of the azure resource
  final String? type;
  /// Email of the user who created the resource
  final String? userEmail;
  /// Name of the user who created the resource
  final String? userName;

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
  const GetShareSubscriptionResult({
    this.azureApiVersion,
    this.createdAt,
    this.expirationDate,
    this.id,
    this.invitationId,
    this.name,
    this.providerEmail,
    this.providerName,
    this.providerTenantName,
    this.provisioningState,
    this.shareDescription,
    this.shareKind,
    this.shareName,
    this.shareSubscriptionStatus,
    this.shareTerms,
    this.sourceShareLocation,
    this.systemData,
    this.type,
    this.userEmail,
    this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'createdAt': ?createdAt,
      'expirationDate': ?expirationDate,
      'id': ?id,
      'invitationId': ?invitationId,
      'name': ?name,
      'providerEmail': ?providerEmail,
      'providerName': ?providerName,
      'providerTenantName': ?providerTenantName,
      'provisioningState': ?provisioningState,
      'shareDescription': ?shareDescription,
      'shareKind': ?shareKind,
      'shareName': ?shareName,
      'shareSubscriptionStatus': ?shareSubscriptionStatus,
      'shareTerms': ?shareTerms,
      'sourceShareLocation': ?sourceShareLocation,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
      'userEmail': ?userEmail,
      'userName': ?userName,
    };
  }

  factory GetShareSubscriptionResult.fromMap(Map<String, dynamic> map) {
    return GetShareSubscriptionResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      expirationDate: (() { final guardedValue = map['expirationDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      invitationId: (() { final guardedValue = map['invitationId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      providerEmail: (() { final guardedValue = map['providerEmail']; if (guardedValue == null) return null; return guardedValue as String; })(),
      providerName: (() { final guardedValue = map['providerName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      providerTenantName: (() { final guardedValue = map['providerTenantName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      shareDescription: (() { final guardedValue = map['shareDescription']; if (guardedValue == null) return null; return guardedValue as String; })(),
      shareKind: (() { final guardedValue = map['shareKind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      shareName: (() { final guardedValue = map['shareName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      shareSubscriptionStatus: (() { final guardedValue = map['shareSubscriptionStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      shareTerms: (() { final guardedValue = map['shareTerms']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sourceShareLocation: (() { final guardedValue = map['sourceShareLocation']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      userEmail: (() { final guardedValue = map['userEmail']; if (guardedValue == null) return null; return guardedValue as String; })(),
      userName: (() { final guardedValue = map['userName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
