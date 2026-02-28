// ignore_for_file: unused_element, unnecessary_cast

import 'dataproc_parameters.dart';
import 'execution_template_job_type.dart';
import 'execution_template_scale_tier.dart';
import 'scheduler_accelerator_config.dart';
import 'vertex_aiparameters.dart';

/// The description a notebook execution workload.
class ExecutionTemplate {
  /// Configuration (count and accelerator type) for hardware running notebook execution.
  final SchedulerAcceleratorConfig? acceleratorConfig;

  /// Container Image URI to a DLVM Example: 'gcr.io/deeplearning-platform-release/base-cu100' More examples can be found at: https://cloud.google.com/ai-platform/deep-learning-containers/docs/choosing-container
  final String? containerImageUri;

  /// Parameters used in Dataproc JobType executions.
  final DataprocParameters? dataprocParameters;

  /// Path to the notebook file to execute. Must be in a Google Cloud Storage bucket. Format: `gs://{bucket_name}/{folder}/{notebook_file_name}` Ex: `gs://notebook_user/scheduled_notebooks/sentiment_notebook.ipynb`
  final String? inputNotebookFile;

  /// The type of Job to be used on this execution.
  final ExecutionTemplateJobType? jobType;

  /// Name of the kernel spec to use. This must be specified if the kernel spec name on the execution target does not match the name in the input notebook file.
  final String? kernelSpec;

  /// Labels for execution. If execution is scheduled, a field included will be 'nbs-scheduled'. Otherwise, it is an immediate execution, and an included field will be 'nbs-immediate'. Use fields to efficiently index between various types of executions.
  final Map<String, String>? labels;

  /// Specifies the type of virtual machine to use for your training job's master worker. You must specify this field when `scaleTier` is set to `CUSTOM`. You can use certain Compute Engine machine types directly in this field. The following types are supported: - `n1-standard-4` - `n1-standard-8` - `n1-standard-16` - `n1-standard-32` - `n1-standard-64` - `n1-standard-96` - `n1-highmem-2` - `n1-highmem-4` - `n1-highmem-8` - `n1-highmem-16` - `n1-highmem-32` - `n1-highmem-64` - `n1-highmem-96` - `n1-highcpu-16` - `n1-highcpu-32` - `n1-highcpu-64` - `n1-highcpu-96` Alternatively, you can use the following legacy machine types: - `standard` - `large_model` - `complex_model_s` - `complex_model_m` - `complex_model_l` - `standard_gpu` - `complex_model_m_gpu` - `complex_model_l_gpu` - `standard_p100` - `complex_model_m_p100` - `standard_v100` - `large_model_v100` - `complex_model_m_v100` - `complex_model_l_v100` Finally, if you want to use a TPU for training, specify `cloud_tpu` in this field. Learn more about the [special configuration options for training with TPU](https://cloud.google.com/ai-platform/training/docs/using-tpus#configuring_a_custom_tpu_machine).
  final String? masterType;

  /// Path to the notebook folder to write to. Must be in a Google Cloud Storage bucket path. Format: `gs://{bucket_name}/{folder}` Ex: `gs://notebook_user/scheduled_notebooks`
  final String? outputNotebookFolder;

  /// Parameters used within the 'input_notebook_file' notebook.
  final String? parameters;

  /// Parameters to be overridden in the notebook during execution. Ref https://papermill.readthedocs.io/en/latest/usage-parameterize.html on how to specifying parameters in the input notebook and pass them here in an YAML file. Ex: `gs://notebook_user/scheduled_notebooks/sentiment_notebook_params.yaml`
  final String? paramsYamlFile;

  /// Scale tier of the hardware used for notebook execution. DEPRECATED Will be discontinued. As right now only CUSTOM is supported.
  final ExecutionTemplateScaleTier scaleTier;

  /// The email address of a service account to use when running the execution. You must have the `iam.serviceAccounts.actAs` permission for the specified service account.
  final String? serviceAccount;

  /// The name of a Vertex AI [Tensorboard] resource to which this execution will upload Tensorboard logs. Format: `projects/{project}/locations/{location}/tensorboards/{tensorboard}`
  final String? tensorboard;

