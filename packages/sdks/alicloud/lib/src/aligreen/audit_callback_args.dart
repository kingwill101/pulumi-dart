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
    required pulumi.Output<String> auditCallbackName,
    required pulumi.Output<List<String>> callbackSuggestions,
    required pulumi.Output<List<String>> callbackTypes,
    required pulumi.Output<String> cryptType,
    required pulumi.Output<String> url,
  }) :
      auditCallbackName = pulumi.Input.asInput<String>(auditCallbackName),
      callbackSuggestions = pulumi.Input.asInput<List<String>>(callbackSuggestions),
      callbackTypes = pulumi.Input.asInput<List<String>>(callbackTypes),
      cryptType = pulumi.Input.asInput<String>(cryptType),
      url = pulumi.Input.asInput<String>(url);

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
      auditCallbackName: pulumi.Output.create<String>(map['auditCallbackName'] as String),
      callbackSuggestions: pulumi.Output.create<List<String>>((map['callbackSuggestions'] as List).cast<String>()),
      callbackTypes: pulumi.Output.create<List<String>>((map['callbackTypes'] as List).cast<String>()),
      cryptType: pulumi.Output.create<String>(map['cryptType'] as String),
      url: pulumi.Output.create<String>(map['url'] as String),
    );
  }
}

