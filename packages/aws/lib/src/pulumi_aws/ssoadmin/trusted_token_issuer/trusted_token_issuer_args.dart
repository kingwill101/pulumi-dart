// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../trusted_token_issuer_trusted_token_issuer_configuration/trusted_token_issuer_trusted_token_issuer_configuration.dart';

/// The set of arguments for TrustedTokenIssuer.
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
      clientToken: pulumi.Input.asOptionalInput<String>(map['clientToken']),
      instanceArn: pulumi.Input.asInput<String>(map['instanceArn']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      trustedTokenIssuerConfiguration: pulumi.Input.asInput<
              TrustedTokenIssuerTrustedTokenIssuerConfiguration>(
          map['trustedTokenIssuerConfiguration']),
      trustedTokenIssuerType:
          pulumi.Input.asInput<String>(map['trustedTokenIssuerType']),
    );
  }
}
