import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_key_wafv2_args.dart';

/// Provides an AWS WAFv2 API Key resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import WAFv2 API Key using `api_key,scope`. For example:
///
/// ```sh
/// $ pulumi import aws:wafv2/apiKey:ApiKey example a1b2c3d4-5678-90ab-cdef-EXAMPLE11111,REGIONAL
/// ```
class ApiKeyWafv2 extends pulumi.CustomResource {
  /// The generated API key. This value is sensitive.
  late final pulumi.Output<String> apiKey;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Specifies whether this is for an AWS CloudFront distribution or for a regional application. Valid values are `CLOUDFRONT` or `REGIONAL`. Changing this forces a new resource to be created. **NOTE:** WAFv2 API Keys deployed for `CLOUDFRONT` must be created within the `us-east-1` region.
  late final pulumi.Output<String> scope;

  /// The domains that you want to be able to use the API key with, for example `example.com`. You can specify up to 5 domains. Changing this forces a new resource to be created.
  late final pulumi.Output<List<String>> tokenDomains;

  ApiKeyWafv2(
    String name, {
    ApiKeyWafv2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:wafv2/apiKey:ApiKey',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiKey = registerOutput<String>('apiKey');
    this.region = registerOutput<String>('region');
    this.scope = registerOutput<String>('scope');
    this.tokenDomains = registerOutput<List<String>>('tokenDomains');
  }
}
