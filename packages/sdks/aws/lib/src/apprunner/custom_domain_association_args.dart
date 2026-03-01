// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apprunner_custom_domain_association_custom_domain_association_args_doc}
/// The set of arguments for CustomDomainAssociation.
/// {@endtemplate}
/// {@macro pulumi_apprunner_custom_domain_association_custom_domain_association_args_doc}
class CustomDomainAssociationArgs {
  /// Custom domain endpoint to association. Specify a base domain e.g., `example.com` or a subdomain e.g., `subdomain.example.com`.
  final pulumi.Input<String> domainName;
  /// Whether to associate the subdomain with the App Runner service in addition to the base domain. Defaults to `true`.
  final pulumi.Input<bool>? enableWwwSubdomain;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ARN of the App Runner service.
  final pulumi.Input<String> serviceArn;

  /// Creates a new [CustomDomainAssociationArgs].
  /// [domainName] Custom domain endpoint to association. Specify a base domain e.g., `example.com` or a subdomain e.g., `subdomain.example.com`.
  /// [enableWwwSubdomain] Whether to associate the subdomain with the App Runner service in addition to the base domain. Defaults to `true`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [serviceArn] ARN of the App Runner service.
  CustomDomainAssociationArgs({
    required pulumi.Output<String> domainName,
    pulumi.Output<bool>? enableWwwSubdomain,
    pulumi.Output<String>? region,
    required pulumi.Output<String> serviceArn,
  }) :
      domainName = pulumi.Input.asInput<String>(domainName),
      enableWwwSubdomain = pulumi.Input.asOptionalInput<bool>(enableWwwSubdomain),
      region = pulumi.Input.asOptionalInput<String>(region),
      serviceArn = pulumi.Input.asInput<String>(serviceArn);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': domainName,
      'enableWwwSubdomain': ?enableWwwSubdomain,
      'region': ?region,
      'serviceArn': serviceArn,
    };
  }

  factory CustomDomainAssociationArgs.fromMap(Map<String, dynamic> map) {
    return CustomDomainAssociationArgs(
      domainName: pulumi.Output.create<String>(map['domainName'] as String),
      enableWwwSubdomain: map['enableWwwSubdomain'] == null ? null : pulumi.Output.create<bool>(map['enableWwwSubdomain'] as bool),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      serviceArn: pulumi.Output.create<String>(map['serviceArn'] as String),
    );
  }
}

