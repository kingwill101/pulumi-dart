import 'package:pulumi/pulumi.dart' as pulumi;
import '../application_attributes/application_attributes.dart';
import '../application_scope/application_scope.dart';
import 'application_apphub_args.dart';

/// Application is a functional grouping of Services and Workloads that helps achieve a desired end-to-end business functionality. Services and Workloads are owned by the Application.
///
///
///
/// ## Example Usage
///
/// ### Apphub Application Basic
///
///
///
/// ### Apphub Application Global Basic
///
///
///
/// ### Apphub Application Full
///
///
///
///
/// ## Import
///
/// Application can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/applications/{{application_id}}`
///
/// * `{{project}}/{{location}}/{{application_id}}`
///
/// * `{{location}}/{{application_id}}`
///
/// When using the `pulumi import` command, Application can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:apphub/application:Application default projects/{{project}}/locations/{{location}}/applications/{{application_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:apphub/application:Application default {{project}}/{{location}}/{{application_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:apphub/application:Application default {{location}}/{{application_id}}
/// ```
class ApplicationApphub extends pulumi.CustomResource {
  /// Required. The Application identifier.
  late final pulumi.Output<String> applicationId;

  /// Consumer provided attributes.
  /// Structure is documented below.
  late final pulumi.Output<ApplicationAttributes?> attributes;

  /// Output only. Create time.
  late final pulumi.Output<String> createTime;

  /// Optional. User-defined description of an Application.
  late final pulumi.Output<String?> description;

  /// Optional. User-defined name for the Application.
  late final pulumi.Output<String?> displayName;

  /// Part of `parent`. See documentation of `projectsId`.
  late final pulumi.Output<String> location;

  /// Identifier. The resource name of an Application. Format:
  /// "projects/{host-project-id}/locations/{location}/applications/{application-id}"
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Scope of an application.
  /// Structure is documented below.
  late final pulumi.Output<ApplicationScope> scope;

  /// Output only. Application state.
  /// Possible values:
  /// STATE_UNSPECIFIED
  /// CREATING
  /// ACTIVE
  /// DELETING
  late final pulumi.Output<String> state;

  /// Output only. A universally unique identifier (in UUID4 format) for the `Application`.
  late final pulumi.Output<String> uid;

  /// Output only. Update time.
  late final pulumi.Output<String> updateTime;

  ApplicationApphub(
    String name, {
    ApplicationApphubArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:apphub/application:Application',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.applicationId = registerOutput<String>('applicationId');
    this.attributes = registerOutput<ApplicationAttributes?>('attributes');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String?>('displayName');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.scope = registerOutput<ApplicationScope>('scope');
    this.state = registerOutput<String>('state');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
