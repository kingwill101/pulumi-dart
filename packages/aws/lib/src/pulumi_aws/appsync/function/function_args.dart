// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../function_runtime/function_runtime.dart';
import '../function_sync_config/function_sync_config.dart';

/// The set of arguments for Function.
class FunctionArgs {
  /// ID of the associated AppSync API.
  final pulumi.Input<String> apiId;

  /// The function code that contains the request and response functions. When code is used, the runtime is required. The runtime value must be APPSYNC_JS.
  final pulumi.Input<String>? code;

  /// Function data source name.
  final pulumi.Input<String> dataSource;

  /// Function description.
  final pulumi.Input<String>? description;

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

  FunctionArgs({
    required this.apiId,
    this.code,
    required this.dataSource,
    this.description,
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
    final map = <String, dynamic>{};
    map['apiId'] = apiId;
    final codeValue = code;
    if (codeValue != null) {
      map['code'] = codeValue;
    }
    map['dataSource'] = dataSource;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final functionVersionValue = functionVersion;
    if (functionVersionValue != null) {
      map['functionVersion'] = functionVersionValue;
    }
    final maxBatchSizeValue = maxBatchSize;
    if (maxBatchSizeValue != null) {
      map['maxBatchSize'] = maxBatchSizeValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final requestMappingTemplateValue = requestMappingTemplate;
    if (requestMappingTemplateValue != null) {
      map['requestMappingTemplate'] = requestMappingTemplateValue;
    }
    final responseMappingTemplateValue = responseMappingTemplate;
    if (responseMappingTemplateValue != null) {
      map['responseMappingTemplate'] = responseMappingTemplateValue;
    }
    final runtimeValue = runtime;
    if (runtimeValue != null) {
      map['runtime'] = pulumi.Input.mapOptionalInputValue<FunctionRuntime,
          Map<String, dynamic>>(runtimeValue, (value) => value.toMap());
    }
    final syncConfigValue = syncConfig;
    if (syncConfigValue != null) {
      map['syncConfig'] = pulumi.Input.mapOptionalInputValue<FunctionSyncConfig,
          Map<String, dynamic>>(syncConfigValue, (value) => value.toMap());
    }
    return map;
  }

  factory FunctionArgs.fromMap(Map<String, dynamic> map) {
    return FunctionArgs(
      apiId: pulumi.Input.asInput<String>(map['apiId']),
      code: pulumi.Input.asOptionalInput<String>(map['code']),
      dataSource: pulumi.Input.asInput<String>(map['dataSource']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      functionVersion:
          pulumi.Input.asOptionalInput<String>(map['functionVersion']),
      maxBatchSize: pulumi.Input.asOptionalInput<int>(map['maxBatchSize']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      requestMappingTemplate:
          pulumi.Input.asOptionalInput<String>(map['requestMappingTemplate']),
      responseMappingTemplate:
          pulumi.Input.asOptionalInput<String>(map['responseMappingTemplate']),
      runtime: pulumi.Input.asOptionalInput<FunctionRuntime>(map['runtime']),
      syncConfig:
          pulumi.Input.asOptionalInput<FunctionSyncConfig>(map['syncConfig']),
    );
  }
}
