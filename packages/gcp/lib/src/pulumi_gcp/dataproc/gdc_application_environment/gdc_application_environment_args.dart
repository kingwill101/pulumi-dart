// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../gdc_application_environment_spark_application_environment_config/gdc_application_environment_spark_application_environment_config.dart';

/// The set of arguments for GdcApplicationEnvironment.
class GdcApplicationEnvironmentArgs {
  /// The annotations to associate with this application environment. Annotations may be used to store client information, but are not used by the server.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveAnnotations`" pulumi-lang-dotnet="`EffectiveAnnotations`" pulumi-lang-go="`effectiveAnnotations`" pulumi-lang-python="`effective_annotations`" pulumi-lang-yaml="`effectiveAnnotations`" pulumi-lang-java="`effectiveAnnotations`">`effective_annotations`</span> for all of the annotations present on the resource.
  final Input<Map<String, String>>? annotations;

  /// The id of the application environment
  final Input<String>? applicationEnvironmentId;

  /// User-provided human-readable name to be used in user interfaces.
  final Input<String>? displayName;

  /// The labels to associate with this application environment. Labels may be used for filtering and billing tracking.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// The location of the application environment
  final Input<String> location;

  /// The name of the namespace in which to create this ApplicationEnvironment. This namespace must already exist in the cluster
  final Input<String>? namespace;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The id of the service instance to which this application environment belongs.
  final Input<String> serviceinstance;

  /// Represents the SparkApplicationEnvironmentConfig.
  /// Structure is documented below.
  final Input<GdcApplicationEnvironmentSparkApplicationEnvironmentConfig>?
      sparkApplicationEnvironmentConfig;

  GdcApplicationEnvironmentArgs({
    this.annotations,
    this.applicationEnvironmentId,
    this.displayName,
    this.labels,
    required this.location,
    this.namespace,
    this.project,
    required this.serviceinstance,
    this.sparkApplicationEnvironmentConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final annotationsValue = annotations;
    if (annotationsValue != null) {
      map['annotations'] = annotationsValue;
    }
    final applicationEnvironmentIdValue = applicationEnvironmentId;
    if (applicationEnvironmentIdValue != null) {
      map['applicationEnvironmentId'] = applicationEnvironmentIdValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['location'] = location;
    final namespaceValue = namespace;
    if (namespaceValue != null) {
      map['namespace'] = namespaceValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['serviceinstance'] = serviceinstance;
    final sparkApplicationEnvironmentConfigValue =
        sparkApplicationEnvironmentConfig;
    if (sparkApplicationEnvironmentConfigValue != null) {
      map['sparkApplicationEnvironmentConfig'] = Input.mapOptionalInputValue<
              GdcApplicationEnvironmentSparkApplicationEnvironmentConfig,
              Map<String, dynamic>>(
          sparkApplicationEnvironmentConfigValue, (value) => value.toMap());
    }
    return map;
  }

  factory GdcApplicationEnvironmentArgs.fromMap(Map<String, dynamic> map) {
    return GdcApplicationEnvironmentArgs(
      annotations:
          Input.asOptionalInput<Map<String, String>>(map['annotations']),
      applicationEnvironmentId:
          Input.asOptionalInput<String>(map['applicationEnvironmentId']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asInput<String>(map['location']),
      namespace: Input.asOptionalInput<String>(map['namespace']),
      project: Input.asOptionalInput<String>(map['project']),
      serviceinstance: Input.asInput<String>(map['serviceinstance']),
      sparkApplicationEnvironmentConfig: Input.asOptionalInput<
              GdcApplicationEnvironmentSparkApplicationEnvironmentConfig>(
          map['sparkApplicationEnvironmentConfig']),
    );
  }
}
