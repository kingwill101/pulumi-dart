import 'package:pulumi/pulumi.dart';
import 'maintenance_window_args.dart';

/// Provides an SSM Maintenance Window resource
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `id` - (String) ID of the maintenance window.
///
/// #### Optional
///
/// * `account_id` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import SSM  Maintenance Windows using the maintenance window `id`. For example:
///
/// ```sh
/// $ pulumi import aws:ssm/maintenanceWindow:MaintenanceWindow example mw-0123456789
/// ```
class MaintenanceWindow extends CustomResource {
  /// Whether targets must be registered with the Maintenance Window before tasks can be defined for those targets.
  late final Output<bool?> allowUnassociatedTargets;

  /// The number of hours before the end of the Maintenance Window that Systems Manager stops scheduling new tasks for execution.
  late final Output<int> cutoff;

  /// A description for the maintenance window.
  late final Output<String?> description;

  /// The duration of the Maintenance Window in hours.
  late final Output<int> duration;

  /// Whether the maintenance window is enabled. Default: `true`.
  late final Output<bool?> enabled;

  /// Timestamp in [ISO-8601 extended format](https://www.iso.org/iso-8601-date-and-time-format.html) when to no longer run the maintenance window.
  late final Output<String?> endDate;

  /// The name of the maintenance window.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The schedule of the Maintenance Window in the form of a [cron or rate expression](https://docs.aws.amazon.com/systems-manager/latest/userguide/reference-cron-and-rate-expressions.html).
  late final Output<String> schedule;

  /// The number of days to wait after the date and time specified by a CRON expression before running the maintenance window. Valid range is `1` to `6`.
  late final Output<int?> scheduleOffset;

  /// Timezone for schedule in [Internet Assigned Numbers Authority (IANA) Time Zone Database format](https://www.iana.org/time-zones). For example: `America/Los_Angeles`, `etc/UTC`, or `Asia/Seoul`.
  late final Output<String?> scheduleTimezone;

  /// Timestamp in [ISO-8601 extended format](https://www.iso.org/iso-8601-date-and-time-format.html) when to begin the maintenance window.
  late final Output<String?> startDate;

  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  MaintenanceWindow(
    String name, {
    MaintenanceWindowArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ssm/maintenanceWindow:MaintenanceWindow',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.allowUnassociatedTargets =
        registerOutput<bool?>('allowUnassociatedTargets');
    this.cutoff = registerOutput<int>('cutoff');
    this.description = registerOutput<String?>('description');
    this.duration = registerOutput<int>('duration');
    this.enabled = registerOutput<bool?>('enabled');
    this.endDate = registerOutput<String?>('endDate');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.schedule = registerOutput<String>('schedule');
    this.scheduleOffset = registerOutput<int?>('scheduleOffset');
    this.scheduleTimezone = registerOutput<String?>('scheduleTimezone');
    this.startDate = registerOutput<String?>('startDate');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
