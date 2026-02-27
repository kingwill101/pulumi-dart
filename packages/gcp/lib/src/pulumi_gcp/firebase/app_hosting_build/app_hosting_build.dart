import 'package:pulumi/pulumi.dart' as pulumi;
import '../app_hosting_build_error/app_hosting_build_error.dart';
import '../app_hosting_build_source/app_hosting_build_source.dart';
import 'app_hosting_build_args.dart';

/// A single build for a backend, at a specific point codebase reference tag
/// and point in time. Encapsulates several resources, including an Artifact Registry
/// container image, a Cloud Build invocation that built the image, and the
/// Cloud Run revision that uses that image.
///
///
///
/// ## Example Usage
///
/// ### Firebase App Hosting Build Minimal
///
///
///
/// ### Firebase App Hosting Build Full
///
///
///
/// ### Firebase App Hosting Build Github
///
///
///
///
/// ## Import
///
/// Build can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/backends/{{backend}}/builds/{{build_id}}`
///
/// * `{{project}}/{{location}}/{{backend}}/{{build_id}}`
///
/// * `{{location}}/{{backend}}/{{build_id}}`
///
/// When using the `pulumi import` command, Build can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:firebase/appHostingBuild:AppHostingBuild default projects/{{project}}/locations/{{location}}/backends/{{backend}}/builds/{{build_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebase/appHostingBuild:AppHostingBuild default {{project}}/{{location}}/{{backend}}/{{build_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebase/appHostingBuild:AppHostingBuild default {{location}}/{{backend}}/{{build_id}}
/// ```
class AppHostingBuild extends pulumi.CustomResource {
  /// Unstructured key value map that may be set by external tools to
  /// store and arbitrary metadata. They are not queryable and should be
  /// preserved when modifying objects.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  late final pulumi.Output<Map<String, String>?> annotations;

  /// The ID of the Backend that this Build applies to
  late final pulumi.Output<String> backend;

  /// The user-specified ID of the build being created.
  late final pulumi.Output<String> buildId;

  /// The location of the [Cloud Build
  /// logs](https://cloud.google.com/build/docs/view-build-results) for the build
  /// process.
  late final pulumi.Output<String> buildLogsUri;

  /// Time at which the build was created.
  late final pulumi.Output<String> createTime;

  /// Human-readable name. 63 character limit.
  late final pulumi.Output<String?> displayName;
  late final pulumi.Output<Map<String, String>> effectiveAnnotations;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// The environment name of the backend when this build was created.
  late final pulumi.Output<String> environment;

  /// The source of the error for the build, if in a `FAILED` state.
  /// Possible values:
  /// CLOUD_BUILD
  /// CLOUD_RUN
  late final pulumi.Output<String> errorSource;

  /// The `Status` type defines a logical error model that is suitable for
  /// different programming environments, including REST APIs and RPC APIs. It is
  /// used by [gRPC](https://github.com/grpc). Each `Status` message contains
  /// three pieces of data: error code, error message, and error details.
  /// You can find out more about this error model and how to work with it in the
  /// [API Design Guide](https://cloud.google.com/apis/design/errors).
  /// Structure is documented below.
  late final pulumi.Output<List<AppHostingBuildError>> errors;

  /// Server-computed checksum based on other values; may be sent
  /// on update or delete to ensure operation is done on expected resource.
  late final pulumi.Output<String> etag;

  /// The Artifact Registry
  /// [container
  /// image](https://cloud.google.com/artifact-registry/docs/reference/rest/v1/projects.locations.repositories.dockerImages)
  /// URI, used by the Cloud Run
  /// [`revision`](https://cloud.google.com/run/docs/reference/rest/v2/projects.locations.services.revisions)
  /// for this build.
  late final pulumi.Output<String> image;

  /// Unstructured key value map that can be used to organize and categorize
  /// objects.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// The location of the Backend that this Build applies to
  late final pulumi.Output<String> location;

  /// Identifier. The resource name of the build.
  /// Format:
  /// `projects/{project}/locations/{locationId}/backends/{backendId}/builds/{buildId}`.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// The source for the build.
  /// Structure is documented below.
  late final pulumi.Output<AppHostingBuildSource> source;

  /// The state of the build.
  /// Possible values:
  /// BUILDING
  /// BUILT
  /// DEPLOYING
  /// READY
  /// FAILED
  late final pulumi.Output<String> state;

  /// System-assigned, unique identifier.
  late final pulumi.Output<String> uid;

  /// Time at which the build was last updated.
  late final pulumi.Output<String> updateTime;

  AppHostingBuild(
    String name, {
    AppHostingBuildArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:firebase/appHostingBuild:AppHostingBuild',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.annotations = registerOutput<Map<String, String>?>('annotations');
    this.backend = registerOutput<String>('backend');
    this.buildId = registerOutput<String>('buildId');
    this.buildLogsUri = registerOutput<String>('buildLogsUri');
    this.createTime = registerOutput<String>('createTime');
    this.displayName = registerOutput<String?>('displayName');
    this.effectiveAnnotations =
        registerOutput<Map<String, String>>('effectiveAnnotations');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.environment = registerOutput<String>('environment');
    this.errorSource = registerOutput<String>('errorSource');
    this.errors = registerOutput<List<AppHostingBuildError>>('errors');
    this.etag = registerOutput<String>('etag');
    this.image = registerOutput<String>('image');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.source = registerOutput<AppHostingBuildSource>('source');
    this.state = registerOutput<String>('state');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
