// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cas_certificate_certificate_args_doc}
/// The set of arguments for Certificate.
/// {@endtemplate}
/// {@macro pulumi_cas_certificate_certificate_args_doc}
class CertificateArgs {
  /// Cert of the Certificate in which the Certificate will add.
  final pulumi.Input<String>? cert;
  final pulumi.Input<String>? certificateName;
  final pulumi.Input<String>? encryptCert;
  final pulumi.Input<String>? encryptPrivateKey;
  /// Key of the Certificate in which the Certificate will add.
  final pulumi.Input<String>? key;
  final pulumi.Input<String>? lang;
  /// Name of the Certificate. This name must contain only alphanumeric characters or "-", and must not begin or end with "-", and "-" must not in the 3th and 4th character positions at the same time. Suffix `.sh` and `.tel` are not supported.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? resourceGroupId;
  final pulumi.Input<String>? signCert;
  final pulumi.Input<String>? signPrivateKey;
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [CertificateArgs].
  /// [cert] Cert of the Certificate in which the Certificate will add.
  /// [certificateName] Optional.
  /// [encryptCert] Optional.
  /// [encryptPrivateKey] Optional.
  /// [key] Key of the Certificate in which the Certificate will add.
  /// [lang] Optional.
  /// [name] Name of the Certificate. This name must contain only alphanumeric characters or "-", and must not begin or end with "-", and "-" must not in the 3th and 4th character positions at the same time. Suffix `.sh` and `.tel` are not supported.
  /// [resourceGroupId] Optional.
  /// [signCert] Optional.
  /// [signPrivateKey] Optional.
  /// [tags] Optional.
  CertificateArgs({
    String? cert,
    String? certificateName,
    String? encryptCert,
    String? encryptPrivateKey,
    String? key,
    String? lang,
    String? name,
    String? resourceGroupId,
    String? signCert,
    String? signPrivateKey,
    Map<String, String>? tags,
  }) :
      cert = pulumi.Input.asOptionalInput<String>(cert),
      certificateName = pulumi.Input.asOptionalInput<String>(certificateName),
      encryptCert = pulumi.Input.asOptionalInput<String>(encryptCert),
      encryptPrivateKey = pulumi.Input.asOptionalInput<String>(encryptPrivateKey),
      key = pulumi.Input.asOptionalInput<String>(key),
      lang = pulumi.Input.asOptionalInput<String>(lang),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      signCert = pulumi.Input.asOptionalInput<String>(signCert),
      signPrivateKey = pulumi.Input.asOptionalInput<String>(signPrivateKey),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cert': ?cert,
      'certificateName': ?certificateName,
      'encryptCert': ?encryptCert,
      'encryptPrivateKey': ?encryptPrivateKey,
      'key': ?key,
      'lang': ?lang,
      'name': ?name,
      'resourceGroupId': ?resourceGroupId,
      'signCert': ?signCert,
      'signPrivateKey': ?signPrivateKey,
      'tags': ?tags,
    };
  }

  factory CertificateArgs.fromMap(Map<String, dynamic> map) {
    return CertificateArgs(
      cert: map['cert'] == null ? null : map['cert'] as String,
      certificateName: map['certificateName'] == null ? null : map['certificateName'] as String,
      encryptCert: map['encryptCert'] == null ? null : map['encryptCert'] as String,
      encryptPrivateKey: map['encryptPrivateKey'] == null ? null : map['encryptPrivateKey'] as String,
      key: map['key'] == null ? null : map['key'] as String,
      lang: map['lang'] == null ? null : map['lang'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId'] as String,
      signCert: map['signCert'] == null ? null : map['signCert'] as String,
      signPrivateKey: map['signPrivateKey'] == null ? null : map['signPrivateKey'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

