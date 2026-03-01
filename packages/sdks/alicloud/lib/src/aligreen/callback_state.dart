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
    pulumi.Output<String>? callbackName,
    pulumi.Output<List<String>>? callbackSuggestions,
    pulumi.Output<List<String>>? callbackTypes,
    pulumi.Output<String>? callbackUrl,
    pulumi.Output<String>? createTime,
    pulumi.Output<int>? cryptType,
  }) :
      callbackName = pulumi.Input.asOptionalInput<String>(callbackName),
      callbackSuggestions = pulumi.Input.asOptionalInput<List<String>>(callbackSuggestions),
      callbackTypes = pulumi.Input.asOptionalInput<List<String>>(callbackTypes),
      callbackUrl = pulumi.Input.asOptionalInput<String>(callbackUrl),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      cryptType = pulumi.Input.asOptionalInput<int>(cryptType);

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
      callbackName: map['callbackName'] == null ? null : pulumi.Output.create<String>(map['callbackName'] as String),
      callbackSuggestions: map['callbackSuggestions'] == null ? null : pulumi.Output.create<List<String>>((map['callbackSuggestions'] as List).cast<String>()),
      callbackTypes: map['callbackTypes'] == null ? null : pulumi.Output.create<List<String>>((map['callbackTypes'] as List).cast<String>()),
      callbackUrl: map['callbackUrl'] == null ? null : pulumi.Output.create<String>(map['callbackUrl'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      cryptType: map['cryptType'] == null ? null : pulumi.Output.create<int>(map['cryptType'] as int),
    );
  }
}

