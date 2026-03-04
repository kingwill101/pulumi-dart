import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_endpoint_args.dart';
import 'service_endpoint_state.dart';

/// ## Import
///
/// Message Service Endpoint can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:message/serviceEndpoint:ServiceEndpoint example <id>
/// ```
class ServiceEndpoint extends pulumi.CustomResource {
  /// Specifies whether the endpoint is enabled. Valid values:
  late final pulumi.Output<bool> endpointEnabled;

  /// Access point type. Value:
  /// - public: indicates a public access point. (Currently only public is supported)
  late final pulumi.Output<String> endpointType;

  /// Creates a new [ServiceEndpoint].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServiceEndpoint]. {@macro pulumi_message_service_endpoint_service_endpoint_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServiceEndpoint(
    String name, {
    ServiceEndpointArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:message/serviceEndpoint:ServiceEndpoint',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    endpointEnabled = registerOutput<bool>('endpointEnabled');
    endpointType = registerOutput<String>('endpointType');
  }

  /// Gets an existing [ServiceEndpoint] resource's state with the given [name] and [id].
  static ServiceEndpoint get(
    String name,
    pulumi.Input<String> id, {
    ServiceEndpointState? state,
  }) {
    return ServiceEndpoint._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ServiceEndpoint._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:message/serviceEndpoint:ServiceEndpoint',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    endpointEnabled = registerOutput<bool>('endpointEnabled');
    endpointType = registerOutput<String>('endpointType');
  }
}
