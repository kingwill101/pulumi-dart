// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ssl_get_waf_signatures_get_waf_signatures_args_doc}
/// Arguments for getWafSignatures.
/// {@endtemplate}
/// {@macro pulumi_ssl_get_waf_signatures_get_waf_signatures_args_doc}
class GetWafSignaturesArgs {
  /// The relative detection accuracy of the signature.
  final pulumi.Input<String>? accuracy;
  /// Description of the signature.
  final pulumi.Input<String>? description;
  final pulumi.Input<bool>? enabled;
  /// Name of the signature as configured on the system.
  final pulumi.Input<String>? name;
  final pulumi.Input<bool>? performStaging;
  /// The relative risk level of the attack that matches this signature.
  final pulumi.Input<String>? risk;
  /// ID of the signature in the BIG-IP WAF database.
  final pulumi.Input<int> signatureId;
  /// System generated ID of the signature.
  final pulumi.Input<String>? systemSignatureId;
  final pulumi.Input<String>? tag;
  /// Type of the signature.
  final pulumi.Input<String>? type;

  /// Creates a new [GetWafSignaturesArgs].
  /// [accuracy] The relative detection accuracy of the signature.
  /// [description] Description of the signature.
  /// [enabled] Optional.
  /// [name] Name of the signature as configured on the system.
  /// [performStaging] Optional.
  /// [risk] The relative risk level of the attack that matches this signature.
  /// [signatureId] ID of the signature in the BIG-IP WAF database.
  /// [systemSignatureId] System generated ID of the signature.
  /// [tag] Optional.
  /// [type] Type of the signature.
  GetWafSignaturesArgs({
    String? accuracy,
    String? description,
    bool? enabled,
    String? name,
    bool? performStaging,
    String? risk,
    required int signatureId,
    String? systemSignatureId,
    String? tag,
    String? type,
  }) :
      accuracy = pulumi.Input.asOptionalInput<String>(accuracy),
      description = pulumi.Input.asOptionalInput<String>(description),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      name = pulumi.Input.asOptionalInput<String>(name),
      performStaging = pulumi.Input.asOptionalInput<bool>(performStaging),
      risk = pulumi.Input.asOptionalInput<String>(risk),
      signatureId = pulumi.Input.asInput<int>(signatureId),
      systemSignatureId = pulumi.Input.asOptionalInput<String>(systemSignatureId),
      tag = pulumi.Input.asOptionalInput<String>(tag),
      type = pulumi.Input.asOptionalInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accuracy': ?accuracy,
      'description': ?description,
      'enabled': ?enabled,
      'name': ?name,
      'performStaging': ?performStaging,
      'risk': ?risk,
      'signatureId': signatureId,
      'systemSignatureId': ?systemSignatureId,
      'tag': ?tag,
      'type': ?type,
    };
  }

  factory GetWafSignaturesArgs.fromMap(Map<String, dynamic> map) {
    return GetWafSignaturesArgs(
      accuracy: map['accuracy'] == null ? null : map['accuracy'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      name: map['name'] == null ? null : map['name'] as String,
      performStaging: map['performStaging'] == null ? null : map['performStaging'] as bool,
      risk: map['risk'] == null ? null : map['risk'] as String,
      signatureId: map['signatureId'] as int,
      systemSignatureId: map['systemSignatureId'] == null ? null : map['systemSignatureId'] as String,
      tag: map['tag'] == null ? null : map['tag'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

