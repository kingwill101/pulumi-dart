// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../function_runtime/function_runtime.dart';
import '../function_sync_config/function_sync_config.dart';

/// The set of arguments for Function.
class FunctionArgs {
  /// ID of the associated AppSync API.
  final Input<String> apiId;

  /// The function code that contains the request and response functions. When code is used, the runtime is required. The runtime value must be APPSYNC_JS.
  final Input<String>? code;

  /// Function data source name.
  final Input<String> dataSource;

  /// Function description.
  final Input<String>? description;

  /// Version of the request mapping template. Currently the supported value is `2018-05-29`. Does not apply when specifying <span pulumi-lang-nodejs="`code`" pulumi-lang-dotnet="`Code`" pulumi-lang-go="`code`" pulumi-lang-python="`code`" pulumi-lang-yaml="`code`" pulumi-lang-java="`code`">`code`</span>.
  final Input<String>? functionVersion;

  /// Maximum batching size for a resolver. Valid values are between <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span> and <span pulumi-lang-nodejs="`2000`" pulumi-lang-dotnet="`2000`" pulumi-lang-go="`2000`" pulumi-lang-python="`2000`" pulumi-lang-yaml="`2000`" pulumi-lang-java="`2000`">`2000`</span>.
  final Input<int>? maxBatchSize;

  /// Function name. The function name does not have to be unique.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Function request mapping template. Functions support only the 2018-05-29 version of the request mapping template.
  final Input<String>? requestMappingTemplate;

  /// Function response mapping template.
  final Input<String>? responseMappingTemplate;

  /// Describes a runtime used by an AWS AppSync pipeline resolver or AWS AppSync function. Specifies the name and version of the runtime to use. Note that if a runtime is specified, code must also be specified. See <span pulumi-lang-nodejs="`runtime`" pulumi-lang-dotnet="`Runtime`" pulumi-lang-go="`runtime`" pulumi-lang-python="`runtime`" pulumi-lang-yaml="`runtime`" pulumi-lang-java="`runtime`">`runtime`</span> Block for details.
  final Input<FunctionRuntime>? runtime;

  /// Describes a Sync configuration for a resolver. See <span pulumi-lang-nodejs="`syncConfig`" pulumi-lang-dotnet="`SyncConfig`" pulumi-lang-go="`syncConfig`" pulumi-lang-python="`sync_config`" pulumi-lang-yaml="`syncConfig`" pulumi-lang-java="`syncConfig`">`sync_config`</span> Block for details.
  final Input<FunctionSyncConfig>? syncConfig;

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
      map['runtime'] =
          Input.mapOptionalInputValue<FunctionRuntime, Map<String, dynamic>>(
              runtimeValue, (value) => value.toMap());
    }
    final syncConfigValue = syncConfig;
    if (syncConfigValue != null) {
      map['syncConfig'] =
          Input.mapOptionalInputValue<FunctionSyncConfig, Map<String, dynamic>>(
              syncConfigValue, (value) => value.toMap());
    }
    return map;
  }

  factory FunctionArgs.fromMap(Map<String, dynamic> map) {
    return FunctionArgs(
      apiId: Input.asInput<String>(map['apiId']),
      code: Input.asOptionalInput<String>(map['code']),
      dataSource: Input.asInput<String>(map['dataSource']),
      description: Input.asOptionalInput<String>(map['description']),
      functionVersion: Input.asOptionalInput<String>(map['functionVersion']),
      maxBatchSize: Input.asOptionalInput<int>(map['maxBatchSize']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      requestMappingTemplate:
          Input.asOptionalInput<String>(map['requestMappingTemplate']),
      responseMappingTemplate:
          Input.asOptionalInput<String>(map['responseMappingTemplate']),
      runtime: Input.asOptionalInput<FunctionRuntime>(map['runtime']),
      syncConfig: Input.asOptionalInput<FunctionSyncConfig>(map['syncConfig']),
    );
  }
}
