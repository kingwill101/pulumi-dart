// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_integrations_v1alpha_coordinate.dart';
import 'google_cloud_integrations_v1alpha_next_task.dart';

/// Configuration detail of a error catch task
class GoogleCloudIntegrationsV1alphaErrorCatcherConfig {
  /// Optional. User-provided description intended to give more business context about the error catcher config.
  final String? description;

  /// An error catcher id is string representation for the error catcher config. Within a workflow, error_catcher_id uniquely identifies an error catcher config among all error catcher configs for the workflow
  final String errorCatcherId;

  /// A number to uniquely identify each error catcher config within the workflow on UI.
  final String errorCatcherNumber;

  /// Optional. The user created label for a particular error catcher. Optional.
  final String? label;

  /// Optional. Informs the front-end application where to draw this error catcher config on the UI.
  final GoogleCloudIntegrationsV1alphaCoordinate? position;

  /// The set of start tasks that are to be executed for the error catch flow
  final List<GoogleCloudIntegrationsV1alphaNextTask> startErrorTasks;

  GoogleCloudIntegrationsV1alphaErrorCatcherConfig({
    this.description,
    required this.errorCatcherId,
    required this.errorCatcherNumber,
    this.label,
    this.position,
    required this.startErrorTasks,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['errorCatcherId'] = errorCatcherId;
    map['errorCatcherNumber'] = errorCatcherNumber;
    final labelValue = label;
    if (labelValue != null) {
      map['label'] = labelValue;
    }
    final positionValue = position;
    if (positionValue != null) {
      map['position'] = positionValue.toMap();
    }
    map['startErrorTasks'] = Input.encodeList<
        GoogleCloudIntegrationsV1alphaNextTask,
        Map<String, dynamic>>(startErrorTasks, (value) => value.toMap());
    return map;
  }

  factory GoogleCloudIntegrationsV1alphaErrorCatcherConfig.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudIntegrationsV1alphaErrorCatcherConfig(
      description:
          map['description'] == null ? null : map['description'] as String,
      errorCatcherId: map['errorCatcherId'] as String,
      errorCatcherNumber: map['errorCatcherNumber'] as String,
      label: map['label'] == null ? null : map['label'] as String,
      position: map['position'] == null
          ? null
          : GoogleCloudIntegrationsV1alphaCoordinate.fromMap(
              (map['position'] as Map).cast<String, dynamic>()),
      startErrorTasks: Input.decodeList<GoogleCloudIntegrationsV1alphaNextTask>(
          map['startErrorTasks'],
          (value) => GoogleCloudIntegrationsV1alphaNextTask.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
