// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The AS2 agreement mdn settings.
class AS2MdnSettingsResponse {
  /// The disposition notification to header value.
  final pulumi.Input<String>? dispositionNotificationTo;
  /// The MDN text.
  final pulumi.Input<String>? mdnText;
  /// The signing or hashing algorithm.
  final pulumi.Input<String> micHashingAlgorithm;
  /// The value indicating whether to send or request a MDN.
  final pulumi.Input<bool> needMDN;
  /// The receipt delivery URL.
  final pulumi.Input<String>? receiptDeliveryUrl;
  /// The value indicating whether to send inbound MDN to message box.
  final pulumi.Input<bool> sendInboundMDNToMessageBox;
  /// The value indicating whether to send the asynchronous MDN.
  final pulumi.Input<bool> sendMDNAsynchronously;
  /// The value indicating whether the MDN needs to be signed or not.
  final pulumi.Input<bool> signMDN;
  /// The value indicating whether to sign the outbound MDN if optional.
  final pulumi.Input<bool> signOutboundMDNIfOptional;

  /// Creates a new [AS2MdnSettingsResponse].
  /// [dispositionNotificationTo] The disposition notification to header value.
  /// [mdnText] The MDN text.
  /// [micHashingAlgorithm] The signing or hashing algorithm.
  /// [needMDN] The value indicating whether to send or request a MDN.
  /// [receiptDeliveryUrl] The receipt delivery URL.
  /// [sendInboundMDNToMessageBox] The value indicating whether to send inbound MDN to message box.
  /// [sendMDNAsynchronously] The value indicating whether to send the asynchronous MDN.
  /// [signMDN] The value indicating whether the MDN needs to be signed or not.
  /// [signOutboundMDNIfOptional] The value indicating whether to sign the outbound MDN if optional.
  AS2MdnSettingsResponse({
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

  factory AS2MdnSettingsResponse.fromMap(Map<String, dynamic> map) {
    return AS2MdnSettingsResponse(
      dispositionNotificationTo: map['dispositionNotificationTo'] == null ? null : (map['dispositionNotificationTo'] as String).input(),
      mdnText: map['mdnText'] == null ? null : (map['mdnText'] as String).input(),
      micHashingAlgorithm: (map['micHashingAlgorithm'] as String).input(),
      needMDN: (map['needMDN'] as bool).input(),
      receiptDeliveryUrl: map['receiptDeliveryUrl'] == null ? null : (map['receiptDeliveryUrl'] as String).input(),
      sendInboundMDNToMessageBox: (map['sendInboundMDNToMessageBox'] as bool).input(),
      sendMDNAsynchronously: (map['sendMDNAsynchronously'] as bool).input(),
      signMDN: (map['signMDN'] as bool).input(),
      signOutboundMDNIfOptional: (map['signOutboundMDNIfOptional'] as bool).input(),
    );
  }
}

