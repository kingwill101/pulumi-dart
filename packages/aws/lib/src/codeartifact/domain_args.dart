// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_codeartifact_domain_domain_args_doc}
/// The set of arguments for Domain.
/// {@endtemplate}
/// {@macro pulumi_codeartifact_domain_domain_args_doc}
class DomainArgs {
  /// The name of the domain to create. All domain names in an AWS Region that are in the same AWS account must be unique. The domain name is used as the prefix in DNS hostnames. Do not use sensitive information in a domain name because it is publicly discoverable.
  final pulumi.Input<String> domain;

  /// The encryption key for the domain. This is used to encrypt content stored in a domain. The KMS Key Amazon Resource Name (ARN). The default aws/codeartifact AWS KMS master key is used if this element is absent.
  final pulumi.Input<String>? encryptionKey;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [DomainArgs].
  /// [domain] The name of the domain to create. All domain names in an AWS Region that are in the same AWS account must be unique. The domain name is used as the prefix in DNS hostnames. Do not use sensitive information in a domain name because it is publicly discoverable.
  /// [encryptionKey] The encryption key for the domain. This is used to encrypt content stored in a domain. The KMS Key Amazon Resource Name (ARN). The default aws/codeartifact AWS KMS master key is used if this element is absent.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  DomainArgs({
    required String domain,
    String? encryptionKey,
    String? region,
    Map<String, String>? tags,
  }) : domain = pulumi.Input.asInput<String>(domain),
       encryptionKey = pulumi.Input.asOptionalInput<String>(encryptionKey),
       region = pulumi.Input.asOptionalInput<String>(region),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': domain,
      'encryptionKey': ?encryptionKey,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory DomainArgs.fromMap(Map<String, dynamic> map) {
    return DomainArgs(
      domain: map['domain'] as String,
      encryptionKey: map['encryptionKey'] == null
          ? null
          : map['encryptionKey'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
