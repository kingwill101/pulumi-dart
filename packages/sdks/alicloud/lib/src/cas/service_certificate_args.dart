// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cas_service_certificate_service_certificate_args_doc}
/// The set of arguments for ServiceCertificate.
/// {@endtemplate}
/// {@macro pulumi_cas_service_certificate_service_certificate_args_doc}
class ServiceCertificateArgs {
  /// The content of a non-SM certificate in PEM format.
  final pulumi.Input<String>? cert;
  /// A custom name for the certificate. The name can be up to 64 characters long and can contain any character type, such as letters, numbers, and underscores. **NOTE:** From version 1.260.1, `certificate_name` can be modified.
  final pulumi.Input<String>? certificateName;
  /// The content of an SM encryption certificate in PEM format.
  final pulumi.Input<String>? encryptCert;
  /// The private key of an SM encryption certificate in PEM format.
  final pulumi.Input<String>? encryptPrivateKey;
  /// The private key of a non-SM certificate in PEM format.
  final pulumi.Input<String>? key;
  /// Field `lang` has been deprecated from provider version 1.260.1 and it will be removed in the future version.
  final pulumi.Input<String>? lang;
  /// Field `name` has been deprecated from provider version 1.129.0 and it will be removed in the future version. Please use the new attribute `certificate_name` instead.
  final pulumi.Input<String>? name;
  /// The ID of the resource group.
  final pulumi.Input<String>? resourceGroupId;
  /// The content of an SM signing certificate in PEM format.
  final pulumi.Input<String>? signCert;
  /// The private key of an SM signing certificate in PEM format.
  final pulumi.Input<String>? signPrivateKey;
  /// The tag of the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ServiceCertificateArgs].
  /// [cert] The content of a non-SM certificate in PEM format.
  /// [certificateName] A custom name for the certificate. The name can be up to 64 characters long and can contain any character type, such as letters, numbers, and underscores. **NOTE:** From version 1.260.1, `certificate_name` can be modified.
  /// [encryptCert] The content of an SM encryption certificate in PEM format.
  /// [encryptPrivateKey] The private key of an SM encryption certificate in PEM format.
  /// [key] The private key of a non-SM certificate in PEM format.
  /// [lang] Field `lang` has been deprecated from provider version 1.260.1 and it will be removed in the future version.
  /// [name] Field `name` has been deprecated from provider version 1.129.0 and it will be removed in the future version. Please use the new attribute `certificate_name` instead.
  /// [resourceGroupId] The ID of the resource group.
  /// [signCert] The content of an SM signing certificate in PEM format.
  /// [signPrivateKey] The private key of an SM signing certificate in PEM format.
  /// [tags] The tag of the resource.
  ServiceCertificateArgs({
    pulumi.Output<String>? cert,
    pulumi.Output<String>? certificateName,
    pulumi.Output<String>? encryptCert,
    pulumi.Output<String>? encryptPrivateKey,
    pulumi.Output<String>? key,
    pulumi.Output<String>? lang,
    pulumi.Output<String>? name,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? signCert,
    pulumi.Output<String>? signPrivateKey,
    pulumi.Output<Map<String, String>>? tags,
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

  factory ServiceCertificateArgs.fromMap(Map<String, dynamic> map) {
    return ServiceCertificateArgs(
      cert: map['cert'] == null ? null : pulumi.Output.create<String>(map['cert'] as String),
      certificateName: map['certificateName'] == null ? null : pulumi.Output.create<String>(map['certificateName'] as String),
      encryptCert: map['encryptCert'] == null ? null : pulumi.Output.create<String>(map['encryptCert'] as String),
      encryptPrivateKey: map['encryptPrivateKey'] == null ? null : pulumi.Output.create<String>(map['encryptPrivateKey'] as String),
      key: map['key'] == null ? null : pulumi.Output.create<String>(map['key'] as String),
      lang: map['lang'] == null ? null : pulumi.Output.create<String>(map['lang'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      signCert: map['signCert'] == null ? null : pulumi.Output.create<String>(map['signCert'] as String),
      signPrivateKey: map['signPrivateKey'] == null ? null : pulumi.Output.create<String>(map['signPrivateKey'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

