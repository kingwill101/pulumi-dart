// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1beta1_machine_spec_response.dart';
import 'google_cloud_aiplatform_v1beta1_network_spec_response.dart';
import 'google_cloud_aiplatform_v1beta1_notebook_euc_config_response.dart';
import 'google_cloud_aiplatform_v1beta1_notebook_idle_shutdown_config_response.dart';
import 'google_cloud_aiplatform_v1beta1_persistent_disk_spec_response.dart';

/// Result data returned by getNotebookRuntimeTemplate.
class GetNotebookRuntimeTemplateAiplatformV1beta1Result {
  /// Timestamp when this NotebookRuntimeTemplate was created.
  final String createTime;

  /// Optional. The specification of persistent disk attached to the runtime as data disk storage.
  final GoogleCloudAiplatformV1beta1PersistentDiskSpecResponse
      dataPersistentDiskSpec;

  /// The description of the NotebookRuntimeTemplate.
  final String description;

  /// The display name of the NotebookRuntimeTemplate. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  final String displayName;

  /// Used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  final String etag;

  /// EUC configuration of the NotebookRuntimeTemplate.
  final GoogleCloudAiplatformV1beta1NotebookEucConfigResponse eucConfig;

  /// The idle shutdown configuration of NotebookRuntimeTemplate. This config will only be set when idle shutdown is enabled.
  final GoogleCloudAiplatformV1beta1NotebookIdleShutdownConfigResponse
      idleShutdownConfig;

  /// The default template to use if not specified.
  final bool isDefault;

  /// The labels with user-defined metadata to organize the NotebookRuntimeTemplates. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  final Map<String, String> labels;

  /// Optional. Immutable. The specification of a single machine for the template.
  final GoogleCloudAiplatformV1beta1MachineSpecResponse machineSpec;

  /// The resource name of the NotebookRuntimeTemplate.
  final String name;

  /// Optional. Network spec.
  final GoogleCloudAiplatformV1beta1NetworkSpecResponse networkSpec;

  /// Optional. Immutable. The type of the notebook runtime template.
  final String notebookRuntimeType;

  /// The service account that the runtime workload runs as. You can use any service account within the same project, but you must have the service account user permission to use the instance. If not specified, the [Compute Engine default service account](https://cloud.google.com/compute/docs/access/service-accounts#default_service_account) is used.
  final String serviceAccount;

  /// Timestamp when this NotebookRuntimeTemplate was most recently updated.
  final String updateTime;

  /// Creates a new [GetNotebookRuntimeTemplateAiplatformV1beta1Result].
  /// [createTime] Timestamp when this NotebookRuntimeTemplate was created.
  /// [dataPersistentDiskSpec] Optional. The specification of persistent disk attached to the runtime as data disk storage.
  /// [description] The description of the NotebookRuntimeTemplate.
  /// [displayName] The display name of the NotebookRuntimeTemplate. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  /// [etag] Used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  /// [eucConfig] EUC configuration of the NotebookRuntimeTemplate.
  /// [idleShutdownConfig] The idle shutdown configuration of NotebookRuntimeTemplate. This config will only be set when idle shutdown is enabled.
  /// [isDefault] The default template to use if not specified.
  /// [labels] The labels with user-defined metadata to organize the NotebookRuntimeTemplates. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  /// [machineSpec] Optional. Immutable. The specification of a single machine for the template.
  /// [name] The resource name of the NotebookRuntimeTemplate.
  /// [networkSpec] Optional. Network spec.
  /// [notebookRuntimeType] Optional. Immutable. The type of the notebook runtime template.
  /// [serviceAccount] The service account that the runtime workload runs as. You can use any service account within the same project, but you must have the service account user permission to use the instance. If not specified, the [Compute Engine default service account](https://cloud.google.com/compute/docs/access/service-accounts#default_service_account) is used.
  /// [updateTime] Timestamp when this NotebookRuntimeTemplate was most recently updated.
  GetNotebookRuntimeTemplateAiplatformV1beta1Result({
    required this.createTime,
    required this.dataPersistentDiskSpec,
    required this.description,
    required this.displayName,
    required this.etag,
    required this.eucConfig,
    required this.idleShutdownConfig,
    required this.isDefault,
    required this.labels,
    required this.machineSpec,
    required this.name,
    required this.networkSpec,
    required this.notebookRuntimeType,
    required this.serviceAccount,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['dataPersistentDiskSpec'] = dataPersistentDiskSpec.toMap();
    map['description'] = description;
    map['displayName'] = displayName;
    map['etag'] = etag;
    map['eucConfig'] = eucConfig.toMap();
    map['idleShutdownConfig'] = idleShutdownConfig.toMap();
    map['isDefault'] = isDefault;
    map['labels'] = labels;
    map['machineSpec'] = machineSpec.toMap();
    map['name'] = name;
    map['networkSpec'] = networkSpec.toMap();
    map['notebookRuntimeType'] = notebookRuntimeType;
    map['serviceAccount'] = serviceAccount;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetNotebookRuntimeTemplateAiplatformV1beta1Result.fromMap(
      Map<String, dynamic> map) {
    return GetNotebookRuntimeTemplateAiplatformV1beta1Result(
      createTime: map['createTime'] as String,
      dataPersistentDiskSpec:
          GoogleCloudAiplatformV1beta1PersistentDiskSpecResponse.fromMap(
              (map['dataPersistentDiskSpec'] as Map).cast<String, dynamic>()),
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      etag: map['etag'] as String,
      eucConfig: GoogleCloudAiplatformV1beta1NotebookEucConfigResponse.fromMap(
          (map['eucConfig'] as Map).cast<String, dynamic>()),
      idleShutdownConfig:
          GoogleCloudAiplatformV1beta1NotebookIdleShutdownConfigResponse
              .fromMap(
                  (map['idleShutdownConfig'] as Map).cast<String, dynamic>()),
      isDefault: map['isDefault'] as bool,
      labels: (map['labels'] as Map).cast<String, String>(),
      machineSpec: GoogleCloudAiplatformV1beta1MachineSpecResponse.fromMap(
          (map['machineSpec'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      networkSpec: GoogleCloudAiplatformV1beta1NetworkSpecResponse.fromMap(
          (map['networkSpec'] as Map).cast<String, dynamic>()),
      notebookRuntimeType: map['notebookRuntimeType'] as String,
      serviceAccount: map['serviceAccount'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
