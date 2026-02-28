// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkconnectivity_v1_service_connection_token_args_doc}
/// The set of arguments for ServiceConnectionToken.
/// {@endtemplate}
/// {@macro pulumi_networkconnectivity_v1_service_connection_token_args_doc}
class ServiceConnectionTokenArgs {
  /// A description of this resource.
  final pulumi.Input<String>? description;

  /// Optional. The etag is computed by the server, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  final pulumi.Input<String>? etag;

  /// User-defined labels.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// Immutable. The name of a ServiceConnectionToken. Format: projects/{project}/locations/{location}/ServiceConnectionTokens/{service_connection_token} See: https://google.aip.dev/122#fields-representing-resource-names
  final pulumi.Input<String>? name;

  /// The resource path of the network associated with this token. Example: projects/{projectNumOrId}/global/networks/{resourceId}.
  final pulumi.Input<String>? network;
  final pulumi.Input<String>? project;

  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// Optional. Resource ID (i.e. 'foo' in '[...]/projects/p/locations/l/ServiceConnectionTokens/foo') See https://google.aip.dev/122#resource-id-segments Unique per location. If one is not provided, one will be generated.
  final pulumi.Input<String>? serviceConnectionTokenId;

  /// Creates a new [ServiceConnectionTokenArgs].
  /// [description] A description of this resource.
  /// [etag] Optional. The etag is computed by the server, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  /// [labels] User-defined labels.
  /// [location] Optional.
  /// [name] Immutable. The name of a ServiceConnectionToken. Format: projects/{project}/locations/{location}/ServiceConnectionTokens/{service_connection_token} See: https://google.aip.dev/122#fields-representing-resource-names
  /// [network] The resource path of the network associated with this token. Example: projects/{projectNumOrId}/global/networks/{resourceId}.
  /// [project] Optional.
  /// [requestId] Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  /// [serviceConnectionTokenId] Optional. Resource ID (i.e. 'foo' in '[...]/projects/p/locations/l/ServiceConnectionTokens/foo') See https://google.aip.dev/122#resource-id-segments Unique per location. If one is not provided, one will be generated.
  ServiceConnectionTokenArgs({
    String? description,
    String? etag,
    Map<String, String>? labels,
    String? location,
    String? name,
    String? network,
    String? project,
    String? requestId,
    String? serviceConnectionTokenId,
  })  : description = pulumi.Input.asOptionalInput<String>(description),
        etag = pulumi.Input.asOptionalInput<String>(etag),
        labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        location = pulumi.Input.asOptionalInput<String>(location),
        name = pulumi.Input.asOptionalInput<String>(name),
        network = pulumi.Input.asOptionalInput<String>(network),
        project = pulumi.Input.asOptionalInput<String>(project),
        requestId = pulumi.Input.asOptionalInput<String>(requestId),
        serviceConnectionTokenId =
            pulumi.Input.asOptionalInput<String>(serviceConnectionTokenId);

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
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    final serviceConnectionTokenIdValue = serviceConnectionTokenId;
    if (serviceConnectionTokenIdValue != null) {
      map['serviceConnectionTokenId'] = serviceConnectionTokenIdValue;
    }
    return map;
  }

  factory ServiceConnectionTokenArgs.fromMap(Map<String, dynamic> map) {
    return ServiceConnectionTokenArgs(
      description:
          map['description'] == null ? null : map['description'] as String,
      etag: map['etag'] == null ? null : map['etag'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      network: map['network'] == null ? null : map['network'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      requestId: map['requestId'] == null ? null : map['requestId'] as String,
      serviceConnectionTokenId: map['serviceConnectionTokenId'] == null
          ? null
          : map['serviceConnectionTokenId'] as String,
    );
  }
}
