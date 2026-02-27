// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../engine_model_default_version/engine_model_default_version.dart';

/// The set of arguments for EngineModel.
class EngineModelArgs {
  /// The default version of the model. This version will be used to handle
  /// prediction requests that do not specify a version.
  /// Structure is documented below.
  final pulumi.Input<EngineModelDefaultVersion>? defaultVersion;

  /// The description specified for the model when it was created.
  final pulumi.Input<String>? description;

  /// One or more labels that you can add, to organize your models.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The name specified for the model.
  final pulumi.Input<String>? name;

  /// If true, online prediction nodes send stderr and stdout streams to Stackdriver Logging
  final pulumi.Input<bool>? onlinePredictionConsoleLogging;

  /// If true, online prediction access logs are sent to StackDriver Logging.
  final pulumi.Input<bool>? onlinePredictionLogging;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The list of regions where the model is going to be deployed.
  /// Currently only one region per model is supported
  final pulumi.Input<String>? regions;

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
      map['defaultVersion'] = pulumi.Input.mapOptionalInputValue<
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
      defaultVersion: pulumi.Input.asOptionalInput<EngineModelDefaultVersion>(
          map['defaultVersion']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      onlinePredictionConsoleLogging: pulumi.Input.asOptionalInput<bool>(
          map['onlinePredictionConsoleLogging']),
      onlinePredictionLogging:
          pulumi.Input.asOptionalInput<bool>(map['onlinePredictionLogging']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      regions: pulumi.Input.asOptionalInput<String>(map['regions']),
    );
  }
}
