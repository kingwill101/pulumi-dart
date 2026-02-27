import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_aiplatform_v1beta1_machine_spec_response.dart';
import 'google_cloud_aiplatform_v1beta1_network_spec_response.dart';
import 'google_cloud_aiplatform_v1beta1_notebook_euc_config_response.dart';
import 'google_cloud_aiplatform_v1beta1_notebook_idle_shutdown_config_response.dart';
import 'google_cloud_aiplatform_v1beta1_persistent_disk_spec_response.dart';
import 'notebook_runtime_template_args2.dart';

/// Creates a NotebookRuntimeTemplate.
/// Auto-naming is currently not supported for this resource.
class NotebookRuntimeTemplate2 extends CustomResource {
  /// Timestamp when this NotebookRuntimeTemplate was created.
  late final Output<String> createTime;

  /// Optional. The specification of persistent disk attached to the runtime as data disk storage.
  late final Output<GoogleCloudAiplatformV1beta1PersistentDiskSpecResponse>
      dataPersistentDiskSpec;

  /// The description of the NotebookRuntimeTemplate.
  late final Output<String> description;

  /// The display name of the NotebookRuntimeTemplate. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  late final Output<String> displayName;

  /// Used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  late final Output<String> etag;

  /// EUC configuration of the NotebookRuntimeTemplate.
  late final Output<GoogleCloudAiplatformV1beta1NotebookEucConfigResponse>
      eucConfig;

  /// The idle shutdown configuration of NotebookRuntimeTemplate. This config will only be set when idle shutdown is enabled.
  late final Output<
          GoogleCloudAiplatformV1beta1NotebookIdleShutdownConfigResponse>
      idleShutdownConfig;

  /// The default template to use if not specified.
  late final Output<bool> isDefault;

  /// The labels with user-defined metadata to organize the NotebookRuntimeTemplates. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// Optional. Immutable. The specification of a single machine for the template.
  late final Output<GoogleCloudAiplatformV1beta1MachineSpecResponse>
      machineSpec;

  /// The resource name of the NotebookRuntimeTemplate.
  late final Output<String> name;

  /// Optional. Network spec.
  late final Output<GoogleCloudAiplatformV1beta1NetworkSpecResponse>
      networkSpec;

  /// Optional. User specified ID for the notebook runtime template.
  late final Output<String?> notebookRuntimeTemplateId;

  /// Optional. Immutable. The type of the notebook runtime template.
  late final Output<String> notebookRuntimeType;
  late final Output<String> project;

  /// The service account that the runtime workload runs as. You can use any service account within the same project, but you must have the service account user permission to use the instance. If not specified, the [Compute Engine default service account](https://cloud.google.com/compute/docs/access/service-accounts#default_service_account) is used.
  late final Output<String> serviceAccount;

  /// Timestamp when this NotebookRuntimeTemplate was most recently updated.
  late final Output<String> updateTime;

  NotebookRuntimeTemplate2(
    String name, {
    NotebookRuntimeTemplateArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:aiplatform/v1beta1:NotebookRuntimeTemplate',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.dataPersistentDiskSpec =
        registerOutput<GoogleCloudAiplatformV1beta1PersistentDiskSpecResponse>(
            'dataPersistentDiskSpec');
    this.description = registerOutput<String>('description');
    this.displayName = registerOutput<String>('displayName');
    this.etag = registerOutput<String>('etag');
    this.eucConfig =
        registerOutput<GoogleCloudAiplatformV1beta1NotebookEucConfigResponse>(
            'eucConfig');
    this.idleShutdownConfig = registerOutput<
            GoogleCloudAiplatformV1beta1NotebookIdleShutdownConfigResponse>(
        'idleShutdownConfig');
    this.isDefault = registerOutput<bool>('isDefault');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.machineSpec =
        registerOutput<GoogleCloudAiplatformV1beta1MachineSpecResponse>(
            'machineSpec');
    this.name = registerOutput<String>('name');
    this.networkSpec =
        registerOutput<GoogleCloudAiplatformV1beta1NetworkSpecResponse>(
            'networkSpec');
    this.notebookRuntimeTemplateId =
        registerOutput<String?>('notebookRuntimeTemplateId');
    this.notebookRuntimeType = registerOutput<String>('notebookRuntimeType');
    this.project = registerOutput<String>('project');
    this.serviceAccount = registerOutput<String>('serviceAccount');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
