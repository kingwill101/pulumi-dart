// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'function_runtime.dart';
import 'function_sync_config.dart';

/// Input properties used for looking up and filtering Function resources.
class FunctionState {
  /// ID of the associated AppSync API.
  final pulumi.Input<String>? apiId;
  /// ARN of the Function object.
  final pulumi.Input<String>? arn;
  /// The function code that contains the request and response functions. When code is used, the runtime is required. The runtime value must be APPSYNC_JS.
  final pulumi.Input<String>? code;
  /// Function data source name.
  final pulumi.Input<String>? dataSource;
  /// Function description.
  final pulumi.Input<String>? description;
  /// Unique ID representing the Function object.
  final pulumi.Input<String>? functionId;
  /// Version of the request mapping template. Currently the supported value is `2018-05-29`. Does not apply when specifying `code`.
  final pulumi.Input<String>? functionVersion;
  /// Maximum batching size for a resolver. Valid values are between `0` and `2000`.
  final pulumi.Input<int>? maxBatchSize;
  /// Function name. The function name does not have to be unique.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Function request mapping template. Functions support only the 2018-05-29 version of the request mapping template.
  final pulumi.Input<String>? requestMappingTemplate;
  /// Function response mapping template.
  final pulumi.Input<String>? responseMappingTemplate;
  /// Describes a runtime used by an AWS AppSync pipeline resolver or AWS AppSync function. Specifies the name and version of the runtime to use. Note that if a runtime is specified, code must also be specified. See `runtime` Block for details.
  final pulumi.Input<FunctionRuntime>? runtime;
  /// Describes a Sync configuration for a resolver. See `sync_config` Block for details.
  final pulumi.Input<FunctionSyncConfig>? syncConfig;

  /// Creates a new [FunctionState].
  /// [apiId] ID of the associated AppSync API.
  /// [arn] ARN of the Function object.
  /// [code] The function code that contains the request and response functions. When code is used, the runtime is required. The runtime value must be APPSYNC_JS.
  /// [dataSource] Function data source name.
  /// [description] Function description.
  /// [functionId] Unique ID representing the Function object.
  /// [functionVersion] Version of the request mapping template. Currently the supported value is `2018-05-29`. Does not apply when specifying `code`.
  /// [maxBatchSize] Maximum batching size for a resolver. Valid values are between `0` and `2000`.
  /// [name] Function name. The function name does not have to be unique.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [requestMappingTemplate] Function request mapping template. Functions support only the 2018-05-29 version of the request mapping template.
  /// [responseMappingTemplate] Function response mapping template.
  /// [runtime] Describes a runtime used by an AWS AppSync pipeline resolver or AWS AppSync function. Specifies the name and version of the runtime to use. Note that if a runtime is specified, code must also be specified. See `runtime` Block for details.
  /// [syncConfig] Describes a Sync configuration for a resolver. See `sync_config` Block for details.
  FunctionState({
    this.apiId,
    this.arn,
    this.code,
    this.dataSource,
    this.description,
    this.functionId,
    this.functionVersion,
    this.maxBatchSize,
    this.name,
    this.region,
    this.requestMappingTemplate,
    this.responseMappingTemplate,
    this.runtime,
    this.syncConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': ?apiId,
      'arn': ?arn,
      'code': ?code,
      'dataSource': ?dataSource,
      'description': ?description,
      'functionId': ?functionId,
      'functionVersion': ?functionVersion,
      'maxBatchSize': ?maxBatchSize,
      'name': ?name,
      'region': ?region,
      'requestMappingTemplate': ?requestMappingTemplate,
      'responseMappingTemplate': ?responseMappingTemplate,
      'runtime': ?pulumi.Input.mapOptionalInputValue<FunctionRuntime, Map<String, dynamic>>(runtime, (value) => value.toMap()),
      'syncConfig': ?pulumi.Input.mapOptionalInputValue<FunctionSyncConfig, Map<String, dynamic>>(syncConfig, (value) => value.toMap()),
    };
  }

  factory FunctionState.fromMap(Map<String, dynamic> map) {
    return FunctionState(
      apiId: map['apiId'] == null ? null : (map['apiId'] as String).input(),
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      code: map['code'] == null ? null : (map['code'] as String).input(),
      dataSource: map['dataSource'] == null ? null : (map['dataSource'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      functionId: map['functionId'] == null ? null : (map['functionId'] as String).input(),
      functionVersion: map['functionVersion'] == null ? null : (map['functionVersion'] as String).input(),
      maxBatchSize: map['maxBatchSize'] == null ? null : (map['maxBatchSize'] as int).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      requestMappingTemplate: map['requestMappingTemplate'] == null ? null : (map['requestMappingTemplate'] as String).input(),
      responseMappingTemplate: map['responseMappingTemplate'] == null ? null : (map['responseMappingTemplate'] as String).input(),
      runtime: map['runtime'] == null ? null : (FunctionRuntime.fromMap((map['runtime'] as Map).cast<String, dynamic>())).input(),
      syncConfig: map['syncConfig'] == null ? null : (FunctionSyncConfig.fromMap((map['syncConfig'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

