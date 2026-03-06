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
  const ResolverState({
    this.apiId,
    this.arn,
    this.cachingConfig,
    this.code,
    this.dataSource,
    this.field,
    this.kind,
    this.maxBatchSize,
    this.pipelineConfig,
    this.region,
    this.requestTemplate,
    this.responseTemplate,
    this.runtime,
    this.syncConfig,
    this.type,
  });

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
      apiId: (() { final guardedValue = map['apiId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cachingConfig: (() { final guardedValue = map['cachingConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResolverCachingConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      code: (() { final guardedValue = map['code']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataSource: (() { final guardedValue = map['dataSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      field: (() { final guardedValue = map['field']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxBatchSize: (() { final guardedValue = map['maxBatchSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      pipelineConfig: (() { final guardedValue = map['pipelineConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResolverPipelineConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestTemplate: (() { final guardedValue = map['requestTemplate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      responseTemplate: (() { final guardedValue = map['responseTemplate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      runtime: (() { final guardedValue = map['runtime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResolverRuntime.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      syncConfig: (() { final guardedValue = map['syncConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResolverSyncConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

