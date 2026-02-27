import 'package:pulumi/pulumi.dart';
import '../service_attributes/service_attributes.dart';
import '../service_service_property/service_service_property.dart';
import '../service_service_reference/service_service_reference.dart';
import 'service_args.dart';

/// Service is a network/api interface that exposes some functionality to clients for consumption over the network. Service typically has one or more Workloads behind it. It registers identified service to the Application.
///
///
///
/// ## Example Usage
///
/// ### Apphub Service Basic
///
///
///
/// ### Apphub Service Full
///
///
///
///
/// ## Import
///
/// Service can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/applications/{{application_id}}/services/{{service_id}}`
///
/// * `{{project}}/{{location}}/{{application_id}}/{{service_id}}`
///
/// * `{{location}}/{{application_id}}/{{service_id}}`
///
/// When using the `pulumi import` command, Service can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:apphub/service:Service default projects/{{project}}/locations/{{location}}/applications/{{application_id}}/services/{{service_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:apphub/service:Service default {{project}}/{{location}}/{{application_id}}/{{service_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:apphub/service:Service default {{location}}/{{application_id}}/{{service_id}}
/// ```
class Service extends CustomResource {
  /// Part of `parent`.  Full resource name of a parent Application. Example: projects/{HOST_PROJECT_ID}/locations/{LOCATION}/applications/{APPLICATION_ID}
  late final Output<String> applicationId;

  /// Consumer provided attributes.
  /// Structure is documented below.
  late final Output<ServiceAttributes?> attributes;

  /// Output only. Create time.
  late final Output<String> createTime;

  /// User-defined description of a Service.
  late final Output<String?> description;

  /// Immutable. The resource name of the original discovered service.
  late final Output<String> discoveredService;

  /// User-defined name for the Service.
  late final Output<String?> displayName;

  /// Part of `parent`.  Full resource name of a parent Application. Example: projects/{HOST_PROJECT_ID}/locations/{LOCATION}/applications/{APPLICATION_ID}
  late final Output<String> location;

  /// Identifier. The resource name of a Service. Format:
  /// "projects/{host-project-id}/locations/{location}/applications/{application-id}/services/{service-id}"
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The Service identifier.
  late final Output<String> serviceId;

  /// Properties of an underlying cloud resource that can comprise a Service.
  /// Structure is documented below.
  late final Output<List<ServiceServiceProperty>> serviceProperties;

  /// Reference to an underlying networking resource that can comprise a Service.
  /// Structure is documented below.
  late final Output<List<ServiceServiceReference>> serviceReferences;

  /// Output only. Service state. Possible values: STATE_UNSPECIFIED CREATING ACTIVE DELETING DETACHED
  late final Output<String> state;

  /// Output only. A universally unique identifier (UUID) for the `Service` in the UUID4
  /// format.
  late final Output<String> uid;

  /// Output only. Update time.
  late final Output<String> updateTime;

  Service(
    String name, {
    ServiceArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:apphub/service:Service',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.applicationId = registerOutput<String>('applicationId');
    this.attributes = registerOutput<ServiceAttributes?>('attributes');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.discoveredService = registerOutput<String>('discoveredService');
    this.displayName = registerOutput<String?>('displayName');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.serviceId = registerOutput<String>('serviceId');
    this.serviceProperties =
        registerOutput<List<ServiceServiceProperty>>('serviceProperties');
    this.serviceReferences =
        registerOutput<List<ServiceServiceReference>>('serviceReferences');
    this.state = registerOutput<String>('state');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