  /// Parameters used in Vertex AI JobType executions.
  final VertexAIParameters? vertexAiParameters;

  /// Creates a new [ExecutionTemplate].
  /// [acceleratorConfig] Configuration (count and accelerator type) for hardware running notebook execution.
  /// [containerImageUri] Container Image URI to a DLVM Example: 'gcr.io/deeplearning-platform-release/base-cu100' More examples can be found at: https://cloud.google.com/ai-platform/deep-learning-containers/docs/choosing-container
  /// [dataprocParameters] Parameters used in Dataproc JobType executions.
  /// [inputNotebookFile] Path to the notebook file to execute. Must be in a Google Cloud Storage bucket. Format: `gs://{bucket_name}/{folder}/{notebook_file_name}` Ex: `gs://notebook_user/scheduled_notebooks/sentiment_notebook.ipynb`
  /// [jobType] The type of Job to be used on this execution.
  /// [kernelSpec] Name of the kernel spec to use. This must be specified if the kernel spec name on the execution target does not match the name in the input notebook file.
  /// [labels] Labels for execution. If execution is scheduled, a field included will be 'nbs-scheduled'. Otherwise, it is an immediate execution, and an included field will be 'nbs-immediate'. Use fields to efficiently index between various types of executions.
  /// [masterType] Specifies the type of virtual machine to use for your training job's master worker. You must specify this field when `scaleTier` is set to `CUSTOM`. You can use certain Compute Engine machine types directly in this field. The following types are supported: - `n1-standard-4` - `n1-standard-8` - `n1-standard-16` - `n1-standard-32` - `n1-standard-64` - `n1-standard-96` - `n1-highmem-2` - `n1-highmem-4` - `n1-highmem-8` - `n1-highmem-16` - `n1-highmem-32` - `n1-highmem-64` - `n1-highmem-96` - `n1-highcpu-16` - `n1-highcpu-32` - `n1-highcpu-64` - `n1-highcpu-96` Alternatively, you can use the following legacy machine types: - `standard` - `large_model` - `complex_model_s` - `complex_model_m` - `complex_model_l` - `standard_gpu` - `complex_model_m_gpu` - `complex_model_l_gpu` - `standard_p100` - `complex_model_m_p100` - `standard_v100` - `large_model_v100` - `complex_model_m_v100` - `complex_model_l_v100` Finally, if you want to use a TPU for training, specify `cloud_tpu` in this field. Learn more about the [special configuration options for training with TPU](https://cloud.google.com/ai-platform/training/docs/using-tpus#configuring_a_custom_tpu_machine).
  /// [outputNotebookFolder] Path to the notebook folder to write to. Must be in a Google Cloud Storage bucket path. Format: `gs://{bucket_name}/{folder}` Ex: `gs://notebook_user/scheduled_notebooks`
  /// [parameters] Parameters used within the 'input_notebook_file' notebook.
  /// [paramsYamlFile] Parameters to be overridden in the notebook during execution. Ref https://papermill.readthedocs.io/en/latest/usage-parameterize.html on how to specifying parameters in the input notebook and pass them here in an YAML file. Ex: `gs://notebook_user/scheduled_notebooks/sentiment_notebook_params.yaml`
  /// [scaleTier] Scale tier of the hardware used for notebook execution. DEPRECATED Will be discontinued. As right now only CUSTOM is supported.
  /// [serviceAccount] The email address of a service account to use when running the execution. You must have the `iam.serviceAccounts.actAs` permission for the specified service account.
  /// [tensorboard] The name of a Vertex AI [Tensorboard] resource to which this execution will upload Tensorboard logs. Format: `projects/{project}/locations/{location}/tensorboards/{tensorboard}`
  /// [vertexAiParameters] Parameters used in Vertex AI JobType executions.
  ExecutionTemplate({
    this.acceleratorConfig,
    this.containerImageUri,
    this.dataprocParameters,
    this.inputNotebookFile,
    this.jobType,
    this.kernelSpec,
    this.labels,
    this.masterType,
    this.outputNotebookFolder,
    this.parameters,
    this.paramsYamlFile,
    required this.scaleTier,
    this.serviceAccount,
    this.tensorboard,
    this.vertexAiParameters,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final acceleratorConfigValue = acceleratorConfig;
    if (acceleratorConfigValue != null) {
      map['acceleratorConfig'] = acceleratorConfigValue.toMap();
    }
    final containerImageUriValue = containerImageUri;
    if (containerImageUriValue != null) {
      map['containerImageUri'] = containerImageUriValue;
    }
    final dataprocParametersValue = dataprocParameters;
    if (dataprocParametersValue != null) {
      map['dataprocParameters'] = dataprocParametersValue.toMap();
    }
    final inputNotebookFileValue = inputNotebookFile;
    if (inputNotebookFileValue != null) {
      map['inputNotebookFile'] = inputNotebookFileValue;
    }
    final jobTypeValue = jobType;
    if (jobTypeValue != null) {
      map['jobType'] = jobTypeValue.value;
    }
    final kernelSpecValue = kernelSpec;
    if (kernelSpecValue != null) {
      map['kernelSpec'] = kernelSpecValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final masterTypeValue = masterType;
    if (masterTypeValue != null) {
      map['masterType'] = masterTypeValue;
    }
    final outputNotebookFolderValue = outputNotebookFolder;
    if (outputNotebookFolderValue != null) {
      map['outputNotebookFolder'] = outputNotebookFolderValue;
    }
    final parametersValue = parameters;
    if (parametersValue != null) {
      map['parameters'] = parametersValue;
    }
    final paramsYamlFileValue = paramsYamlFile;
    if (paramsYamlFileValue != null) {
      map['paramsYamlFile'] = paramsYamlFileValue;
    }
    map['scaleTier'] = scaleTier.value;
    final serviceAccountValue = serviceAccount;
    if (serviceAccountValue != null) {
      map['serviceAccount'] = serviceAccountValue;
    }
    final tensorboardValue = tensorboard;
    if (tensorboardValue != null) {
      map['tensorboard'] = tensorboardValue;
    }
    final vertexAiParametersValue = vertexAiParameters;
    if (vertexAiParametersValue != null) {
      map['vertexAiParameters'] = vertexAiParametersValue.toMap();
    }
    return map;
  }

  factory ExecutionTemplate.fromMap(Map<String, dynamic> map) {
    return ExecutionTemplate(
      acceleratorConfig: map['acceleratorConfig'] == null
          ? null
          : SchedulerAcceleratorConfig.fromMap(
              (map['acceleratorConfig'] as Map).cast<String, dynamic>()),
      containerImageUri: map['containerImageUri'] == null
          ? null
          : map['containerImageUri'] as String,
      dataprocParameters: map['dataprocParameters'] == null
          ? null
          : DataprocParameters.fromMap(
              (map['dataprocParameters'] as Map).cast<String, dynamic>()),
      inputNotebookFile: map['inputNotebookFile'] == null
          ? null
          : map['inputNotebookFile'] as String,
      jobType: map['jobType'] == null
          ? null
          : ExecutionTemplateJobType.fromValue(map['jobType'] as String),
      kernelSpec:
          map['kernelSpec'] == null ? null : map['kernelSpec'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      masterType:
          map['masterType'] == null ? null : map['masterType'] as String,
      outputNotebookFolder: map['outputNotebookFolder'] == null
          ? null
          : map['outputNotebookFolder'] as String,
      parameters:
          map['parameters'] == null ? null : map['parameters'] as String,
      paramsYamlFile: map['paramsYamlFile'] == null
          ? null
          : map['paramsYamlFile'] as String,
      scaleTier:
          ExecutionTemplateScaleTier.fromValue(map['scaleTier'] as String),
      serviceAccount: map['serviceAccount'] == null
          ? null
          : map['serviceAccount'] as String,
      tensorboard:
          map['tensorboard'] == null ? null : map['tensorboard'] as String,
      vertexAiParameters: map['vertexAiParameters'] == null
          ? null
          : VertexAIParameters.fromMap(
              (map['vertexAiParameters'] as Map).cast<String, dynamic>()),
    );
  }
}
