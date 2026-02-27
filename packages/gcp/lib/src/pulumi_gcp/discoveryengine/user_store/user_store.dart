import 'package:pulumi/pulumi.dart';
import 'user_store_args.dart';

/// Represents a user store.
///
///
/// To get more information about UserStore, see:
///
/// * [API documentation](https://cloud.google.com/gemini/enterprise/docs/reference/rest/v1/projects.locations.userStores)
///
/// ## Example Usage
///
/// ### Discoveryengine Userstore Basic
///
///
///
///
/// ## Import
///
/// UserStore can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/userStores/{{user_store_id}}`
///
/// * `{{project}}/{{location}}/{{user_store_id}}`
///
/// * `{{location}}/{{user_store_id}}`
///
/// When using the `pulumi import` command, UserStore can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:discoveryengine/userStore:UserStore default projects/{{project}}/locations/{{location}}/userStores/{{user_store_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:discoveryengine/userStore:UserStore default {{project}}/{{location}}/{{user_store_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:discoveryengine/userStore:UserStore default {{location}}/{{user_store_id}}
/// ```
class UserStore extends CustomResource {
  /// The resource name of the default license config assigned to users created in
  /// this user store. Format:
  /// `projects/{project}/locations/{location}/licenseConfigs/{license_config}`.
  /// If `enableLicenseAutoRegister` is true, new users will automatically
  /// register under the default subscription.
  /// If the default license config doesn't have remaining license seats left,
  /// new users will not be assigned with license.
  late final Output<String?> defaultLicenseConfig;

  /// Whether to enable automatic license update for users with expired licenses
  /// in this user store. If enabled, users with expired licenses will
  /// automatically be updated to the default subscription if there are
  /// remaining license seats.
  late final Output<bool?> enableExpiredLicenseAutoUpdate;

  /// Whether to enable automatic license registration for new users created in
  /// this user store. If enabled, new users will automatically register under
  /// the default subscription.
  late final Output<bool?> enableLicenseAutoRegister;

  /// The geographic location where the data store should reside. The value can
  /// only be one of "global", "us" and "eu".
  late final Output<String> location;

  /// The unique full resource name of the user store. Values are of the format
  /// `projects/{project}/locations/{location}/userStores/{user_store_id}`.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The ID of the user store. Currently only accepts "default_user_store".
  late final Output<String?> userStoreId;

  UserStore(
    String name, {
    UserStoreArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:discoveryengine/userStore:UserStore',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.defaultLicenseConfig = registerOutput<String?>('defaultLicenseConfig');
    this.enableExpiredLicenseAutoUpdate =
        registerOutput<bool?>('enableExpiredLicenseAutoUpdate');
    this.enableLicenseAutoRegister =
        registerOutput<bool?>('enableLicenseAutoRegister');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.userStoreId = registerOutput<String?>('userStoreId');
  }
}
