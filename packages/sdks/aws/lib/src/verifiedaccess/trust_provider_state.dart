// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'trust_provider_device_options.dart';
import 'trust_provider_native_application_oidc_options.dart';
import 'trust_provider_oidc_options.dart';
import 'trust_provider_sse_specification.dart';

/// Input properties used for looking up and filtering TrustProvider resources.
class TrustProviderState {
  /// Description for the AWS Verified Access trust provider.
  final pulumi.Input<String?>? description;
  /// Block of options for device identity based trust providers. See below.
  final pulumi.Input<TrustProviderDeviceOptions?>? deviceOptions;
  /// Type of device-based trust provider.
  final pulumi.Input<String?>? deviceTrustProviderType;
  /// OpenID Connect details for a Native Application OIDC, user-identity based trust provider. See below.
  final pulumi.Input<TrustProviderNativeApplicationOidcOptions?>? nativeApplicationOidcOptions;
  /// OpenID Connect details for an oidc-type, user-identity based trust provider. See below.
  final pulumi.Input<TrustProviderOidcOptions?>? oidcOptions;
  /// Identifier to be used when working with policy rules.
  final pulumi.Input<String?>? policyReferenceName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Block of options in use for server side encryption. See below.
  final pulumi.Input<TrustProviderSseSpecification?>? sseSpecification;
  /// Key-value mapping of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  final pulumi.Input<Map<String, String>?>? tagsAll;
  /// Type of trust provider can be either user or device-based.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? trustProviderType;
  /// Type of user-based trust provider.
  final pulumi.Input<String?>? userTrustProviderType;

  /// Creates a new [TrustProviderState].
  /// [description] Description for the AWS Verified Access trust provider.
  /// [deviceOptions] Block of options for device identity based trust providers. See below.
  /// [deviceTrustProviderType] Type of device-based trust provider.
  /// [nativeApplicationOidcOptions] OpenID Connect details for a Native Application OIDC, user-identity based trust provider. See below.
  /// [oidcOptions] OpenID Connect details for an oidc-type, user-identity based trust provider. See below.
  /// [policyReferenceName] Identifier to be used when working with policy rules.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sseSpecification] Block of options in use for server side encryption. See below.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Optional.
  /// [trustProviderType] Type of trust provider can be either user or device-based.
  /// [userTrustProviderType] Type of user-based trust provider.
  const TrustProviderState({
    this.description,
    this.deviceOptions,
    this.deviceTrustProviderType,
    this.nativeApplicationOidcOptions,
    this.oidcOptions,
    this.policyReferenceName,
    this.region,
    this.sseSpecification,
    this.tags,
    this.tagsAll,
    this.trustProviderType,
    this.userTrustProviderType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'deviceOptions': ?pulumi.Input.mapOptionalInputValue<TrustProviderDeviceOptions, Map<String, dynamic>>(deviceOptions, (value) => value.toMap()),
      'deviceTrustProviderType': ?deviceTrustProviderType,
      'nativeApplicationOidcOptions': ?pulumi.Input.mapOptionalInputValue<TrustProviderNativeApplicationOidcOptions, Map<String, dynamic>>(nativeApplicationOidcOptions, (value) => value.toMap()),
      'oidcOptions': ?pulumi.Input.mapOptionalInputValue<TrustProviderOidcOptions, Map<String, dynamic>>(oidcOptions, (value) => value.toMap()),
      'policyReferenceName': ?policyReferenceName,
      'region': ?region,
      'sseSpecification': ?pulumi.Input.mapOptionalInputValue<TrustProviderSseSpecification, Map<String, dynamic>>(sseSpecification, (value) => value.toMap()),
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'trustProviderType': ?trustProviderType,
      'userTrustProviderType': ?userTrustProviderType,
    };
  }

  factory TrustProviderState.fromMap(Map<String, dynamic> map) {
    return TrustProviderState(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deviceOptions: (() { final guardedValue = map['deviceOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TrustProviderDeviceOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deviceTrustProviderType: (() { final guardedValue = map['deviceTrustProviderType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nativeApplicationOidcOptions: (() { final guardedValue = map['nativeApplicationOidcOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TrustProviderNativeApplicationOidcOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      oidcOptions: (() { final guardedValue = map['oidcOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TrustProviderOidcOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      policyReferenceName: (() { final guardedValue = map['policyReferenceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sseSpecification: (() { final guardedValue = map['sseSpecification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TrustProviderSseSpecification.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      trustProviderType: (() { final guardedValue = map['trustProviderType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userTrustProviderType: (() { final guardedValue = map['userTrustProviderType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
