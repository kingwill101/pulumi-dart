// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_workmail_default_domain_default_domain_args_doc}
/// The set of arguments for DefaultDomain.
/// {@endtemplate}
/// {@macro pulumi_workmail_default_domain_default_domain_args_doc}
class DefaultDomainArgs {
  /// Mail domain name to set as the default.
  final pulumi.Input<String> domainName;
  /// Identifier of the WorkMail organization. Changing this forces a new resource.
  final pulumi.Input<String> organizationId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;

  /// Creates a new [DefaultDomainArgs].
  /// [domainName] Mail domain name to set as the default.
  /// [organizationId] Identifier of the WorkMail organization. Changing this forces a new resource.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const DefaultDomainArgs({
    required this.domainName,
    required this.organizationId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': domainName,
      'organizationId': organizationId,
      'region': ?region,
    };
  }

  factory DefaultDomainArgs.fromMap(Map<String, dynamic> map) {
    return DefaultDomainArgs(
      domainName: pulumi.Input.fromValue(map['domainName'] as String),
      organizationId: pulumi.Input.fromValue(map['organizationId'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
