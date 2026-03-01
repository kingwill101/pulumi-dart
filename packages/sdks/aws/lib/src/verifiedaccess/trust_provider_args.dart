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
    pulumi.Output<String>? description,
    pulumi.Output<TrustProviderDeviceOptions>? deviceOptions,
    pulumi.Output<String>? deviceTrustProviderType,
    pulumi.Output<TrustProviderNativeApplicationOidcOptions>? nativeApplicationOidcOptions,
    pulumi.Output<TrustProviderOidcOptions>? oidcOptions,
    required pulumi.Output<String> policyReferenceName,
    pulumi.Output<String>? region,
    pulumi.Output<TrustProviderSseSpecification>? sseSpecification,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<String> trustProviderType,
    pulumi.Output<String>? userTrustProviderType,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      deviceOptions = pulumi.Input.asOptionalInput<TrustProviderDeviceOptions>(deviceOptions),
      deviceTrustProviderType = pulumi.Input.asOptionalInput<String>(deviceTrustProviderType),
      nativeApplicationOidcOptions = pulumi.Input.asOptionalInput<TrustProviderNativeApplicationOidcOptions>(nativeApplicationOidcOptions),
      oidcOptions = pulumi.Input.asOptionalInput<TrustProviderOidcOptions>(oidcOptions),
      policyReferenceName = pulumi.Input.asInput<String>(policyReferenceName),
      region = pulumi.Input.asOptionalInput<String>(region),
      sseSpecification = pulumi.Input.asOptionalInput<TrustProviderSseSpecification>(sseSpecification),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      trustProviderType = pulumi.Input.asInput<String>(trustProviderType),
      userTrustProviderType = pulumi.Input.asOptionalInput<String>(userTrustProviderType);

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
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      deviceOptions: map['deviceOptions'] == null ? null : pulumi.Output.create<TrustProviderDeviceOptions>(TrustProviderDeviceOptions.fromMap((map['deviceOptions'] as Map).cast<String, dynamic>())),
      deviceTrustProviderType: map['deviceTrustProviderType'] == null ? null : pulumi.Output.create<String>(map['deviceTrustProviderType'] as String),
      nativeApplicationOidcOptions: map['nativeApplicationOidcOptions'] == null ? null : pulumi.Output.create<TrustProviderNativeApplicationOidcOptions>(TrustProviderNativeApplicationOidcOptions.fromMap((map['nativeApplicationOidcOptions'] as Map).cast<String, dynamic>())),
      oidcOptions: map['oidcOptions'] == null ? null : pulumi.Output.create<TrustProviderOidcOptions>(TrustProviderOidcOptions.fromMap((map['oidcOptions'] as Map).cast<String, dynamic>())),
      policyReferenceName: pulumi.Output.create<String>(map['policyReferenceName'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      sseSpecification: map['sseSpecification'] == null ? null : pulumi.Output.create<TrustProviderSseSpecification>(TrustProviderSseSpecification.fromMap((map['sseSpecification'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      trustProviderType: pulumi.Output.create<String>(map['trustProviderType'] as String),
      userTrustProviderType: map['userTrustProviderType'] == null ? null : pulumi.Output.create<String>(map['userTrustProviderType'] as String),
    );
  }
}

