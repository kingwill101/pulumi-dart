import 'package:pulumi/pulumi.dart' as pulumi;
import 'enrollment_args.dart';

/// The Eventarc Enrollment resource
///
///
/// To get more information about Enrollment, see:
///
/// * [API documentation](https://cloud.google.com/eventarc/docs/reference/rest/v1/projects.locations.enrollments)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/eventarc/advanced/docs/receive-events/create-enrollment)
///
/// ## Example Usage
///
/// ### Eventarc Enrollment With Pipeline Destination
///
///
///
///
/// ## Import
///
/// Enrollment can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/enrollments/{{enrollment_id}}`
///
/// * `{{project}}/{{location}}/{{enrollment_id}}`
///
/// * `{{location}}/{{enrollment_id}}`
///
/// When using the `pulumi import` command, Enrollment can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:eventarc/enrollment:Enrollment default projects/{{project}}/locations/{{location}}/enrollments/{{enrollment_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:eventarc/enrollment:Enrollment default {{project}}/{{location}}/{{enrollment_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:eventarc/enrollment:Enrollment default {{location}}/{{enrollment_id}}
/// ```
class Enrollment extends pulumi.CustomResource {
  /// Resource annotations.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  late final pulumi.Output<Map<String, String>?> annotations;

  /// A CEL expression identifying which messages this enrollment applies to.
  late final pulumi.Output<String> celMatch;

  /// The creation time.
  late final pulumi.Output<String> createTime;

  /// Destination is the Pipeline that the Enrollment is delivering to. It must
  /// point to the full resource name of a Pipeline. Format:
  /// "projects/{PROJECT_ID}/locations/{region}/pipelines/{PIPELINE_ID)"
  late final pulumi.Output<String> destination;

  /// Resource display name.
  late final pulumi.Output<String?> displayName;
  late final pulumi.Output<Map<String, String>> effectiveAnnotations;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// The user-provided ID to be assigned to the Enrollment. It should match the
  /// format `^a-z?$`.
  late final pulumi.Output<String> enrollmentId;

  /// This checksum is computed by the server based on the value of other
  /// fields, and might be sent only on update and delete requests to ensure that
  /// the client has an up-to-date value before proceeding.
  late final pulumi.Output<String> etag;

  /// Resource labels.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final pulumi.Output<String> location;

  /// Resource name of the message bus identifying the source of the messages. It
  /// matches the form
  /// projects/{project}/locations/{location}/messageBuses/{messageBus}.
  late final pulumi.Output<String> messageBus;

  /// Resource name of the form
  /// projects/{project}/locations/{location}/enrollments/{enrollment}
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// Server assigned unique identifier for the channel. The value is a UUID4
  /// string and guaranteed to remain unchanged until the resource is deleted.
  late final pulumi.Output<String> uid;

  /// The last-modified time.
  late final pulumi.Output<String> updateTime;

  Enrollment(
    String name, {
    EnrollmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:eventarc/enrollment:Enrollment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.annotations = registerOutput<Map<String, String>?>('annotations');
    this.celMatch = registerOutput<String>('celMatch');
    this.createTime = registerOutput<String>('createTime');
    this.destination = registerOutput<String>('destination');
    this.displayName = registerOutput<String?>('displayName');
    this.effectiveAnnotations =
        registerOutput<Map<String, String>>('effectiveAnnotations');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.enrollmentId = registerOutput<String>('enrollmentId');
    this.etag = registerOutput<String>('etag');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.messageBus = registerOutput<String>('messageBus');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
