// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The AS2 agreement mdn settings.
class AS2MdnSettings {
  /// The disposition notification to header value.
  final pulumi.Input<String?>? dispositionNotificationTo;
  /// The MDN text.
  final pulumi.Input<String?>? mdnText;
  /// The signing or hashing algorithm.
  final pulumi.Input<dynamic> micHashingAlgorithm;
  /// The value indicating whether to send or request a MDN.
  final pulumi.Input<bool> needMDN;
  /// The receipt delivery URL.
  final pulumi.Input<String?>? receiptDeliveryUrl;
  /// The value indicating whether to send inbound MDN to message box.
  final pulumi.Input<bool> sendInboundMDNToMessageBox;
  /// The value indicating whether to send the asynchronous MDN.
  final pulumi.Input<bool> sendMDNAsynchronously;
  /// The value indicating whether the MDN needs to be signed or not.
  final pulumi.Input<bool> signMDN;
  /// The value indicating whether to sign the outbound MDN if optional.
  final pulumi.Input<bool> signOutboundMDNIfOptional;

  /// Creates a new [AS2MdnSettings].
  /// [dispositionNotificationTo] The disposition notification to header value.
  /// [mdnText] The MDN text.
  /// [micHashingAlgorithm] The signing or hashing algorithm.
  /// [needMDN] The value indicating whether to send or request a MDN.
  /// [receiptDeliveryUrl] The receipt delivery URL.
  /// [sendInboundMDNToMessageBox] The value indicating whether to send inbound MDN to message box.
  /// [sendMDNAsynchronously] The value indicating whether to send the asynchronous MDN.
  /// [signMDN] The value indicating whether the MDN needs to be signed or not.
  /// [signOutboundMDNIfOptional] The value indicating whether to sign the outbound MDN if optional.
  const AS2MdnSettings({
    this.dispositionNotificationTo,
    this.mdnText,
    required this.micHashingAlgorithm,
    required this.needMDN,
    this.receiptDeliveryUrl,
    required this.sendInboundMDNToMessageBox,
    required this.sendMDNAsynchronously,
    required this.signMDN,
    required this.signOutboundMDNIfOptional,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dispositionNotificationTo': ?dispositionNotificationTo,
      'mdnText': ?mdnText,
      'micHashingAlgorithm': micHashingAlgorithm,
      'needMDN': needMDN,
      'receiptDeliveryUrl': ?receiptDeliveryUrl,
      'sendInboundMDNToMessageBox': sendInboundMDNToMessageBox,
      'sendMDNAsynchronously': sendMDNAsynchronously,
      'signMDN': signMDN,
      'signOutboundMDNIfOptional': signOutboundMDNIfOptional,
    };
  }

  factory AS2MdnSettings.fromMap(Map<String, dynamic> map) {
    return AS2MdnSettings(
      dispositionNotificationTo: (() { final guardedValue = map['dispositionNotificationTo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mdnText: (() { final guardedValue = map['mdnText']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      micHashingAlgorithm: pulumi.Input.fromValue(map['micHashingAlgorithm']),
      needMDN: pulumi.Input.fromValue(map['needMDN'] as bool),
      receiptDeliveryUrl: (() { final guardedValue = map['receiptDeliveryUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sendInboundMDNToMessageBox: pulumi.Input.fromValue(map['sendInboundMDNToMessageBox'] as bool),
      sendMDNAsynchronously: pulumi.Input.fromValue(map['sendMDNAsynchronously'] as bool),
      signMDN: pulumi.Input.fromValue(map['signMDN'] as bool),
      signOutboundMDNIfOptional: pulumi.Input.fromValue(map['signOutboundMDNIfOptional'] as bool),
    );
  }
}
