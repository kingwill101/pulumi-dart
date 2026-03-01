// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ltm_cipher_rule_cipher_rule_args_doc}
/// The set of arguments for CipherRule.
/// {@endtemplate}
/// {@macro pulumi_ltm_cipher_rule_cipher_rule_args_doc}
class CipherRuleArgs {
  /// Specifies one or more Cipher Suites used,this is a colon (:) separated string of cipher suites. example, `TLS13-AES128-GCM-SHA256:TLS13-AES256-GCM-SHA384`.
  final pulumi.Input<String> cipher;
  /// The Partition in which the Cipher Rule will be created.
  final pulumi.Input<String>? description;
  /// Specifies the DH Groups algorithms, separated by colons (:).
  final pulumi.Input<String>? dhGroups;
  /// Name of the Cipher Rule. Name should be in pattern `partition` + `cipher_rule_name`
  final pulumi.Input<String> name;
  /// Specifies the Signature Algorithms, separated by colons (:).
  final pulumi.Input<String>? signatureAlgorithms;

  /// Creates a new [CipherRuleArgs].
  /// [cipher] Specifies one or more Cipher Suites used,this is a colon (:) separated string of cipher suites. example, `TLS13-AES128-GCM-SHA256:TLS13-AES256-GCM-SHA384`.
  /// [description] The Partition in which the Cipher Rule will be created.
  /// [dhGroups] Specifies the DH Groups algorithms, separated by colons (:).
  /// [name] Name of the Cipher Rule. Name should be in pattern `partition` + `cipher_rule_name`
  /// [signatureAlgorithms] Specifies the Signature Algorithms, separated by colons (:).
  CipherRuleArgs({
    required String cipher,
    String? description,
    String? dhGroups,
    required String name,
    String? signatureAlgorithms,
  }) :
      cipher = pulumi.Input.asInput<String>(cipher),
      description = pulumi.Input.asOptionalInput<String>(description),
      dhGroups = pulumi.Input.asOptionalInput<String>(dhGroups),
      name = pulumi.Input.asInput<String>(name),
      signatureAlgorithms = pulumi.Input.asOptionalInput<String>(signatureAlgorithms);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cipher': cipher,
      'description': ?description,
      'dhGroups': ?dhGroups,
      'name': name,
      'signatureAlgorithms': ?signatureAlgorithms,
    };
  }

  factory CipherRuleArgs.fromMap(Map<String, dynamic> map) {
    return CipherRuleArgs(
      cipher: map['cipher'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      dhGroups: map['dhGroups'] == null ? null : map['dhGroups'] as String,
      name: map['name'] as String,
      signatureAlgorithms: map['signatureAlgorithms'] == null ? null : map['signatureAlgorithms'] as String,
    );
  }
}

