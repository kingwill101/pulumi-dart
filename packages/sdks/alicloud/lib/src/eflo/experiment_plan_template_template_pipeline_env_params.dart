// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ExperimentPlanTemplateTemplatePipelineEnvParams {
  /// Number of central processing units (CPUs) allocated. This parameter affects the processing power of the computation, especially in tasks that require a large amount of parallel processing.
  final pulumi.Input<int> cpuPerWorker;
  /// The version of CUDA(Compute Unified Device Architecture) used. CUDA is a parallel computing platform and programming model provided by NVIDIA. A specific version may affect the available GPU functions and performance optimization.
  final pulumi.Input<String>? cudaVersion;
  /// The version of the GPU driver used. Driver version may affect GPU performance and compatibility, so it is important to ensure that the correct version is used
  final pulumi.Input<String>? gpuDriverVersion;
  /// Number of graphics processing units (GPUs). GPUs are a key component in deep learning and large-scale data processing, so this parameter is very important for tasks that require graphics-accelerated computing.
  final pulumi.Input<int> gpuPerWorker;
  /// The amount of memory available. Memory size has an important impact on the performance and stability of the program, especially when dealing with large data sets or high-dimensional data.
  final pulumi.Input<int> memoryPerWorker;
  /// The NVIDIA Collective Communications Library(NCCL) version used. NCCL is a library for multi-GPU and multi-node communication. This parameter is particularly important for optimizing data transmission in distributed computing.
  final pulumi.Input<String>? ncclVersion;
  /// The version of the PyTorch framework used. PyTorch is a widely used deep learning library, and differences between versions may affect the performance and functional support of model training and inference.
  final pulumi.Input<String>? pyTorchVersion;
  /// Shared memory GB allocation
  final pulumi.Input<int> shareMemory;
  /// The total number of nodes. This parameter directly affects the parallelism and computing speed of the task, and a higher number of working nodes usually accelerates the completion of the task.
  final pulumi.Input<int> workerNum;

  /// Creates a new [ExperimentPlanTemplateTemplatePipelineEnvParams].
  /// [cpuPerWorker] Number of central processing units (CPUs) allocated. This parameter affects the processing power of the computation, especially in tasks that require a large amount of parallel processing.
  /// [cudaVersion] The version of CUDA(Compute Unified Device Architecture) used. CUDA is a parallel computing platform and programming model provided by NVIDIA. A specific version may affect the available GPU functions and performance optimization.
  /// [gpuDriverVersion] The version of the GPU driver used. Driver version may affect GPU performance and compatibility, so it is important to ensure that the correct version is used
  /// [gpuPerWorker] Number of graphics processing units (GPUs). GPUs are a key component in deep learning and large-scale data processing, so this parameter is very important for tasks that require graphics-accelerated computing.
  /// [memoryPerWorker] The amount of memory available. Memory size has an important impact on the performance and stability of the program, especially when dealing with large data sets or high-dimensional data.
  /// [ncclVersion] The NVIDIA Collective Communications Library(NCCL) version used. NCCL is a library for multi-GPU and multi-node communication. This parameter is particularly important for optimizing data transmission in distributed computing.
  /// [pyTorchVersion] The version of the PyTorch framework used. PyTorch is a widely used deep learning library, and differences between versions may affect the performance and functional support of model training and inference.
  /// [shareMemory] Shared memory GB allocation
  /// [workerNum] The total number of nodes. This parameter directly affects the parallelism and computing speed of the task, and a higher number of working nodes usually accelerates the completion of the task.
  ExperimentPlanTemplateTemplatePipelineEnvParams({
    required this.cpuPerWorker,
    this.cudaVersion,
    this.gpuDriverVersion,
    required this.gpuPerWorker,
    required this.memoryPerWorker,
    this.ncclVersion,
    this.pyTorchVersion,
    required this.shareMemory,
    required this.workerNum,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpuPerWorker': cpuPerWorker,
      'cudaVersion': ?cudaVersion,
      'gpuDriverVersion': ?gpuDriverVersion,
      'gpuPerWorker': gpuPerWorker,
      'memoryPerWorker': memoryPerWorker,
      'ncclVersion': ?ncclVersion,
      'pyTorchVersion': ?pyTorchVersion,
      'shareMemory': shareMemory,
      'workerNum': workerNum,
    };
  }

  factory ExperimentPlanTemplateTemplatePipelineEnvParams.fromMap(Map<String, dynamic> map) {
    return ExperimentPlanTemplateTemplatePipelineEnvParams(
      cpuPerWorker: (map['cpuPerWorker'] as int).input(),
      cudaVersion: map['cudaVersion'] == null ? null : (map['cudaVersion'] as String).input(),
      gpuDriverVersion: map['gpuDriverVersion'] == null ? null : (map['gpuDriverVersion'] as String).input(),
      gpuPerWorker: (map['gpuPerWorker'] as int).input(),
      memoryPerWorker: (map['memoryPerWorker'] as int).input(),
      ncclVersion: map['ncclVersion'] == null ? null : (map['ncclVersion'] as String).input(),
      pyTorchVersion: map['pyTorchVersion'] == null ? null : (map['pyTorchVersion'] as String).input(),
      shareMemory: (map['shareMemory'] as int).input(),
      workerNum: (map['workerNum'] as int).input(),
    );
  }
}

