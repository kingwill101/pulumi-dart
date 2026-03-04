// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'trusted_token_issuer_trusted_token_issuer_configuration.dart';

/// {@template pulumi_ssoadmin_trusted_token_issuer_trusted_token_issuer_args_doc}
/// The set of arguments for TrustedTokenIssuer.
/// {@endtemplate}
/// {@macro pulumi_ssoadmin_trusted_token_issuer_trusted_token_issuer_args_doc}
class TrustedTokenIssuerArgs {
  /// A unique, case-sensitive ID that you provide to ensure the idempotency of the request. AWS generates a random value when not provided.
  final pulumi.Input<String>? clientToken;

  /// ARN of the instance of IAM Identity Center.
  final pulumi.Input<String> instanceArn;

  /// Name of the trusted token issuer.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// A block that specifies settings that apply to the trusted token issuer, these change depending on the type you specify in `trusted_token_issuer_type`. Documented below.
  final pulumi.Input<TrustedTokenIssuerTrustedTokenIssuerConfiguration>
  trustedTokenIssuerConfiguration;

  /// Specifies the type of the trusted token issuer. Valid values are `OIDC_JWT`
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> trustedTokenIssuerType;

  /// Creates a new [TrustedTokenIssuerArgs].
  /// [clientToken] A unique, case-sensitive ID that you provide to ensure the idempotency of the request. AWS generates a random value when not provided.
  /// [instanceArn] ARN of the instance of IAM Identity Center.
  /// [name] Name of the trusted token issuer.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [trustedTokenIssuerConfiguration] A block that specifies settings that apply to the trusted token issuer, these change depending on the type you specify in `trusted_token_issuer_type`. Documented below.
  /// [trustedTokenIssuerType] Specifies the type of the trusted token issuer. Valid values are `OIDC_JWT`
  TrustedTokenIssuerArgs({
    this.clientToken,
    required this.instanceArn,
    this.name,
    this.region,
    this.tags,
    required this.trustedTokenIssuerConfiguration,
    required this.trustedTokenIssuerType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientToken': ?clientToken,
      'instanceArn': instanceArn,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
      'trustedTokenIssuerConfiguration':
          pulumi.Input.mapInputValue<
            TrustedTokenIssuerTrustedTokenIssuerConfiguration,
            Map<String, dynamic>
          >(trustedTokenIssuerConfiguration, (value) => value.toMap()),
      'trustedTokenIssuerType': trustedTokenIssuerType,
    };
  }

  factory TrustedTokenIssuerArgs.fromMap(Map<String, dynamic> map) {
    return TrustedTokenIssuerArgs(
      clientToken: (() {
        final guardedValue = map['clientToken'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      instanceArn: pulumi.Input.fromValue(map['instanceArn'] as String),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      trustedTokenIssuerConfiguration: pulumi.Input.fromValue(
        TrustedTokenIssuerTrustedTokenIssuerConfiguration.fromMap(
          (map['trustedTokenIssuerConfiguration']! as Map)
              .cast<String, dynamic>(),
        ),
      ),
      trustedTokenIssuerType: pulumi.Input.fromValue(
        map['trustedTokenIssuerType'] as String,
      ),
    );
  }
}
