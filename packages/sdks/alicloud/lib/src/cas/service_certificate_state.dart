// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ServiceCertificate resources.
class ServiceCertificateState {
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

  /// Creates a new [ServiceCertificateState].
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
  ServiceCertificateState({
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

  factory ServiceCertificateState.fromMap(Map<String, dynamic> map) {
    return ServiceCertificateState(
      cert: map['cert'] == null ? null : (map['cert']! as String).input(),
      certificateName: map['certificateName'] == null ? null : (map['certificateName']! as String).input(),
      encryptCert: map['encryptCert'] == null ? null : (map['encryptCert']! as String).input(),
      encryptPrivateKey: map['encryptPrivateKey'] == null ? null : (map['encryptPrivateKey']! as String).input(),
      key: map['key'] == null ? null : (map['key']! as String).input(),
      lang: map['lang'] == null ? null : (map['lang']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId']! as String).input(),
      signCert: map['signCert'] == null ? null : (map['signCert']! as String).input(),
      signPrivateKey: map['signPrivateKey'] == null ? null : (map['signPrivateKey']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

