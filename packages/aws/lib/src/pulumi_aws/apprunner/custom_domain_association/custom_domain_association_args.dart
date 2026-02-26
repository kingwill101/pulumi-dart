// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for CustomDomainAssociation.
class CustomDomainAssociationArgs {
  /// Custom domain endpoint to association. Specify a base domain e.g., `example.com` or a subdomain e.g., `subdomain.example.com`.
  final Input<String> domainName;

  /// Whether to associate the subdomain with the App Runner service in addition to the base domain. Defaults to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  final Input<bool>? enableWwwSubdomain;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// ARN of the App Runner service.
  final Input<String> serviceArn;

  CustomDomainAssociationArgs({
    required this.domainName,
    this.enableWwwSubdomain,
    this.region,
    required this.serviceArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['domainName'] = domainName;
    final enableWwwSubdomainValue = enableWwwSubdomain;
    if (enableWwwSubdomainValue != null) {
      map['enableWwwSubdomain'] = enableWwwSubdomainValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['serviceArn'] = serviceArn;
    return map;
  }

  factory CustomDomainAssociationArgs.fromMap(Map<String, dynamic> map) {
    return CustomDomainAssociationArgs(
      domainName: Input.asInput<String>(map['domainName']),
      enableWwwSubdomain:
          Input.asOptionalInput<bool>(map['enableWwwSubdomain']),
      region: Input.asOptionalInput<String>(map['region']),
      serviceArn: Input.asInput<String>(map['serviceArn']),
    );
  }
}
