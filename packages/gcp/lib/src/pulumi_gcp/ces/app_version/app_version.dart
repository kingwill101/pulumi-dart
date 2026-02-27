import 'package:pulumi/pulumi.dart';
import '../app_version_snapshot/app_version_snapshot.dart';
import 'app_version_args.dart';

/// Description
///
///
///
/// ## Example Usage
///
/// ### Ces App Version Basic
///
///
///
///
/// ## Import
///
/// AppVersion can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/apps/{{app}}/versions/{{name}}`
///
/// * `{{project}}/{{location}}/{{app}}/{{name}}`
///
/// * `{{location}}/{{app}}/{{name}}`
///
/// When using the `pulumi import` command, AppVersion can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:ces/appVersion:AppVersion default projects/{{project}}/locations/{{location}}/apps/{{app}}/versions/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:ces/appVersion:AppVersion default {{project}}/{{location}}/{{app}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:ces/appVersion:AppVersion default {{location}}/{{app}}/{{name}}
/// ```
class AppVersion extends CustomResource {
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final Output<String> app;

  /// The ID to use for the app version, which will become the final component
  /// of the app version's resource name. If not provided, a unique ID will be
  /// automatically assigned for the app version.
  late final Output<String> appVersionId;

  /// (Output)
  /// Timestamp when the toolset was created.
  late final Output<String> createTime;

  /// Email of the user who created the app version.
  late final Output<String> creator;

  /// The description of the app version.
  late final Output<String?> description;

  /// The display name of the app version.
  late final Output<String?> displayName;

  /// (Output)
  /// ETag used to ensure the object hasn't changed during a read-modify-write
  /// operation. If the etag is empty, the update will overwrite any concurrent
  /// changes.
  late final Output<String> etag;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final Output<String> location;

  /// (Output)
  /// Identifier. The unique identifier of the toolset.
  /// Format:
  /// `projects/{project}/locations/{location}/apps/{app}/toolsets/{toolset}`
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// A snapshot of the app.
  /// Structure is documented below.
  late final Output<List<AppVersionSnapshot>> snapshots;

  AppVersion(
    String name, {
    AppVersionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:ces/appVersion:AppVersion',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.app = registerOutput<String>('app');
    this.appVersionId = registerOutput<String>('appVersionId');
    this.createTime = registerOutput<String>('createTime');
    this.creator = registerOutput<String>('creator');
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String?>('displayName');
    this.etag = registerOutput<String>('etag');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.snapshots = registerOutput<List<AppVersionSnapshot>>('snapshots');
  }
}
