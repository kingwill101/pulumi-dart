import 'package:pulumi/pulumi.dart';
import '../trust_provider_device_options/trust_provider_device_options.dart';
import '../trust_provider_native_application_oidc_options/trust_provider_native_application_oidc_options.dart';
import '../trust_provider_oidc_options/trust_provider_oidc_options.dart';
import '../trust_provider_sse_specification/trust_provider_sse_specification.dart';
import 'trust_provider_args.dart';

/// Resource for managing a Verified Access Trust Provider.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Transfer Workflows using the  `id`. For example:
///
/// ```sh
/// $ pulumi import aws:verifiedaccess/trustProvider:TrustProvider example vatp-8012925589
/// ```
class TrustProvider extends CustomResource {
  /// A description for the AWS Verified Access trust provider.
  late final Output<String?> description;

  /// A block of options for device identity based trust providers.
  late final Output<TrustProviderDeviceOptions?> deviceOptions;

  /// The type of device-based trust provider.
  late final Output<String?> deviceTrustProviderType;

  /// The OpenID Connect details for an Native Application OIDC, user-identity based trust provider.
  late final Output<TrustProviderNativeApplicationOidcOptions?>
      nativeApplicationOidcOptions;

  /// The OpenID Connect details for an oidc-type, user-identity based trust provider.
  late final Output<TrustProviderOidcOptions?> oidcOptions;

  /// The identifier to be used when working with policy rules.
  late final Output<String> policyReferenceName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;
  late final Output<TrustProviderSseSpecification> sseSpecification;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;
  late final Output<Map<String, String>> tagsAll;

  /// The type of trust provider can be either user or device-based.
  ///
  /// The following arguments are optional:
  late final Output<String> trustProviderType;

  /// The type of user-based trust provider.
  late final Output<String?> userTrustProviderType;

  TrustProvider(
    String name, {
    TrustProviderArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:verifiedaccess/trustProvider:TrustProvider',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.deviceOptions =
        registerOutput<TrustProviderDeviceOptions?>('deviceOptions');
    this.deviceTrustProviderType =
        registerOutput<String?>('deviceTrustProviderType');
    this.nativeApplicationOidcOptions =
        registerOutput<TrustProviderNativeApplicationOidcOptions?>(
            'nativeApplicationOidcOptions');
    this.oidcOptions = registerOutput<TrustProviderOidcOptions?>('oidcOptions');
    this.policyReferenceName = registerOutput<String>('policyReferenceName');
    this.region = registerOutput<String>('region');
    this.sseSpecification =
        registerOutput<TrustProviderSseSpecification>('sseSpecification');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.trustProviderType = registerOutput<String>('trustProviderType');
    this.userTrustProviderType =
        registerOutput<String?>('userTrustProviderType');
  }
}
