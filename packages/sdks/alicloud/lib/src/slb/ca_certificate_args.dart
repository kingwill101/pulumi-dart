// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_slb_ca_certificate_ca_certificate_args_doc}
/// The set of arguments for CaCertificate.
/// {@endtemplate}
/// {@macro pulumi_slb_ca_certificate_ca_certificate_args_doc}
class CaCertificateArgs {
  /// the content of the CA certificate.
  final pulumi.Input<String> caCertificate;
  /// Name of the CA Certificate.
  final pulumi.Input<String>? caCertificateName;
  /// Field `name` has been deprecated from provider version 1.123.1. New field `ca_certificate_name` instead
  final pulumi.Input<String>? name;
  /// The Id of resource group which the slb_ca certificate belongs.
  final pulumi.Input<String>? resourceGroupId;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [CaCertificateArgs].
  /// [caCertificate] the content of the CA certificate.
  /// [caCertificateName] Name of the CA Certificate.
  /// [name] Field `name` has been deprecated from provider version 1.123.1. New field `ca_certificate_name` instead
  /// [resourceGroupId] The Id of resource group which the slb_ca certificate belongs.
  /// [tags] A mapping of tags to assign to the resource.
  const CaCertificateArgs({
    required this.caCertificate,
    this.caCertificateName,
    this.name,
    this.resourceGroupId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caCertificate': caCertificate,
      'caCertificateName': ?caCertificateName,
      'name': ?name,
      'resourceGroupId': ?resourceGroupId,
      'tags': ?tags,
    };
  }

  factory CaCertificateArgs.fromMap(Map<String, dynamic> map) {
    return CaCertificateArgs(
      caCertificate: pulumi.Input.fromValue(map['caCertificate'] as String),
      caCertificateName: (() { final guardedValue = map['caCertificateName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

