import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2_function_args.dart';
import 'v2_function_code.dart';
import 'v2_function_custom_container_config.dart';
import 'v2_function_custom_dns.dart';
import 'v2_function_custom_health_check_config.dart';
import 'v2_function_custom_runtime_config.dart';
import 'v2_function_instance_lifecycle_config.dart';
import 'v2_function_state.dart';

/// Provides a FCV2 Function resource. Function is the unit of system scheduling and operation. Functions must be subordinate to services. All functions under the same service share some identical settings, such as service authorization and log configuration.
///
/// For information about FCV2 Function and how to use it, see [What is Function](https://www.alibabacloud.com/help/en/resource-orchestration-service/latest/aliyun-fc-function).
///
/// &gt; **NOTE:** Available since v1.208.0.
///
/// ## Import
///
/// FCV2 Function can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:fc/v2Function:V2Function example <service_name>:<function_name>
/// ```
class V2Function extends pulumi.CustomResource {
  /// The listening port of the HTTP Server when the Custom Runtime or Custom Container is running.
  late final pulumi.Output<int> caPort;

  /// Function Code ZIP package. code and customContainerConfig choose one. See `code` below.
  late final pulumi.Output<V2FunctionCode?> code;

  /// crc64 of function code.
  late final pulumi.Output<String> codeChecksum;

  /// The CPU specification of the function. The unit is vCPU, which is a multiple of the 0.05 vCPU.
  late final pulumi.Output<double?> cpu;

  /// create time of function.
  late final pulumi.Output<String> createTime;

  /// Custom-container runtime related function configuration. See `custom_container_config` below.
  late final pulumi.Output<V2FunctionCustomContainerConfig?>
  customContainerConfig;

  /// Function custom DNS configuration. See `custom_dns` below.
  late final pulumi.Output<V2FunctionCustomDns?> customDns;

  /// Custom runtime/container Custom health check configuration. See `custom_health_check_config` below.
  late final pulumi.Output<V2FunctionCustomHealthCheckConfig?>
  customHealthCheckConfig;

  /// Detailed configuration of Custom Runtime function. See `custom_runtime_config` below.
  late final pulumi.Output<V2FunctionCustomRuntimeConfig?> customRuntimeConfig;

  /// description of function.
  late final pulumi.Output<String?> description;

  /// The disk specification of the function. The unit is MB. The optional value is 512 MB or 10240MB.
  late final pulumi.Output<int?> diskSize;

  /// The environment variable set for the function can get the value of the environment variable in the function. For more information, see Environment Variables.
  late final pulumi.Output<Map<String, String>?> environmentVariables;

  /// The Function Compute service function arn. It formats as `acs:fc:&lt;region&gt;:&lt;uid&gt;:services/&lt;serviceName&gt;.LATEST/functions/&lt;functionName&gt;`.
  late final pulumi.Output<String> functionArn;

  /// function name.
  late final pulumi.Output<String> functionName;

  /// The GPU memory specification of the function, in MB, is a multiple of 1024MB.
  late final pulumi.Output<int?> gpuMemorySize;

  /// entry point of function.
  late final pulumi.Output<String> handler;

  /// max running time of initializer.
  late final pulumi.Output<int> initializationTimeout;

  /// initializer entry point of function.
  late final pulumi.Output<String?> initializer;

  /// The maximum concurrency allowed for a single function instance.
  late final pulumi.Output<int> instanceConcurrency;

  /// Instance lifecycle configuration. See `instance_lifecycle_config` below.
  late final pulumi.Output<V2FunctionInstanceLifecycleConfig?>
  instanceLifecycleConfig;

  /// The instance type of the function. Valid values:
  /// - **e1**: Elastic instance.
  /// - **c1**: performance instance.
  /// - **fc.gpu.tesla.1**: the T4 card type of the Tesla series of GPU instances.
  /// - **fc.gpu.ampere.1**: The Ampere series A10 card type of the GPU instance.
  /// - **g1**: Same as **fc.gpu.tesla.1**.
  late final pulumi.Output<String> instanceType;

  /// List of layers.
  /// &gt; **NOTE:**  Multiple layers will be merged in the order of array subscripts from large to small, and the contents of layers with small subscripts will overwrite the files with the same name of layers with large subscripts.
  late final pulumi.Output<List<String>?> layers;

  /// memory size needed by function.
  late final pulumi.Output<int> memorySize;

