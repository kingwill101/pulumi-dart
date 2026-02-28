import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_job_args.dart';
import 'google_cloud_aiplatform_v1_custom_job_spec_response.dart';
import 'google_cloud_aiplatform_v1_encryption_spec_response.dart';
import 'google_rpc_status_response.dart';

/// Creates a CustomJob. A created CustomJob right away will be attempted to be run.
/// Auto-naming is currently not supported for this resource.
class CustomJob extends pulumi.CustomResource {
  /// Time when the CustomJob was created.
  late final pulumi.Output<String> createTime;

  /// The display name of the CustomJob. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  late final pulumi.Output<String> displayName;

  /// Customer-managed encryption key options for a CustomJob. If this is set, then all resources created by the CustomJob will be encrypted with the provided encryption key.
  late final pulumi.Output<GoogleCloudAiplatformV1EncryptionSpecResponse>
      encryptionSpec;

  /// Time when the CustomJob entered any of the following states: `JOB_STATE_SUCCEEDED`, `JOB_STATE_FAILED`, `JOB_STATE_CANCELLED`.
  late final pulumi.Output<String> endTime;

  /// Only populated when job's state is `JOB_STATE_FAILED` or `JOB_STATE_CANCELLED`.
  late final pulumi.Output<GoogleRpcStatusResponse> error;

  /// Job spec.
  late final pulumi.Output<GoogleCloudAiplatformV1CustomJobSpecResponse>
      jobSpec;

  /// The labels with user-defined metadata to organize CustomJobs. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;

  /// Resource name of a CustomJob.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// Time when the CustomJob for the first time entered the `JOB_STATE_RUNNING` state.
  late final pulumi.Output<String> startTime;

  /// The detailed state of the job.
  late final pulumi.Output<String> state;

  /// Time when the CustomJob was most recently updated.
  late final pulumi.Output<String> updateTime;

  /// URIs for accessing [interactive shells](https://cloud.google.com/vertex-ai/docs/training/monitor-debug-interactive-shell) (one URI for each training node). Only available if job_spec.enable_web_access is `true`. The keys are names of each node in the training job; for example, `workerpool0-0` for the primary node, `workerpool1-0` for the first node in the second worker pool, and `workerpool1-1` for the second node in the second worker pool. The values are the URIs for each node's interactive shell.
  late final pulumi.Output<Map<String, String>> webAccessUris;

  /// Creates a new [CustomJob].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CustomJob]. {@macro pulumi_aiplatform_v1_custom_job_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CustomJob(
    String name, {
    CustomJobArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:aiplatform/v1:CustomJob',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.displayName = registerOutput<String>('displayName');
    this.encryptionSpec =
        registerOutput<GoogleCloudAiplatformV1EncryptionSpecResponse>(
            'encryptionSpec');
    this.endTime = registerOutput<String>('endTime');
    this.error = registerOutput<GoogleRpcStatusResponse>('error');
    this.jobSpec =
        registerOutput<GoogleCloudAiplatformV1CustomJobSpecResponse>('jobSpec');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.startTime = registerOutput<String>('startTime');
    this.state = registerOutput<String>('state');
    this.updateTime = registerOutput<String>('updateTime');
    this.webAccessUris = registerOutput<Map<String, String>>('webAccessUris');
  }
}
