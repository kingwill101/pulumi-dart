// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../gdc_spark_application_pyspark_application_config/gdc_spark_application_pyspark_application_config.dart';
import '../gdc_spark_application_spark_application_config/gdc_spark_application_spark_application_config.dart';
import '../gdc_spark_application_spark_rapplication_config/gdc_spark_application_spark_rapplication_config.dart';
import '../gdc_spark_application_spark_sql_application_config/gdc_spark_application_spark_sql_application_config.dart';

/// The set of arguments for GdcSparkApplication.
class GdcSparkApplicationArgs {
  /// The annotations to associate with this application. Annotations may be used to store client information, but are not used by the server.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveAnnotations`" pulumi-lang-dotnet="`EffectiveAnnotations`" pulumi-lang-go="`effectiveAnnotations`" pulumi-lang-python="`effective_annotations`" pulumi-lang-yaml="`effectiveAnnotations`" pulumi-lang-java="`effectiveAnnotations`">`effective_annotations`</span> for all of the annotations present on the resource.
  final Input<Map<String, String>>? annotations;

  /// An ApplicationEnvironment from which to inherit configuration properties.
  final Input<String>? applicationEnvironment;

  /// List of container image uris for additional file dependencies. Dependent files are sequentially copied from each image. If a file with the same name exists in 2 images then the file from later image is used.
  final Input<List<String>>? dependencyImages;

  /// User-provided human-readable name to be used in user interfaces.
  final Input<String>? displayName;

  /// The labels to associate with this application. Labels may be used for filtering and billing tracking.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// The location of the spark application.
  final Input<String> location;

  /// The Kubernetes namespace in which to create the application. This namespace must already exist on the cluster.
  final Input<String>? namespace;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// application-specific properties.
  final Input<Map<String, String>>? properties;

  /// Represents the PySparkApplicationConfig.
  /// Structure is documented below.
  final Input<GdcSparkApplicationPysparkApplicationConfig>?
      pysparkApplicationConfig;

  /// The id of the service instance to which this spark application belongs.
  final Input<String> serviceinstance;

  /// Represents the SparkApplicationConfig.
  /// Structure is documented below.
  final Input<GdcSparkApplicationSparkApplicationConfig>?
      sparkApplicationConfig;

  /// The id of the application
  final Input<String> sparkApplicationId;

  /// Represents the SparkRApplicationConfig.
  /// Structure is documented below.
  final Input<GdcSparkApplicationSparkRApplicationConfig>?
      sparkRApplicationConfig;

  /// Represents the SparkRApplicationConfig.
  /// Structure is documented below.
  final Input<GdcSparkApplicationSparkSqlApplicationConfig>?
      sparkSqlApplicationConfig;

  /// The Dataproc version of this application.
  final Input<String>? version;

  GdcSparkApplicationArgs({
    this.annotations,
    this.applicationEnvironment,
    this.dependencyImages,
    this.displayName,
    this.labels,
    required this.location,
    this.namespace,
    this.project,
    this.properties,
    this.pysparkApplicationConfig,
    required this.serviceinstance,
    this.sparkApplicationConfig,
    required this.sparkApplicationId,
    this.sparkRApplicationConfig,
    this.sparkSqlApplicationConfig,
    this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final annotationsValue = annotations;
    if (annotationsValue != null) {
      map['annotations'] = annotationsValue;
    }
    final applicationEnvironmentValue = applicationEnvironment;
    if (applicationEnvironmentValue != null) {
      map['applicationEnvironment'] = applicationEnvironmentValue;
    }
    final dependencyImagesValue = dependencyImages;
    if (dependencyImagesValue != null) {
      map['dependencyImages'] = dependencyImagesValue;
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
    final propertiesValue = properties;
    if (propertiesValue != null) {
      map['properties'] = propertiesValue;
    }
    final pysparkApplicationConfigValue = pysparkApplicationConfig;
    if (pysparkApplicationConfigValue != null) {
      map['pysparkApplicationConfig'] = Input.mapOptionalInputValue<
              GdcSparkApplicationPysparkApplicationConfig,
              Map<String, dynamic>>(
          pysparkApplicationConfigValue, (value) => value.toMap());
    }
    map['serviceinstance'] = serviceinstance;
    final sparkApplicationConfigValue = sparkApplicationConfig;
    if (sparkApplicationConfigValue != null) {
      map['sparkApplicationConfig'] = Input.mapOptionalInputValue<
              GdcSparkApplicationSparkApplicationConfig, Map<String, dynamic>>(
          sparkApplicationConfigValue, (value) => value.toMap());
    }
    map['sparkApplicationId'] = sparkApplicationId;
    final sparkRApplicationConfigValue = sparkRApplicationConfig;
    if (sparkRApplicationConfigValue != null) {
      map['sparkRApplicationConfig'] = Input.mapOptionalInputValue<
              GdcSparkApplicationSparkRApplicationConfig, Map<String, dynamic>>(
          sparkRApplicationConfigValue, (value) => value.toMap());
    }
    final sparkSqlApplicationConfigValue = sparkSqlApplicationConfig;
    if (sparkSqlApplicationConfigValue != null) {
      map['sparkSqlApplicationConfig'] = Input.mapOptionalInputValue<
              GdcSparkApplicationSparkSqlApplicationConfig,
              Map<String, dynamic>>(
          sparkSqlApplicationConfigValue, (value) => value.toMap());
    }
    final versionValue = version;
    if (versionValue != null) {
      map['version'] = versionValue;
    }
    return map;
  }

  factory GdcSparkApplicationArgs.fromMap(Map<String, dynamic> map) {
    return GdcSparkApplicationArgs(
      annotations:
          Input.asOptionalInput<Map<String, String>>(map['annotations']),
      applicationEnvironment:
          Input.asOptionalInput<String>(map['applicationEnvironment']),
      dependencyImages:
          Input.asOptionalInput<List<String>>(map['dependencyImages']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asInput<String>(map['location']),
      namespace: Input.asOptionalInput<String>(map['namespace']),
      project: Input.asOptionalInput<String>(map['project']),
      properties: Input.asOptionalInput<Map<String, String>>(map['properties']),
      pysparkApplicationConfig:
          Input.asOptionalInput<GdcSparkApplicationPysparkApplicationConfig>(
              map['pysparkApplicationConfig']),
      serviceinstance: Input.asInput<String>(map['serviceinstance']),
      sparkApplicationConfig:
          Input.asOptionalInput<GdcSparkApplicationSparkApplicationConfig>(
              map['sparkApplicationConfig']),
      sparkApplicationId: Input.asInput<String>(map['sparkApplicationId']),
      sparkRApplicationConfig:
          Input.asOptionalInput<GdcSparkApplicationSparkRApplicationConfig>(
              map['sparkRApplicationConfig']),
      sparkSqlApplicationConfig:
          Input.asOptionalInput<GdcSparkApplicationSparkSqlApplicationConfig>(
              map['sparkSqlApplicationConfig']),
      version: Input.asOptionalInput<String>(map['version']),
    );
  }
}
