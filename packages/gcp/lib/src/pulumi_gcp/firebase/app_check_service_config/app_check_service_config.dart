import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_check_service_config_args.dart';

/// The enforcement configuration for a service supported by App Check.
///
///
/// To get more information about ServiceConfig, see:
///
/// * [API documentation](https://firebase.google.com/docs/reference/appcheck/rest/v1/projects.services)
/// * How-to Guides
/// * [Official Documentation](https://firebase.google.com/docs/app-check)
///
/// ## Example Usage
///
/// ### Firebase App Check Service Config Off
///
///
///
/// ### Firebase App Check Service Config Enforced
///
///
///
/// ### Firebase App Check Service Config Unenforced
///
///
///
///
/// ## Import
///
/// ServiceConfig can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/services/{{service_id}}`
///
/// * `{{project}}/{{service_id}}`
///
/// * `{{service_id}}`
///
/// When using the `pulumi import` command, ServiceConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:firebase/appCheckServiceConfig:AppCheckServiceConfig default projects/{{project}}/services/{{service_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebase/appCheckServiceConfig:AppCheckServiceConfig default {{project}}/{{service_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebase/appCheckServiceConfig:AppCheckServiceConfig default {{service_id}}
/// ```
class AppCheckServiceConfig extends pulumi.CustomResource {
  late final pulumi.Output<String?> enforcementMode;

  /// The fully-qualified resource name of the service enforcement configuration.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The identifier of the service to configure enforcement. Currently, the following service IDs are supported:
  /// firebasestorage.googleapis.com (Cloud Storage for Firebase)
  /// firebasedatabase.googleapis.com (Firebase Realtime Database)
  /// firestore.googleapis.com (Cloud Firestore)
  /// identitytoolkit.googleapis.com (Authentication)
  late final pulumi.Output<String> serviceId;

  AppCheckServiceConfig(
    String name, {
    AppCheckServiceConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:firebase/appCheckServiceConfig:AppCheckServiceConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.enforcementMode = registerOutput<String?>('enforcementMode');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.serviceId = registerOutput<String>('serviceId');
  }
}
