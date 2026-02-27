import 'package:pulumi/pulumi.dart';
import 'endpoint_args2.dart';

/// An individual endpoint that provides a service.
///
///
/// To get more information about Endpoint, see:
///
/// * [API documentation](https://cloud.google.com/service-directory/docs/reference/rest/v1/projects.locations.namespaces.services.endpoints)
/// * How-to Guides
/// * [Configuring an endpoint](https://cloud.google.com/service-directory/docs/configuring-service-directory#configuring_an_endpoint)
///
/// ## Example Usage
///
/// ### Service Directory Endpoint Basic
///
///
///
/// ### Service Directory Endpoint With Network
///
///
///
///
/// ## Import
///
/// Endpoint can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/namespaces/{{namespace_id}}/services/{{service_id}}/endpoints/{{endpoint_id}}`
///
/// * `{{project}}/{{location}}/{{namespace_id}}/{{service_id}}/{{endpoint_id}}`
///
/// * `{{location}}/{{namespace_id}}/{{service_id}}/{{endpoint_id}}`
///
/// When using the `pulumi import` command, Endpoint can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:servicedirectory/endpoint:Endpoint default projects/{{project}}/locations/{{location}}/namespaces/{{namespace_id}}/services/{{service_id}}/endpoints/{{endpoint_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:servicedirectory/endpoint:Endpoint default {{project}}/{{location}}/{{namespace_id}}/{{service_id}}/{{endpoint_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:servicedirectory/endpoint:Endpoint default {{location}}/{{namespace_id}}/{{service_id}}/{{endpoint_id}}
/// ```
class Endpoint2 extends CustomResource {
  /// IPv4 or IPv6 address of the endpoint.
  late final Output<String?> address;

  /// The Resource ID must be 1-63 characters long, including digits,
  /// lowercase letters or the hyphen character.
  late final Output<String> endpointId;

  /// Metadata for the endpoint. This data can be consumed
  /// by service clients. The entire metadata dictionary may contain
  /// up to 512 characters, spread across all key-value pairs.
  /// Metadata that goes beyond any these limits will be rejected.
  late final Output<Map<String, String>?> metadata;

  /// The resource name for the endpoint in the format
  /// `projects/*/locations/*/namespaces/*/services/*/endpoints/*`.
  late final Output<String> name;

  /// The URL to the network, such as projects/PROJECT_NUMBER/locations/global/networks/NETWORK_NAME.
  late final Output<String?> network;

  /// Port that the endpoint is running on, must be in the
  /// range of [0, 65535]. If unspecified, the default is 0.
  late final Output<int?> port;

  /// The resource name of the service that this endpoint provides.
  late final Output<String> service;

  Endpoint2(
    String name, {
    EndpointArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:servicedirectory/endpoint:Endpoint',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.address = registerOutput<String?>('address');
    this.endpointId = registerOutput<String>('endpointId');
    this.metadata = registerOutput<Map<String, String>?>('metadata');
    this.name = registerOutput<String>('name');
    this.network = registerOutput<String?>('network');
    this.port = registerOutput<int?>('port');
    this.service = registerOutput<String>('service');
  }
}
