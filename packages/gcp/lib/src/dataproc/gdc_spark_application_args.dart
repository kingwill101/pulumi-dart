// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gdc_spark_application_pyspark_application_config.dart';
import 'gdc_spark_application_spark_application_config.dart';
import 'gdc_spark_application_spark_rapplication_config.dart';
import 'gdc_spark_application_spark_sql_application_config.dart';

/// {@template pulumi_dataproc_gdc_spark_application_gdc_spark_application_args_doc}
/// The set of arguments for GdcSparkApplication.
/// {@endtemplate}
/// {@macro pulumi_dataproc_gdc_spark_application_gdc_spark_application_args_doc}
class GdcSparkApplicationArgs {
  /// The annotations to associate with this application. Annotations may be used to store client information, but are not used by the server.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;
  /// An ApplicationEnvironment from which to inherit configuration properties.
  final pulumi.Input<String>? applicationEnvironment;
  /// List of container image uris for additional file dependencies. Dependent files are sequentially copied from each image. If a file with the same name exists in 2 images then the file from later image is used.
  final pulumi.Input<List<String>>? dependencyImages;
  /// User-provided human-readable name to be used in user interfaces.
  final pulumi.Input<String>? displayName;
  /// The labels to associate with this application. Labels may be used for filtering and billing tracking.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The location of the spark application.
  final pulumi.Input<String> location;
  /// The Kubernetes namespace in which to create the application. This namespace must already exist on the cluster.
  final pulumi.Input<String>? namespace;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// application-specific properties.
  final pulumi.Input<Map<String, String>>? properties;
  /// Represents the PySparkApplicationConfig.
  /// Structure is documented below.
  final pulumi.Input<GdcSparkApplicationPysparkApplicationConfig>? pysparkApplicationConfig;
  /// The id of the service instance to which this spark application belongs.
  final pulumi.Input<String> serviceinstance;
  /// Represents the SparkApplicationConfig.
  /// Structure is documented below.
  final pulumi.Input<GdcSparkApplicationSparkApplicationConfig>? sparkApplicationConfig;
  /// The id of the application
  final pulumi.Input<String> sparkApplicationId;
  /// Represents the SparkRApplicationConfig.
  /// Structure is documented below.
  final pulumi.Input<GdcSparkApplicationSparkRApplicationConfig>? sparkRApplicationConfig;
  /// Represents the SparkRApplicationConfig.
  /// Structure is documented below.
  final pulumi.Input<GdcSparkApplicationSparkSqlApplicationConfig>? sparkSqlApplicationConfig;
  /// The Dataproc version of this application.
  final pulumi.Input<String>? version;

