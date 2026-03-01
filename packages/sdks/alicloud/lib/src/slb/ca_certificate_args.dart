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
  CaCertificateArgs({
    required pulumi.Output<String> caCertificate,
    pulumi.Output<String>? caCertificateName,
    pulumi.Output<String>? name,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      caCertificate = pulumi.Input.asInput<String>(caCertificate),
      caCertificateName = pulumi.Input.asOptionalInput<String>(caCertificateName),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      caCertificate: pulumi.Output.create<String>(map['caCertificate'] as String),
      caCertificateName: map['caCertificateName'] == null ? null : pulumi.Output.create<String>(map['caCertificateName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

