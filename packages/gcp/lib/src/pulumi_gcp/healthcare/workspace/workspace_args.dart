// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../workspace_settings/workspace_settings.dart';

/// The set of arguments for Workspace.
class WorkspaceArgs {
  /// Identifies the dataset addressed by this request. Must be in the format
  /// 'projects/{project}/locations/{location}/datasets/{dataset}'
  final Input<String> dataset;

  /// The user labels. An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// The name of the workspace, in the format 'projects/{projectId}/locations/{location}/datasets/{datasetId}/dataMapperWorkspaces/{workspaceId}'
  final Input<String>? name;

  /// Settings associated with this workspace.
  /// Structure is documented below.
  final Input<WorkspaceSettings> settings;

  WorkspaceArgs({
    required this.dataset,
    this.labels,
    this.name,
    required this.settings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dataset'] = dataset;
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['settings'] =
        Input.mapInputValue<WorkspaceSettings, Map<String, dynamic>>(
            settings, (value) => value.toMap());
    return map;
  }

  factory WorkspaceArgs.fromMap(Map<String, dynamic> map) {
    return WorkspaceArgs(
      dataset: Input.asInput<String>(map['dataset']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      name: Input.asOptionalInput<String>(map['name']),
      settings: Input.asInput<WorkspaceSettings>(map['settings']),
    );
  }
}
