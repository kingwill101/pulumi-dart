// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appsync_domain_name_domain_name_args_doc}
/// The set of arguments for DomainName.
/// {@endtemplate}
/// {@macro pulumi_appsync_domain_name_domain_name_args_doc}
class DomainNameArgs {
  /// ARN of the certificate. This can be an Certificate Manager (ACM) certificate or an Identity and Access Management (IAM) server certificate. The certifiacte must reside in us-east-1.
  final pulumi.Input<String> certificateArn;

  /// A description of the Domain Name.
  final pulumi.Input<String>? description;

  /// Domain name.
  final pulumi.Input<String> domainName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [DomainNameArgs].
  /// [certificateArn] ARN of the certificate. This can be an Certificate Manager (ACM) certificate or an Identity and Access Management (IAM) server certificate. The certifiacte must reside in us-east-1.
  /// [description] A description of the Domain Name.
  /// [domainName] Domain name.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  DomainNameArgs({
    required String certificateArn,
    String? description,
    required String domainName,
    String? region,
  })  : certificateArn = pulumi.Input.asInput<String>(certificateArn),
        description = pulumi.Input.asOptionalInput<String>(description),
        domainName = pulumi.Input.asInput<String>(domainName),
        region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['certificateArn'] = certificateArn;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['domainName'] = domainName;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory DomainNameArgs.fromMap(Map<String, dynamic> map) {
    return DomainNameArgs(
      certificateArn: map['certificateArn'] as String,
      description:
          map['description'] == null ? null : map['description'] as String,
      domainName: map['domainName'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
