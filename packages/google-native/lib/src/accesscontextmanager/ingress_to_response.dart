// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_operation_response.dart';

/// Defines the conditions under which an IngressPolicy matches a request. Conditions are based on information about the ApiOperation intended to be performed on the target resource of the request. The request must satisfy what is defined in `operations` AND `resources` in order to match.
class IngressToResponse {
  /// A list of ApiOperations allowed to be performed by the sources specified in corresponding IngressFrom in this ServicePerimeter.
  final List<ApiOperationResponse> operations;
  /// A list of resources, currently only projects in the form `projects/`, protected by this ServicePerimeter that are allowed to be accessed by sources defined in the corresponding IngressFrom. If a single `*` is specified, then access to all resources inside the perimeter are allowed.
  final List<String> resources;

  /// Creates a new [IngressToResponse].
  /// [operations] A list of ApiOperations allowed to be performed by the sources specified in corresponding IngressFrom in this ServicePerimeter.
  /// [resources] A list of resources, currently only projects in the form `projects/`, protected by this ServicePerimeter that are allowed to be accessed by sources defined in the corresponding IngressFrom. If a single `*` is specified, then access to all resources inside the perimeter are allowed.
  IngressToResponse({
    required this.operations,
    required this.resources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operations': pulumi.Input.encodeList<ApiOperationResponse, Map<String, dynamic>>(operations, (value) => value.toMap()),
      'resources': resources,
    };
  }

  factory IngressToResponse.fromMap(Map<String, dynamic> map) {
    return IngressToResponse(
      operations: pulumi.Input.decodeList<ApiOperationResponse>(map['operations'], (value) => ApiOperationResponse.fromMap((value as Map).cast<String, dynamic>())),
      resources: (map['resources'] as List).cast<String>(),
    );
  }
}

