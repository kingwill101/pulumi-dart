// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_domain_identity_provider_configuration.dart';

/// {@template pulumi_cloudwatchomni_organization_domain_organization_domain_args_doc}
/// The set of arguments for OrganizationDomain.
/// {@endtemplate}
/// {@macro pulumi_cloudwatchomni_organization_domain_organization_domain_args_doc}
class OrganizationDomainArgs {
  /// ARN of the IAM role that CloudWatch Omni assumes to access the organization. The role must be in the management account, trust `cloudwatch.amazonaws.com` for `sts:AssumeRole` and `sts:TagSession`, and have the `CloudWatchOmniDomainAccessPolicy` AWS managed policy attached.
  final pulumi.Input<String> domainAccessRoleArn;
  /// Identity provider configuration. Required when `identityProviders` includes `IDC`. See below.
  final pulumi.Input<OrganizationDomainIdentityProviderConfiguration?>? identityProviderConfiguration;
  /// Set of identity providers that users can sign in with. Valid values: `IAM`, `IDC`.
  final pulumi.Input<List<String>> identityProviders;
  /// Name of the domain. Must be 3-63 characters, contain only lowercase letters, numbers, and hyphens, begin and end with a letter or number, and not contain consecutive hyphens. Changing the name changes the domain's custom endpoint URLs.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [OrganizationDomainArgs].
  /// [domainAccessRoleArn] ARN of the IAM role that CloudWatch Omni assumes to access the organization. The role must be in the management account, trust `cloudwatch.amazonaws.com` for `sts:AssumeRole` and `sts:TagSession`, and have the `CloudWatchOmniDomainAccessPolicy` AWS managed policy attached.
  /// [identityProviderConfiguration] Identity provider configuration. Required when `identityProviders` includes `IDC`. See below.
  /// [identityProviders] Set of identity providers that users can sign in with. Valid values: `IAM`, `IDC`.
  /// [name] Name of the domain. Must be 3-63 characters, contain only lowercase letters, numbers, and hyphens, begin and end with a letter or number, and not contain consecutive hyphens. Changing the name changes the domain's custom endpoint URLs.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const OrganizationDomainArgs({
    required this.domainAccessRoleArn,
    this.identityProviderConfiguration,
    required this.identityProviders,
    this.name,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainAccessRoleArn': domainAccessRoleArn,
      'identityProviderConfiguration': ?pulumi.Input.mapOptionalInputValue<OrganizationDomainIdentityProviderConfiguration, Map<String, dynamic>>(identityProviderConfiguration, (value) => value.toMap()),
      'identityProviders': identityProviders,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory OrganizationDomainArgs.fromMap(Map<String, dynamic> map) {
    return OrganizationDomainArgs(
      domainAccessRoleArn: pulumi.Input.fromValue(map['domainAccessRoleArn'] as String),
      identityProviderConfiguration: (() { final guardedValue = map['identityProviderConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OrganizationDomainIdentityProviderConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      identityProviders: pulumi.Input.fromValue((map['identityProviders'] as List).cast<String>()),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
