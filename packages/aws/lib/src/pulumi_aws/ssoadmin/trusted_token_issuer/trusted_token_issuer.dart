import 'package:pulumi/pulumi.dart' as pulumi;
import '../trusted_token_issuer_trusted_token_issuer_configuration/trusted_token_issuer_trusted_token_issuer_configuration.dart';
import 'trusted_token_issuer_args.dart';

/// Resource for managing an AWS SSO Admin Trusted Token Issuer.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import SSO Admin Trusted Token Issuer using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:ssoadmin/trustedTokenIssuer:TrustedTokenIssuer example arn:aws:sso::123456789012:trustedTokenIssuer/ssoins-lu1ye3gew4mbc7ju/tti-2657c556-9707-11ee-b9d1-0242ac120002
/// ```
class TrustedTokenIssuer extends pulumi.CustomResource {
  /// ARN of the trusted token issuer.
  late final pulumi.Output<String> arn;

  /// A unique, case-sensitive ID that you provide to ensure the idempotency of the request. AWS generates a random value when not provided.
  late final pulumi.Output<String?> clientToken;

  /// ARN of the instance of IAM Identity Center.
  late final pulumi.Output<String> instanceArn;

  /// Name of the trusted token issuer.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// A block that specifies settings that apply to the trusted token issuer, these change depending on the type you specify in `trusted_token_issuer_type`. Documented below.
  late final pulumi.Output<TrustedTokenIssuerTrustedTokenIssuerConfiguration>
      trustedTokenIssuerConfiguration;

  /// Specifies the type of the trusted token issuer. Valid values are `OIDC_JWT`
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> trustedTokenIssuerType;

  TrustedTokenIssuer(
    String name, {
    TrustedTokenIssuerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ssoadmin/trustedTokenIssuer:TrustedTokenIssuer',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.clientToken = registerOutput<String?>('clientToken');
    this.instanceArn = registerOutput<String>('instanceArn');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.trustedTokenIssuerConfiguration =
        registerOutput<TrustedTokenIssuerTrustedTokenIssuerConfiguration>(
            'trustedTokenIssuerConfiguration');
    this.trustedTokenIssuerType =
        registerOutput<String>('trustedTokenIssuerType');
  }
}
