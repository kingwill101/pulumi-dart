// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resolver_caching_config.dart';
import 'resolver_pipeline_config.dart';
import 'resolver_runtime.dart';
import 'resolver_sync_config.dart';

/// {@template pulumi_appsync_resolver_resolver_args_doc}
/// The set of arguments for Resolver.
/// {@endtemplate}
/// {@macro pulumi_appsync_resolver_resolver_args_doc}
class ResolverArgs {
  /// API ID for the GraphQL API.
  final pulumi.Input<String> apiId;

  /// The Caching Config. See Caching Config.
  final pulumi.Input<ResolverCachingConfig>? cachingConfig;

  /// The function code that contains the request and response functions. When code is used, the runtime is required. The runtime value must be APPSYNC_JS.
  final pulumi.Input<String>? code;

  /// Data source name.
  final pulumi.Input<String>? dataSource;

  /// Field name from the schema defined in the GraphQL API.
  final pulumi.Input<String> field;

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
  final pulumi.Input<String> type;

  /// Creates a new [ResolverArgs].
  /// [apiId] API ID for the GraphQL API.
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
  ResolverArgs({
    required String apiId,
    ResolverCachingConfig? cachingConfig,
    String? code,
    String? dataSource,
    required String field,
    String? kind,
    int? maxBatchSize,
    ResolverPipelineConfig? pipelineConfig,
    String? region,
    String? requestTemplate,
    String? responseTemplate,
    ResolverRuntime? runtime,
    ResolverSyncConfig? syncConfig,
    required String type,
  })  : apiId = pulumi.Input.asInput<String>(apiId),
        cachingConfig =
            pulumi.Input.asOptionalInput<ResolverCachingConfig>(cachingConfig),
        code = pulumi.Input.asOptionalInput<String>(code),
        dataSource = pulumi.Input.asOptionalInput<String>(dataSource),
        field = pulumi.Input.asInput<String>(field),
        kind = pulumi.Input.asOptionalInput<String>(kind),
        maxBatchSize = pulumi.Input.asOptionalInput<int>(maxBatchSize),
        pipelineConfig = pulumi.Input.asOptionalInput<ResolverPipelineConfig>(
            pipelineConfig),
        region = pulumi.Input.asOptionalInput<String>(region),
        requestTemplate = pulumi.Input.asOptionalInput<String>(requestTemplate),
        responseTemplate =
            pulumi.Input.asOptionalInput<String>(responseTemplate),
        runtime = pulumi.Input.asOptionalInput<ResolverRuntime>(runtime),
        syncConfig =
            pulumi.Input.asOptionalInput<ResolverSyncConfig>(syncConfig),
        type = pulumi.Input.asInput<String>(type);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['apiId'] = apiId;
    final cachingConfigValue = cachingConfig;
    if (cachingConfigValue != null) {
      map['cachingConfig'] = pulumi.Input.mapOptionalInputValue<
          ResolverCachingConfig,
          Map<String, dynamic>>(cachingConfigValue, (value) => value.toMap());
    }
    final codeValue = code;
    if (codeValue != null) {
      map['code'] = codeValue;
    }
    final dataSourceValue = dataSource;
    if (dataSourceValue != null) {
      map['dataSource'] = dataSourceValue;
    }
    map['field'] = field;
    final kindValue = kind;
    if (kindValue != null) {
      map['kind'] = kindValue;
    }
    final maxBatchSizeValue = maxBatchSize;
    if (maxBatchSizeValue != null) {
      map['maxBatchSize'] = maxBatchSizeValue;
    }
    final pipelineConfigValue = pipelineConfig;
    if (pipelineConfigValue != null) {
      map['pipelineConfig'] = pulumi.Input.mapOptionalInputValue<
          ResolverPipelineConfig,
          Map<String, dynamic>>(pipelineConfigValue, (value) => value.toMap());
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final requestTemplateValue = requestTemplate;
    if (requestTemplateValue != null) {
      map['requestTemplate'] = requestTemplateValue;
    }
    final responseTemplateValue = responseTemplate;
    if (responseTemplateValue != null) {
      map['responseTemplate'] = responseTemplateValue;
    }
    final runtimeValue = runtime;
    if (runtimeValue != null) {
      map['runtime'] = pulumi.Input.mapOptionalInputValue<ResolverRuntime,
          Map<String, dynamic>>(runtimeValue, (value) => value.toMap());
    }
    final syncConfigValue = syncConfig;
    if (syncConfigValue != null) {
      map['syncConfig'] = pulumi.Input.mapOptionalInputValue<ResolverSyncConfig,
          Map<String, dynamic>>(syncConfigValue, (value) => value.toMap());
    }
    map['type'] = type;
    return map;
  }

  factory ResolverArgs.fromMap(Map<String, dynamic> map) {
    return ResolverArgs(
      apiId: map['apiId'] as String,
      cachingConfig: map['cachingConfig'] == null
          ? null
          : ResolverCachingConfig.fromMap(
              (map['cachingConfig'] as Map).cast<String, dynamic>()),
      code: map['code'] == null ? null : map['code'] as String,
      dataSource:
          map['dataSource'] == null ? null : map['dataSource'] as String,
      field: map['field'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      maxBatchSize:
          map['maxBatchSize'] == null ? null : map['maxBatchSize'] as int,
      pipelineConfig: map['pipelineConfig'] == null
          ? null
          : ResolverPipelineConfig.fromMap(
              (map['pipelineConfig'] as Map).cast<String, dynamic>()),
      region: map['region'] == null ? null : map['region'] as String,
      requestTemplate: map['requestTemplate'] == null
          ? null
          : map['requestTemplate'] as String,
      responseTemplate: map['responseTemplate'] == null
          ? null
          : map['responseTemplate'] as String,
      runtime: map['runtime'] == null
          ? null
          : ResolverRuntime.fromMap(
              (map['runtime'] as Map).cast<String, dynamic>()),
      syncConfig: map['syncConfig'] == null
          ? null
          : ResolverSyncConfig.fromMap(
              (map['syncConfig'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}
