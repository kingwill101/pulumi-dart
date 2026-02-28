// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1beta1_machine_spec.dart';
import 'google_cloud_aiplatform_v1beta1_network_spec.dart';
import 'google_cloud_aiplatform_v1beta1_notebook_euc_config.dart';
import 'google_cloud_aiplatform_v1beta1_notebook_idle_shutdown_config.dart';
import 'google_cloud_aiplatform_v1beta1_persistent_disk_spec.dart';
import 'notebook_runtime_template_notebook_runtime_type_aiplatform_v1beta1.dart';

/// {@template pulumi_aiplatform_v1beta1_notebook_runtime_template_aiplatform_v1beta1_args_doc}
/// The set of arguments for NotebookRuntimeTemplate.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1beta1_notebook_runtime_template_aiplatform_v1beta1_args_doc}
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

  /// Creates a new [NotebookRuntimeTemplateAiplatformV1beta1Args].
  /// [dataPersistentDiskSpec] Optional. The specification of persistent disk attached to the runtime as data disk storage.
  /// [description] The description of the NotebookRuntimeTemplate.
  /// [displayName] The display name of the NotebookRuntimeTemplate. The name can be up to 128 characters long and can consist of any UTF-8 characters.
  /// [etag] Used to perform consistent read-modify-write updates. If not set, a blind "overwrite" update happens.
  /// [eucConfig] EUC configuration of the NotebookRuntimeTemplate.
  /// [idleShutdownConfig] The idle shutdown configuration of NotebookRuntimeTemplate. This config will only be set when idle shutdown is enabled.
  /// [labels] The labels with user-defined metadata to organize the NotebookRuntimeTemplates. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels.
  /// [location] Optional.
  /// [machineSpec] Optional. Immutable. The specification of a single machine for the template.
  /// [networkSpec] Optional. Network spec.
  /// [notebookRuntimeTemplateId] Optional. User specified ID for the notebook runtime template.
  /// [notebookRuntimeType] Optional. Immutable. The type of the notebook runtime template.
  /// [project] Optional.
  /// [serviceAccount] The service account that the runtime workload runs as. You can use any service account within the same project, but you must have the service account user permission to use the instance. If not specified, the [Compute Engine default service account](https://cloud.google.com/compute/docs/access/service-accounts#default_service_account) is used.
  NotebookRuntimeTemplateAiplatformV1beta1Args({
    GoogleCloudAiplatformV1beta1PersistentDiskSpec? dataPersistentDiskSpec,
    String? description,
    required String displayName,
    String? etag,
    GoogleCloudAiplatformV1beta1NotebookEucConfig? eucConfig,
    GoogleCloudAiplatformV1beta1NotebookIdleShutdownConfig? idleShutdownConfig,
    Map<String, String>? labels,
    String? location,
    GoogleCloudAiplatformV1beta1MachineSpec? machineSpec,
    GoogleCloudAiplatformV1beta1NetworkSpec? networkSpec,
    String? notebookRuntimeTemplateId,
    NotebookRuntimeTemplateNotebookRuntimeTypeAiplatformV1beta1?
        notebookRuntimeType,
    String? project,
    String? serviceAccount,
  })  : dataPersistentDiskSpec = pulumi.Input.asOptionalInput<
                GoogleCloudAiplatformV1beta1PersistentDiskSpec>(
            dataPersistentDiskSpec),
        description = pulumi.Input.asOptionalInput<String>(description),
        displayName = pulumi.Input.asInput<String>(displayName),
        etag = pulumi.Input.asOptionalInput<String>(etag),
        eucConfig = pulumi.Input.asOptionalInput<
            GoogleCloudAiplatformV1beta1NotebookEucConfig>(eucConfig),
        idleShutdownConfig = pulumi.Input.asOptionalInput<
                GoogleCloudAiplatformV1beta1NotebookIdleShutdownConfig>(
            idleShutdownConfig),
        labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        location = pulumi.Input.asOptionalInput<String>(location),
        machineSpec = pulumi.Input.asOptionalInput<
            GoogleCloudAiplatformV1beta1MachineSpec>(machineSpec),
        networkSpec = pulumi.Input.asOptionalInput<
            GoogleCloudAiplatformV1beta1NetworkSpec>(networkSpec),
        notebookRuntimeTemplateId =
            pulumi.Input.asOptionalInput<String>(notebookRuntimeTemplateId),
        notebookRuntimeType = pulumi.Input.asOptionalInput<
                NotebookRuntimeTemplateNotebookRuntimeTypeAiplatformV1beta1>(
            notebookRuntimeType),
        project = pulumi.Input.asOptionalInput<String>(project),
        serviceAccount = pulumi.Input.asOptionalInput<String>(serviceAccount);

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
      dataPersistentDiskSpec: map['dataPersistentDiskSpec'] == null
          ? null
          : GoogleCloudAiplatformV1beta1PersistentDiskSpec.fromMap(
              (map['dataPersistentDiskSpec'] as Map).cast<String, dynamic>()),
      description:
          map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] as String,
      etag: map['etag'] == null ? null : map['etag'] as String,
      eucConfig: map['eucConfig'] == null
          ? null
          : GoogleCloudAiplatformV1beta1NotebookEucConfig.fromMap(
              (map['eucConfig'] as Map).cast<String, dynamic>()),
      idleShutdownConfig: map['idleShutdownConfig'] == null
          ? null
          : GoogleCloudAiplatformV1beta1NotebookIdleShutdownConfig.fromMap(
              (map['idleShutdownConfig'] as Map).cast<String, dynamic>()),
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      machineSpec: map['machineSpec'] == null
          ? null
          : GoogleCloudAiplatformV1beta1MachineSpec.fromMap(
              (map['machineSpec'] as Map).cast<String, dynamic>()),
      networkSpec: map['networkSpec'] == null
          ? null
          : GoogleCloudAiplatformV1beta1NetworkSpec.fromMap(
              (map['networkSpec'] as Map).cast<String, dynamic>()),
      notebookRuntimeTemplateId: map['notebookRuntimeTemplateId'] == null
          ? null
          : map['notebookRuntimeTemplateId'] as String,
      notebookRuntimeType: map['notebookRuntimeType'] == null
          ? null
          : NotebookRuntimeTemplateNotebookRuntimeTypeAiplatformV1beta1
              .fromValue(map['notebookRuntimeType'] as String),
      project: map['project'] == null ? null : map['project'] as String,
      serviceAccount: map['serviceAccount'] == null
          ? null
          : map['serviceAccount'] as String,
    );
  }
}
