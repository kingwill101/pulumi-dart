import 'package:pulumi/pulumi.dart';
import 'psc_config_response2.dart';
import 'psc_connection_response.dart';
import 'service_connection_policy_args.dart';

/// Creates a new ServiceConnectionPolicy in a given project and location.
class ServiceConnectionPolicy extends CustomResource {
  /// Time when the ServiceConnectionMap was created.
  late final Output<String> createTime;

  /// A description of this resource.
  late final Output<String> description;

  /// Optional. The etag is computed by the server, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  late final Output<String> etag;

  /// The type of underlying resources used to create the connection.
  late final Output<String> infrastructure;

  /// User-defined labels.
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// Immutable. The name of a ServiceConnectionPolicy. Format: projects/{project}/locations/{location}/serviceConnectionPolicies/{service_connection_policy} See: https://google.aip.dev/122#fields-representing-resource-names
  late final Output<String> name;

  /// The resource path of the consumer network. Example: - projects/{projectNumOrId}/global/networks/{resourceId}.
  late final Output<String> network;
  late final Output<String> project;

  /// Configuration used for Private Service Connect connections. Used when Infrastructure is PSC.
  late final Output<PscConfigResponse2> pscConfig;

  /// [Output only] Information about each Private Service Connect connection.
  late final Output<List<PscConnectionResponse>> pscConnections;

  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  late final Output<String?> requestId;

  /// The service class identifier for which this ServiceConnectionPolicy is for. The service class identifier is a unique, symbolic representation of a ServiceClass. It is provided by the Service Producer. Google services have a prefix of gcp. For example, gcp-cloud-sql. 3rd party services do not. For example, test-service-a3dfcx.
  late final Output<String> serviceClass;

  /// Optional. Resource ID (i.e. 'foo' in '[...]/projects/p/locations/l/serviceConnectionPolicies/foo') See https://google.aip.dev/122#resource-id-segments Unique per location.
  late final Output<String?> serviceConnectionPolicyId;

  /// Time when the ServiceConnectionMap was updated.
  late final Output<String> updateTime;

  ServiceConnectionPolicy(
    String name, {
    ServiceConnectionPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:networkconnectivity/v1:ServiceConnectionPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = Output.createUnknown<String>();
    this.description = Output.createUnknown<String>();
    this.etag = Output.createUnknown<String>();
    this.infrastructure = Output.createUnknown<String>();
    this.labels = Output.createUnknown<Map<String, String>>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.network = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.pscConfig = Output.createUnknown<PscConfigResponse2>();
    this.pscConnections = Output.createUnknown<List<PscConnectionResponse>>();
    this.requestId = Output.createUnknown<String?>();
    this.serviceClass = Output.createUnknown<String>();
    this.serviceConnectionPolicyId = Output.createUnknown<String?>();
    this.updateTime = Output.createUnknown<String>();
  }
}