  /// Creates a new [GdcSparkApplicationArgs].
  /// [annotations] The annotations to associate with this application. Annotations may be used to store client information, but are not used by the server.
  /// [applicationEnvironment] An ApplicationEnvironment from which to inherit configuration properties.
  /// [dependencyImages] List of container image uris for additional file dependencies. Dependent files are sequentially copied from each image. If a file with the same name exists in 2 images then the file from later image is used.
  /// [displayName] User-provided human-readable name to be used in user interfaces.
  /// [labels] The labels to associate with this application. Labels may be used for filtering and billing tracking.
  /// [location] The location of the spark application.
  /// [namespace] The Kubernetes namespace in which to create the application. This namespace must already exist on the cluster.
  /// [project] The ID of the project in which the resource belongs.
  /// [properties] application-specific properties.
  /// [pysparkApplicationConfig] Represents the PySparkApplicationConfig.
  /// [serviceinstance] The id of the service instance to which this spark application belongs.
  /// [sparkApplicationConfig] Represents the SparkApplicationConfig.
  /// [sparkApplicationId] The id of the application
  /// [sparkRApplicationConfig] Represents the SparkRApplicationConfig.
  /// [sparkSqlApplicationConfig] Represents the SparkRApplicationConfig.
  /// [version] The Dataproc version of this application.
  GdcSparkApplicationArgs({
    Map<String, String>? annotations,
    String? applicationEnvironment,
    List<String>? dependencyImages,
    String? displayName,
    Map<String, String>? labels,
    required String location,
    String? namespace,
    String? project,
    Map<String, String>? properties,
    GdcSparkApplicationPysparkApplicationConfig? pysparkApplicationConfig,
    required String serviceinstance,
    GdcSparkApplicationSparkApplicationConfig? sparkApplicationConfig,
    required String sparkApplicationId,
    GdcSparkApplicationSparkRApplicationConfig? sparkRApplicationConfig,
    GdcSparkApplicationSparkSqlApplicationConfig? sparkSqlApplicationConfig,
    String? version,
  }) :
      annotations = pulumi.Input.asOptionalInput<Map<String, String>>(annotations),
      applicationEnvironment = pulumi.Input.asOptionalInput<String>(applicationEnvironment),
      dependencyImages = pulumi.Input.asOptionalInput<List<String>>(dependencyImages),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asInput<String>(location),
      namespace = pulumi.Input.asOptionalInput<String>(namespace),
      project = pulumi.Input.asOptionalInput<String>(project),
      properties = pulumi.Input.asOptionalInput<Map<String, String>>(properties),
      pysparkApplicationConfig = pulumi.Input.asOptionalInput<GdcSparkApplicationPysparkApplicationConfig>(pysparkApplicationConfig),
      serviceinstance = pulumi.Input.asInput<String>(serviceinstance),
      sparkApplicationConfig = pulumi.Input.asOptionalInput<GdcSparkApplicationSparkApplicationConfig>(sparkApplicationConfig),
      sparkApplicationId = pulumi.Input.asInput<String>(sparkApplicationId),
      sparkRApplicationConfig = pulumi.Input.asOptionalInput<GdcSparkApplicationSparkRApplicationConfig>(sparkRApplicationConfig),
      sparkSqlApplicationConfig = pulumi.Input.asOptionalInput<GdcSparkApplicationSparkSqlApplicationConfig>(sparkSqlApplicationConfig),
      version = pulumi.Input.asOptionalInput<String>(version);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'applicationEnvironment': ?applicationEnvironment,
      'dependencyImages': ?dependencyImages,
      'displayName': ?displayName,
      'labels': ?labels,
      'location': location,
      'namespace': ?namespace,
      'project': ?project,
      'properties': ?properties,
      'pysparkApplicationConfig': ?pulumi.Input.mapOptionalInputValue<GdcSparkApplicationPysparkApplicationConfig, Map<String, dynamic>>(pysparkApplicationConfig, (value) => value.toMap()),
      'serviceinstance': serviceinstance,
      'sparkApplicationConfig': ?pulumi.Input.mapOptionalInputValue<GdcSparkApplicationSparkApplicationConfig, Map<String, dynamic>>(sparkApplicationConfig, (value) => value.toMap()),
      'sparkApplicationId': sparkApplicationId,
      'sparkRApplicationConfig': ?pulumi.Input.mapOptionalInputValue<GdcSparkApplicationSparkRApplicationConfig, Map<String, dynamic>>(sparkRApplicationConfig, (value) => value.toMap()),
      'sparkSqlApplicationConfig': ?pulumi.Input.mapOptionalInputValue<GdcSparkApplicationSparkSqlApplicationConfig, Map<String, dynamic>>(sparkSqlApplicationConfig, (value) => value.toMap()),
      'version': ?version,
    };
  }

  factory GdcSparkApplicationArgs.fromMap(Map<String, dynamic> map) {
    return GdcSparkApplicationArgs(
      annotations: map['annotations'] == null ? null : (map['annotations'] as Map).cast<String, String>(),
      applicationEnvironment: map['applicationEnvironment'] == null ? null : map['applicationEnvironment'] as String,
      dependencyImages: map['dependencyImages'] == null ? null : (map['dependencyImages'] as List).cast<String>(),
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] as String,
      namespace: map['namespace'] == null ? null : map['namespace'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      properties: map['properties'] == null ? null : (map['properties'] as Map).cast<String, String>(),
      pysparkApplicationConfig: map['pysparkApplicationConfig'] == null ? null : GdcSparkApplicationPysparkApplicationConfig.fromMap((map['pysparkApplicationConfig'] as Map).cast<String, dynamic>()),
      serviceinstance: map['serviceinstance'] as String,
      sparkApplicationConfig: map['sparkApplicationConfig'] == null ? null : GdcSparkApplicationSparkApplicationConfig.fromMap((map['sparkApplicationConfig'] as Map).cast<String, dynamic>()),
      sparkApplicationId: map['sparkApplicationId'] as String,
      sparkRApplicationConfig: map['sparkRApplicationConfig'] == null ? null : GdcSparkApplicationSparkRApplicationConfig.fromMap((map['sparkRApplicationConfig'] as Map).cast<String, dynamic>()),
      sparkSqlApplicationConfig: map['sparkSqlApplicationConfig'] == null ? null : GdcSparkApplicationSparkSqlApplicationConfig.fromMap((map['sparkSqlApplicationConfig'] as Map).cast<String, dynamic>()),
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

