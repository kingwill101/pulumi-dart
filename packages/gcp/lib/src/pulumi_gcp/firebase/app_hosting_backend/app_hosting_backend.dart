import 'package:pulumi/pulumi.dart';
import '../app_hosting_backend_codebase/app_hosting_backend_codebase.dart';
import '../app_hosting_backend_managed_resource/app_hosting_backend_managed_resource.dart';
import 'app_hosting_backend_args.dart';

/// A Backend is the primary resource of App Hosting.
///
///
///
/// ## Example Usage
///
/// ### Firebase App Hosting Backend Minimal
///
///
///
/// ### Firebase App Hosting Backend Full
///
///
///
/// ### Firebase App Hosting Backend Github
///
///
///
///
/// ## Import
///
/// Backend can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/backends/{{backend_id}}`
///
/// * `{{project}}/{{location}}/{{backend_id}}`
///
/// * `{{location}}/{{backend_id}}`
///
/// When using the `pulumi import` command, Backend can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:firebase/appHostingBackend:AppHostingBackend default projects/{{project}}/locations/{{location}}/backends/{{backend_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebase/appHostingBackend:AppHostingBackend default {{project}}/{{location}}/{{backend_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebase/appHostingBackend:AppHostingBackend default {{location}}/{{backend_id}}
/// ```
class AppHostingBackend extends CustomResource {
  /// Unstructured key value map that may be set by external tools to
  /// store and arbitrary metadata. They are not queryable and should be
  /// preserved when modifying objects.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  late final Output<Map<String, String>?> annotations;

  /// The [ID of a Web
  /// App](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects.webApps#WebApp.FIELDS.app_id)
  /// associated with the backend.
  late final Output<String> appId;

  /// Id of the backend. Also used as the service ID for Cloud Run, and as part
  /// of the default domain name.
  late final Output<String> backendId;

  /// The connection to an external source repository to watch for event-driven
  /// updates to the backend.
  /// Structure is documented below.
  late final Output<AppHostingBackendCodebase?> codebase;

  /// Time at which the backend was created.
  late final Output<String> createTime;

  /// Time at which the backend was deleted.
  late final Output<String> deleteTime;

  /// Human-readable name. 63 character limit.
  late final Output<String?> displayName;
  late final Output<Map<String, String>> effectiveAnnotations;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// The environment name of the backend, used to load environment variables
  /// from environment specific configuration.
  late final Output<String?> environment;

  /// Server-computed checksum based on other values; may be sent
  /// on update or delete to ensure operation is done on expected resource.
  late final Output<String> etag;

  /// Unstructured key value map that can be used to organize and categorize
  /// objects.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// The canonical IDs of a Google Cloud location such as "us-east1".
  late final Output<String> location;

  /// A list of the resources managed by this backend.
  /// Structure is documented below.
  late final Output<List<AppHostingBackendManagedResource>> managedResources;

  /// Identifier. The resource name of the backend.
  /// Format:
  /// `projects/{project}/locations/{locationId}/backends/{backendId}`.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// The name of the service account used for Cloud Build and Cloud Run.
  /// Should have the role roles/firebaseapphosting.computeRunner
  /// or equivalent permissions.
  late final Output<String> serviceAccount;

  /// Immutable. Specifies how App Hosting will serve the content for this backend. It will
  /// either be contained to a single region (REGIONAL_STRICT) or allowed to use
  /// App Hosting's global-replicated serving infrastructure (GLOBAL_ACCESS).
  /// Possible values are: `REGIONAL_STRICT`, `GLOBAL_ACCESS`.
  late final Output<String> servingLocality;

  /// System-assigned, unique identifier.
  late final Output<String> uid;

  /// Time at which the backend was last updated.
  late final Output<String> updateTime;

  /// The primary URI to communicate with the backend.
  late final Output<String> uri;

  AppHostingBackend(
    String name, {
    AppHostingBackendArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:firebase/appHostingBackend:AppHostingBackend',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.annotations = registerOutput<Map<String, String>?>('annotations');
    this.appId = registerOutput<String>('appId');
    this.backendId = registerOutput<String>('backendId');
    this.codebase = registerOutput<AppHostingBackendCodebase?>('codebase');
    this.createTime = registerOutput<String>('createTime');
    this.deleteTime = registerOutput<String>('deleteTime');
    this.displayName = registerOutput<String?>('displayName');
    this.effectiveAnnotations =
        registerOutput<Map<String, String>>('effectiveAnnotations');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.environment = registerOutput<String?>('environment');
    this.etag = registerOutput<String>('etag');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.managedResources =
        registerOutput<List<AppHostingBackendManagedResource>>(
            'managedResources');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.serviceAccount = registerOutput<String>('serviceAccount');
    this.servingLocality = registerOutput<String>('servingLocality');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
    this.uri = registerOutput<String>('uri');
  }
}
