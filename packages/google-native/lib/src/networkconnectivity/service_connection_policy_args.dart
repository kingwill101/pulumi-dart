// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'psc_config.dart';

/// {@template pulumi_networkconnectivity_v1_service_connection_policy_args_doc}
/// The set of arguments for ServiceConnectionPolicy.
/// {@endtemplate}
/// {@macro pulumi_networkconnectivity_v1_service_connection_policy_args_doc}
class ServiceConnectionPolicyArgs {
  /// A description of this resource.
  final pulumi.Input<String>? description;

  /// Optional. The etag is computed by the server, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  final pulumi.Input<String>? etag;

  /// User-defined labels.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// Immutable. The name of a ServiceConnectionPolicy. Format: projects/{project}/locations/{location}/serviceConnectionPolicies/{service_connection_policy} See: https://google.aip.dev/122#fields-representing-resource-names
  final pulumi.Input<String>? name;

  /// The resource path of the consumer network. Example: - projects/{projectNumOrId}/global/networks/{resourceId}.
  final pulumi.Input<String>? network;
  final pulumi.Input<String>? project;

  /// Configuration used for Private Service Connect connections. Used when Infrastructure is PSC.
  final pulumi.Input<PscConfig>? pscConfig;

  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// The service class identifier for which this ServiceConnectionPolicy is for. The service class identifier is a unique, symbolic representation of a ServiceClass. It is provided by the Service Producer. Google services have a prefix of gcp. For example, gcp-cloud-sql. 3rd party services do not. For example, test-service-a3dfcx.
  final pulumi.Input<String>? serviceClass;

  /// Optional. Resource ID (i.e. 'foo' in '[...]/projects/p/locations/l/serviceConnectionPolicies/foo') See https://google.aip.dev/122#resource-id-segments Unique per location.
  final pulumi.Input<String>? serviceConnectionPolicyId;

  /// Creates a new [ServiceConnectionPolicyArgs].
  /// [description] A description of this resource.
  /// [etag] Optional. The etag is computed by the server, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  /// [labels] User-defined labels.
  /// [location] Optional.
  /// [name] Immutable. The name of a ServiceConnectionPolicy. Format: projects/{project}/locations/{location}/serviceConnectionPolicies/{service_connection_policy} See: https://google.aip.dev/122#fields-representing-resource-names
  /// [network] The resource path of the consumer network. Example: - projects/{projectNumOrId}/global/networks/{resourceId}.
  /// [project] Optional.
  /// [pscConfig] Configuration used for Private Service Connect connections. Used when Infrastructure is PSC.
  /// [requestId] Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  /// [serviceClass] The service class identifier for which this ServiceConnectionPolicy is for. The service class identifier is a unique, symbolic representation of a ServiceClass. It is provided by the Service Producer. Google services have a prefix of gcp. For example, gcp-cloud-sql. 3rd party services do not. For example, test-service-a3dfcx.
  /// [serviceConnectionPolicyId] Optional. Resource ID (i.e. 'foo' in '[...]/projects/p/locations/l/serviceConnectionPolicies/foo') See https://google.aip.dev/122#resource-id-segments Unique per location.
  ServiceConnectionPolicyArgs({
    String? description,
    String? etag,
    Map<String, String>? labels,
    String? location,
    String? name,
    String? network,
    String? project,
    PscConfig? pscConfig,
    String? requestId,
    String? serviceClass,
    String? serviceConnectionPolicyId,
  }) : description = pulumi.Input.asOptionalInput<String>(description),
       etag = pulumi.Input.asOptionalInput<String>(etag),
       labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
       location = pulumi.Input.asOptionalInput<String>(location),
       name = pulumi.Input.asOptionalInput<String>(name),
       network = pulumi.Input.asOptionalInput<String>(network),
       project = pulumi.Input.asOptionalInput<String>(project),
       pscConfig = pulumi.Input.asOptionalInput<PscConfig>(pscConfig),
       requestId = pulumi.Input.asOptionalInput<String>(requestId),
       serviceClass = pulumi.Input.asOptionalInput<String>(serviceClass),
       serviceConnectionPolicyId = pulumi.Input.asOptionalInput<String>(
         serviceConnectionPolicyId,
       );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'etag': ?etag,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'network': ?network,
      'project': ?project,
      'pscConfig':
          ?pulumi.Input.mapOptionalInputValue<PscConfig, Map<String, dynamic>>(
            pscConfig,
            (value) => value.toMap(),
          ),
      'requestId': ?requestId,
      'serviceClass': ?serviceClass,
      'serviceConnectionPolicyId': ?serviceConnectionPolicyId,
    };
  }

  factory ServiceConnectionPolicyArgs.fromMap(Map<String, dynamic> map) {
    return ServiceConnectionPolicyArgs(
      description: map['description'] == null
          ? null
          : map['description'] as String,
      etag: map['etag'] == null ? null : map['etag'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      network: map['network'] == null ? null : map['network'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      pscConfig: map['pscConfig'] == null
          ? null
          : PscConfig.fromMap(
              (map['pscConfig'] as Map).cast<String, dynamic>(),
            ),
      requestId: map['requestId'] == null ? null : map['requestId'] as String,
      serviceClass: map['serviceClass'] == null
          ? null
          : map['serviceClass'] as String,
      serviceConnectionPolicyId: map['serviceConnectionPolicyId'] == null
          ? null
          : map['serviceConnectionPolicyId'] as String,
    );
  }
}
