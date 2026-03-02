// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Callback resources.
class CallbackState {
  /// The Callback name defined by the customer. It can contain no more than 20 characters in Chinese, English, underscore (_), and digits.
  final pulumi.Input<String>? callbackName;
  /// List of audit results supported by message notification. Value: block: confirmed violation, review: Suspected violation, review: normal.
  final pulumi.Input<List<String>>? callbackSuggestions;
  /// A list of Callback types. Value: machineScan: Machine audit result notification, selfAudit: self-service audit notification.
  final pulumi.Input<List<String>>? callbackTypes;
  /// The detection result will be called back to the url.
  final pulumi.Input<String>? callbackUrl;
  /// The creation time of the Callback.
  final pulumi.Input<String>? createTime;
  /// The encryption algorithm is used to verify that the callback request is sent by the Aliyun Green Service to your business service. Value: 0:SHA256,1: SM3.
  final pulumi.Input<int>? cryptType;

  /// Creates a new [CallbackState].
  /// [callbackName] The Callback name defined by the customer. It can contain no more than 20 characters in Chinese, English, underscore (_), and digits.
  /// [callbackSuggestions] List of audit results supported by message notification. Value: block: confirmed violation, review: Suspected violation, review: normal.
  /// [callbackTypes] A list of Callback types. Value: machineScan: Machine audit result notification, selfAudit: self-service audit notification.
  /// [callbackUrl] The detection result will be called back to the url.
  /// [createTime] The creation time of the Callback.
  /// [cryptType] The encryption algorithm is used to verify that the callback request is sent by the Aliyun Green Service to your business service. Value: 0:SHA256,1: SM3.
  CallbackState({
    this.callbackName,
    this.callbackSuggestions,
    this.callbackTypes,
    this.callbackUrl,
    this.createTime,
    this.cryptType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'callbackName': ?callbackName,
      'callbackSuggestions': ?callbackSuggestions,
      'callbackTypes': ?callbackTypes,
      'callbackUrl': ?callbackUrl,
      'createTime': ?createTime,
      'cryptType': ?cryptType,
    };
  }

  factory CallbackState.fromMap(Map<String, dynamic> map) {
    return CallbackState(
      callbackName: map['callbackName'] == null ? null : (map['callbackName']! as String).input(),
      callbackSuggestions: map['callbackSuggestions'] == null ? null : ((map['callbackSuggestions']! as List).cast<String>()).input(),
      callbackTypes: map['callbackTypes'] == null ? null : ((map['callbackTypes']! as List).cast<String>()).input(),
      callbackUrl: map['callbackUrl'] == null ? null : (map['callbackUrl']! as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      cryptType: map['cryptType'] == null ? null : (map['cryptType']! as int).input(),
    );
  }
}

