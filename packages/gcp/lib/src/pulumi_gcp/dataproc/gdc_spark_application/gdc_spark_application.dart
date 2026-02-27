import 'package:pulumi/pulumi.dart';
import '../gdc_spark_application_pyspark_application_config/gdc_spark_application_pyspark_application_config.dart';
import '../gdc_spark_application_spark_application_config/gdc_spark_application_spark_application_config.dart';
import '../gdc_spark_application_spark_rapplication_config/gdc_spark_application_spark_rapplication_config.dart';
import '../gdc_spark_application_spark_sql_application_config/gdc_spark_application_spark_sql_application_config.dart';
import 'gdc_spark_application_args.dart';

/// A Spark application is a single Spark workload run on a GDC cluster.
///
///
/// To get more information about SparkApplication, see:
///
/// * [API documentation](https://cloud.google.com/dataproc-gdc/docs/reference/rest/v1/projects.locations.serviceInstances.sparkApplications)
/// * How-to Guides
/// * [Dataproc Intro](https://cloud.google.com/dataproc/)
///
/// ## Example Usage
///
/// ### Dataprocgdc Sparkapplication Basic
///
///
///
/// ### Dataprocgdc Sparkapplication
///
///
///
/// ### Dataprocgdc Sparkapplication Pyspark
///
///
///
/// ### Dataprocgdc Sparkapplication Sparkr
///
///
///
/// ### Dataprocgdc Sparkapplication Sparksql
///
///
///
/// ### Dataprocgdc Sparkapplication Sparksql Query File
///
///
///
///
/// ## Import
///
/// SparkApplication can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/serviceInstances/{{serviceinstance}}/sparkApplications/{{spark_application_id}}`
///
/// * `{{project}}/{{location}}/{{serviceinstance}}/{{spark_application_id}}`
///
/// * `{{location}}/{{serviceinstance}}/{{spark_application_id}}`
///
/// When using the `pulumi import` command, SparkApplication can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:dataproc/gdcSparkApplication:GdcSparkApplication default projects/{{project}}/locations/{{location}}/serviceInstances/{{serviceinstance}}/sparkApplications/{{spark_application_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataproc/gdcSparkApplication:GdcSparkApplication default {{project}}/{{location}}/{{serviceinstance}}/{{spark_application_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataproc/gdcSparkApplication:GdcSparkApplication default {{location}}/{{serviceinstance}}/{{spark_application_id}}
/// ```
class GdcSparkApplication extends CustomResource {
  /// The annotations to associate with this application. Annotations may be used to store client information, but are not used by the server.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  late final Output<Map<String, String>?> annotations;

  /// An ApplicationEnvironment from which to inherit configuration properties.
  late final Output<String?> applicationEnvironment;

  /// The timestamp when the resource was created.
  late final Output<String> createTime;

  /// List of container image uris for additional file dependencies. Dependent files are sequentially copied from each image. If a file with the same name exists in 2 images then the file from later image is used.
  late final Output<List<String>?> dependencyImages;

  /// User-provided human-readable name to be used in user interfaces.
  late final Output<String?> displayName;
  late final Output<Map<String, String>> effectiveAnnotations;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// The labels to associate with this application. Labels may be used for filtering and billing tracking.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// The location of the spark application.
  late final Output<String> location;

  /// URL for a monitoring UI for this application (for eventual Spark PHS/UI support) Out of scope for private GA
  late final Output<String> monitoringEndpoint;

  /// Identifier. The name of the application. Format: projects/{project}/locations/{location}/serviceInstances/{service_instance}/sparkApplications/{application}
  late final Output<String> name;

  /// The Kubernetes namespace in which to create the application. This namespace must already exist on the cluster.
  late final Output<String?> namespace;

  /// An HCFS URI pointing to the location of stdout and stdout of the application Mainly useful for Pantheon and gcloud Not in scope for private GA
  late final Output<String> outputUri;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// application-specific properties.
  late final Output<Map<String, String>?> properties;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// Represents the PySparkApplicationConfig.
  /// Structure is documented below.
  late final Output<GdcSparkApplicationPysparkApplicationConfig?>
      pysparkApplicationConfig;

  /// Whether the application is currently reconciling. True if the current state of the resource does not match the intended state, and the system is working to reconcile them, whether or not the change was user initiated.
  late final Output<bool> reconciling;

  /// The id of the service instance to which this spark application belongs.
  late final Output<String> serviceinstance;

  /// Represents the SparkApplicationConfig.
  /// Structure is documented below.
  late final Output<GdcSparkApplicationSparkApplicationConfig?>
      sparkApplicationConfig;

  /// The id of the application
  late final Output<String> sparkApplicationId;

  /// Represents the SparkRApplicationConfig.
  /// Structure is documented below.
  late final Output<GdcSparkApplicationSparkRApplicationConfig?>
      sparkRApplicationConfig;

  /// Represents the SparkRApplicationConfig.
  /// Structure is documented below.
  late final Output<GdcSparkApplicationSparkSqlApplicationConfig?>
      sparkSqlApplicationConfig;

  /// The current state.
  /// Possible values:
  /// * `STATE_UNSPECIFIED`
  /// * `PENDING`
  /// * `RUNNING`
  /// * `CANCELLING`
  /// * `CANCELLED`
  /// * `SUCCEEDED`
  /// * `FAILED`
  late final Output<String> state;

  /// A message explaining the current state.
  late final Output<String> stateMessage;

  /// System generated unique identifier for this application, formatted as UUID4.
  late final Output<String> uid;

  /// The timestamp when the resource was most recently updated.
  late final Output<String> updateTime;

  /// The Dataproc version of this application.
  late final Output<String?> version;

  GdcSparkApplication(
    String name, {
    GdcSparkApplicationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:dataproc/gdcSparkApplication:GdcSparkApplication',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.annotations = registerOutput<Map<String, String>?>('annotations');
    this.applicationEnvironment =
        registerOutput<String?>('applicationEnvironment');
    this.createTime = registerOutput<String>('createTime');
    this.dependencyImages = registerOutput<List<String>?>('dependencyImages');
    this.displayName = registerOutput<String?>('displayName');
    this.effectiveAnnotations =
        registerOutput<Map<String, String>>('effectiveAnnotations');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.monitoringEndpoint = registerOutput<String>('monitoringEndpoint');
    this.name = registerOutput<String>('name');
    this.namespace = registerOutput<String?>('namespace');
    this.outputUri = registerOutput<String>('outputUri');
    this.project = registerOutput<String>('project');
    this.properties = registerOutput<Map<String, String>?>('properties');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.pysparkApplicationConfig =
        registerOutput<GdcSparkApplicationPysparkApplicationConfig?>(
            'pysparkApplicationConfig');
    this.reconciling = registerOutput<bool>('reconciling');
    this.serviceinstance = registerOutput<String>('serviceinstance');
    this.sparkApplicationConfig =
        registerOutput<GdcSparkApplicationSparkApplicationConfig?>(
            'sparkApplicationConfig');
    this.sparkApplicationId = registerOutput<String>('sparkApplicationId');
    this.sparkRApplicationConfig =
        registerOutput<GdcSparkApplicationSparkRApplicationConfig?>(
            'sparkRApplicationConfig');
    this.sparkSqlApplicationConfig =
        registerOutput<GdcSparkApplicationSparkSqlApplicationConfig?>(
            'sparkSqlApplicationConfig');
    this.state = registerOutput<String>('state');
    this.stateMessage = registerOutput<String>('stateMessage');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
    this.version = registerOutput<String?>('version');
  }
}
