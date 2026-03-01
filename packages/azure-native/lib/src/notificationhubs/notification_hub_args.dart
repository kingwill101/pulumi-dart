// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'adm_credential.dart';
import 'apns_credential.dart';
import 'baidu_credential.dart';
import 'browser_credential.dart';
import 'fcm_v1_credential.dart';
import 'gcm_credential.dart';
import 'mpns_credential.dart';
import 'sku.dart';
import 'wns_credential.dart';
import 'xiaomi_credential.dart';

/// {@template pulumi_notificationhubs_notification_hub_args_doc}
/// The set of arguments for NotificationHub.
/// {@endtemplate}
/// {@macro pulumi_notificationhubs_notification_hub_args_doc}
class NotificationHubArgs {
  /// Description of a NotificationHub AdmCredential.
  final pulumi.Input<AdmCredential>? admCredential;
  /// Description of a NotificationHub ApnsCredential.
  final pulumi.Input<ApnsCredential>? apnsCredential;
  /// Description of a NotificationHub BaiduCredential.
  final pulumi.Input<BaiduCredential>? baiduCredential;
  /// Description of a NotificationHub BrowserCredential.
  final pulumi.Input<BrowserCredential>? browserCredential;
  /// Description of a NotificationHub FcmV1Credential.
  final pulumi.Input<FcmV1Credential>? fcmV1Credential;
  /// Description of a NotificationHub GcmCredential.
  final pulumi.Input<GcmCredential>? gcmCredential;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Description of a NotificationHub MpnsCredential.
  final pulumi.Input<MpnsCredential>? mpnsCredential;
  /// Gets or sets the NotificationHub name.
  final pulumi.Input<String>? name;
  /// Namespace name
  final pulumi.Input<String> namespaceName;
  /// Notification Hub name
  final pulumi.Input<String>? notificationHubName;
  /// Gets or sets the RegistrationTtl of the created NotificationHub
  final pulumi.Input<String>? registrationTtl;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The Sku description for a namespace
  final pulumi.Input<Sku>? sku;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Description of a NotificationHub WnsCredential.
  final pulumi.Input<WnsCredential>? wnsCredential;
  /// Description of a NotificationHub XiaomiCredential.
  final pulumi.Input<XiaomiCredential>? xiaomiCredential;

