// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AuditCallback resources.
class AuditCallbackState {
  /// The AuditCallback name defined by the customer. It can contain no more than 20 characters in Chinese, English, underscore (_), and digits.
  final pulumi.Input<String>? auditCallbackName;
  /// List of audit results supported by message notification. Value: block: confirmed violation, review: Suspected violation, review: normal.
  final pulumi.Input<List<String>>? callbackSuggestions;
  /// A list of Callback types. Value: machineScan: Machine audit result notification, selfAudit: self-service audit notification.
  final pulumi.Input<List<String>>? callbackTypes;
  /// The encryption algorithm is used to verify that the callback request is sent by the content security service to your business service. The value is SHA256:SHA256 encryption algorithm and SM3: SM3 encryption algorithm.
  final pulumi.Input<String>? cryptType;
  /// The detection result will be called back to the url.
  final pulumi.Input<String>? url;

  /// Creates a new [AuditCallbackState].
  /// [auditCallbackName] The AuditCallback name defined by the customer. It can contain no more than 20 characters in Chinese, English, underscore (_), and digits.
  /// [callbackSuggestions] List of audit results supported by message notification. Value: block: confirmed violation, review: Suspected violation, review: normal.
  /// [callbackTypes] A list of Callback types. Value: machineScan: Machine audit result notification, selfAudit: self-service audit notification.
  /// [cryptType] The encryption algorithm is used to verify that the callback request is sent by the content security service to your business service. The value is SHA256:SHA256 encryption algorithm and SM3: SM3 encryption algorithm.
  /// [url] The detection result will be called back to the url.
  AuditCallbackState({
    this.auditCallbackName,
    this.callbackSuggestions,
    this.callbackTypes,
    this.cryptType,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auditCallbackName': ?auditCallbackName,
      'callbackSuggestions': ?callbackSuggestions,
      'callbackTypes': ?callbackTypes,
      'cryptType': ?cryptType,
      'url': ?url,
    };
  }

  factory AuditCallbackState.fromMap(Map<String, dynamic> map) {
    return AuditCallbackState(
      auditCallbackName: map['auditCallbackName'] == null ? null : (map['auditCallbackName']! as String).input(),
      callbackSuggestions: map['callbackSuggestions'] == null ? null : ((map['callbackSuggestions']! as List).cast<String>()).input(),
      callbackTypes: map['callbackTypes'] == null ? null : ((map['callbackTypes']! as List).cast<String>()).input(),
      cryptType: map['cryptType'] == null ? null : (map['cryptType']! as String).input(),
      url: map['url'] == null ? null : (map['url']! as String).input(),
    );
  }
}

