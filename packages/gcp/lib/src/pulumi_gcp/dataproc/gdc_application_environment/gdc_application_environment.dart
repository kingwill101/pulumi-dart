import 'package:pulumi/pulumi.dart';
import '../gdc_application_environment_spark_application_environment_config/gdc_application_environment_spark_application_environment_config.dart';
import 'gdc_application_environment_args.dart';

/// An ApplicationEnvironment contains shared configuration that may be referenced by multiple SparkApplications.
///
///
/// To get more information about ApplicationEnvironment, see:
///
/// * [API documentation](https://cloud.google.com/dataproc-gdc/docs/reference/rest/v1/projects.locations.applicationEnvironments)
/// * How-to Guides
/// * [Dataproc Intro](https://cloud.google.com/dataproc/)
///
/// ## Example Usage
///
/// ### Dataprocgdc Applicationenvironment Basic
///
///
///
/// ### Dataprocgdc Applicationenvironment
///
///
///
///
/// ## Import
///
/// ApplicationEnvironment can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/serviceInstances/{{serviceinstance}}/applicationEnvironments/{{application_environment_id}}`
///
/// * `{{project}}/{{location}}/{{serviceinstance}}/{{application_environment_id}}`
///
/// * `{{location}}/{{serviceinstance}}/{{application_environment_id}}`
///
/// When using the `pulumi import` command, ApplicationEnvironment can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:dataproc/gdcApplicationEnvironment:GdcApplicationEnvironment default projects/{{project}}/locations/{{location}}/serviceInstances/{{serviceinstance}}/applicationEnvironments/{{application_environment_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataproc/gdcApplicationEnvironment:GdcApplicationEnvironment default {{project}}/{{location}}/{{serviceinstance}}/{{application_environment_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataproc/gdcApplicationEnvironment:GdcApplicationEnvironment default {{location}}/{{serviceinstance}}/{{application_environment_id}}
/// ```
class GdcApplicationEnvironment extends CustomResource {
  /// The annotations to associate with this application environment. Annotations may be used to store client information, but are not used by the server.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  late final Output<Map<String, String>?> annotations;

  /// The id of the application environment
  late final Output<String?> applicationEnvironmentId;

  /// The timestamp when the resource was created.
  late final Output<String> createTime;

  /// User-provided human-readable name to be used in user interfaces.
  late final Output<String?> displayName;
  late final Output<Map<String, String>> effectiveAnnotations;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// The labels to associate with this application environment. Labels may be used for filtering and billing tracking.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// The location of the application environment
  late final Output<String> location;

  /// Identifier. The name of the application environment. Format: projects/{project}/locations/{location}/serviceInstances/{service_instance}/applicationEnvironments/{application_environment_id}
  late final Output<String> name;

  /// The name of the namespace in which to create this ApplicationEnvironment. This namespace must already exist in the cluster
  late final Output<String?> namespace;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// The id of the service instance to which this application environment belongs.
  late final Output<String> serviceinstance;

  /// Represents the SparkApplicationEnvironmentConfig.
  /// Structure is documented below.
  late final Output<GdcApplicationEnvironmentSparkApplicationEnvironmentConfig?>
      sparkApplicationEnvironmentConfig;

  /// System generated unique identifier for this application environment, formatted as UUID4.
  late final Output<String> uid;

  /// The timestamp when the resource was most recently updated.
  late final Output<String> updateTime;

  GdcApplicationEnvironment(
    String name, {
    GdcApplicationEnvironmentArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:dataproc/gdcApplicationEnvironment:GdcApplicationEnvironment',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.annotations = registerOutput<Map<String, String>?>('annotations');
    this.applicationEnvironmentId =
        registerOutput<String?>('applicationEnvironmentId');
    this.createTime = registerOutput<String>('createTime');
    this.displayName = registerOutput<String?>('displayName');
    this.effectiveAnnotations =
        registerOutput<Map<String, String>>('effectiveAnnotations');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.namespace = registerOutput<String?>('namespace');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.serviceinstance = registerOutput<String>('serviceinstance');
    this.sparkApplicationEnvironmentConfig = registerOutput<
            GdcApplicationEnvironmentSparkApplicationEnvironmentConfig?>(
        'sparkApplicationEnvironmentConfig');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
