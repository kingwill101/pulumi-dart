// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gdc_application_environment_spark_application_environment_config.dart';

/// {@template pulumi_dataproc_gdc_application_environment_gdc_application_environment_args_doc}
/// The set of arguments for GdcApplicationEnvironment.
/// {@endtemplate}
/// {@macro pulumi_dataproc_gdc_application_environment_gdc_application_environment_args_doc}
class GdcApplicationEnvironmentArgs {
  /// The annotations to associate with this application environment. Annotations may be used to store client information, but are not used by the server.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;
  /// The id of the application environment
  final pulumi.Input<String>? applicationEnvironmentId;
  /// User-provided human-readable name to be used in user interfaces.
  final pulumi.Input<String>? displayName;
  /// The labels to associate with this application environment. Labels may be used for filtering and billing tracking.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The location of the application environment
  final pulumi.Input<String> location;
  /// The name of the namespace in which to create this ApplicationEnvironment. This namespace must already exist in the cluster
  final pulumi.Input<String>? namespace;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The id of the service instance to which this application environment belongs.
  final pulumi.Input<String> serviceinstance;
  /// Represents the SparkApplicationEnvironmentConfig.
  /// Structure is documented below.
  final pulumi.Input<GdcApplicationEnvironmentSparkApplicationEnvironmentConfig>? sparkApplicationEnvironmentConfig;

  /// Creates a new [GdcApplicationEnvironmentArgs].
  /// [annotations] The annotations to associate with this application environment. Annotations may be used to store client information, but are not used by the server.
  /// [applicationEnvironmentId] The id of the application environment
  /// [displayName] User-provided human-readable name to be used in user interfaces.
  /// [labels] The labels to associate with this application environment. Labels may be used for filtering and billing tracking.
  /// [location] The location of the application environment
  /// [namespace] The name of the namespace in which to create this ApplicationEnvironment. This namespace must already exist in the cluster
  /// [project] The ID of the project in which the resource belongs.
  /// [serviceinstance] The id of the service instance to which this application environment belongs.
  /// [sparkApplicationEnvironmentConfig] Represents the SparkApplicationEnvironmentConfig.
  GdcApplicationEnvironmentArgs({
    Map<String, String>? annotations,
    String? applicationEnvironmentId,
    String? displayName,
    Map<String, String>? labels,
    required String location,
    String? namespace,
    String? project,
    required String serviceinstance,
    GdcApplicationEnvironmentSparkApplicationEnvironmentConfig? sparkApplicationEnvironmentConfig,
  }) :
      annotations = pulumi.Input.asOptionalInput<Map<String, String>>(annotations),
      applicationEnvironmentId = pulumi.Input.asOptionalInput<String>(applicationEnvironmentId),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asInput<String>(location),
      namespace = pulumi.Input.asOptionalInput<String>(namespace),
      project = pulumi.Input.asOptionalInput<String>(project),
      serviceinstance = pulumi.Input.asInput<String>(serviceinstance),
      sparkApplicationEnvironmentConfig = pulumi.Input.asOptionalInput<GdcApplicationEnvironmentSparkApplicationEnvironmentConfig>(sparkApplicationEnvironmentConfig);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'applicationEnvironmentId': ?applicationEnvironmentId,
      'displayName': ?displayName,
      'labels': ?labels,
      'location': location,
      'namespace': ?namespace,
      'project': ?project,
      'serviceinstance': serviceinstance,
      'sparkApplicationEnvironmentConfig': ?pulumi.Input.mapOptionalInputValue<GdcApplicationEnvironmentSparkApplicationEnvironmentConfig, Map<String, dynamic>>(sparkApplicationEnvironmentConfig, (value) => value.toMap()),
    };
  }

  factory GdcApplicationEnvironmentArgs.fromMap(Map<String, dynamic> map) {
    return GdcApplicationEnvironmentArgs(
      annotations: map['annotations'] == null ? null : (map['annotations'] as Map).cast<String, String>(),
      applicationEnvironmentId: map['applicationEnvironmentId'] == null ? null : map['applicationEnvironmentId'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] as String,
      namespace: map['namespace'] == null ? null : map['namespace'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      serviceinstance: map['serviceinstance'] as String,
      sparkApplicationEnvironmentConfig: map['sparkApplicationEnvironmentConfig'] == null ? null : GdcApplicationEnvironmentSparkApplicationEnvironmentConfig.fromMap((map['sparkApplicationEnvironmentConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

