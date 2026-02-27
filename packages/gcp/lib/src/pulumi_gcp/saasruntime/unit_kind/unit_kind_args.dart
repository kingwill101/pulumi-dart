// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../unit_kind_dependency/unit_kind_dependency.dart';
import '../unit_kind_input_variable_mapping/unit_kind_input_variable_mapping.dart';
import '../unit_kind_output_variable_mapping/unit_kind_output_variable_mapping.dart';

/// The set of arguments for UnitKind.
class UnitKindArgs {
  /// Annotations is an unstructured key-value map stored with a resource that
  /// may be set by external tools to store and retrieve arbitrary metadata.
  /// They are not queryable and should be preserved when modifying objects.
  /// More info: https://kubernetes.io/docs/user-guide/annotations
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final Input<Map<String, String>>? annotations;

  /// A reference to the Release object to use as default for creating new units
  /// of this UnitKind.
  /// If not specified, a new unit must explicitly reference which release to use
  /// for its creation.
  final Input<String>? defaultRelease;

  /// List of other unit kinds that this release will depend on. Dependencies
  /// will be automatically provisioned if not found. Maximum 10.
  /// Structure is documented below.
  final Input<List<UnitKindDependency>>? dependencies;

  /// List of inputVariables for this release that will either be retrieved from
  /// a dependency’s outputVariables, or will be passed on to a dependency’s
  /// inputVariables. Maximum 100.
  /// Structure is documented below.
  final Input<List<UnitKindInputVariableMapping>>? inputVariableMappings;

  /// The labels on the resource, which can be used for categorization.
  /// similar to Kubernetes resource labels.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final Input<String> location;

  /// List of outputVariables for this unit kind will be passed to this unit's
  /// outputVariables. Maximum 100.
  /// Structure is documented below.
  final Input<List<UnitKindOutputVariableMapping>>? outputVariableMappings;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// A reference to the Saas that defines the product (managed service) that
  /// the producer wants to manage with SaaS Runtime. Part of the SaaS Runtime
  /// common data model. Immutable once set.
  final Input<String> saas;

  /// The ID value for the new unit kind.
  final Input<String> unitKindId;

  UnitKindArgs({
    this.annotations,
    this.defaultRelease,
    this.dependencies,
    this.inputVariableMappings,
    this.labels,
    required this.location,
    this.outputVariableMappings,
    this.project,
    required this.saas,
    required this.unitKindId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final annotationsValue = annotations;
    if (annotationsValue != null) {
      map['annotations'] = annotationsValue;
    }
    final defaultReleaseValue = defaultRelease;
    if (defaultReleaseValue != null) {
      map['defaultRelease'] = defaultReleaseValue;
    }
    final dependenciesValue = dependencies;
    if (dependenciesValue != null) {
      map['dependencies'] = Input.mapOptionalInputValue<
              List<UnitKindDependency>, List<Map<String, dynamic>>>(
          dependenciesValue,
          (value) => Input.encodeList<UnitKindDependency, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final inputVariableMappingsValue = inputVariableMappings;
    if (inputVariableMappingsValue != null) {
      map['inputVariableMappings'] = Input.mapOptionalInputValue<
              List<UnitKindInputVariableMapping>, List<Map<String, dynamic>>>(
          inputVariableMappingsValue,
          (value) => Input.encodeList<UnitKindInputVariableMapping,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['location'] = location;
    final outputVariableMappingsValue = outputVariableMappings;
    if (outputVariableMappingsValue != null) {
      map['outputVariableMappings'] = Input.mapOptionalInputValue<
              List<UnitKindOutputVariableMapping>, List<Map<String, dynamic>>>(
          outputVariableMappingsValue,
          (value) => Input.encodeList<UnitKindOutputVariableMapping,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['saas'] = saas;
    map['unitKindId'] = unitKindId;
    return map;
  }

  factory UnitKindArgs.fromMap(Map<String, dynamic> map) {
    return UnitKindArgs(
      annotations:
          Input.asOptionalInput<Map<String, String>>(map['annotations']),
      defaultRelease: Input.asOptionalInput<String>(map['defaultRelease']),
      dependencies:
          Input.asOptionalInput<List<UnitKindDependency>>(map['dependencies']),
      inputVariableMappings:
          Input.asOptionalInput<List<UnitKindInputVariableMapping>>(
              map['inputVariableMappings']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asInput<String>(map['location']),
      outputVariableMappings:
          Input.asOptionalInput<List<UnitKindOutputVariableMapping>>(
              map['outputVariableMappings']),
      project: Input.asOptionalInput<String>(map['project']),
      saas: Input.asInput<String>(map['saas']),
      unitKindId: Input.asInput<String>(map['unitKindId']),
    );
  }
}
