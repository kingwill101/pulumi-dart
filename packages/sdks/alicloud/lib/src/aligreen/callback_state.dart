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
  const CallbackState({
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
      callbackName: (() { final guardedValue = map['callbackName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      callbackSuggestions: (() { final guardedValue = map['callbackSuggestions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      callbackTypes: (() { final guardedValue = map['callbackTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      callbackUrl: (() { final guardedValue = map['callbackUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cryptType: (() { final guardedValue = map['cryptType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

