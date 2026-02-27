import 'package:pulumi/pulumi.dart';
import 'app_check_debug_token_args.dart';

/// A debug token is a secret used during the development or integration testing of
/// an app. It essentially allows the development or integration testing to bypass
/// app attestation while still allowing App Check to enforce protection on supported
/// production Firebase services.
///
///
/// To get more information about DebugToken, see:
///
/// * [API documentation](https://firebase.google.com/docs/reference/appcheck/rest/v1/projects.apps.debugTokens)
/// * How-to Guides
/// * [Official Documentation](https://firebase.google.com/docs/app-check)
///
///
///
/// ## Example Usage
///
/// ### Firebase App Check Debug Token Basic
///
///
///
///
/// ## Import
///
/// DebugToken can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/apps/{{app_id}}/debugTokens/{{debug_token_id}}`
///
/// * `{{project}}/{{app_id}}/{{debug_token_id}}`
///
/// * `{{app_id}}/{{debug_token_id}}`
///
/// When using the `pulumi import` command, DebugToken can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:firebase/appCheckDebugToken:AppCheckDebugToken default projects/{{project}}/apps/{{app_id}}/debugTokens/{{debug_token_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebase/appCheckDebugToken:AppCheckDebugToken default {{project}}/{{app_id}}/{{debug_token_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebase/appCheckDebugToken:AppCheckDebugToken default {{app_id}}/{{debug_token_id}}
/// ```
class AppCheckDebugToken extends CustomResource {
  /// The ID of a
  /// [Web App](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects.webApps#WebApp.FIELDS.app_id),
  /// [Apple App](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects.iosApps#IosApp.FIELDS.app_id),
  /// or [Android App](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects.androidApps#AndroidApp.FIELDS.app_id)
  late final Output<String> appId;

  /// The last segment of the resource name of the debug token.
  late final Output<String> debugTokenId;

  /// A human readable display name used to identify this debug token.
  late final Output<String> displayName;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The secret token itself. Must be provided during creation, and must be a UUID4,
  /// case insensitive. You may use a method of your choice such as random/random_uuid
  /// to generate the token.
  /// This field is immutable once set, and cannot be updated. You can, however, delete
  /// this debug token to revoke it.
  /// For security reasons, this field will never be populated in any response.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  late final Output<String> token;

  AppCheckDebugToken(
    String name, {
    AppCheckDebugTokenArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:firebase/appCheckDebugToken:AppCheckDebugToken',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.appId = registerOutput<String>('appId');
    this.debugTokenId = registerOutput<String>('debugTokenId');
    this.displayName = registerOutput<String>('displayName');
    this.project = registerOutput<String>('project');
    this.token = registerOutput<String>('token');
  }
}
