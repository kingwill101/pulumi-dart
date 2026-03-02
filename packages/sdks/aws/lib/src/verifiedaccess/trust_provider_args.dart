// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'trust_provider_device_options.dart';
import 'trust_provider_native_application_oidc_options.dart';
import 'trust_provider_oidc_options.dart';
import 'trust_provider_sse_specification.dart';

/// {@template pulumi_verifiedaccess_trust_provider_trust_provider_args_doc}
/// The set of arguments for TrustProvider.
/// {@endtemplate}
/// {@macro pulumi_verifiedaccess_trust_provider_trust_provider_args_doc}
class TrustProviderArgs {
  /// A description for the AWS Verified Access trust provider.
  final pulumi.Input<String>? description;
  /// A block of options for device identity based trust providers.
  final pulumi.Input<TrustProviderDeviceOptions>? deviceOptions;
  /// The type of device-based trust provider.
  final pulumi.Input<String>? deviceTrustProviderType;
  /// The OpenID Connect details for an Native Application OIDC, user-identity based trust provider.
  final pulumi.Input<TrustProviderNativeApplicationOidcOptions>? nativeApplicationOidcOptions;
  /// The OpenID Connect details for an oidc-type, user-identity based trust provider.
  final pulumi.Input<TrustProviderOidcOptions>? oidcOptions;
  /// The identifier to be used when working with policy rules.
  final pulumi.Input<String> policyReferenceName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  final pulumi.Input<TrustProviderSseSpecification>? sseSpecification;
  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// The type of trust provider can be either user or device-based.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> trustProviderType;
  /// The type of user-based trust provider.
  final pulumi.Input<String>? userTrustProviderType;

  /// Creates a new [TrustProviderArgs].
  /// [description] A description for the AWS Verified Access trust provider.
  /// [deviceOptions] A block of options for device identity based trust providers.
  /// [deviceTrustProviderType] The type of device-based trust provider.
  /// [nativeApplicationOidcOptions] The OpenID Connect details for an Native Application OIDC, user-identity based trust provider.
  /// [oidcOptions] The OpenID Connect details for an oidc-type, user-identity based trust provider.
  /// [policyReferenceName] The identifier to be used when working with policy rules.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sseSpecification] Optional.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [trustProviderType] The type of trust provider can be either user or device-based.
  /// [userTrustProviderType] The type of user-based trust provider.
  TrustProviderArgs({
    this.description,
    this.deviceOptions,
    this.deviceTrustProviderType,
    this.nativeApplicationOidcOptions,
    this.oidcOptions,
    required this.policyReferenceName,
    this.region,
    this.sseSpecification,
    this.tags,
    required this.trustProviderType,
    this.userTrustProviderType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'deviceOptions': ?pulumi.Input.mapOptionalInputValue<TrustProviderDeviceOptions, Map<String, dynamic>>(deviceOptions, (value) => value.toMap()),
      'deviceTrustProviderType': ?deviceTrustProviderType,
      'nativeApplicationOidcOptions': ?pulumi.Input.mapOptionalInputValue<TrustProviderNativeApplicationOidcOptions, Map<String, dynamic>>(nativeApplicationOidcOptions, (value) => value.toMap()),
      'oidcOptions': ?pulumi.Input.mapOptionalInputValue<TrustProviderOidcOptions, Map<String, dynamic>>(oidcOptions, (value) => value.toMap()),
      'policyReferenceName': policyReferenceName,
      'region': ?region,
      'sseSpecification': ?pulumi.Input.mapOptionalInputValue<TrustProviderSseSpecification, Map<String, dynamic>>(sseSpecification, (value) => value.toMap()),
      'tags': ?tags,
      'trustProviderType': trustProviderType,
      'userTrustProviderType': ?userTrustProviderType,
    };
  }

  factory TrustProviderArgs.fromMap(Map<String, dynamic> map) {
    return TrustProviderArgs(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      deviceOptions: map['deviceOptions'] == null ? null : (TrustProviderDeviceOptions.fromMap((map['deviceOptions'] as Map).cast<String, dynamic>())).input(),
      deviceTrustProviderType: map['deviceTrustProviderType'] == null ? null : (map['deviceTrustProviderType'] as String).input(),
      nativeApplicationOidcOptions: map['nativeApplicationOidcOptions'] == null ? null : (TrustProviderNativeApplicationOidcOptions.fromMap((map['nativeApplicationOidcOptions'] as Map).cast<String, dynamic>())).input(),
      oidcOptions: map['oidcOptions'] == null ? null : (TrustProviderOidcOptions.fromMap((map['oidcOptions'] as Map).cast<String, dynamic>())).input(),
      policyReferenceName: (map['policyReferenceName'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      sseSpecification: map['sseSpecification'] == null ? null : (TrustProviderSseSpecification.fromMap((map['sseSpecification'] as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      trustProviderType: (map['trustProviderType'] as String).input(),
      userTrustProviderType: map['userTrustProviderType'] == null ? null : (map['userTrustProviderType'] as String).input(),
    );
  }
}

