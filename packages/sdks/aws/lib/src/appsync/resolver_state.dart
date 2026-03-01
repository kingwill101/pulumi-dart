// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resolver_caching_config.dart';
import 'resolver_pipeline_config.dart';
import 'resolver_runtime.dart';
import 'resolver_sync_config.dart';

/// Input properties used for looking up and filtering Resolver resources.
class ResolverState {
  /// API ID for the GraphQL API.
  final pulumi.Input<String>? apiId;
  /// ARN
  final pulumi.Input<String>? arn;
  /// The Caching Config. See Caching Config.
  final pulumi.Input<ResolverCachingConfig>? cachingConfig;
  /// The function code that contains the request and response functions. When code is used, the runtime is required. The runtime value must be APPSYNC_JS.
  final pulumi.Input<String>? code;
  /// Data source name.
  final pulumi.Input<String>? dataSource;
  /// Field name from the schema defined in the GraphQL API.
  final pulumi.Input<String>? field;
  /// Resolver type. Valid values are `UNIT` and `PIPELINE`.
  final pulumi.Input<String>? kind;
  /// Maximum batching size for a resolver. Valid values are between `0` and `2000`.
  final pulumi.Input<int>? maxBatchSize;
  /// The caching configuration for the resolver. See Pipeline Config.
  final pulumi.Input<ResolverPipelineConfig>? pipelineConfig;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Request mapping template for UNIT resolver or 'before mapping template' for PIPELINE resolver. Required for non-Lambda resolvers.
  final pulumi.Input<String>? requestTemplate;
  /// Response mapping template for UNIT resolver or 'after mapping template' for PIPELINE resolver. Required for non-Lambda resolvers.
  final pulumi.Input<String>? responseTemplate;
  /// Describes a runtime used by an AWS AppSync pipeline resolver or AWS AppSync function. Specifies the name and version of the runtime to use. Note that if a runtime is specified, code must also be specified. See Runtime.
  final pulumi.Input<ResolverRuntime>? runtime;
  /// Describes a Sync configuration for a resolver. See Sync Config.
  final pulumi.Input<ResolverSyncConfig>? syncConfig;
  /// Type name from the schema defined in the GraphQL API.
  final pulumi.Input<String>? type;

