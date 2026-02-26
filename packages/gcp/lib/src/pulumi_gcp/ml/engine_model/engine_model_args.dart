// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../engine_model_default_version/engine_model_default_version.dart';

/// The set of arguments for EngineModel.
class EngineModelArgs {
  /// The default version of the model. This version will be used to handle
  /// prediction requests that do not specify a version.
  /// Structure is documented below.
  final Input<EngineModelDefaultVersion>? defaultVersion;

  /// The description specified for the model when it was created.
  final Input<String>? description;

  /// One or more labels that you can add, to organize your models.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// The name specified for the model.
  final Input<String>? name;

  /// If true, online prediction nodes send stderr and stdout streams to Stackdriver Logging
  final Input<bool>? onlinePredictionConsoleLogging;

  /// If true, online prediction access logs are sent to StackDriver Logging.
  final Input<bool>? onlinePredictionLogging;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The list of regions where the model is going to be deployed.
  /// Currently only one region per model is supported
  final Input<String>? regions;

  EngineModelArgs({
    this.defaultVersion,
    this.description,
    this.labels,
    this.name,
    this.onlinePredictionConsoleLogging,
    this.onlinePredictionLogging,
    this.project,
    this.regions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final defaultVersionValue = defaultVersion;
    if (defaultVersionValue != null) {
      map['defaultVersion'] = Input.mapOptionalInputValue<
          EngineModelDefaultVersion,
          Map<String, dynamic>>(defaultVersionValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final onlinePredictionConsoleLoggingValue = onlinePredictionConsoleLogging;
    if (onlinePredictionConsoleLoggingValue != null) {
      map['onlinePredictionConsoleLogging'] =
          onlinePredictionConsoleLoggingValue;
    }
    final onlinePredictionLoggingValue = onlinePredictionLogging;
    if (onlinePredictionLoggingValue != null) {
      map['onlinePredictionLogging'] = onlinePredictionLoggingValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final regionsValue = regions;
    if (regionsValue != null) {
      map['regions'] = regionsValue;
    }
    return map;
  }

  factory EngineModelArgs.fromMap(Map<String, dynamic> map) {
    return EngineModelArgs(
      defaultVersion: Input.asOptionalInput<EngineModelDefaultVersion>(
          map['defaultVersion']),
      description: Input.asOptionalInput<String>(map['description']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      name: Input.asOptionalInput<String>(map['name']),
      onlinePredictionConsoleLogging:
          Input.asOptionalInput<bool>(map['onlinePredictionConsoleLogging']),
      onlinePredictionLogging:
          Input.asOptionalInput<bool>(map['onlinePredictionLogging']),
      project: Input.asOptionalInput<String>(map['project']),
      regions: Input.asOptionalInput<String>(map['regions']),
    );
  }
}
