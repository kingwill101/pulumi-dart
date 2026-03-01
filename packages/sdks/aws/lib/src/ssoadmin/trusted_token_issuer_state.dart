// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'trusted_token_issuer_trusted_token_issuer_configuration.dart';

/// Input properties used for looking up and filtering TrustedTokenIssuer resources.
class TrustedTokenIssuerState {
  /// ARN of the trusted token issuer.
  final pulumi.Input<String>? arn;
  /// A unique, case-sensitive ID that you provide to ensure the idempotency of the request. AWS generates a random value when not provided.
  final pulumi.Input<String>? clientToken;
  /// ARN of the instance of IAM Identity Center.
  final pulumi.Input<String>? instanceArn;
  /// Name of the trusted token issuer.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// A block that specifies settings that apply to the trusted token issuer, these change depending on the type you specify in `trusted_token_issuer_type`. Documented below.
  final pulumi.Input<TrustedTokenIssuerTrustedTokenIssuerConfiguration>? trustedTokenIssuerConfiguration;
  /// Specifies the type of the trusted token issuer. Valid values are `OIDC_JWT`
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? trustedTokenIssuerType;

  /// Creates a new [TrustedTokenIssuerState].
  /// [arn] ARN of the trusted token issuer.
  /// [clientToken] A unique, case-sensitive ID that you provide to ensure the idempotency of the request. AWS generates a random value when not provided.
  /// [instanceArn] ARN of the instance of IAM Identity Center.
  /// [name] Name of the trusted token issuer.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [trustedTokenIssuerConfiguration] A block that specifies settings that apply to the trusted token issuer, these change depending on the type you specify in `trusted_token_issuer_type`. Documented below.
  /// [trustedTokenIssuerType] Specifies the type of the trusted token issuer. Valid values are `OIDC_JWT`
  TrustedTokenIssuerState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? clientToken,
    pulumi.Output<String>? instanceArn,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<TrustedTokenIssuerTrustedTokenIssuerConfiguration>? trustedTokenIssuerConfiguration,
    pulumi.Output<String>? trustedTokenIssuerType,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      clientToken = pulumi.Input.asOptionalInput<String>(clientToken),
      instanceArn = pulumi.Input.asOptionalInput<String>(instanceArn),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      trustedTokenIssuerConfiguration = pulumi.Input.asOptionalInput<TrustedTokenIssuerTrustedTokenIssuerConfiguration>(trustedTokenIssuerConfiguration),
      trustedTokenIssuerType = pulumi.Input.asOptionalInput<String>(trustedTokenIssuerType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'clientToken': ?clientToken,
      'instanceArn': ?instanceArn,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'trustedTokenIssuerConfiguration': ?pulumi.Input.mapOptionalInputValue<TrustedTokenIssuerTrustedTokenIssuerConfiguration, Map<String, dynamic>>(trustedTokenIssuerConfiguration, (value) => value.toMap()),
      'trustedTokenIssuerType': ?trustedTokenIssuerType,
    };
  }

  factory TrustedTokenIssuerState.fromMap(Map<String, dynamic> map) {
    return TrustedTokenIssuerState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      clientToken: map['clientToken'] == null ? null : pulumi.Output.create<String>(map['clientToken'] as String),
      instanceArn: map['instanceArn'] == null ? null : pulumi.Output.create<String>(map['instanceArn'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      trustedTokenIssuerConfiguration: map['trustedTokenIssuerConfiguration'] == null ? null : pulumi.Output.create<TrustedTokenIssuerTrustedTokenIssuerConfiguration>(TrustedTokenIssuerTrustedTokenIssuerConfiguration.fromMap((map['trustedTokenIssuerConfiguration'] as Map).cast<String, dynamic>())),
      trustedTokenIssuerType: map['trustedTokenIssuerType'] == null ? null : pulumi.Output.create<String>(map['trustedTokenIssuerType'] as String),
    );
  }
}

