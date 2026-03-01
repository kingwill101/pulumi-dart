import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1_machine_spec_response.dart';
import 'google_cloud_aiplatform_v1_network_spec_response.dart';
import 'google_cloud_aiplatform_v1_notebook_euc_config_response.dart';
import 'google_cloud_aiplatform_v1_notebook_idle_shutdown_config_response.dart';
import 'google_cloud_aiplatform_v1_persistent_disk_spec_response.dart';
import 'notebook_runtime_template_args.dart';

/// Creates a NotebookRuntimeTemplate.
/// Auto-naming is currently not supported for this resource.
class NotebookRuntimeTemplate extends pulumi.CustomResource {
  /// Timestamp when this NotebookRuntimeTemplate was created.
  late final pulumi.Output<String> createTime;

  /// Optional. The specification of persistent disk attached to the runtime as data disk storage.
  late final pulumi.Output<GoogleCloudAiplatformV1PersistentDiskSpecResponse>
  dataPersistentDiskSpec;

  /// The description of the NotebookRuntimeTemplate.
  late final pulumi.Output<String> description;

  /// The display name of the NotebookRuntimeTemplate. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  late final pulumi.Output<String> displayName;

  /// Used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  late final pulumi.Output<String> etag;

  /// EUC configuration of the NotebookRuntimeTemplate.
  late final pulumi.Output<GoogleCloudAiplatformV1NotebookEucConfigResponse>
  eucConfig;

  /// The idle shutdown configuration of NotebookRuntimeTemplate. This config will only be set when idle shutdown is enabled.
  late final pulumi.Output<
    GoogleCloudAiplatformV1NotebookIdleShutdownConfigResponse
  >
  idleShutdownConfig;

  /// The default template to use if not specified.
  late final pulumi.Output<bool> isDefault;

  /// The labels with user-defined metadata to organize the NotebookRuntimeTemplates. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;

  /// Optional. Immutable. The specification of a single machine for the template.
  late final pulumi.Output<GoogleCloudAiplatformV1MachineSpecResponse>
  machineSpec;

  /// The resource name of the NotebookRuntimeTemplate.
  late final pulumi.Output<String> name;

  /// Optional. Network spec.
  late final pulumi.Output<GoogleCloudAiplatformV1NetworkSpecResponse>
  networkSpec;

  /// Optional. User specified ID for the notebook runtime template.
  late final pulumi.Output<String?> notebookRuntimeTemplateId;

  /// Optional. Immutable. The type of the notebook runtime template.
  late final pulumi.Output<String> notebookRuntimeType;
  late final pulumi.Output<String> project;

  /// The service account that the runtime workload runs as. You can use any service account within the same project, but you must have the service account user permission to use the instance. If not specified, the [Compute Engine default service account](https://cloud.google.com/compute/docs/access/service-accounts#default_service_account) is used.
  late final pulumi.Output<String> serviceAccount;

  /// Timestamp when this NotebookRuntimeTemplate was most recently updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [NotebookRuntimeTemplate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NotebookRuntimeTemplate]. {@macro pulumi_aiplatform_v1_notebook_runtime_template_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NotebookRuntimeTemplate(
    String name, {
    NotebookRuntimeTemplateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:aiplatform/v1:NotebookRuntimeTemplate',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.createTime = registerOutput<String>('createTime');
    this.dataPersistentDiskSpec =
        registerOutput<GoogleCloudAiplatformV1PersistentDiskSpecResponse>(
          'dataPersistentDiskSpec',
        );
    this.description = registerOutput<String>('description');
    this.displayName = registerOutput<String>('displayName');
    this.etag = registerOutput<String>('etag');
    this.eucConfig =
        registerOutput<GoogleCloudAiplatformV1NotebookEucConfigResponse>(
          'eucConfig',
        );
    this.idleShutdownConfig =
        registerOutput<
          GoogleCloudAiplatformV1NotebookIdleShutdownConfigResponse
        >('idleShutdownConfig');
    this.isDefault = registerOutput<bool>('isDefault');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.machineSpec =
        registerOutput<GoogleCloudAiplatformV1MachineSpecResponse>(
          'machineSpec',
        );
    this.name = registerOutput<String>('name');
    this.networkSpec =
        registerOutput<GoogleCloudAiplatformV1NetworkSpecResponse>(
          'networkSpec',
        );
    this.notebookRuntimeTemplateId = registerOutput<String?>(
      'notebookRuntimeTemplateId',
    );
    this.notebookRuntimeType = registerOutput<String>('notebookRuntimeType');
    this.project = registerOutput<String>('project');
    this.serviceAccount = registerOutput<String>('serviceAccount');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
