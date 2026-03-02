// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aligreen_audit_callback_audit_callback_args_doc}
/// The set of arguments for AuditCallback.
/// {@endtemplate}
/// {@macro pulumi_aligreen_audit_callback_audit_callback_args_doc}
class AuditCallbackArgs {
  /// The AuditCallback name defined by the customer. It can contain no more than 20 characters in Chinese, English, underscore (_), and digits.
  final pulumi.Input<String> auditCallbackName;
  /// List of audit results supported by message notification. Value: block: confirmed violation, review: Suspected violation, review: normal.
  final pulumi.Input<List<String>> callbackSuggestions;
  /// A list of Callback types. Value: machineScan: Machine audit result notification, selfAudit: self-service audit notification.
  final pulumi.Input<List<String>> callbackTypes;
  /// The encryption algorithm is used to verify that the callback request is sent by the content security service to your business service. The value is SHA256:SHA256 encryption algorithm and SM3: SM3 encryption algorithm.
  final pulumi.Input<String> cryptType;
  /// The detection result will be called back to the url.
  final pulumi.Input<String> url;

  /// Creates a new [AuditCallbackArgs].
  /// [auditCallbackName] The AuditCallback name defined by the customer. It can contain no more than 20 characters in Chinese, English, underscore (_), and digits.
  /// [callbackSuggestions] List of audit results supported by message notification. Value: block: confirmed violation, review: Suspected violation, review: normal.
  /// [callbackTypes] A list of Callback types. Value: machineScan: Machine audit result notification, selfAudit: self-service audit notification.
  /// [cryptType] The encryption algorithm is used to verify that the callback request is sent by the content security service to your business service. The value is SHA256:SHA256 encryption algorithm and SM3: SM3 encryption algorithm.
  /// [url] The detection result will be called back to the url.
  AuditCallbackArgs({
    required this.auditCallbackName,
    required this.callbackSuggestions,
    required this.callbackTypes,
    required this.cryptType,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auditCallbackName': auditCallbackName,
      'callbackSuggestions': callbackSuggestions,
      'callbackTypes': callbackTypes,
      'cryptType': cryptType,
      'url': url,
    };
  }

  factory AuditCallbackArgs.fromMap(Map<String, dynamic> map) {
    return AuditCallbackArgs(
      auditCallbackName: (map['auditCallbackName'] as String).input(),
      callbackSuggestions: ((map['callbackSuggestions'] as List).cast<String>()).input(),
      callbackTypes: ((map['callbackTypes'] as List).cast<String>()).input(),
      cryptType: (map['cryptType'] as String).input(),
      url: (map['url'] as String).input(),
    );
  }
}

