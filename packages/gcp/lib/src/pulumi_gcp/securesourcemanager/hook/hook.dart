import 'package:pulumi/pulumi.dart';
import '../hook_push_option/hook_push_option.dart';
import 'hook_args.dart';

/// Hook is a user-defined HTTP callback triggered by an event.
///
///
/// To get more information about Hook, see:
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/secure-source-manager/docs/overview)
///
///
///
/// ## Example Usage
///
/// ## Import
///
/// Hook can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/repositories/{{repository_id}}/hooks/{{hook_id}}`
///
/// * `{{project}}/{{location}}/{{repository_id}}/{{hook_id}}`
///
/// * `{{location}}/{{repository_id}}/{{hook_id}}`
///
/// * `{{hook_id}}`
///
/// When using the `pulumi import` command, Hook can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:securesourcemanager/hook:Hook default projects/{{project}}/locations/{{location}}/repositories/{{repository_id}}/hooks/{{hook_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:securesourcemanager/hook:Hook default {{project}}/{{location}}/{{repository_id}}/{{hook_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:securesourcemanager/hook:Hook default {{location}}/{{repository_id}}/{{hook_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:securesourcemanager/hook:Hook default {{hook_id}}
/// ```
class Hook extends CustomResource {
  /// Create timestamp.
  late final Output<String> createTime;

  /// Determines if the hook disabled or not.
  /// Set to true to stop sending traffic.
  late final Output<bool?> disabled;

  /// The events that trigger hook on.
  /// Each value may be one of: `PUSH`, `PULL_REQUEST`.
  late final Output<List<String>> events;

  /// The ID for the Hook.
  late final Output<String> hookId;

  /// The location for the Repository.
  late final Output<String> location;

  /// A unique identifier for a Hook. The name should be of the format:
  /// `projects/{project}/locations/{location_id}/repositories/{repository_id}/hooks/{hook_id}`
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The trigger option for push events.
  /// Structure is documented below.
  late final Output<HookPushOption> pushOption;

  /// The ID for the Repository.
  late final Output<String> repositoryId;

  /// The sensitive query string to be appended to the target URI.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  late final Output<String?> sensitiveQueryString;

  /// The target URI to which the payloads will be delivered.
  late final Output<String> targetUri;

  /// Unique identifier of the hook.
  late final Output<String> uid;

  /// Update timestamp.
  late final Output<String> updateTime;

  Hook(
    String name, {
    HookArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:securesourcemanager/hook:Hook',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = Output.createUnknown<String>();
    this.disabled = Output.createUnknown<bool?>();
    this.events = Output.createUnknown<List<String>>();
    this.hookId = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.pushOption = Output.createUnknown<HookPushOption>();
    this.repositoryId = Output.createUnknown<String>();
    this.sensitiveQueryString = Output.createUnknown<String?>();
    this.targetUri = Output.createUnknown<String>();
    this.uid = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
  }
}
