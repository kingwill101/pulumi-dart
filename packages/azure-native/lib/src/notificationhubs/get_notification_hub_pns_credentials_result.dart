// ignore_for_file: unused_element, unnecessary_cast

import 'adm_credential_response.dart';
import 'apns_credential_response.dart';
import 'baidu_credential_response.dart';
import 'browser_credential_response.dart';
import 'fcm_v1_credential_response.dart';
import 'gcm_credential_response.dart';
import 'mpns_credential_response.dart';
import 'system_data_response.dart';
import 'wns_credential_response.dart';
import 'xiaomi_credential_response.dart';

/// Result data returned by getNotificationHubPnsCredentials.
class GetNotificationHubPnsCredentialsResult {
  /// Description of a NotificationHub AdmCredential.
  final AdmCredentialResponse? admCredential;
  /// Description of a NotificationHub ApnsCredential.
  final ApnsCredentialResponse? apnsCredential;
  /// Description of a NotificationHub BaiduCredential.
  final BaiduCredentialResponse? baiduCredential;
  /// Description of a NotificationHub BrowserCredential.
  final BrowserCredentialResponse? browserCredential;
  /// Description of a NotificationHub FcmV1Credential.
  final FcmV1CredentialResponse? fcmV1Credential;
  /// Description of a NotificationHub GcmCredential.
  final GcmCredentialResponse? gcmCredential;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// Deprecated - only for compatibility.
  final String? location;
  /// Description of a NotificationHub MpnsCredential.
  final MpnsCredentialResponse? mpnsCredential;
  /// The name of the resource
  final String name;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Deprecated - only for compatibility.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// Description of a NotificationHub WnsCredential.
  final WnsCredentialResponse? wnsCredential;
  /// Description of a NotificationHub XiaomiCredential.
  final XiaomiCredentialResponse? xiaomiCredential;

  /// Creates a new [GetNotificationHubPnsCredentialsResult].
  /// [admCredential] Description of a NotificationHub AdmCredential.
  /// [apnsCredential] Description of a NotificationHub ApnsCredential.
  /// [baiduCredential] Description of a NotificationHub BaiduCredential.
  /// [browserCredential] Description of a NotificationHub BrowserCredential.
  /// [fcmV1Credential] Description of a NotificationHub FcmV1Credential.
  /// [gcmCredential] Description of a NotificationHub GcmCredential.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [location] Deprecated - only for compatibility.
  /// [mpnsCredential] Description of a NotificationHub MpnsCredential.
  /// [name] The name of the resource
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Deprecated - only for compatibility.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [wnsCredential] Description of a NotificationHub WnsCredential.
  /// [xiaomiCredential] Description of a NotificationHub XiaomiCredential.
  GetNotificationHubPnsCredentialsResult({
    this.admCredential,
    this.apnsCredential,
    this.baiduCredential,
    this.browserCredential,
    this.fcmV1Credential,
    this.gcmCredential,
    required this.id,
    this.location,
    this.mpnsCredential,
    required this.name,
    required this.systemData,
    this.tags,
    required this.type,
    this.wnsCredential,
    this.xiaomiCredential,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'admCredential': ?admCredential == null ? null : admCredential!.toMap(),
      'apnsCredential': ?apnsCredential == null ? null : apnsCredential!.toMap(),
      'baiduCredential': ?baiduCredential == null ? null : baiduCredential!.toMap(),
      'browserCredential': ?browserCredential == null ? null : browserCredential!.toMap(),
      'fcmV1Credential': ?fcmV1Credential == null ? null : fcmV1Credential!.toMap(),
      'gcmCredential': ?gcmCredential == null ? null : gcmCredential!.toMap(),
      'id': id,
      'location': ?location,
      'mpnsCredential': ?mpnsCredential == null ? null : mpnsCredential!.toMap(),
      'name': name,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'wnsCredential': ?wnsCredential == null ? null : wnsCredential!.toMap(),
      'xiaomiCredential': ?xiaomiCredential == null ? null : xiaomiCredential!.toMap(),
    };
  }

  factory GetNotificationHubPnsCredentialsResult.fromMap(Map<String, dynamic> map) {
    return GetNotificationHubPnsCredentialsResult(
      admCredential: map['admCredential'] == null ? null : AdmCredentialResponse.fromMap((map['admCredential'] as Map).cast<String, dynamic>()),
      apnsCredential: map['apnsCredential'] == null ? null : ApnsCredentialResponse.fromMap((map['apnsCredential'] as Map).cast<String, dynamic>()),
      baiduCredential: map['baiduCredential'] == null ? null : BaiduCredentialResponse.fromMap((map['baiduCredential'] as Map).cast<String, dynamic>()),
      browserCredential: map['browserCredential'] == null ? null : BrowserCredentialResponse.fromMap((map['browserCredential'] as Map).cast<String, dynamic>()),
      fcmV1Credential: map['fcmV1Credential'] == null ? null : FcmV1CredentialResponse.fromMap((map['fcmV1Credential'] as Map).cast<String, dynamic>()),
      gcmCredential: map['gcmCredential'] == null ? null : GcmCredentialResponse.fromMap((map['gcmCredential'] as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      mpnsCredential: map['mpnsCredential'] == null ? null : MpnsCredentialResponse.fromMap((map['mpnsCredential'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
      wnsCredential: map['wnsCredential'] == null ? null : WnsCredentialResponse.fromMap((map['wnsCredential'] as Map).cast<String, dynamic>()),
      xiaomiCredential: map['xiaomiCredential'] == null ? null : XiaomiCredentialResponse.fromMap((map['xiaomiCredential'] as Map).cast<String, dynamic>()),
    );
  }
}

