// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../resolver_caching_config/resolver_caching_config.dart';
import '../resolver_pipeline_config/resolver_pipeline_config.dart';
import '../resolver_runtime/resolver_runtime.dart';
import '../resolver_sync_config/resolver_sync_config.dart';

/// The set of arguments for Resolver.
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

  ResolverArgs({
    required this.apiId,
    this.cachingConfig,
    this.code,
    this.dataSource,
    required this.field,
    this.kind,
    this.maxBatchSize,
    this.pipelineConfig,
    this.region,
    this.requestTemplate,
    this.responseTemplate,
    this.runtime,
    this.syncConfig,
    required this.type,
  });

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
      apiId: pulumi.Input.asInput<String>(map['apiId']),
      cachingConfig: pulumi.Input.asOptionalInput<ResolverCachingConfig>(
          map['cachingConfig']),
      code: pulumi.Input.asOptionalInput<String>(map['code']),
      dataSource: pulumi.Input.asOptionalInput<String>(map['dataSource']),
      field: pulumi.Input.asInput<String>(map['field']),
      kind: pulumi.Input.asOptionalInput<String>(map['kind']),
      maxBatchSize: pulumi.Input.asOptionalInput<int>(map['maxBatchSize']),
      pipelineConfig: pulumi.Input.asOptionalInput<ResolverPipelineConfig>(
          map['pipelineConfig']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      requestTemplate:
          pulumi.Input.asOptionalInput<String>(map['requestTemplate']),
      responseTemplate:
          pulumi.Input.asOptionalInput<String>(map['responseTemplate']),
      runtime: pulumi.Input.asOptionalInput<ResolverRuntime>(map['runtime']),
      syncConfig:
          pulumi.Input.asOptionalInput<ResolverSyncConfig>(map['syncConfig']),
      type: pulumi.Input.asInput<String>(map['type']),
    );
  }
}
