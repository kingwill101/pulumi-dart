// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2_function_code.dart';
import 'v2_function_custom_container_config.dart';
import 'v2_function_custom_dns.dart';
import 'v2_function_custom_health_check_config.dart';
import 'v2_function_custom_runtime_config.dart';
import 'v2_function_instance_lifecycle_config.dart';

/// {@template pulumi_fc_v2_function_v2_function_args_doc}
/// The set of arguments for V2Function.
/// {@endtemplate}
/// {@macro pulumi_fc_v2_function_v2_function_args_doc}
class V2FunctionArgs {
  /// The listening port of the HTTP Server when the Custom Runtime or Custom Container is running.
  final pulumi.Input<int>? caPort;
  /// Function Code ZIP package. code and customContainerConfig choose one. See `code` below.
  final pulumi.Input<V2FunctionCode>? code;
  /// crc64 of function code.
  final pulumi.Input<String>? codeChecksum;
  /// The CPU specification of the function. The unit is vCPU, which is a multiple of the 0.05 vCPU.
  final pulumi.Input<double>? cpu;
  /// Custom-container runtime related function configuration. See `custom_container_config` below.
  final pulumi.Input<V2FunctionCustomContainerConfig>? customContainerConfig;
  /// Function custom DNS configuration. See `custom_dns` below.
  final pulumi.Input<V2FunctionCustomDns>? customDns;
  /// Custom runtime/container Custom health check configuration. See `custom_health_check_config` below.
  final pulumi.Input<V2FunctionCustomHealthCheckConfig>? customHealthCheckConfig;
  /// Detailed configuration of Custom Runtime function. See `custom_runtime_config` below.
  final pulumi.Input<V2FunctionCustomRuntimeConfig>? customRuntimeConfig;
  /// description of function.
  final pulumi.Input<String>? description;
  /// The disk specification of the function. The unit is MB. The optional value is 512 MB or 10240MB.
  final pulumi.Input<int>? diskSize;
  /// The environment variable set for the function can get the value of the environment variable in the function. For more information, see Environment Variables.
  final pulumi.Input<Map<String, String>>? environmentVariables;
  /// function name.
  final pulumi.Input<String> functionName;
  /// The GPU memory specification of the function, in MB, is a multiple of 1024MB.
  final pulumi.Input<int>? gpuMemorySize;
  /// entry point of function.
  final pulumi.Input<String> handler;
  /// max running time of initializer.
  final pulumi.Input<int>? initializationTimeout;
  /// initializer entry point of function.
  final pulumi.Input<String>? initializer;
  /// The maximum concurrency allowed for a single function instance.
  final pulumi.Input<int>? instanceConcurrency;
  /// Instance lifecycle configuration. See `instance_lifecycle_config` below.
  final pulumi.Input<V2FunctionInstanceLifecycleConfig>? instanceLifecycleConfig;
  /// The instance type of the function. Valid values:
  /// - **e1**: Elastic instance.
  /// - **c1**: performance instance.
  /// - **fc.gpu.tesla.1**: the T4 card type of the Tesla series of GPU instances.
  /// - **fc.gpu.ampere.1**: The Ampere series A10 card type of the GPU instance.
  /// - **g1**: Same as **fc.gpu.tesla.1**.
  final pulumi.Input<String>? instanceType;
  /// List of layers.
  /// > **NOTE:**  Multiple layers will be merged in the order of array subscripts from large to small, and the contents of layers with small subscripts will overwrite the files with the same name of layers with large subscripts.
  final pulumi.Input<List<String>>? layers;
  /// memory size needed by function.
  final pulumi.Input<int>? memorySize;
  /// runtime of function code.
  final pulumi.Input<String> runtime;
  /// The name of the function Service.
  final pulumi.Input<String> serviceName;
  /// max running time of function.
  final pulumi.Input<int>? timeout;

