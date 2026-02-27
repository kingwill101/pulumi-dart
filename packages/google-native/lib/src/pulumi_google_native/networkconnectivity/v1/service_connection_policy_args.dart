// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'psc_config_networkconnectivity_v1.dart';

/// The set of arguments for ServiceConnectionPolicy.
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
  final pulumi.Input<PscConfigNetworkconnectivityV1>? pscConfig;

  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// The service class identifier for which this ServiceConnectionPolicy is for. The service class identifier is a unique, symbolic representation of a ServiceClass. It is provided by the Service Producer. Google services have a prefix of gcp. For example, gcp-cloud-sql. 3rd party services do not. For example, test-service-a3dfcx.
  final pulumi.Input<String>? serviceClass;

  /// Optional. Resource ID (i.e. 'foo' in '[...]/projects/p/locations/l/serviceConnectionPolicies/foo') See https://google.aip.dev/122#resource-id-segments Unique per location.
  final pulumi.Input<String>? serviceConnectionPolicyId;

  ServiceConnectionPolicyArgs({
    this.description,
    this.etag,
    this.labels,
    this.location,
    this.name,
    this.network,
    this.project,
    this.pscConfig,
    this.requestId,
    this.serviceClass,
    this.serviceConnectionPolicyId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final etagValue = etag;
    if (etagValue != null) {
      map['etag'] = etagValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final networkValue = network;
    if (networkValue != null) {
      map['network'] = networkValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final pscConfigValue = pscConfig;
    if (pscConfigValue != null) {
      map['pscConfig'] = pulumi.Input.mapOptionalInputValue<
          PscConfigNetworkconnectivityV1,
          Map<String, dynamic>>(pscConfigValue, (value) => value.toMap());
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    final serviceClassValue = serviceClass;
    if (serviceClassValue != null) {
      map['serviceClass'] = serviceClassValue;
    }
    final serviceConnectionPolicyIdValue = serviceConnectionPolicyId;
    if (serviceConnectionPolicyIdValue != null) {
      map['serviceConnectionPolicyId'] = serviceConnectionPolicyIdValue;
    }
    return map;
  }

  factory ServiceConnectionPolicyArgs.fromMap(Map<String, dynamic> map) {
    return ServiceConnectionPolicyArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      etag: pulumi.Input.asOptionalInput<String>(map['etag']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      network: pulumi.Input.asOptionalInput<String>(map['network']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      pscConfig: pulumi.Input.asOptionalInput<PscConfigNetworkconnectivityV1>(
          map['pscConfig']),
      requestId: pulumi.Input.asOptionalInput<String>(map['requestId']),
      serviceClass: pulumi.Input.asOptionalInput<String>(map['serviceClass']),
      serviceConnectionPolicyId: pulumi.Input.asOptionalInput<String>(
          map['serviceConnectionPolicyId']),
    );
  }
}
