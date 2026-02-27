// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../trust_provider_device_options/trust_provider_device_options.dart';
import '../trust_provider_native_application_oidc_options/trust_provider_native_application_oidc_options.dart';
import '../trust_provider_oidc_options/trust_provider_oidc_options.dart';
import '../trust_provider_sse_specification/trust_provider_sse_specification.dart';

/// The set of arguments for TrustProvider.
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
      map['deviceOptions'] = pulumi.Input.mapOptionalInputValue<
          TrustProviderDeviceOptions,
          Map<String, dynamic>>(deviceOptionsValue, (value) => value.toMap());
    }
    final deviceTrustProviderTypeValue = deviceTrustProviderType;
    if (deviceTrustProviderTypeValue != null) {
      map['deviceTrustProviderType'] = deviceTrustProviderTypeValue;
    }
    final nativeApplicationOidcOptionsValue = nativeApplicationOidcOptions;
    if (nativeApplicationOidcOptionsValue != null) {
      map['nativeApplicationOidcOptions'] = pulumi.Input.mapOptionalInputValue<
              TrustProviderNativeApplicationOidcOptions, Map<String, dynamic>>(
          nativeApplicationOidcOptionsValue, (value) => value.toMap());
    }
    final oidcOptionsValue = oidcOptions;
    if (oidcOptionsValue != null) {
      map['oidcOptions'] = pulumi.Input.mapOptionalInputValue<
          TrustProviderOidcOptions,
          Map<String, dynamic>>(oidcOptionsValue, (value) => value.toMap());
    }
    map['policyReferenceName'] = policyReferenceName;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final sseSpecificationValue = sseSpecification;
    if (sseSpecificationValue != null) {
      map['sseSpecification'] = pulumi.Input.mapOptionalInputValue<
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
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      deviceOptions: pulumi.Input.asOptionalInput<TrustProviderDeviceOptions>(
          map['deviceOptions']),
      deviceTrustProviderType:
          pulumi.Input.asOptionalInput<String>(map['deviceTrustProviderType']),
      nativeApplicationOidcOptions: pulumi.Input.asOptionalInput<
              TrustProviderNativeApplicationOidcOptions>(
          map['nativeApplicationOidcOptions']),
      oidcOptions: pulumi.Input.asOptionalInput<TrustProviderOidcOptions>(
          map['oidcOptions']),
      policyReferenceName:
          pulumi.Input.asInput<String>(map['policyReferenceName']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      sseSpecification:
          pulumi.Input.asOptionalInput<TrustProviderSseSpecification>(
              map['sseSpecification']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      trustProviderType: pulumi.Input.asInput<String>(map['trustProviderType']),
      userTrustProviderType:
          pulumi.Input.asOptionalInput<String>(map['userTrustProviderType']),
    );
  }
}