  /// Creates a new [V2FunctionArgs].
  /// [caPort] The listening port of the HTTP Server when the Custom Runtime or Custom Container is running.
  /// [code] Function Code ZIP package. code and customContainerConfig choose one. See `code` below.
  /// [codeChecksum] crc64 of function code.
  /// [cpu] The CPU specification of the function. The unit is vCPU, which is a multiple of the 0.05 vCPU.
  /// [customContainerConfig] Custom-container runtime related function configuration. See `custom_container_config` below.
  /// [customDns] Function custom DNS configuration. See `custom_dns` below.
  /// [customHealthCheckConfig] Custom runtime/container Custom health check configuration. See `custom_health_check_config` below.
  /// [customRuntimeConfig] Detailed configuration of Custom Runtime function. See `custom_runtime_config` below.
  /// [description] description of function.
  /// [diskSize] The disk specification of the function. The unit is MB. The optional value is 512 MB or 10240MB.
  /// [environmentVariables] The environment variable set for the function can get the value of the environment variable in the function. For more information, see Environment Variables.
  /// [functionName] function name.
  /// [gpuMemorySize] The GPU memory specification of the function, in MB, is a multiple of 1024MB.
  /// [handler] entry point of function.
  /// [initializationTimeout] max running time of initializer.
  /// [initializer] initializer entry point of function.
  /// [instanceConcurrency] The maximum concurrency allowed for a single function instance.
  /// [instanceLifecycleConfig] Instance lifecycle configuration. See `instance_lifecycle_config` below.
  /// [instanceType] The instance type of the function. Valid values:
  /// [layers] List of layers.
  /// [memorySize] memory size needed by function.
  /// [runtime] runtime of function code.
  /// [serviceName] The name of the function Service.
  /// [timeout] max running time of function.
  V2FunctionArgs({
    this.caPort,
    this.code,
    this.codeChecksum,
    this.cpu,
    this.customContainerConfig,
    this.customDns,
    this.customHealthCheckConfig,
    this.customRuntimeConfig,
    this.description,
    this.diskSize,
    this.environmentVariables,
    required this.functionName,
    this.gpuMemorySize,
    required this.handler,
    this.initializationTimeout,
    this.initializer,
    this.instanceConcurrency,
    this.instanceLifecycleConfig,
    this.instanceType,
    this.layers,
    this.memorySize,
    required this.runtime,
    required this.serviceName,
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caPort': ?caPort,
      'code': ?pulumi.Input.mapOptionalInputValue<V2FunctionCode, Map<String, dynamic>>(code, (value) => value.toMap()),
      'codeChecksum': ?codeChecksum,
      'cpu': ?cpu,
      'customContainerConfig': ?pulumi.Input.mapOptionalInputValue<V2FunctionCustomContainerConfig, Map<String, dynamic>>(customContainerConfig, (value) => value.toMap()),
      'customDns': ?pulumi.Input.mapOptionalInputValue<V2FunctionCustomDns, Map<String, dynamic>>(customDns, (value) => value.toMap()),
      'customHealthCheckConfig': ?pulumi.Input.mapOptionalInputValue<V2FunctionCustomHealthCheckConfig, Map<String, dynamic>>(customHealthCheckConfig, (value) => value.toMap()),
      'customRuntimeConfig': ?pulumi.Input.mapOptionalInputValue<V2FunctionCustomRuntimeConfig, Map<String, dynamic>>(customRuntimeConfig, (value) => value.toMap()),
      'description': ?description,
      'diskSize': ?diskSize,
      'environmentVariables': ?environmentVariables,
      'functionName': functionName,
      'gpuMemorySize': ?gpuMemorySize,
      'handler': handler,
      'initializationTimeout': ?initializationTimeout,
      'initializer': ?initializer,
      'instanceConcurrency': ?instanceConcurrency,
      'instanceLifecycleConfig': ?pulumi.Input.mapOptionalInputValue<V2FunctionInstanceLifecycleConfig, Map<String, dynamic>>(instanceLifecycleConfig, (value) => value.toMap()),
      'instanceType': ?instanceType,
      'layers': ?layers,
      'memorySize': ?memorySize,
      'runtime': runtime,
      'serviceName': serviceName,
      'timeout': ?timeout,
    };
  }

  factory V2FunctionArgs.fromMap(Map<String, dynamic> map) {
    return V2FunctionArgs(
      caPort: map['caPort'] == null ? null : (map['caPort']! as int).input(),
      code: map['code'] == null ? null : (V2FunctionCode.fromMap((map['code']! as Map).cast<String, dynamic>())).input(),
      codeChecksum: map['codeChecksum'] == null ? null : (map['codeChecksum']! as String).input(),
      cpu: map['cpu'] == null ? null : (map['cpu']! as double).input(),
      customContainerConfig: map['customContainerConfig'] == null ? null : (V2FunctionCustomContainerConfig.fromMap((map['customContainerConfig']! as Map).cast<String, dynamic>())).input(),
      customDns: map['customDns'] == null ? null : (V2FunctionCustomDns.fromMap((map['customDns']! as Map).cast<String, dynamic>())).input(),
      customHealthCheckConfig: map['customHealthCheckConfig'] == null ? null : (V2FunctionCustomHealthCheckConfig.fromMap((map['customHealthCheckConfig']! as Map).cast<String, dynamic>())).input(),
      customRuntimeConfig: map['customRuntimeConfig'] == null ? null : (V2FunctionCustomRuntimeConfig.fromMap((map['customRuntimeConfig']! as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      diskSize: map['diskSize'] == null ? null : (map['diskSize']! as int).input(),
      environmentVariables: map['environmentVariables'] == null ? null : ((map['environmentVariables']! as Map).cast<String, String>()).input(),
      functionName: (map['functionName'] as String).input(),
      gpuMemorySize: map['gpuMemorySize'] == null ? null : (map['gpuMemorySize']! as int).input(),
      handler: (map['handler'] as String).input(),
      initializationTimeout: map['initializationTimeout'] == null ? null : (map['initializationTimeout']! as int).input(),
      initializer: map['initializer'] == null ? null : (map['initializer']! as String).input(),
      instanceConcurrency: map['instanceConcurrency'] == null ? null : (map['instanceConcurrency']! as int).input(),
      instanceLifecycleConfig: map['instanceLifecycleConfig'] == null ? null : (V2FunctionInstanceLifecycleConfig.fromMap((map['instanceLifecycleConfig']! as Map).cast<String, dynamic>())).input(),
      instanceType: map['instanceType'] == null ? null : (map['instanceType']! as String).input(),
      layers: map['layers'] == null ? null : ((map['layers']! as List).cast<String>()).input(),
      memorySize: map['memorySize'] == null ? null : (map['memorySize']! as int).input(),
      runtime: (map['runtime'] as String).input(),
      serviceName: (map['serviceName'] as String).input(),
      timeout: map['timeout'] == null ? null : (map['timeout']! as int).input(),
    );
  }
}

