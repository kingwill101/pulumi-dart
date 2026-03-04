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
    this.cert,
    this.certificateName,
    this.encryptCert,
    this.encryptPrivateKey,
    this.key,
    this.lang,
    this.name,
    this.resourceGroupId,
    this.signCert,
    this.signPrivateKey,
    this.tags,
  });

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
      cert: (() {
        final guardedValue = map['cert'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      certificateName: (() {
        final guardedValue = map['certificateName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      encryptCert: (() {
        final guardedValue = map['encryptCert'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      encryptPrivateKey: (() {
        final guardedValue = map['encryptPrivateKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      key: (() {
        final guardedValue = map['key'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      lang: (() {
        final guardedValue = map['lang'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupId: (() {
        final guardedValue = map['resourceGroupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      signCert: (() {
        final guardedValue = map['signCert'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      signPrivateKey: (() {
        final guardedValue = map['signPrivateKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
