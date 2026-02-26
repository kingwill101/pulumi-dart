// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../resolver_caching_config/resolver_caching_config.dart';
import '../resolver_pipeline_config/resolver_pipeline_config.dart';
import '../resolver_runtime/resolver_runtime.dart';
import '../resolver_sync_config/resolver_sync_config.dart';

/// The set of arguments for Resolver.
class ResolverArgs {
  /// API ID for the GraphQL API.
  final Input<String> apiId;

  /// The Caching Config. See Caching Config.
  final Input<ResolverCachingConfig>? cachingConfig;

  /// The function code that contains the request and response functions. When code is used, the runtime is required. The runtime value must be APPSYNC_JS.
  final Input<String>? code;

  /// Data source name.
  final Input<String>? dataSource;

  /// Field name from the schema defined in the GraphQL API.
  final Input<String> field;

  /// Resolver type. Valid values are `UNIT` and `PIPELINE`.
  final Input<String>? kind;

  /// Maximum batching size for a resolver. Valid values are between <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span> and <span pulumi-lang-nodejs="`2000`" pulumi-lang-dotnet="`2000`" pulumi-lang-go="`2000`" pulumi-lang-python="`2000`" pulumi-lang-yaml="`2000`" pulumi-lang-java="`2000`">`2000`</span>.
  final Input<int>? maxBatchSize;

  /// The caching configuration for the resolver. See Pipeline Config.
  final Input<ResolverPipelineConfig>? pipelineConfig;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Request mapping template for UNIT resolver or 'before mapping template' for PIPELINE resolver. Required for non-Lambda resolvers.
  final Input<String>? requestTemplate;

  /// Response mapping template for UNIT resolver or 'after mapping template' for PIPELINE resolver. Required for non-Lambda resolvers.
  final Input<String>? responseTemplate;

  /// Describes a runtime used by an AWS AppSync pipeline resolver or AWS AppSync function. Specifies the name and version of the runtime to use. Note that if a runtime is specified, code must also be specified. See Runtime.
  final Input<ResolverRuntime>? runtime;

  /// Describes a Sync configuration for a resolver. See Sync Config.
  final Input<ResolverSyncConfig>? syncConfig;

  /// Type name from the schema defined in the GraphQL API.
  final Input<String> type;

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
      map['cachingConfig'] = Input.mapOptionalInputValue<ResolverCachingConfig,
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
      map['pipelineConfig'] = Input.mapOptionalInputValue<
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
      map['runtime'] =
          Input.mapOptionalInputValue<ResolverRuntime, Map<String, dynamic>>(
              runtimeValue, (value) => value.toMap());
    }
    final syncConfigValue = syncConfig;
    if (syncConfigValue != null) {
      map['syncConfig'] =
          Input.mapOptionalInputValue<ResolverSyncConfig, Map<String, dynamic>>(
              syncConfigValue, (value) => value.toMap());
    }
    map['type'] = type;
    return map;
  }

  factory ResolverArgs.fromMap(Map<String, dynamic> map) {
    return ResolverArgs(
      apiId: Input.asInput<String>(map['apiId']),
      cachingConfig:
          Input.asOptionalInput<ResolverCachingConfig>(map['cachingConfig']),
      code: Input.asOptionalInput<String>(map['code']),
      dataSource: Input.asOptionalInput<String>(map['dataSource']),
      field: Input.asInput<String>(map['field']),
      kind: Input.asOptionalInput<String>(map['kind']),
      maxBatchSize: Input.asOptionalInput<int>(map['maxBatchSize']),
      pipelineConfig:
          Input.asOptionalInput<ResolverPipelineConfig>(map['pipelineConfig']),
      region: Input.asOptionalInput<String>(map['region']),
      requestTemplate: Input.asOptionalInput<String>(map['requestTemplate']),
      responseTemplate: Input.asOptionalInput<String>(map['responseTemplate']),
      runtime: Input.asOptionalInput<ResolverRuntime>(map['runtime']),
      syncConfig: Input.asOptionalInput<ResolverSyncConfig>(map['syncConfig']),
      type: Input.asInput<String>(map['type']),
    );
  }
}
