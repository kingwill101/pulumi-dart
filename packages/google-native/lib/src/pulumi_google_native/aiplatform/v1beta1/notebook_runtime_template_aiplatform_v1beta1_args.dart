// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1beta1_machine_spec.dart';
import 'google_cloud_aiplatform_v1beta1_network_spec.dart';
import 'google_cloud_aiplatform_v1beta1_notebook_euc_config.dart';
import 'google_cloud_aiplatform_v1beta1_notebook_idle_shutdown_config.dart';
import 'google_cloud_aiplatform_v1beta1_persistent_disk_spec.dart';
import 'notebook_runtime_template_notebook_runtime_type_aiplatform_v1beta1.dart';

/// The set of arguments for NotebookRuntimeTemplate.
class NotebookRuntimeTemplateAiplatformV1beta1Args {
  /// Optional. The specification of persistent disk attached to the runtime as data disk storage.
  final pulumi.Input<GoogleCloudAiplatformV1beta1PersistentDiskSpec>?
      dataPersistentDiskSpec;

  /// The description of the NotebookRuntimeTemplate.
  final pulumi.Input<String>? description;

  /// The display name of the NotebookRuntimeTemplate. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  final pulumi.Input<String> displayName;

  /// Used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  final pulumi.Input<String>? etag;

  /// EUC configuration of the NotebookRuntimeTemplate.
  final pulumi.Input<GoogleCloudAiplatformV1beta1NotebookEucConfig>? eucConfig;

  /// The idle shutdown configuration of NotebookRuntimeTemplate. This config will only be set when idle shutdown is enabled.
  final pulumi.Input<GoogleCloudAiplatformV1beta1NotebookIdleShutdownConfig>?
      idleShutdownConfig;

  /// The labels with user-defined metadata to organize the NotebookRuntimeTemplates. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// Optional. Immutable. The specification of a single machine for the template.
  final pulumi.Input<GoogleCloudAiplatformV1beta1MachineSpec>? machineSpec;

  /// Optional. Network spec.
  final pulumi.Input<GoogleCloudAiplatformV1beta1NetworkSpec>? networkSpec;

  /// Optional. User specified ID for the notebook runtime template.
  final pulumi.Input<String>? notebookRuntimeTemplateId;

  /// Optional. Immutable. The type of the notebook runtime template.
  final pulumi
      .Input<NotebookRuntimeTemplateNotebookRuntimeTypeAiplatformV1beta1>?
      notebookRuntimeType;
  final pulumi.Input<String>? project;

  /// The service account that the runtime workload runs as. You can use any service account within the same project, but you must have the service account user permission to use the instance. If not specified, the [Compute Engine default service account](https://cloud.google.com/compute/docs/access/service-accounts#default_service_account) is used.
  final pulumi.Input<String>? serviceAccount;

  NotebookRuntimeTemplateAiplatformV1beta1Args({
    this.dataPersistentDiskSpec,
    this.description,
    required this.displayName,
    this.etag,
    this.eucConfig,
    this.idleShutdownConfig,
    this.labels,
    this.location,
    this.machineSpec,
    this.networkSpec,
    this.notebookRuntimeTemplateId,
    this.notebookRuntimeType,
    this.project,
    this.serviceAccount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dataPersistentDiskSpecValue = dataPersistentDiskSpec;
    if (dataPersistentDiskSpecValue != null) {
      map['dataPersistentDiskSpec'] = pulumi.Input.mapOptionalInputValue<
              GoogleCloudAiplatformV1beta1PersistentDiskSpec,
              Map<String, dynamic>>(
          dataPersistentDiskSpecValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['displayName'] = displayName;
    final etagValue = etag;
    if (etagValue != null) {
      map['etag'] = etagValue;
    }
    final eucConfigValue = eucConfig;
    if (eucConfigValue != null) {
      map['eucConfig'] = pulumi.Input.mapOptionalInputValue<
          GoogleCloudAiplatformV1beta1NotebookEucConfig,
          Map<String, dynamic>>(eucConfigValue, (value) => value.toMap());
    }
    final idleShutdownConfigValue = idleShutdownConfig;
    if (idleShutdownConfigValue != null) {
      map['idleShutdownConfig'] = pulumi.Input.mapOptionalInputValue<
              GoogleCloudAiplatformV1beta1NotebookIdleShutdownConfig,
              Map<String, dynamic>>(
          idleShutdownConfigValue, (value) => value.toMap());
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final machineSpecValue = machineSpec;
    if (machineSpecValue != null) {
      map['machineSpec'] = pulumi.Input.mapOptionalInputValue<
          GoogleCloudAiplatformV1beta1MachineSpec,
          Map<String, dynamic>>(machineSpecValue, (value) => value.toMap());
    }
    final networkSpecValue = networkSpec;
    if (networkSpecValue != null) {
      map['networkSpec'] = pulumi.Input.mapOptionalInputValue<
          GoogleCloudAiplatformV1beta1NetworkSpec,
          Map<String, dynamic>>(networkSpecValue, (value) => value.toMap());
    }
    final notebookRuntimeTemplateIdValue = notebookRuntimeTemplateId;
    if (notebookRuntimeTemplateIdValue != null) {
      map['notebookRuntimeTemplateId'] = notebookRuntimeTemplateIdValue;
    }
    final notebookRuntimeTypeValue = notebookRuntimeType;
    if (notebookRuntimeTypeValue != null) {
      map['notebookRuntimeType'] = pulumi.Input.mapOptionalInputValue<
          NotebookRuntimeTemplateNotebookRuntimeTypeAiplatformV1beta1,
          String>(notebookRuntimeTypeValue, (value) => value.value);
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final serviceAccountValue = serviceAccount;
    if (serviceAccountValue != null) {
      map['serviceAccount'] = serviceAccountValue;
    }
    return map;
  }

  factory NotebookRuntimeTemplateAiplatformV1beta1Args.fromMap(
      Map<String, dynamic> map) {
    return NotebookRuntimeTemplateAiplatformV1beta1Args(
      dataPersistentDiskSpec: pulumi.Input.asOptionalInput<
              GoogleCloudAiplatformV1beta1PersistentDiskSpec>(
          map['dataPersistentDiskSpec']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      displayName: pulumi.Input.asInput<String>(map['displayName']),
      etag: pulumi.Input.asOptionalInput<String>(map['etag']),
      eucConfig: pulumi.Input.asOptionalInput<
          GoogleCloudAiplatformV1beta1NotebookEucConfig>(map['eucConfig']),
      idleShutdownConfig: pulumi.Input.asOptionalInput<
              GoogleCloudAiplatformV1beta1NotebookIdleShutdownConfig>(
          map['idleShutdownConfig']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      machineSpec:
          pulumi.Input.asOptionalInput<GoogleCloudAiplatformV1beta1MachineSpec>(
              map['machineSpec']),
      networkSpec:
          pulumi.Input.asOptionalInput<GoogleCloudAiplatformV1beta1NetworkSpec>(
              map['networkSpec']),
      notebookRuntimeTemplateId: pulumi.Input.asOptionalInput<String>(
          map['notebookRuntimeTemplateId']),
      notebookRuntimeType: pulumi.Input.asOptionalInput<
              NotebookRuntimeTemplateNotebookRuntimeTypeAiplatformV1beta1>(
          map['notebookRuntimeType']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      serviceAccount:
          pulumi.Input.asOptionalInput<String>(map['serviceAccount']),
    );
  }
}
