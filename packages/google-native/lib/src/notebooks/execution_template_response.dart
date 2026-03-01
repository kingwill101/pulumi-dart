// ignore_for_file: unused_element, unnecessary_cast

import 'dataproc_parameters_response.dart';
import 'scheduler_accelerator_config_response.dart';
import 'vertex_aiparameters_response.dart';

/// The description a notebook execution workload.
class ExecutionTemplateResponse {
  /// Configuration (count and accelerator type) for hardware running notebook execution.
  final SchedulerAcceleratorConfigResponse acceleratorConfig;

  /// Container Image URI to a DLVM Example: 'gcr.io/deeplearning-platform-release/base-cu100' More examples can be found at: https://cloud.google.com/ai-platform/deep-learning-containers/docs/choosing-container
  final String containerImageUri;

  /// Parameters used in Dataproc JobType executions.
  final DataprocParametersResponse dataprocParameters;

  /// Path to the notebook file to execute. Must be in a Google Cloud Storage bucket. Format: `gs://{bucket_name}/{folder}/{notebook_file_name}` Ex: `gs://notebook_user/scheduled_notebooks/sentiment_notebook.ipynb`
  final String inputNotebookFile;

  /// The type of Job to be used on this execution.
  final String jobType;

  /// Name of the kernel spec to use. This must be specified if the kernel spec name on the execution target does not match the name in the input notebook file.
  final String kernelSpec;

  /// Labels for execution. If execution is scheduled, a field included will be 'nbs-scheduled'. Otherwise, it is an immediate execution, and an included field will be 'nbs-immediate'. Use fields to efficiently index between various types of executions.
  final Map<String, String> labels;

  /// Specifies the type of virtual machine to use for your training job's master worker. You must specify this field when `scaleTier` is set to `CUSTOM`. You can use certain Compute Engine machine types directly in this field. The following types are supported: - `n1-standard-4` - `n1-standard-8` - `n1-standard-16` - `n1-standard-32` - `n1-standard-64` - `n1-standard-96` - `n1-highmem-2` - `n1-highmem-4` - `n1-highmem-8` - `n1-highmem-16` - `n1-highmem-32` - `n1-highmem-64` - `n1-highmem-96` - `n1-highcpu-16` - `n1-highcpu-32` - `n1-highcpu-64` - `n1-highcpu-96` Alternatively, you can use the following legacy machine types: - `standard` - `large_model` - `complex_model_s` - `complex_model_m` - `complex_model_l` - `standard_gpu` - `complex_model_m_gpu` - `complex_model_l_gpu` - `standard_p100` - `complex_model_m_p100` - `standard_v100` - `large_model_v100` - `complex_model_m_v100` - `complex_model_l_v100` Finally, if you want to use a TPU for training, specify `cloud_tpu` in this field. Learn more about the [special configuration options for training with TPU](https://cloud.google.com/ai-platform/training/docs/using-tpus#configuring_a_custom_tpu_machine).
  final String masterType;

  /// Path to the notebook folder to write to. Must be in a Google Cloud Storage bucket path. Format: `gs://{bucket_name}/{folder}` Ex: `gs://notebook_user/scheduled_notebooks`
  final String outputNotebookFolder;

  /// Parameters used within the 'input_notebook_file' notebook.
  final String parameters;

  /// Parameters to be overridden in the notebook during execution. Ref https://papermill.readthedocs.io/en/latest/usage-parameterize.html on how to specifying parameters in the input notebook and pass them here in an YAML file. Ex: `gs://notebook_user/scheduled_notebooks/sentiment_notebook_params.yaml`
  final String paramsYamlFile;

  /// Scale tier of the hardware used for notebook execution. DEPRECATED Will be discontinued. As right now only CUSTOM is supported.
  final String scaleTier;

  /// The email address of a service account to use when running the execution. You must have the `iam.serviceAccounts.actAs` permission for the specified service account.
  final String serviceAccount;

  /// The name of a Vertex AI [Tensorboard] resource to which this execution will upload Tensorboard logs. Format: `projects/{project}/locations/{location}/tensorboards/{tensorboard}`
  final String tensorboard;

  /// Parameters used in Vertex AI JobType executions.
  final VertexAIParametersResponse vertexAiParameters;

  /// Creates a new [ExecutionTemplateResponse].
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
  ExecutionTemplateResponse({
    required this.acceleratorConfig,
    required this.containerImageUri,
    required this.dataprocParameters,
    required this.inputNotebookFile,
    required this.jobType,
    required this.kernelSpec,
    required this.labels,
    required this.masterType,
    required this.outputNotebookFolder,
    required this.parameters,
    required this.paramsYamlFile,
    required this.scaleTier,
    required this.serviceAccount,
    required this.tensorboard,
    required this.vertexAiParameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorConfig': acceleratorConfig.toMap(),
      'containerImageUri': containerImageUri,
      'dataprocParameters': dataprocParameters.toMap(),
      'inputNotebookFile': inputNotebookFile,
      'jobType': jobType,
      'kernelSpec': kernelSpec,
      'labels': labels,
      'masterType': masterType,
      'outputNotebookFolder': outputNotebookFolder,
      'parameters': parameters,
      'paramsYamlFile': paramsYamlFile,
      'scaleTier': scaleTier,
      'serviceAccount': serviceAccount,
      'tensorboard': tensorboard,
      'vertexAiParameters': vertexAiParameters.toMap(),
    };
  }

  factory ExecutionTemplateResponse.fromMap(Map<String, dynamic> map) {
    return ExecutionTemplateResponse(
      acceleratorConfig: SchedulerAcceleratorConfigResponse.fromMap(
        (map['acceleratorConfig'] as Map).cast<String, dynamic>(),
      ),
      containerImageUri: map['containerImageUri'] as String,
      dataprocParameters: DataprocParametersResponse.fromMap(
        (map['dataprocParameters'] as Map).cast<String, dynamic>(),
      ),
      inputNotebookFile: map['inputNotebookFile'] as String,
      jobType: map['jobType'] as String,
      kernelSpec: map['kernelSpec'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      masterType: map['masterType'] as String,
      outputNotebookFolder: map['outputNotebookFolder'] as String,
      parameters: map['parameters'] as String,
      paramsYamlFile: map['paramsYamlFile'] as String,
      scaleTier: map['scaleTier'] as String,
      serviceAccount: map['serviceAccount'] as String,
      tensorboard: map['tensorboard'] as String,
      vertexAiParameters: VertexAIParametersResponse.fromMap(
        (map['vertexAiParameters'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
