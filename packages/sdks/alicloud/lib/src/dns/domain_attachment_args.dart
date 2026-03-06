// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dns_domain_attachment_domain_attachment_args_doc}
/// The set of arguments for DomainAttachment.
/// {@endtemplate}
/// {@macro pulumi_dns_domain_attachment_domain_attachment_args_doc}
class DomainAttachmentArgs {
  /// The domain names bound to the DNS instance.
  final pulumi.Input<List<String>> domainNames;
  /// The id of the DNS instance.
  final pulumi.Input<String> instanceId;

  /// Creates a new [DomainAttachmentArgs].
  /// [domainNames] The domain names bound to the DNS instance.
  /// [instanceId] The id of the DNS instance.
  const DomainAttachmentArgs({
    required this.domainNames,
    required this.instanceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainNames': domainNames,
      'instanceId': instanceId,
    };
  }

  factory DomainAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return DomainAttachmentArgs(
      domainNames: pulumi.Input.fromValue((map['domainNames'] as List).cast<String>()),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
    );
  }
}

