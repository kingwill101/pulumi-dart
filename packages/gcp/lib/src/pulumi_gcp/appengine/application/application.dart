import 'package:pulumi/pulumi.dart';
import '../application_feature_settings/application_feature_settings.dart';
import '../application_iap/application_iap.dart';
import '../application_url_dispatch_rule/application_url_dispatch_rule.dart';
import 'application_args.dart';

/// Allows creation and management of an App Engine application.
///
/// > App Engine applications cannot be deleted once they're created; you have to delete the
/// entire project to delete the application. This provider will report the application has been
/// successfully deleted; this is a limitation of the provider, and will go away in the future.
/// This provider is not able to delete App Engine applications.
///
///
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Applications can be imported using the ID of the project the application belongs to, e.g.
///
/// * `{{project-id}}`
///
/// When using the `pulumi import` command, Applications can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:appengine/application:Application default {{project-id}}
/// ```
class Application extends CustomResource {
  /// Identifier of the app, usually `{PROJECT_ID}`
  late final Output<String> appId;

  /// The domain to authenticate users with when using App Engine's User API.
  late final Output<String> authDomain;

  /// The GCS bucket code is being stored in for this app.
  late final Output<String> codeBucket;

  /// The type of the Cloud Firestore or Cloud Datastore database associated with this application.
  /// Can be `CLOUD_FIRESTORE` or `CLOUD_DATASTORE_COMPATIBILITY` for new
  /// instances.  To support old instances, the value `CLOUD_DATASTORE` is accepted by the provider, but will be rejected by the API.
  /// To create a Cloud Firestore database without creating an App Engine application, use the
  /// `gcp.firestore.Database`
  /// resource instead.
  late final Output<String> databaseType;

  /// The GCS bucket content is being stored in for this app.
  late final Output<String> defaultBucket;

  /// The default hostname for this app.
  late final Output<String> defaultHostname;

  /// A block of optional settings to configure specific App Engine features:
  late final Output<ApplicationFeatureSettings> featureSettings;

  /// The GCR domain used for storing managed Docker images for this app.
  late final Output<String> gcrDomain;

  /// Settings for enabling Cloud Identity Aware Proxy
  late final Output<ApplicationIap> iap;

  /// The [location](https://cloud.google.com/appengine/docs/locations)
  /// to serve the app from.
  late final Output<String> locationId;

  /// Unique name of the app, usually `apps/{PROJECT_ID}`
  late final Output<String> name;

  /// The project ID to create the application under.
  /// ~>**NOTE:** GCP only accepts project ID, not project number. If you are using number,
  /// you may get a "Permission denied" error.
  late final Output<String> project;

  /// The serving status of the app.
  late final Output<String> servingStatus;

  /// A list of the SSL policy that will be applied. Each block has a `SSL_POLICY_UNSPECIFIED`, `DEFAULT`, and `MODERN` field.
  late final Output<String> sslPolicy;

  /// A list of dispatch rule blocks. Each block has a `domain`, `path`, and `service` field.
  late final Output<List<ApplicationUrlDispatchRule>> urlDispatchRules;

  Application(
    String name, {
    ApplicationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:appengine/application:Application',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.appId = registerOutput<String>('appId');
    this.authDomain = registerOutput<String>('authDomain');
    this.codeBucket = registerOutput<String>('codeBucket');
    this.databaseType = registerOutput<String>('databaseType');
    this.defaultBucket = registerOutput<String>('defaultBucket');
    this.defaultHostname = registerOutput<String>('defaultHostname');
    this.featureSettings =
        registerOutput<ApplicationFeatureSettings>('featureSettings');
    this.gcrDomain = registerOutput<String>('gcrDomain');
    this.iap = registerOutput<ApplicationIap>('iap');
    this.locationId = registerOutput<String>('locationId');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.servingStatus = registerOutput<String>('servingStatus');
    this.sslPolicy = registerOutput<String>('sslPolicy');
    this.urlDispatchRules =
        registerOutput<List<ApplicationUrlDispatchRule>>('urlDispatchRules');
  }
}
