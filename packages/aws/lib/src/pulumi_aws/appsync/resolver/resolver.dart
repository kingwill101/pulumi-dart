import 'package:pulumi/pulumi.dart' as pulumi;
import '../resolver_caching_config/resolver_caching_config.dart';
import '../resolver_pipeline_config/resolver_pipeline_config.dart';
import '../resolver_runtime/resolver_runtime.dart';
import '../resolver_sync_config/resolver_sync_config.dart';
import 'resolver_args.dart';

/// Provides an AppSync Resolver.
///
/// ## Example Usage
///
///
///
///
/// ### JS
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.appsync.Resolver` using the `api_id`, a hyphen, `type`, a hypen and `field`. For example:
///
/// ```sh
/// $ pulumi import aws:appsync/resolver:Resolver example abcdef123456-exampleType-exampleField
/// ```
class Resolver extends pulumi.CustomResource {
  /// API ID for the GraphQL API.
  late final pulumi.Output<String> apiId;

  /// ARN
  late final pulumi.Output<String> arn;

  /// The Caching Config. See Caching Config.
  late final pulumi.Output<ResolverCachingConfig?> cachingConfig;

  /// The function code that contains the request and response functions. When code is used, the runtime is required. The runtime value must be APPSYNC_JS.
  late final pulumi.Output<String?> code;

  /// Data source name.
  late final pulumi.Output<String?> dataSource;

  /// Field name from the schema defined in the GraphQL API.
  late final pulumi.Output<String> field;

  /// Resolver type. Valid values are `UNIT` and `PIPELINE`.
  late final pulumi.Output<String?> kind;

  /// Maximum batching size for a resolver. Valid values are between `0` and `2000`.
  late final pulumi.Output<int?> maxBatchSize;

  /// The caching configuration for the resolver. See Pipeline Config.
  late final pulumi.Output<ResolverPipelineConfig?> pipelineConfig;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Request mapping template for UNIT resolver or 'before mapping template' for PIPELINE resolver. Required for non-Lambda resolvers.
  late final pulumi.Output<String?> requestTemplate;

  /// Response mapping template for UNIT resolver or 'after mapping template' for PIPELINE resolver. Required for non-Lambda resolvers.
  late final pulumi.Output<String?> responseTemplate;

  /// Describes a runtime used by an AWS AppSync pipeline resolver or AWS AppSync function. Specifies the name and version of the runtime to use. Note that if a runtime is specified, code must also be specified. See Runtime.
  late final pulumi.Output<ResolverRuntime?> runtime;

  /// Describes a Sync configuration for a resolver. See Sync Config.
  late final pulumi.Output<ResolverSyncConfig?> syncConfig;

  /// Type name from the schema defined in the GraphQL API.
  late final pulumi.Output<String> type;

  Resolver(
    String name, {
    ResolverArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:appsync/resolver:Resolver',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiId = registerOutput<String>('apiId');
    this.arn = registerOutput<String>('arn');
    this.cachingConfig =
        registerOutput<ResolverCachingConfig?>('cachingConfig');
    this.code = registerOutput<String?>('code');
    this.dataSource = registerOutput<String?>('dataSource');
    this.field = registerOutput<String>('field');
    this.kind = registerOutput<String?>('kind');
    this.maxBatchSize = registerOutput<int?>('maxBatchSize');
    this.pipelineConfig =
        registerOutput<ResolverPipelineConfig?>('pipelineConfig');
    this.region = registerOutput<String>('region');
    this.requestTemplate = registerOutput<String?>('requestTemplate');
    this.responseTemplate = registerOutput<String?>('responseTemplate');
    this.runtime = registerOutput<ResolverRuntime?>('runtime');
    this.syncConfig = registerOutput<ResolverSyncConfig?>('syncConfig');
    this.type = registerOutput<String>('type');
  }
}
