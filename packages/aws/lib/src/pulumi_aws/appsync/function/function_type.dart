import 'package:pulumi/pulumi.dart';
import '../function_runtime/function_runtime.dart';
import '../function_sync_config/function_sync_config.dart';
import 'function_args.dart';

/// Provides an AppSync Function.
///
/// ## Example Usage
///
///
///
///
/// ### With Code
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.appsync.Function` using the AppSync API ID and Function ID separated by `-`. For example:
///
/// ```sh
/// $ pulumi import aws:appsync/function:Function example xxxxx-yyyyy
/// ```
class FunctionType extends CustomResource {
  /// ID of the associated AppSync API.
  late final Output<String> apiId;

  /// ARN of the Function object.
  late final Output<String> arn;

  /// The function code that contains the request and response functions. When code is used, the runtime is required. The runtime value must be APPSYNC_JS.
  late final Output<String?> code;

  /// Function data source name.
  late final Output<String> dataSource;

  /// Function description.
  late final Output<String?> description;

  /// Unique ID representing the Function object.
  late final Output<String> functionId;

  /// Version of the request mapping template. Currently the supported value is `2018-05-29`. Does not apply when specifying `code`.
  late final Output<String> functionVersion;

  /// Maximum batching size for a resolver. Valid values are between `0` and `2000`.
  late final Output<int?> maxBatchSize;

  /// Function name. The function name does not have to be unique.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Function request mapping template. Functions support only the 2018-05-29 version of the request mapping template.
  late final Output<String?> requestMappingTemplate;

  /// Function response mapping template.
  late final Output<String?> responseMappingTemplate;

  /// Describes a runtime used by an AWS AppSync pipeline resolver or AWS AppSync function. Specifies the name and version of the runtime to use. Note that if a runtime is specified, code must also be specified. See `runtime` Block for details.
  late final Output<FunctionRuntime?> runtime;

  /// Describes a Sync configuration for a resolver. See `sync_config` Block for details.
  late final Output<FunctionSyncConfig?> syncConfig;

  FunctionType(
    String name, {
    FunctionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:appsync/function:Function',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.apiId = registerOutput<String>('apiId');
    this.arn = registerOutput<String>('arn');
    this.code = registerOutput<String?>('code');
    this.dataSource = registerOutput<String>('dataSource');
    this.description = registerOutput<String?>('description');
    this.functionId = registerOutput<String>('functionId');
    this.functionVersion = registerOutput<String>('functionVersion');
    this.maxBatchSize = registerOutput<int?>('maxBatchSize');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.requestMappingTemplate =
        registerOutput<String?>('requestMappingTemplate');
    this.responseMappingTemplate =
        registerOutput<String?>('responseMappingTemplate');
    this.runtime = registerOutput<FunctionRuntime?>('runtime');
    this.syncConfig = registerOutput<FunctionSyncConfig?>('syncConfig');
  }
}