  /// Creates a new [ResolverState].
  /// [apiId] API ID for the GraphQL API.
  /// [arn] ARN
  /// [cachingConfig] The Caching Config. See Caching Config.
  /// [code] The function code that contains the request and response functions. When code is used, the runtime is required. The runtime value must be APPSYNC_JS.
  /// [dataSource] Data source name.
  /// [field] Field name from the schema defined in the GraphQL API.
  /// [kind] Resolver type. Valid values are `UNIT` and `PIPELINE`.
  /// [maxBatchSize] Maximum batching size for a resolver. Valid values are between `0` and `2000`.
  /// [pipelineConfig] The caching configuration for the resolver. See Pipeline Config.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [requestTemplate] Request mapping template for UNIT resolver or 'before mapping template' for PIPELINE resolver. Required for non-Lambda resolvers.
  /// [responseTemplate] Response mapping template for UNIT resolver or 'after mapping template' for PIPELINE resolver. Required for non-Lambda resolvers.
  /// [runtime] Describes a runtime used by an AWS AppSync pipeline resolver or AWS AppSync function. Specifies the name and version of the runtime to use. Note that if a runtime is specified, code must also be specified. See Runtime.
  /// [syncConfig] Describes a Sync configuration for a resolver. See Sync Config.
  /// [type] Type name from the schema defined in the GraphQL API.
  ResolverState({
    pulumi.Output<String>? apiId,
    pulumi.Output<String>? arn,
    pulumi.Output<ResolverCachingConfig>? cachingConfig,
    pulumi.Output<String>? code,
    pulumi.Output<String>? dataSource,
    pulumi.Output<String>? field,
    pulumi.Output<String>? kind,
    pulumi.Output<int>? maxBatchSize,
    pulumi.Output<ResolverPipelineConfig>? pipelineConfig,
    pulumi.Output<String>? region,
    pulumi.Output<String>? requestTemplate,
    pulumi.Output<String>? responseTemplate,
    pulumi.Output<ResolverRuntime>? runtime,
    pulumi.Output<ResolverSyncConfig>? syncConfig,
    pulumi.Output<String>? type,
  }) :
      apiId = pulumi.Input.asOptionalInput<String>(apiId),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      cachingConfig = pulumi.Input.asOptionalInput<ResolverCachingConfig>(cachingConfig),
      code = pulumi.Input.asOptionalInput<String>(code),
      dataSource = pulumi.Input.asOptionalInput<String>(dataSource),
      field = pulumi.Input.asOptionalInput<String>(field),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      maxBatchSize = pulumi.Input.asOptionalInput<int>(maxBatchSize),
      pipelineConfig = pulumi.Input.asOptionalInput<ResolverPipelineConfig>(pipelineConfig),
      region = pulumi.Input.asOptionalInput<String>(region),
      requestTemplate = pulumi.Input.asOptionalInput<String>(requestTemplate),
      responseTemplate = pulumi.Input.asOptionalInput<String>(responseTemplate),
      runtime = pulumi.Input.asOptionalInput<ResolverRuntime>(runtime),
      syncConfig = pulumi.Input.asOptionalInput<ResolverSyncConfig>(syncConfig),
      type = pulumi.Input.asOptionalInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': ?apiId,
      'arn': ?arn,
      'cachingConfig': ?pulumi.Input.mapOptionalInputValue<ResolverCachingConfig, Map<String, dynamic>>(cachingConfig, (value) => value.toMap()),
      'code': ?code,
      'dataSource': ?dataSource,
      'field': ?field,
      'kind': ?kind,
      'maxBatchSize': ?maxBatchSize,
      'pipelineConfig': ?pulumi.Input.mapOptionalInputValue<ResolverPipelineConfig, Map<String, dynamic>>(pipelineConfig, (value) => value.toMap()),
      'region': ?region,
      'requestTemplate': ?requestTemplate,
      'responseTemplate': ?responseTemplate,
      'runtime': ?pulumi.Input.mapOptionalInputValue<ResolverRuntime, Map<String, dynamic>>(runtime, (value) => value.toMap()),
      'syncConfig': ?pulumi.Input.mapOptionalInputValue<ResolverSyncConfig, Map<String, dynamic>>(syncConfig, (value) => value.toMap()),
      'type': ?type,
    };
  }

  factory ResolverState.fromMap(Map<String, dynamic> map) {
    return ResolverState(
      apiId: map['apiId'] == null ? null : pulumi.Output.create<String>(map['apiId'] as String),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      cachingConfig: map['cachingConfig'] == null ? null : pulumi.Output.create<ResolverCachingConfig>(ResolverCachingConfig.fromMap((map['cachingConfig'] as Map).cast<String, dynamic>())),
      code: map['code'] == null ? null : pulumi.Output.create<String>(map['code'] as String),
      dataSource: map['dataSource'] == null ? null : pulumi.Output.create<String>(map['dataSource'] as String),
      field: map['field'] == null ? null : pulumi.Output.create<String>(map['field'] as String),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      maxBatchSize: map['maxBatchSize'] == null ? null : pulumi.Output.create<int>(map['maxBatchSize'] as int),
      pipelineConfig: map['pipelineConfig'] == null ? null : pulumi.Output.create<ResolverPipelineConfig>(ResolverPipelineConfig.fromMap((map['pipelineConfig'] as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      requestTemplate: map['requestTemplate'] == null ? null : pulumi.Output.create<String>(map['requestTemplate'] as String),
      responseTemplate: map['responseTemplate'] == null ? null : pulumi.Output.create<String>(map['responseTemplate'] as String),
      runtime: map['runtime'] == null ? null : pulumi.Output.create<ResolverRuntime>(ResolverRuntime.fromMap((map['runtime'] as Map).cast<String, dynamic>())),
      syncConfig: map['syncConfig'] == null ? null : pulumi.Output.create<ResolverSyncConfig>(ResolverSyncConfig.fromMap((map['syncConfig'] as Map).cast<String, dynamic>())),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

