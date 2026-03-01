// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aligreen_callback_callback_args_doc}
/// The set of arguments for Callback.
/// {@endtemplate}
/// {@macro pulumi_aligreen_callback_callback_args_doc}
class CallbackArgs {
  /// The Callback name defined by the customer. It can contain no more than 20 characters in Chinese, English, underscore (_), and digits.
  final pulumi.Input<String> callbackName;
  /// List of audit results supported by message notification. Value: block: confirmed violation, review: Suspected violation, review: normal.
  final pulumi.Input<List<String>> callbackSuggestions;
  /// A list of Callback types. Value: machineScan: Machine audit result notification, selfAudit: self-service audit notification.
  final pulumi.Input<List<String>> callbackTypes;
  /// The detection result will be called back to the url.
  final pulumi.Input<String> callbackUrl;
  /// The encryption algorithm is used to verify that the callback request is sent by the Aliyun Green Service to your business service. Value: 0:SHA256,1: SM3.
  final pulumi.Input<int>? cryptType;

  /// Creates a new [CallbackArgs].
  /// [callbackName] The Callback name defined by the customer. It can contain no more than 20 characters in Chinese, English, underscore (_), and digits.
  /// [callbackSuggestions] List of audit results supported by message notification. Value: block: confirmed violation, review: Suspected violation, review: normal.
  /// [callbackTypes] A list of Callback types. Value: machineScan: Machine audit result notification, selfAudit: self-service audit notification.
  /// [callbackUrl] The detection result will be called back to the url.
  /// [cryptType] The encryption algorithm is used to verify that the callback request is sent by the Aliyun Green Service to your business service. Value: 0:SHA256,1: SM3.
  CallbackArgs({
    required String callbackName,
    required List<String> callbackSuggestions,
    required List<String> callbackTypes,
    required String callbackUrl,
    int? cryptType,
  }) :
      callbackName = pulumi.Input.asInput<String>(callbackName),
      callbackSuggestions = pulumi.Input.asInput<List<String>>(callbackSuggestions),
      callbackTypes = pulumi.Input.asInput<List<String>>(callbackTypes),
      callbackUrl = pulumi.Input.asInput<String>(callbackUrl),
      cryptType = pulumi.Input.asOptionalInput<int>(cryptType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'callbackName': callbackName,
      'callbackSuggestions': callbackSuggestions,
      'callbackTypes': callbackTypes,
      'callbackUrl': callbackUrl,
      'cryptType': ?cryptType,
    };
  }

  factory CallbackArgs.fromMap(Map<String, dynamic> map) {
    return CallbackArgs(
      callbackName: map['callbackName'] as String,
      callbackSuggestions: (map['callbackSuggestions'] as List).cast<String>(),
      callbackTypes: (map['callbackTypes'] as List).cast<String>(),
      callbackUrl: map['callbackUrl'] as String,
      cryptType: map['cryptType'] == null ? null : map['cryptType'] as int,
    );
  }
}

