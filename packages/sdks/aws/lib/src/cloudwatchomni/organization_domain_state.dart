// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_domain_identity_provider_configuration.dart';

/// Input properties used for looking up and filtering OrganizationDomain resources.
class OrganizationDomainState {
  /// ARN of the organization domain.
  final pulumi.Input<String?>? arn;
  /// Additional endpoint URLs derived from the domain name.
  final pulumi.Input<List<String>?>? customEndpointUrls;
  /// ARN of the IAM role that CloudWatch Omni assumes to access the organization. The role must be in the management account, trust `cloudwatch.amazonaws.com` for `sts:AssumeRole` and `sts:TagSession`, and have the `CloudWatchOmniDomainAccessPolicy` AWS managed policy attached.
  final pulumi.Input<String?>? domainAccessRoleArn;
  /// HTTPS endpoint URL for accessing the domain.
  final pulumi.Input<String?>? domainEndpointUrl;
  /// Unique identifier of the organization domain.
  final pulumi.Input<String?>? domainId;
  /// ARN of the IAM Identity Center application. Only set when `identityProviders` includes `IDC`.
  final pulumi.Input<String?>? identityCenterApplicationArn;
  /// Identity provider configuration. Required when `identityProviders` includes `IDC`. See below.
  final pulumi.Input<OrganizationDomainIdentityProviderConfiguration?>? identityProviderConfiguration;
  /// Set of identity providers that users can sign in with. Valid values: `IAM`, `IDC`.
  final pulumi.Input<List<String>?>? identityProviders;
  /// Name of the domain. Must be 3-63 characters, contain only lowercase letters, numbers, and hyphens, begin and end with a letter or number, and not contain consecutive hyphens. Changing the name changes the domain's custom endpoint URLs.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? name;
  /// ID of the organization that the domain belongs to.
  final pulumi.Input<String?>? organizationId;
  /// ID of the management account that owns the domain.
  final pulumi.Input<String?>? ownerAccountId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Status of the domain.
  final pulumi.Input<String?>? status;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;

  /// Creates a new [OrganizationDomainState].
  /// [arn] ARN of the organization domain.
  /// [customEndpointUrls] Additional endpoint URLs derived from the domain name.
  /// [domainAccessRoleArn] ARN of the IAM role that CloudWatch Omni assumes to access the organization. The role must be in the management account, trust `cloudwatch.amazonaws.com` for `sts:AssumeRole` and `sts:TagSession`, and have the `CloudWatchOmniDomainAccessPolicy` AWS managed policy attached.
  /// [domainEndpointUrl] HTTPS endpoint URL for accessing the domain.
  /// [domainId] Unique identifier of the organization domain.
  /// [identityCenterApplicationArn] ARN of the IAM Identity Center application. Only set when `identityProviders` includes `IDC`.
  /// [identityProviderConfiguration] Identity provider configuration. Required when `identityProviders` includes `IDC`. See below.
  /// [identityProviders] Set of identity providers that users can sign in with. Valid values: `IAM`, `IDC`.
  /// [name] Name of the domain. Must be 3-63 characters, contain only lowercase letters, numbers, and hyphens, begin and end with a letter or number, and not contain consecutive hyphens. Changing the name changes the domain's custom endpoint URLs.
  /// [organizationId] ID of the organization that the domain belongs to.
  /// [ownerAccountId] ID of the management account that owns the domain.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [status] Status of the domain.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  const OrganizationDomainState({
    this.arn,
    this.customEndpointUrls,
    this.domainAccessRoleArn,
    this.domainEndpointUrl,
    this.domainId,
    this.identityCenterApplicationArn,
    this.identityProviderConfiguration,
    this.identityProviders,
    this.name,
    this.organizationId,
    this.ownerAccountId,
    this.region,
    this.status,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'customEndpointUrls': ?customEndpointUrls,
      'domainAccessRoleArn': ?domainAccessRoleArn,
      'domainEndpointUrl': ?domainEndpointUrl,
      'domainId': ?domainId,
      'identityCenterApplicationArn': ?identityCenterApplicationArn,
      'identityProviderConfiguration': ?pulumi.Input.mapOptionalInputValue<OrganizationDomainIdentityProviderConfiguration, Map<String, dynamic>>(identityProviderConfiguration, (value) => value.toMap()),
      'identityProviders': ?identityProviders,
      'name': ?name,
      'organizationId': ?organizationId,
      'ownerAccountId': ?ownerAccountId,
      'region': ?region,
      'status': ?status,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory OrganizationDomainState.fromMap(Map<String, dynamic> map) {
    return OrganizationDomainState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customEndpointUrls: (() { final guardedValue = map['customEndpointUrls']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      domainAccessRoleArn: (() { final guardedValue = map['domainAccessRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domainEndpointUrl: (() { final guardedValue = map['domainEndpointUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domainId: (() { final guardedValue = map['domainId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identityCenterApplicationArn: (() { final guardedValue = map['identityCenterApplicationArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identityProviderConfiguration: (() { final guardedValue = map['identityProviderConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OrganizationDomainIdentityProviderConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      identityProviders: (() { final guardedValue = map['identityProviders']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      organizationId: (() { final guardedValue = map['organizationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ownerAccountId: (() { final guardedValue = map['ownerAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