  /// Creates a new [NotificationHubArgs].
  /// [admCredential] Description of a NotificationHub AdmCredential.
  /// [apnsCredential] Description of a NotificationHub ApnsCredential.
  /// [baiduCredential] Description of a NotificationHub BaiduCredential.
  /// [browserCredential] Description of a NotificationHub BrowserCredential.
  /// [fcmV1Credential] Description of a NotificationHub FcmV1Credential.
  /// [gcmCredential] Description of a NotificationHub GcmCredential.
  /// [location] The geo-location where the resource lives
  /// [mpnsCredential] Description of a NotificationHub MpnsCredential.
  /// [name] Gets or sets the NotificationHub name.
  /// [namespaceName] Namespace name
  /// [notificationHubName] Notification Hub name
  /// [registrationTtl] Gets or sets the RegistrationTtl of the created NotificationHub
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sku] The Sku description for a namespace
  /// [tags] Resource tags.
  /// [wnsCredential] Description of a NotificationHub WnsCredential.
  /// [xiaomiCredential] Description of a NotificationHub XiaomiCredential.
  NotificationHubArgs({
    AdmCredential? admCredential,
    ApnsCredential? apnsCredential,
    BaiduCredential? baiduCredential,
    BrowserCredential? browserCredential,
    FcmV1Credential? fcmV1Credential,
    GcmCredential? gcmCredential,
    String? location,
    MpnsCredential? mpnsCredential,
    String? name,
    required String namespaceName,
    String? notificationHubName,
    String? registrationTtl,
    required String resourceGroupName,
    Sku? sku,
    Map<String, String>? tags,
    WnsCredential? wnsCredential,
    XiaomiCredential? xiaomiCredential,
  }) :
      admCredential = pulumi.Input.asOptionalInput<AdmCredential>(admCredential),
      apnsCredential = pulumi.Input.asOptionalInput<ApnsCredential>(apnsCredential),
      baiduCredential = pulumi.Input.asOptionalInput<BaiduCredential>(baiduCredential),
      browserCredential = pulumi.Input.asOptionalInput<BrowserCredential>(browserCredential),
      fcmV1Credential = pulumi.Input.asOptionalInput<FcmV1Credential>(fcmV1Credential),
      gcmCredential = pulumi.Input.asOptionalInput<GcmCredential>(gcmCredential),
      location = pulumi.Input.asOptionalInput<String>(location),
      mpnsCredential = pulumi.Input.asOptionalInput<MpnsCredential>(mpnsCredential),
      name = pulumi.Input.asOptionalInput<String>(name),
      namespaceName = pulumi.Input.asInput<String>(namespaceName),
      notificationHubName = pulumi.Input.asOptionalInput<String>(notificationHubName),
      registrationTtl = pulumi.Input.asOptionalInput<String>(registrationTtl),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sku = pulumi.Input.asOptionalInput<Sku>(sku),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      wnsCredential = pulumi.Input.asOptionalInput<WnsCredential>(wnsCredential),
      xiaomiCredential = pulumi.Input.asOptionalInput<XiaomiCredential>(xiaomiCredential);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'admCredential': ?pulumi.Input.mapOptionalInputValue<AdmCredential, Map<String, dynamic>>(admCredential, (value) => value.toMap()),
      'apnsCredential': ?pulumi.Input.mapOptionalInputValue<ApnsCredential, Map<String, dynamic>>(apnsCredential, (value) => value.toMap()),
      'baiduCredential': ?pulumi.Input.mapOptionalInputValue<BaiduCredential, Map<String, dynamic>>(baiduCredential, (value) => value.toMap()),
      'browserCredential': ?pulumi.Input.mapOptionalInputValue<BrowserCredential, Map<String, dynamic>>(browserCredential, (value) => value.toMap()),
      'fcmV1Credential': ?pulumi.Input.mapOptionalInputValue<FcmV1Credential, Map<String, dynamic>>(fcmV1Credential, (value) => value.toMap()),
      'gcmCredential': ?pulumi.Input.mapOptionalInputValue<GcmCredential, Map<String, dynamic>>(gcmCredential, (value) => value.toMap()),
      'location': ?location,
      'mpnsCredential': ?pulumi.Input.mapOptionalInputValue<MpnsCredential, Map<String, dynamic>>(mpnsCredential, (value) => value.toMap()),
      'name': ?name,
      'namespaceName': namespaceName,
      'notificationHubName': ?notificationHubName,
      'registrationTtl': ?registrationTtl,
      'resourceGroupName': resourceGroupName,
      'sku': ?pulumi.Input.mapOptionalInputValue<Sku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
      'wnsCredential': ?pulumi.Input.mapOptionalInputValue<WnsCredential, Map<String, dynamic>>(wnsCredential, (value) => value.toMap()),
      'xiaomiCredential': ?pulumi.Input.mapOptionalInputValue<XiaomiCredential, Map<String, dynamic>>(xiaomiCredential, (value) => value.toMap()),
    };
  }

  factory NotificationHubArgs.fromMap(Map<String, dynamic> map) {
    return NotificationHubArgs(
      admCredential: map['admCredential'] == null ? null : AdmCredential.fromMap((map['admCredential'] as Map).cast<String, dynamic>()),
      apnsCredential: map['apnsCredential'] == null ? null : ApnsCredential.fromMap((map['apnsCredential'] as Map).cast<String, dynamic>()),
      baiduCredential: map['baiduCredential'] == null ? null : BaiduCredential.fromMap((map['baiduCredential'] as Map).cast<String, dynamic>()),
      browserCredential: map['browserCredential'] == null ? null : BrowserCredential.fromMap((map['browserCredential'] as Map).cast<String, dynamic>()),
      fcmV1Credential: map['fcmV1Credential'] == null ? null : FcmV1Credential.fromMap((map['fcmV1Credential'] as Map).cast<String, dynamic>()),
      gcmCredential: map['gcmCredential'] == null ? null : GcmCredential.fromMap((map['gcmCredential'] as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location'] as String,
      mpnsCredential: map['mpnsCredential'] == null ? null : MpnsCredential.fromMap((map['mpnsCredential'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      namespaceName: map['namespaceName'] as String,
      notificationHubName: map['notificationHubName'] == null ? null : map['notificationHubName'] as String,
      registrationTtl: map['registrationTtl'] == null ? null : map['registrationTtl'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      sku: map['sku'] == null ? null : Sku.fromMap((map['sku'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      wnsCredential: map['wnsCredential'] == null ? null : WnsCredential.fromMap((map['wnsCredential'] as Map).cast<String, dynamic>()),
      xiaomiCredential: map['xiaomiCredential'] == null ? null : XiaomiCredential.fromMap((map['xiaomiCredential'] as Map).cast<String, dynamic>()),
    );
  }
}

