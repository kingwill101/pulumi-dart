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
  final pulumi.Input<TrustProviderNativeApplicationOidcOptions>?
  nativeApplicationOidcOptions;

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
      'deviceOptions':
          ?pulumi.Input.mapOptionalInputValue<
            TrustProviderDeviceOptions,
            Map<String, dynamic>
          >(deviceOptions, (value) => value.toMap()),
      'deviceTrustProviderType': ?deviceTrustProviderType,
      'nativeApplicationOidcOptions':
          ?pulumi.Input.mapOptionalInputValue<
            TrustProviderNativeApplicationOidcOptions,
            Map<String, dynamic>
          >(nativeApplicationOidcOptions, (value) => value.toMap()),
      'oidcOptions':
          ?pulumi.Input.mapOptionalInputValue<
            TrustProviderOidcOptions,
            Map<String, dynamic>
          >(oidcOptions, (value) => value.toMap()),
      'policyReferenceName': policyReferenceName,
      'region': ?region,
      'sseSpecification':
          ?pulumi.Input.mapOptionalInputValue<
            TrustProviderSseSpecification,
            Map<String, dynamic>
          >(sseSpecification, (value) => value.toMap()),
      'tags': ?tags,
      'trustProviderType': trustProviderType,
      'userTrustProviderType': ?userTrustProviderType,
    };
  }

  factory TrustProviderArgs.fromMap(Map<String, dynamic> map) {
    return TrustProviderArgs(
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      deviceOptions: (() {
        final guardedValue = map['deviceOptions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          TrustProviderDeviceOptions.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      deviceTrustProviderType: (() {
        final guardedValue = map['deviceTrustProviderType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      nativeApplicationOidcOptions: (() {
        final guardedValue = map['nativeApplicationOidcOptions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          TrustProviderNativeApplicationOidcOptions.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      oidcOptions: (() {
        final guardedValue = map['oidcOptions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          TrustProviderOidcOptions.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      policyReferenceName: pulumi.Input.fromValue(
        map['policyReferenceName'] as String,
      ),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sseSpecification: (() {
        final guardedValue = map['sseSpecification'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          TrustProviderSseSpecification.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      trustProviderType: pulumi.Input.fromValue(
        map['trustProviderType'] as String,
      ),
      userTrustProviderType: (() {
        final guardedValue = map['userTrustProviderType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
