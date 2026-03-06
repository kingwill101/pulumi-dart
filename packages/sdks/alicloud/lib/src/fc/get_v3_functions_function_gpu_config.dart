// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetV3FunctionsFunctionGpuConfig {
  /// GPU memory specification, unit: MB, multiple of 1024MB.
  final pulumi.Input<int> gpuMemorySize;
  /// GPU card architecture.-fc.gpu.tesla.1 indicates the type of the Tesla Architecture Series card of the GPU instance (the same as the NVIDIA T4 card type).-fc.gpu.ampere.1 indicates the GPU instance type of Ampere Architecture Series card (same as NVIDIA A10 card type).-fc.gpu.ada.1 Indicates the GPU instance Ada Lovelace architecture family card type.
  final pulumi.Input<String> gpuType;

  /// Creates a new [GetV3FunctionsFunctionGpuConfig].
  /// [gpuMemorySize] GPU memory specification, unit: MB, multiple of 1024MB.
  /// [gpuType] GPU card architecture.-fc.gpu.tesla.1 indicates the type of the Tesla Architecture Series card of the GPU instance (the same as the NVIDIA T4 card type).-fc.gpu.ampere.1 indicates the GPU instance type of Ampere Architecture Series card (same as NVIDIA A10 card type).-fc.gpu.ada.1 Indicates the GPU instance Ada Lovelace architecture family card type.
  const GetV3FunctionsFunctionGpuConfig({
    required this.gpuMemorySize,
    required this.gpuType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gpuMemorySize': gpuMemorySize,
      'gpuType': gpuType,
    };
  }

  factory GetV3FunctionsFunctionGpuConfig.fromMap(Map<String, dynamic> map) {
    return GetV3FunctionsFunctionGpuConfig(
      gpuMemorySize: pulumi.Input.fromValue(map['gpuMemorySize'] as int),
      gpuType: pulumi.Input.fromValue(map['gpuType'] as String),
    );
  }
}

