import 'package:pulumi/pulumi.dart' as pulumi;
import '../generic_service_basic_service/generic_service_basic_service.dart';
import '../generic_service_telemetry/generic_service_telemetry.dart';
import 'generic_service_args.dart';

/// A Service is a discrete, autonomous, and network-accessible unit,
/// designed to solve an individual concern. In Cloud Monitoring,
/// a Service acts as the root resource under which operational aspects of
/// the service are accessible
///
///
/// To get more information about GenericService, see:
///
/// * [API documentation](https://cloud.google.com/monitoring/api/ref_v3/rest/v3/services)
/// * How-to Guides
/// * [Monitoring API Documentation](https://cloud.google.com/monitoring/api/v3/)
/// * [Service Monitoring](https://cloud.google.com/monitoring/service-monitoring)
/// * [Service-orientation on Wikipedia](https://en.wikipedia.org/wiki/Service-orientation)
///
/// ## Example Usage
///
/// ### Monitoring Service Example
///
///
///
///
/// ## Import
///
/// GenericService can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/services/{{service_id}}`
///
/// * `{{project}}/{{service_id}}`
///
/// * `{{service_id}}`
///
/// When using the `pulumi import` command, GenericService can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:monitoring/genericService:GenericService default projects/{{project}}/services/{{service_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:monitoring/genericService:GenericService default {{project}}/{{service_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:monitoring/genericService:GenericService default {{service_id}}
/// ```
class GenericService extends pulumi.CustomResource {
  /// A well-known service type, defined by its service type and service labels.
  /// Valid values of service types and services labels are described at
  /// https://cloud.google.com/stackdriver/docs/solutions/slo-monitoring/api/api-structures#basic-svc-w-basic-sli
  /// Structure is documented below.
  late final pulumi.Output<GenericServiceBasicService?> basicService;

  /// Name used for UI elements listing this Service.
  late final pulumi.Output<String?> displayName;

  /// The full resource name for this service. The syntax is:
  /// projects/[PROJECT_ID]/services/[SERVICE_ID].
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// An optional service ID to use. If not given, the server will generate a
  /// service ID.
  late final pulumi.Output<String> serviceId;

  /// Configuration for how to query telemetry on a Service.
  /// Structure is documented below.
  late final pulumi.Output<List<GenericServiceTelemetry>> telemetries;

  /// Labels which have been used to annotate the service. Label keys must start
  /// with a letter. Label keys and values may contain lowercase letters,
  /// numbers, underscores, and dashes. Label keys and values have a maximum
  /// length of 63 characters, and must be less than 128 bytes in size. Up to 64
  /// label entries may be stored. For labels which do not have a semantic value,
  /// the empty string may be supplied for the label value.
  late final pulumi.Output<Map<String, String>?> userLabels;

  GenericService(
    String name, {
    GenericServiceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:monitoring/genericService:GenericService',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.basicService =
        registerOutput<GenericServiceBasicService?>('basicService');
    this.displayName = registerOutput<String?>('displayName');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.serviceId = registerOutput<String>('serviceId');
    this.telemetries =
        registerOutput<List<GenericServiceTelemetry>>('telemetries');
    this.userLabels = registerOutput<Map<String, String>?>('userLabels');
  }
}
