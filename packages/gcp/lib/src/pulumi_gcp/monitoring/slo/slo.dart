import 'package:pulumi/pulumi.dart';
import '../slo_basic_sli/slo_basic_sli.dart';
import '../slo_request_based_sli/slo_request_based_sli.dart';
import '../slo_windows_based_sli/slo_windows_based_sli.dart';
import 'slo_args.dart';

/// A Service-Level Objective (SLO) describes the level of desired good
/// service. It consists of a service-level indicator (SLI), a performance
/// goal, and a period over which the objective is to be evaluated against
/// that goal. The SLO can use SLIs defined in a number of different manners.
/// Typical SLOs might include "99% of requests in each rolling week have
/// latency below 200 milliseconds" or "99.5% of requests in each calendar
/// month return successfully."
///
///
/// To get more information about Slo, see:
///
/// * [API documentation](https://cloud.google.com/monitoring/api/ref_v3/rest/v3/services.serviceLevelObjectives)
/// * How-to Guides
/// * [Monitoring API Documentation](https://cloud.google.com/monitoring/api/v3/)
/// * [Service Monitoring](https://cloud.google.com/monitoring/service-monitoring)
///
/// ## Example Usage
///
/// ### Monitoring Slo Appengine
///
///
///
/// ### Monitoring Slo Request Based
///
///
///
/// ### Monitoring Slo Windows Based Good Bad Metric Filter
///
///
///
/// ### Monitoring Slo Windows Based Metric Mean
///
///
///
/// ### Monitoring Slo Windows Based Metric Sum
///
///
///
/// ### Monitoring Slo Windows Based Ratio Threshold
///
///
///
///
/// ## Import
///
/// Slo can be imported using any of these accepted formats:
///
/// * `{{project}}/{{name}}`
///
/// * `{{project}} {{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Slo can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:monitoring/slo:Slo default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:monitoring/slo:Slo default "{{project}} {{name}}"
/// ```
///
/// ```sh
/// $ pulumi import gcp:monitoring/slo:Slo default {{name}}
/// ```
class Slo extends CustomResource {
  /// Basic Service-Level Indicator (SLI) on a well-known service type.
  /// Performance will be computed on the basis of pre-defined metrics.
  /// SLIs are used to measure and calculate the quality of the Service's
  /// performance with respect to a single aspect of service quality.
  /// Exactly one of the following must be set:
  /// `basic_sli`, `request_based_sli`, `windows_based_sli`
  /// Structure is documented below.
  late final Output<SloBasicSli?> basicSli;

  /// A calendar period, semantically "since the start of the current
  /// <calendarPeriod>".
  /// Possible values are: `DAY`, `WEEK`, `FORTNIGHT`, `MONTH`.
  late final Output<String?> calendarPeriod;

  /// Name used for UI elements listing this SLO.
  late final Output<String?> displayName;

  /// The fraction of service that must be good in order for this objective
  /// to be met. 0 < goal <= 0.999
  late final Output<double> goal;

  /// The full resource name for this service. The syntax is:
  /// projects/[PROJECT_ID_OR_NUMBER]/services/[SERVICE_ID]/serviceLevelObjectives/[SLO_NAME]
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// A request-based SLI defines a SLI for which atomic units of
  /// service are counted directly.
  /// A SLI describes a good service.
  /// It is used to measure and calculate the quality of the Service's
  /// performance with respect to a single aspect of service quality.
  /// Exactly one of the following must be set:
  /// `basic_sli`, `request_based_sli`, `windows_based_sli`
  /// Structure is documented below.
  late final Output<SloRequestBasedSli?> requestBasedSli;

  /// A rolling time period, semantically "in the past X days".
  /// Must be between 1 to 30 days, inclusive.
  late final Output<int?> rollingPeriodDays;

  /// ID of the service to which this SLO belongs.
  late final Output<String> service;

  /// The id to use for this ServiceLevelObjective. If omitted, an id will be generated instead.
  late final Output<String> sloId;

  /// This field is intended to be used for organizing and identifying the AlertPolicy
  /// objects.The field can contain up to 64 entries. Each key and value is limited
  /// to 63 Unicode characters or 128 bytes, whichever is smaller. Labels and values
  /// can contain only lowercase letters, numerals, underscores, and dashes. Keys
  /// must begin with a letter.
  late final Output<Map<String, String>?> userLabels;

  /// A windows-based SLI defines the criteria for time windows.
  /// good_service is defined based off the count of these time windows
  /// for which the provided service was of good quality.
  /// A SLI describes a good service. It is used to measure and calculate
  /// the quality of the Service's performance with respect to a single
  /// aspect of service quality.
  /// Exactly one of the following must be set:
  /// `basic_sli`, `request_based_sli`, `windows_based_sli`
  /// Structure is documented below.
  late final Output<SloWindowsBasedSli?> windowsBasedSli;

  Slo(
    String name, {
    SloArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:monitoring/slo:Slo',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.basicSli = registerOutput<SloBasicSli?>('basicSli');
    this.calendarPeriod = registerOutput<String?>('calendarPeriod');
    this.displayName = registerOutput<String?>('displayName');
    this.goal = registerOutput<double>('goal');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.requestBasedSli =
        registerOutput<SloRequestBasedSli?>('requestBasedSli');
    this.rollingPeriodDays = registerOutput<int?>('rollingPeriodDays');
    this.service = registerOutput<String>('service');
    this.sloId = registerOutput<String>('sloId');
    this.userLabels = registerOutput<Map<String, String>?>('userLabels');
    this.windowsBasedSli =
        registerOutput<SloWindowsBasedSli?>('windowsBasedSli');
  }
}
