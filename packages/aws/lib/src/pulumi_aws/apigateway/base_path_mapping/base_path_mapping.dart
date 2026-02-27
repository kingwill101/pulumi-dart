import 'package:pulumi/pulumi.dart';
import 'base_path_mapping_args.dart';

/// Connects a custom domain name registered via `aws.apigateway.DomainName`
/// with a deployed API so that its methods can be called via the
/// custom domain name.
///
/// ## Import
///
/// For a non-root `base_path`:
///
///
/// For a non-root `base_path` and a private custom domain name:
///
///
/// Using `pulumi import`, import `aws.apigateway.BasePathMapping` using the domain name and base path or domain name, base path and domain name ID (for private custom domain names). For example:
///
/// For an empty `base_path` or, in other words, a root path (`/`):
///
/// ```sh
/// $ pulumi import aws:apigateway/basePathMapping:BasePathMapping example example.com/
/// ```
///
/// For a non-root `base_path`:
///
/// ```sh
/// $ pulumi import aws:apigateway/basePathMapping:BasePathMapping example example.com/base-path
/// ```
///
/// For a non-root `base_path` and a private custom domain name:
///
/// ```sh
/// $ pulumi import aws:apigateway/basePathMapping:BasePathMapping example api.internal.example.com/base-path/abcde12345
/// ```
class BasePathMapping extends CustomResource {
  /// Path segment that must be prepended to the path when accessing the API via this mapping. If omitted, the API is exposed at the root of the given domain.
  late final Output<String?> basePath;

  /// Already-registered domain name to connect the API to.
  late final Output<String> domainName;

  /// The identifier for the domain name resource. Supported only for private custom domain names.
  late final Output<String?> domainNameId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// ID of the API to connect.
  late final Output<String> restApi;

  /// Name of a specific deployment stage to expose at the given path. If omitted, callers may select any stage by including its name as a path element after the base path.
  late final Output<String?> stageName;

  BasePathMapping(
    String name, {
    BasePathMappingArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:apigateway/basePathMapping:BasePathMapping',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.basePath = registerOutput<String?>('basePath');
    this.domainName = registerOutput<String>('domainName');
    this.domainNameId = registerOutput<String?>('domainNameId');
    this.region = registerOutput<String>('region');
    this.restApi = registerOutput<String>('restApi');
    this.stageName = registerOutput<String?>('stageName');
  }
}
