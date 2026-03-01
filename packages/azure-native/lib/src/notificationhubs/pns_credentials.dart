// ignore_for_file: unused_element, unnecessary_cast

import 'adm_credential.dart';
import 'apns_credential.dart';
import 'baidu_credential.dart';
import 'browser_credential.dart';
import 'fcm_v1_credential.dart';
import 'gcm_credential.dart';
import 'mpns_credential.dart';
import 'wns_credential.dart';
import 'xiaomi_credential.dart';

/// Collection of Notification Hub or Notification Hub Namespace PNS credentials.
class PnsCredentials {
  /// Description of a NotificationHub AdmCredential.
  final AdmCredential? admCredential;
  /// Description of a NotificationHub ApnsCredential.
  final ApnsCredential? apnsCredential;
  /// Description of a NotificationHub BaiduCredential.
  final BaiduCredential? baiduCredential;
  /// Description of a NotificationHub BrowserCredential.
  final BrowserCredential? browserCredential;
  /// Description of a NotificationHub FcmV1Credential.
  final FcmV1Credential? fcmV1Credential;
  /// Description of a NotificationHub GcmCredential.
  final GcmCredential? gcmCredential;
  /// Description of a NotificationHub MpnsCredential.
  final MpnsCredential? mpnsCredential;
  /// Description of a NotificationHub WnsCredential.
  final WnsCredential? wnsCredential;
  /// Description of a NotificationHub XiaomiCredential.
  final XiaomiCredential? xiaomiCredential;

  /// Creates a new [PnsCredentials].
  /// [admCredential] Description of a NotificationHub AdmCredential.
  /// [apnsCredential] Description of a NotificationHub ApnsCredential.
  /// [baiduCredential] Description of a NotificationHub BaiduCredential.
  /// [browserCredential] Description of a NotificationHub BrowserCredential.
  /// [fcmV1Credential] Description of a NotificationHub FcmV1Credential.
  /// [gcmCredential] Description of a NotificationHub GcmCredential.
  /// [mpnsCredential] Description of a NotificationHub MpnsCredential.
  /// [wnsCredential] Description of a NotificationHub WnsCredential.
  /// [xiaomiCredential] Description of a NotificationHub XiaomiCredential.
  PnsCredentials({
    this.admCredential,
    this.apnsCredential,
    this.baiduCredential,
    this.browserCredential,
    this.fcmV1Credential,
    this.gcmCredential,
    this.mpnsCredential,
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
      'mpnsCredential': ?mpnsCredential == null ? null : mpnsCredential!.toMap(),
      'wnsCredential': ?wnsCredential == null ? null : wnsCredential!.toMap(),
      'xiaomiCredential': ?xiaomiCredential == null ? null : xiaomiCredential!.toMap(),
    };
  }

  factory PnsCredentials.fromMap(Map<String, dynamic> map) {
    return PnsCredentials(
      admCredential: map['admCredential'] == null ? null : AdmCredential.fromMap((map['admCredential'] as Map).cast<String, dynamic>()),
      apnsCredential: map['apnsCredential'] == null ? null : ApnsCredential.fromMap((map['apnsCredential'] as Map).cast<String, dynamic>()),
      baiduCredential: map['baiduCredential'] == null ? null : BaiduCredential.fromMap((map['baiduCredential'] as Map).cast<String, dynamic>()),
      browserCredential: map['browserCredential'] == null ? null : BrowserCredential.fromMap((map['browserCredential'] as Map).cast<String, dynamic>()),
      fcmV1Credential: map['fcmV1Credential'] == null ? null : FcmV1Credential.fromMap((map['fcmV1Credential'] as Map).cast<String, dynamic>()),
      gcmCredential: map['gcmCredential'] == null ? null : GcmCredential.fromMap((map['gcmCredential'] as Map).cast<String, dynamic>()),
      mpnsCredential: map['mpnsCredential'] == null ? null : MpnsCredential.fromMap((map['mpnsCredential'] as Map).cast<String, dynamic>()),
      wnsCredential: map['wnsCredential'] == null ? null : WnsCredential.fromMap((map['wnsCredential'] as Map).cast<String, dynamic>()),
      xiaomiCredential: map['xiaomiCredential'] == null ? null : XiaomiCredential.fromMap((map['xiaomiCredential'] as Map).cast<String, dynamic>()),
    );
  }
}

