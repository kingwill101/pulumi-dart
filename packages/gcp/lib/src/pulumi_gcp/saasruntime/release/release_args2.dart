// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../release_blueprint/release_blueprint.dart';
import '../release_input_variable_default/release_input_variable_default.dart';
import '../release_release_requirements/release_release_requirements.dart';

/// The set of arguments for Release.
class ReleaseArgs2 {
  /// Annotations is an unstructured key-value map stored with a resource that
  /// may be set by external tools to store and retrieve arbitrary metadata.
  /// They are not queryable and should be preserved when modifying objects.
  /// More info: https://kubernetes.io/docs/user-guide/annotations
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final Input<Map<String, String>>? annotations;
  final Input<ReleaseBlueprint>? blueprint;

  /// Mapping of input variables to default values. Maximum 100
  /// Structure is documented below.
  final Input<List<ReleaseInputVariableDefault>>? inputVariableDefaults;

  /// The labels on the resource, which can be used for categorization.
  /// similar to Kubernetes resource labels.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The ID value for the new release.
  final Input<String> releaseId;

  /// Set of requirements to be fulfilled on the Unit when using this Release.
  /// Structure is documented below.
  final Input<ReleaseReleaseRequirements>? releaseRequirements;

  /// Reference to the UnitKind this Release corresponds to (required and
  /// immutable once created).
  final Input<String> unitKind;

  ReleaseArgs2({
    this.annotations,
    this.blueprint,
    this.inputVariableDefaults,
    this.labels,
    required this.location,
    this.project,
    required this.releaseId,
    this.releaseRequirements,
    required this.unitKind,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final annotationsValue = annotations;
    if (annotationsValue != null) {
      map['annotations'] = annotationsValue;
    }
    final blueprintValue = blueprint;
    if (blueprintValue != null) {
      map['blueprint'] =
          Input.mapOptionalInputValue<ReleaseBlueprint, Map<String, dynamic>>(
              blueprintValue, (value) => value.toMap());
    }
    final inputVariableDefaultsValue = inputVariableDefaults;
    if (inputVariableDefaultsValue != null) {
      map['inputVariableDefaults'] = Input.mapOptionalInputValue<
              List<ReleaseInputVariableDefault>, List<Map<String, dynamic>>>(
          inputVariableDefaultsValue,
          (value) => Input.encodeList<ReleaseInputVariableDefault,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['releaseId'] = releaseId;
    final releaseRequirementsValue = releaseRequirements;
    if (releaseRequirementsValue != null) {
      map['releaseRequirements'] = Input.mapOptionalInputValue<
              ReleaseReleaseRequirements, Map<String, dynamic>>(
          releaseRequirementsValue, (value) => value.toMap());
    }
    map['unitKind'] = unitKind;
    return map;
  }

  factory ReleaseArgs2.fromMap(Map<String, dynamic> map) {
    return ReleaseArgs2(
      annotations:
          Input.asOptionalInput<Map<String, String>>(map['annotations']),
      blueprint: Input.asOptionalInput<ReleaseBlueprint>(map['blueprint']),
      inputVariableDefaults:
          Input.asOptionalInput<List<ReleaseInputVariableDefault>>(
              map['inputVariableDefaults']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      releaseId: Input.asInput<String>(map['releaseId']),
      releaseRequirements: Input.asOptionalInput<ReleaseReleaseRequirements>(
          map['releaseRequirements']),
      unitKind: Input.asInput<String>(map['unitKind']),
    );
  }
}
