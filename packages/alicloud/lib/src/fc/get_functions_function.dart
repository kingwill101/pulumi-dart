// ignore_for_file: unused_element, unnecessary_cast

import 'get_functions_function_custom_container_config.dart';

class GetFunctionsFunction {
  /// The port that the function listen to, only valid for [custom runtime](https://www.alibabacloud.com/help/doc-detail/132044.htm) and [custom container runtime](https://www.alibabacloud.com/help/doc-detail/179368.htm).
  final int caPort;
  /// Checksum (crc64) of the function code.
  final String codeChecksum;
  /// Function code size in bytes.
  final int codeSize;
  /// Function creation time.
  final String creationTime;
  /// The configuration for custom container runtime. It contains following attributes:
  final GetFunctionsFunctionCustomContainerConfig? customContainerConfig;
  /// Function description.
  final String description;
  /// A map that defines environment variables for the function.
  final Map<String, String> environmentVariables;
  /// Function [entry point](https://www.alibabacloud.com/help/doc-detail/62213.htm) in the code.
  final String handler;
  /// Function ID.
  final String id;
  /// The maximum length of time, in seconds, that the function's initialization should be run for.
  final int initializationTimeout;
  /// The entry point of the function's [initialization](https://www.alibabacloud.com/help/doc-detail/157704.htm).
  final String initializer;
  /// The maximum number of requests can be executed concurrently within the single function instance.
  final int instanceConcurrency;
  /// The instance type of the function.
  final String instanceType;
  /// Function last modification time.
  final String lastModificationTime;
  /// Amount of memory in MB the function can use at runtime.
  final int memorySize;
  /// Function name.
  final String name;
  /// Function runtime. The list of possible values is [available here](https://www.alibabacloud.com/help/doc-detail/52077.htm).
  final String runtime;
  /// Maximum amount of time the function can run in seconds.
  final int timeout;

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
      'customContainerConfig': ?customContainerConfig == null ? null : customContainerConfig!.toMap(),
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
      caPort: map['caPort'] as int,
      codeChecksum: map['codeChecksum'] as String,
      codeSize: map['codeSize'] as int,
      creationTime: map['creationTime'] as String,
      customContainerConfig: map['customContainerConfig'] == null ? null : GetFunctionsFunctionCustomContainerConfig.fromMap((map['customContainerConfig'] as Map).cast<String, dynamic>()),
      description: map['description'] as String,
      environmentVariables: (map['environmentVariables'] as Map).cast<String, String>(),
      handler: map['handler'] as String,
      id: map['id'] as String,
      initializationTimeout: map['initializationTimeout'] as int,
      initializer: map['initializer'] as String,
      instanceConcurrency: map['instanceConcurrency'] as int,
      instanceType: map['instanceType'] as String,
      lastModificationTime: map['lastModificationTime'] as String,
      memorySize: map['memorySize'] as int,
      name: map['name'] as String,
      runtime: map['runtime'] as String,
      timeout: map['timeout'] as int,
    );
  }
}

