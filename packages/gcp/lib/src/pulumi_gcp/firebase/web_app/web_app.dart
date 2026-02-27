import 'package:pulumi/pulumi.dart';
import 'web_app_args.dart';

/// A Google Cloud Firebase web application instance
///
/// To get more information about WebApp, see:
///
/// * [API documentation](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects.webApps)
/// * How-to Guides
/// * [Official Documentation](https://firebase.google.com/)
///
/// ## Example Usage
///
/// ### Firebase Web App Basic
///
///
///
/// ### Firebase Web App Custom Api Key
///
///
///
///
/// ## Import
///
/// WebApp can be imported using any of these accepted formats:
///
/// * `{{project}} projects/{{project}}/webApps/{{app_id}}`
///
/// * `projects/{{project}}/webApps/{{app_id}}`
///
/// * `{{project}}/{{project}}/{{app_id}}`
///
/// * `webApps/{{app_id}}`
///
/// * `{{app_id}}`
///
/// When using the `pulumi import` command, WebApp can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:firebase/webApp:WebApp default "{{project}} projects/{{project}}/webApps/{{app_id}}"
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebase/webApp:WebApp default projects/{{project}}/webApps/{{app_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebase/webApp:WebApp default {{project}}/{{project}}/{{app_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebase/webApp:WebApp default webApps/{{app_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebase/webApp:WebApp default {{app_id}}
/// ```
class WebApp extends CustomResource {
  /// The globally unique, Google-assigned identifier (UID) for the Firebase API key associated with the WebApp.
  /// If apiKeyId is not set during creation, then Firebase automatically associates an apiKeyId with the WebApp.
  /// This auto-associated key may be an existing valid key or, if no valid key exists, a new one will be provisioned.
  late final Output<String> apiKeyId;

  /// The globally unique, Firebase-assigned identifier of the App.
  /// This identifier should be treated as an opaque token, as the data format is not specified.
  late final Output<String> appId;

  /// The URLs where the `WebApp` is hosted.
  late final Output<List<String>> appUrls;
  late final Output<String?> deletionPolicy;

  /// The user-assigned display name of the App.
  late final Output<String> displayName;

  /// The fully qualified resource name of the App, for example:
  /// projects/projectId/webApps/appId
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  WebApp(
    String name, {
    WebAppArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:firebase/webApp:WebApp',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.apiKeyId = registerOutput<String>('apiKeyId');
    this.appId = registerOutput<String>('appId');
    this.appUrls = registerOutput<List<String>>('appUrls');
    this.deletionPolicy = registerOutput<String?>('deletionPolicy');
    this.displayName = registerOutput<String>('displayName');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
  }
}
