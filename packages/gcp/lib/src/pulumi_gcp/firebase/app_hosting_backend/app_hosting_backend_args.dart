// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../app_hosting_backend_codebase/app_hosting_backend_codebase.dart';

/// The set of arguments for AppHostingBackend.
class AppHostingBackendArgs {
  /// Unstructured key value map that may be set by external tools to
  /// store and arbitrary metadata. They are not queryable and should be
  /// preserved when modifying objects.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final Input<Map<String, String>>? annotations;

  /// The [ID of a Web
  /// App](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects.webApps#WebApp.FIELDS.app_id)
  /// associated with the backend.
  final Input<String> appId;

  /// Id of the backend. Also used as the service ID for Cloud Run, and as part
  /// of the default domain name.
  final Input<String> backendId;

  /// The connection to an external source repository to watch for event-driven
  /// updates to the backend.
  /// Structure is documented below.
  final Input<AppHostingBackendCodebase>? codebase;

  /// Human-readable name. 63 character limit.
  final Input<String>? displayName;

  /// The environment name of the backend, used to load environment variables
  /// from environment specific configuration.
  final Input<String>? environment;

  /// Unstructured key value map that can be used to organize and categorize
  /// objects.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// The canonical IDs of a Google Cloud location such as "us-east1".
  final Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The name of the service account used for Cloud Build and Cloud Run.
  /// Should have the role roles/firebaseapphosting.computeRunner
  /// or equivalent permissions.
  final Input<String> serviceAccount;

  /// Immutable. Specifies how App Hosting will serve the content for this backend. It will
  /// either be contained to a single region (REGIONAL_STRICT) or allowed to use
  /// App Hosting's global-replicated serving infrastructure (GLOBAL_ACCESS).
  /// Possible values are: `REGIONAL_STRICT`, `GLOBAL_ACCESS`.
  final Input<String> servingLocality;

  AppHostingBackendArgs({
    this.annotations,
    required this.appId,
    required this.backendId,
    this.codebase,
    this.displayName,
    this.environment,
    this.labels,
    required this.location,
    this.project,
    required this.serviceAccount,
    required this.servingLocality,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final annotationsValue = annotations;
    if (annotationsValue != null) {
      map['annotations'] = annotationsValue;
    }
    map['appId'] = appId;
    map['backendId'] = backendId;
    final codebaseValue = codebase;
    if (codebaseValue != null) {
      map['codebase'] = Input.mapOptionalInputValue<AppHostingBackendCodebase,
          Map<String, dynamic>>(codebaseValue, (value) => value.toMap());
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final environmentValue = environment;
    if (environmentValue != null) {
      map['environment'] = environmentValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['serviceAccount'] = serviceAccount;
    map['servingLocality'] = servingLocality;
    return map;
  }

  factory AppHostingBackendArgs.fromMap(Map<String, dynamic> map) {
    return AppHostingBackendArgs(
      annotations:
          Input.asOptionalInput<Map<String, String>>(map['annotations']),
      appId: Input.asInput<String>(map['appId']),
      backendId: Input.asInput<String>(map['backendId']),
      codebase:
          Input.asOptionalInput<AppHostingBackendCodebase>(map['codebase']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      environment: Input.asOptionalInput<String>(map['environment']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      serviceAccount: Input.asInput<String>(map['serviceAccount']),
      servingLocality: Input.asInput<String>(map['servingLocality']),
    );
  }
}
