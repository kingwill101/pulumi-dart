import 'package:pulumi/pulumi.dart' hide Config;
import 'consumer_psc_config_response.dart';
import 'consumer_psc_connection_response.dart';
import 'producer_psc_config_response.dart';
import 'service_connection_map_args.dart';

/// Creates a new ServiceConnectionMap in a given project and location.
class ServiceConnectionMap extends CustomResource {
  /// The PSC configurations on consumer side.
  late final Output<List<ConsumerPscConfigResponse>> consumerPscConfigs;

  /// PSC connection details on consumer side.
  late final Output<List<ConsumerPscConnectionResponse>> consumerPscConnections;

  /// Time when the ServiceConnectionMap was created.
  late final Output<String> createTime;

  /// A description of this resource.
  late final Output<String> description;

  /// Optional. The etag is computed by the server, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  late final Output<String> etag;

  /// The infrastructure used for connections between consumers/producers.
  late final Output<String> infrastructure;

  /// User-defined labels.
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// Immutable. The name of a ServiceConnectionMap. Format: projects/{project}/locations/{location}/serviceConnectionMaps/{service_connection_map} See: https://google.aip.dev/122#fields-representing-resource-names
  late final Output<String> name;

  /// The PSC configurations on producer side.
  late final Output<List<ProducerPscConfigResponse>> producerPscConfigs;
  late final Output<String> project;

  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  late final Output<String?> requestId;

  /// The service class identifier this ServiceConnectionMap is for. The user of ServiceConnectionMap create API needs to have networkconnecitivty.serviceclasses.use iam permission for the service class.
  late final Output<String> serviceClass;

  /// The service class uri this ServiceConnectionMap is for.
  late final Output<String> serviceClassUri;

  /// Optional. Resource ID (i.e. 'foo' in '[...]/projects/p/locations/l/serviceConnectionMaps/foo') See https://google.aip.dev/122#resource-id-segments Unique per location. If one is not provided, one will be generated.
  late final Output<String?> serviceConnectionMapId;

  /// The token provided by the consumer. This token authenticates that the consumer can create a connecton within the specified project and network.
  late final Output<String> token;

  /// Time when the ServiceConnectionMap was updated.
  late final Output<String> updateTime;

  ServiceConnectionMap(
    String name, {
    ServiceConnectionMapArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:networkconnectivity/v1:ServiceConnectionMap',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.consumerPscConfigs =
        registerOutput<List<ConsumerPscConfigResponse>>('consumerPscConfigs');
    this.consumerPscConnections =
        registerOutput<List<ConsumerPscConnectionResponse>>(
            'consumerPscConnections');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String>('description');
    this.etag = registerOutput<String>('etag');
    this.infrastructure = registerOutput<String>('infrastructure');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.producerPscConfigs =
        registerOutput<List<ProducerPscConfigResponse>>('producerPscConfigs');
    this.project = registerOutput<String>('project');
    this.requestId = registerOutput<String?>('requestId');
    this.serviceClass = registerOutput<String>('serviceClass');
    this.serviceClassUri = registerOutput<String>('serviceClassUri');
    this.serviceConnectionMapId =
        registerOutput<String?>('serviceConnectionMapId');
    this.token = registerOutput<String>('token');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
