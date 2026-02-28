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
    String? clientToken,
    required String instanceArn,
    String? name,
    String? region,
    Map<String, String>? tags,
    required TrustedTokenIssuerTrustedTokenIssuerConfiguration
        trustedTokenIssuerConfiguration,
    required String trustedTokenIssuerType,
  })  : clientToken = pulumi.Input.asOptionalInput<String>(clientToken),
        instanceArn = pulumi.Input.asInput<String>(instanceArn),
        name = pulumi.Input.asOptionalInput<String>(name),
        region = pulumi.Input.asOptionalInput<String>(region),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
        trustedTokenIssuerConfiguration = pulumi.Input.asInput<
                TrustedTokenIssuerTrustedTokenIssuerConfiguration>(
            trustedTokenIssuerConfiguration),
        trustedTokenIssuerType =
            pulumi.Input.asInput<String>(trustedTokenIssuerType);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final clientTokenValue = clientToken;
    if (clientTokenValue != null) {
      map['clientToken'] = clientTokenValue;
    }
    map['instanceArn'] = instanceArn;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['trustedTokenIssuerConfiguration'] = pulumi.Input.mapInputValue<
            TrustedTokenIssuerTrustedTokenIssuerConfiguration,
            Map<String, dynamic>>(
        trustedTokenIssuerConfiguration, (value) => value.toMap());
    map['trustedTokenIssuerType'] = trustedTokenIssuerType;
    return map;
  }

  factory TrustedTokenIssuerArgs.fromMap(Map<String, dynamic> map) {
    return TrustedTokenIssuerArgs(
      clientToken:
          map['clientToken'] == null ? null : map['clientToken'] as String,
      instanceArn: map['instanceArn'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      trustedTokenIssuerConfiguration:
          TrustedTokenIssuerTrustedTokenIssuerConfiguration.fromMap(
              (map['trustedTokenIssuerConfiguration'] as Map)
                  .cast<String, dynamic>()),
      trustedTokenIssuerType: map['trustedTokenIssuerType'] as String,
    );
  }
}
