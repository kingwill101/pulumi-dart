import 'package:pulumi/pulumi.dart' as pulumi;
import 'base_path_mapping_args.dart';
import 'base_path_mapping_state.dart';

/// Connects a custom domain name registered via `aws.apigateway.DomainName`
/// with a deployed API so that its methods can be called via the
/// custom domain name.
///
/// ## Import
///
/// For a non-root `basePath`:
///
///
/// For a non-root `basePath` and a private custom domain name:
///
///
/// Using `pulumi import`, import `aws.apigateway.BasePathMapping` using the domain name and base path or domain name, base path and domain name ID (for private custom domain names). For example:
///
/// For an empty `basePath` or, in other words, a root path (`/`):
///
/// ```sh
/// $ pulumi import aws:apigateway/basePathMapping:BasePathMapping example example.com/
/// ```
///
/// For a non-root `basePath`:
///
/// ```sh
/// $ pulumi import aws:apigateway/basePathMapping:BasePathMapping example example.com/base-path
/// ```
///
/// For a non-root `basePath` and a private custom domain name:
///
/// ```sh
/// $ pulumi import aws:apigateway/basePathMapping:BasePathMapping example api.internal.example.com/base-path/abcde12345
/// ```
class BasePathMapping extends pulumi.CustomResource {
  /// Path segment that must be prepended to the path when accessing the API via this mapping. If omitted, the API is exposed at the root of the given domain.
  late final pulumi.Output<String?> basePath;
  /// Already-registered domain name to connect the API to.
  late final pulumi.Output<String> domainName;
  /// Identifier for the domain name resource. Supported only for private custom domain names.
  late final pulumi.Output<String?> domainNameId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// ID of the API to connect.
  late final pulumi.Output<String> restApi;
  /// Name of a specific deployment stage to expose at the given path. If omitted, callers may select any stage by including its name as a path element after the base path.
  late final pulumi.Output<String?> stageName;

  /// Creates a new [BasePathMapping].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BasePathMapping]. {@macro pulumi_apigateway_base_path_mapping_base_path_mapping_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BasePathMapping(
    String name, {
    BasePathMappingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:apigateway/basePathMapping:BasePathMapping',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    basePath = registerOutput<String?>('basePath');
    domainName = registerOutput<String>('domainName');
    domainNameId = registerOutput<String?>('domainNameId');
    region = registerOutput<String>('region');
    restApi = registerOutput<String>('restApi');
    stageName = registerOutput<String?>('stageName');
  }

  /// Gets an existing [BasePathMapping] resource's state with the given [name] and [id].
  static BasePathMapping get(
    String name,
    pulumi.Input<String> id, {
    BasePathMappingState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return BasePathMapping._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  BasePathMapping._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:apigateway/basePathMapping:BasePathMapping',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    basePath = registerOutput<String?>('basePath');
    domainName = registerOutput<String>('domainName');
    domainNameId = registerOutput<String?>('domainNameId');
    region = registerOutput<String>('region');
    restApi = registerOutput<String>('restApi');
    stageName = registerOutput<String?>('stageName');
  }

  /// Creates a typed reference to an existing [BasePathMapping] resource.
  BasePathMapping.reference(String urn)
    : super(
        'aws:apigateway/basePathMapping:BasePathMapping',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    basePath = registerOutput<String?>('basePath');
    domainName = registerOutput<String>('domainName');
    domainNameId = registerOutput<String?>('domainNameId');
    region = registerOutput<String>('region');
    restApi = registerOutput<String>('restApi');
    stageName = registerOutput<String?>('stageName');
  }
}
