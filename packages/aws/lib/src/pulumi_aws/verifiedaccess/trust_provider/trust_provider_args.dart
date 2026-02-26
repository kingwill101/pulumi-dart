// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../trust_provider_device_options/trust_provider_device_options.dart';
import '../trust_provider_native_application_oidc_options/trust_provider_native_application_oidc_options.dart';
import '../trust_provider_oidc_options/trust_provider_oidc_options.dart';
import '../trust_provider_sse_specification/trust_provider_sse_specification.dart';

/// The set of arguments for TrustProvider.
class TrustProviderArgs {
  /// A description for the AWS Verified Access trust provider.
  final Input<String>? description;

  /// A block of options for device identity based trust providers.
  final Input<TrustProviderDeviceOptions>? deviceOptions;

  /// The type of device-based trust provider.
  final Input<String>? deviceTrustProviderType;

  /// The OpenID Connect details for an Native Application OIDC, user-identity based trust provider.
  final Input<TrustProviderNativeApplicationOidcOptions>?
      nativeApplicationOidcOptions;

  /// The OpenID Connect details for an oidc-type, user-identity based trust provider.
  final Input<TrustProviderOidcOptions>? oidcOptions;

  /// The identifier to be used when working with policy rules.
  final Input<String> policyReferenceName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;
  final Input<TrustProviderSseSpecification>? sseSpecification;

  /// Key-value mapping of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// The type of trust provider can be either user or device-based.
  ///
  /// The following arguments are optional:
  final Input<String> trustProviderType;

  /// The type of user-based trust provider.
  final Input<String>? userTrustProviderType;

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
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final deviceOptionsValue = deviceOptions;
    if (deviceOptionsValue != null) {
      map['deviceOptions'] = Input.mapOptionalInputValue<
          TrustProviderDeviceOptions,
          Map<String, dynamic>>(deviceOptionsValue, (value) => value.toMap());
    }
    final deviceTrustProviderTypeValue = deviceTrustProviderType;
    if (deviceTrustProviderTypeValue != null) {
      map['deviceTrustProviderType'] = deviceTrustProviderTypeValue;
    }
    final nativeApplicationOidcOptionsValue = nativeApplicationOidcOptions;
    if (nativeApplicationOidcOptionsValue != null) {
      map['nativeApplicationOidcOptions'] = Input.mapOptionalInputValue<
              TrustProviderNativeApplicationOidcOptions, Map<String, dynamic>>(
          nativeApplicationOidcOptionsValue, (value) => value.toMap());
    }
    final oidcOptionsValue = oidcOptions;
    if (oidcOptionsValue != null) {
      map['oidcOptions'] = Input.mapOptionalInputValue<TrustProviderOidcOptions,
          Map<String, dynamic>>(oidcOptionsValue, (value) => value.toMap());
    }
    map['policyReferenceName'] = policyReferenceName;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final sseSpecificationValue = sseSpecification;
    if (sseSpecificationValue != null) {
      map['sseSpecification'] = Input.mapOptionalInputValue<
              TrustProviderSseSpecification, Map<String, dynamic>>(
          sseSpecificationValue, (value) => value.toMap());
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['trustProviderType'] = trustProviderType;
    final userTrustProviderTypeValue = userTrustProviderType;
    if (userTrustProviderTypeValue != null) {
      map['userTrustProviderType'] = userTrustProviderTypeValue;
    }
    return map;
  }

  factory TrustProviderArgs.fromMap(Map<String, dynamic> map) {
    return TrustProviderArgs(
      description: Input.asOptionalInput<String>(map['description']),
      deviceOptions: Input.asOptionalInput<TrustProviderDeviceOptions>(
          map['deviceOptions']),
      deviceTrustProviderType:
          Input.asOptionalInput<String>(map['deviceTrustProviderType']),
      nativeApplicationOidcOptions:
          Input.asOptionalInput<TrustProviderNativeApplicationOidcOptions>(
              map['nativeApplicationOidcOptions']),
      oidcOptions:
          Input.asOptionalInput<TrustProviderOidcOptions>(map['oidcOptions']),
      policyReferenceName: Input.asInput<String>(map['policyReferenceName']),
      region: Input.asOptionalInput<String>(map['region']),
      sseSpecification: Input.asOptionalInput<TrustProviderSseSpecification>(
          map['sseSpecification']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      trustProviderType: Input.asInput<String>(map['trustProviderType']),
      userTrustProviderType:
          Input.asOptionalInput<String>(map['userTrustProviderType']),
    );
  }
}