  /// runtime of function code.
  late final pulumi.Output<String> runtime;

  /// The name of the function Service.
  late final pulumi.Output<String> serviceName;

  /// max running time of function.
  late final pulumi.Output<int> timeout;

  /// Creates a new [V2Function].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [V2Function]. {@macro pulumi_fc_v2_function_v2_function_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  V2Function(
    String name, {
    V2FunctionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:fc/v2Function:V2Function',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    caPort = registerOutput<int>('caPort');
    code = registerOutput<V2FunctionCode?>('code');
    codeChecksum = registerOutput<String>('codeChecksum');
    cpu = registerOutput<double?>('cpu');
    createTime = registerOutput<String>('createTime');
    customContainerConfig = registerOutput<V2FunctionCustomContainerConfig?>(
      'customContainerConfig',
    );
    customDns = registerOutput<V2FunctionCustomDns?>('customDns');
    customHealthCheckConfig =
        registerOutput<V2FunctionCustomHealthCheckConfig?>(
          'customHealthCheckConfig',
        );
    customRuntimeConfig = registerOutput<V2FunctionCustomRuntimeConfig?>(
      'customRuntimeConfig',
    );
    description = registerOutput<String?>('description');
    diskSize = registerOutput<int?>('diskSize');
    environmentVariables = registerOutput<Map<String, String>?>(
      'environmentVariables',
    );
    functionArn = registerOutput<String>('functionArn');
    functionName = registerOutput<String>('functionName');
    gpuMemorySize = registerOutput<int?>('gpuMemorySize');
    handler = registerOutput<String>('handler');
    initializationTimeout = registerOutput<int>('initializationTimeout');
    initializer = registerOutput<String?>('initializer');
    instanceConcurrency = registerOutput<int>('instanceConcurrency');
    instanceLifecycleConfig =
        registerOutput<V2FunctionInstanceLifecycleConfig?>(
          'instanceLifecycleConfig',
        );
    instanceType = registerOutput<String>('instanceType');
    layers = registerOutput<List<String>?>('layers');
    memorySize = registerOutput<int>('memorySize');
    runtime = registerOutput<String>('runtime');
    serviceName = registerOutput<String>('serviceName');
    timeout = registerOutput<int>('timeout');
  }

  /// Gets an existing [V2Function] resource's state with the given [name] and [id].
  static V2Function get(
    String name,
    pulumi.Input<String> id, {
    V2FunctionState? state,
  }) {
    return V2Function._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  V2Function._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:fc/v2Function:V2Function',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    caPort = registerOutput<int>('caPort');
    code = registerOutput<V2FunctionCode?>('code');
    codeChecksum = registerOutput<String>('codeChecksum');
    cpu = registerOutput<double?>('cpu');
    createTime = registerOutput<String>('createTime');
    customContainerConfig = registerOutput<V2FunctionCustomContainerConfig?>(
      'customContainerConfig',
    );
    customDns = registerOutput<V2FunctionCustomDns?>('customDns');
    customHealthCheckConfig =
        registerOutput<V2FunctionCustomHealthCheckConfig?>(
          'customHealthCheckConfig',
        );
    customRuntimeConfig = registerOutput<V2FunctionCustomRuntimeConfig?>(
      'customRuntimeConfig',
    );
    description = registerOutput<String?>('description');
    diskSize = registerOutput<int?>('diskSize');
    environmentVariables = registerOutput<Map<String, String>?>(
      'environmentVariables',
    );
    functionArn = registerOutput<String>('functionArn');
    functionName = registerOutput<String>('functionName');
    gpuMemorySize = registerOutput<int?>('gpuMemorySize');
    handler = registerOutput<String>('handler');
    initializationTimeout = registerOutput<int>('initializationTimeout');
    initializer = registerOutput<String?>('initializer');
    instanceConcurrency = registerOutput<int>('instanceConcurrency');
    instanceLifecycleConfig =
        registerOutput<V2FunctionInstanceLifecycleConfig?>(
          'instanceLifecycleConfig',
        );
    instanceType = registerOutput<String>('instanceType');
    layers = registerOutput<List<String>?>('layers');
    memorySize = registerOutput<int>('memorySize');
    runtime = registerOutput<String>('runtime');
    serviceName = registerOutput<String>('serviceName');
    timeout = registerOutput<int>('timeout');
  }
}
