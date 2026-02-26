// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../runtime_notebook_runtime_template_ref/runtime_notebook_runtime_template_ref.dart';

/// The set of arguments for Runtime.
class RuntimeArgs {
  /// Triggers an upgrade anytime the runtime is started if it is upgradable.
  final Input<bool>? autoUpgrade;

  /// The description of the Runtime.
  final Input<String>? description;

  /// Desired state of the Colab Runtime. Set this field to `RUNNING` to start the runtime, and `STOPPED` to stop it.
  final Input<String>? desiredState;

  /// Required. The display name of the Runtime.
  final Input<String> displayName;

  /// The location for the resource: https://cloud.google.com/colab/docs/locations
  final Input<String> location;

  /// The resource name of the Runtime
  final Input<String>? name;

  /// 'Runtime specific information used for NotebookRuntime creation.'
  /// Structure is documented below.
  final Input<RuntimeNotebookRuntimeTemplateRef>? notebookRuntimeTemplateRef;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The user email of the NotebookRuntime.
  final Input<String> runtimeUser;

  RuntimeArgs({
    this.autoUpgrade,
    this.description,
    this.desiredState,
    required this.displayName,
    required this.location,
    this.name,
    this.notebookRuntimeTemplateRef,
    this.project,
    required this.runtimeUser,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final autoUpgradeValue = autoUpgrade;
    if (autoUpgradeValue != null) {
      map['autoUpgrade'] = autoUpgradeValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final desiredStateValue = desiredState;
    if (desiredStateValue != null) {
      map['desiredState'] = desiredStateValue;
    }
    map['displayName'] = displayName;
    map['location'] = location;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final notebookRuntimeTemplateRefValue = notebookRuntimeTemplateRef;
    if (notebookRuntimeTemplateRefValue != null) {
      map['notebookRuntimeTemplateRef'] = Input.mapOptionalInputValue<
              RuntimeNotebookRuntimeTemplateRef, Map<String, dynamic>>(
          notebookRuntimeTemplateRefValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['runtimeUser'] = runtimeUser;
    return map;
  }

  factory RuntimeArgs.fromMap(Map<String, dynamic> map) {
    return RuntimeArgs(
      autoUpgrade: Input.asOptionalInput<bool>(map['autoUpgrade']),
      description: Input.asOptionalInput<String>(map['description']),
      desiredState: Input.asOptionalInput<String>(map['desiredState']),
      displayName: Input.asInput<String>(map['displayName']),
      location: Input.asInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      notebookRuntimeTemplateRef:
          Input.asOptionalInput<RuntimeNotebookRuntimeTemplateRef>(
              map['notebookRuntimeTemplateRef']),
      project: Input.asOptionalInput<String>(map['project']),
      runtimeUser: Input.asInput<String>(map['runtimeUser']),
    );
  }
}
