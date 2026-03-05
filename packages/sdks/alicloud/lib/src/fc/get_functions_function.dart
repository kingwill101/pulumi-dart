// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_functions_function_custom_container_config.dart';

class GetFunctionsFunction {
  /// The port that the function listen to, only valid for [custom runtime](https://www.alibabacloud.com/help/doc-detail/132044.htm) and [custom container runtime](https://www.alibabacloud.com/help/doc-detail/179368.htm).
  final pulumi.Input<int> caPort;
  /// Checksum (crc64) of the function code.
  final pulumi.Input<String> codeChecksum;
  /// Function code size in bytes.
  final pulumi.Input<int> codeSize;
  /// Function creation time.
  final pulumi.Input<String> creationTime;
  /// The configuration for custom container runtime. It contains following attributes:
  final pulumi.Input<GetFunctionsFunctionCustomContainerConfig>? customContainerConfig;
  /// Function description.
  final pulumi.Input<String> description;
  /// A map that defines environment variables for the function.
  final pulumi.Input<Map<String, String>> environmentVariables;
  /// Function [entry point](https://www.alibabacloud.com/help/doc-detail/62213.htm) in the code.
  final pulumi.Input<String> handler;
  /// Function ID.
  final pulumi.Input<String> id;
  /// The maximum length of time, in seconds, that the function's initialization should be run for.
  final pulumi.Input<int> initializationTimeout;
  /// The entry point of the function's [initialization](https://www.alibabacloud.com/help/doc-detail/157704.htm).
  final pulumi.Input<String> initializer;
  /// The maximum number of requests can be executed concurrently within the single function instance.
  final pulumi.Input<int> instanceConcurrency;
  /// The instance type of the function.
  final pulumi.Input<String> instanceType;
  /// Function last modification time.
  final pulumi.Input<String> lastModificationTime;
  /// Amount of memory in MB the function can use at runtime.
  final pulumi.Input<int> memorySize;
  /// Function name.
  final pulumi.Input<String> name;
  /// Function runtime. The list of possible values is [available here](https://www.alibabacloud.com/help/doc-detail/52077.htm).
  final pulumi.Input<String> runtime;
  /// Maximum amount of time the function can run in seconds.
  final pulumi.Input<int> timeout;

  /// Creates a new [GetFunctionsFunction].
  /// [caPort] The port that the function listen to, only valid for [custom runtime](https://www.alibabacloud.com/help/doc-detail/132044.htm) and [custom container runtime](https://www.alibabacloud.com/help/doc-detail/179368.htm).
  /// [codeChecksum] Checksum (crc64) of the function code.
  /// [codeSize] Function code size in bytes.
  /// [creationTime] Function creation time.
  /// [customContainerConfig] The configuration for custom container runtime. It contains following attributes:
  /// [description] Function description.
  /// [environmentVariables] A map that defines environment variables for the function.
  /// [handler] Function [entry point](https://www.alibabacloud.com/help/doc-detail/62213.htm) in the code.
  /// [id] Function ID.
  /// [initializationTimeout] The maximum length of time, in seconds, that the function's initialization should be run for.
  /// [initializer] The entry point of the function's [initialization](https://www.alibabacloud.com/help/doc-detail/157704.htm).
  /// [instanceConcurrency] The maximum number of requests can be executed concurrently within the single function instance.
  /// [instanceType] The instance type of the function.
  /// [lastModificationTime] Function last modification time.
  /// [memorySize] Amount of memory in MB the function can use at runtime.
  /// [name] Function name.
  /// [runtime] Function runtime. The list of possible values is [available here](https://www.alibabacloud.com/help/doc-detail/52077.htm).
  /// [timeout] Maximum amount of time the function can run in seconds.
  GetFunctionsFunction({
    required this.caPort,
    required this.codeChecksum,
    required this.codeSize,
    required this.creationTime,
    this.customContainerConfig,
    required this.description,
    required this.environmentVariables,
    required this.handler,
    required this.id,
    required this.initializationTimeout,
    required this.initializer,
    required this.instanceConcurrency,
    required this.instanceType,
    required this.lastModificationTime,
    required this.memorySize,
    required this.name,
    required this.runtime,
    required this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caPort': caPort,
      'codeChecksum': codeChecksum,
      'codeSize': codeSize,
      'creationTime': creationTime,
      'customContainerConfig': ?pulumi.Input.mapOptionalInputValue<GetFunctionsFunctionCustomContainerConfig, Map<String, dynamic>>(customContainerConfig, (value) => value.toMap()),
      'description': description,
      'environmentVariables': environmentVariables,
      'handler': handler,
      'id': id,
      'initializationTimeout': initializationTimeout,
      'initializer': initializer,
      'instanceConcurrency': instanceConcurrency,
      'instanceType': instanceType,
      'lastModificationTime': lastModificationTime,
      'memorySize': memorySize,
      'name': name,
      'runtime': runtime,
      'timeout': timeout,
    };
  }

  factory GetFunctionsFunction.fromMap(Map<String, dynamic> map) {
    return GetFunctionsFunction(
      caPort: pulumi.Input.fromValue(map['caPort'] as int),
      codeChecksum: pulumi.Input.fromValue(map['codeChecksum'] as String),
      codeSize: pulumi.Input.fromValue(map['codeSize'] as int),
      creationTime: pulumi.Input.fromValue(map['creationTime'] as String),
      customContainerConfig: (() { final guardedValue = map['customContainerConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetFunctionsFunctionCustomContainerConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: pulumi.Input.fromValue(map['description'] as String),
      environmentVariables: pulumi.Input.fromValue((map['environmentVariables'] as Map).cast<String, String>()),
      handler: pulumi.Input.fromValue(map['handler'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      initializationTimeout: pulumi.Input.fromValue(map['initializationTimeout'] as int),
      initializer: pulumi.Input.fromValue(map['initializer'] as String),
      instanceConcurrency: pulumi.Input.fromValue(map['instanceConcurrency'] as int),
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
      lastModificationTime: pulumi.Input.fromValue(map['lastModificationTime'] as String),
      memorySize: pulumi.Input.fromValue(map['memorySize'] as int),
      name: pulumi.Input.fromValue(map['name'] as String),
      runtime: pulumi.Input.fromValue(map['runtime'] as String),
      timeout: pulumi.Input.fromValue(map['timeout'] as int),
    );
  }
}

