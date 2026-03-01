// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_operation_response.dart';

/// Defines the conditions under which an EgressPolicy matches a request. Conditions are based on information about the ApiOperation intended to be performed on the `resources` specified. Note that if the destination of the request is also protected by a ServicePerimeter, then that ServicePerimeter must have an IngressPolicy which allows access in order for this request to succeed. The request must match `operations` AND `resources` fields in order to be allowed egress out of the perimeter.
class EgressToResponse {
  /// A list of external resources that are allowed to be accessed. Only AWS and Azure resources are supported. For Amazon S3, the supported format is s3://BUCKET_NAME. For Azure Storage, the supported format is azure://myaccount.blob.core.windows.net/CONTAINER_NAME. A request matches if it contains an external resource in this list (Example: s3://bucket/path). Currently '*' is not allowed.
  final List<String> externalResources;

  /// A list of ApiOperations allowed to be performed by the sources specified in the corresponding EgressFrom. A request matches if it uses an operation/service in this list.
  final List<ApiOperationResponse> operations;

  /// A list of resources, currently only projects in the form `projects/`, that are allowed to be accessed by sources defined in the corresponding EgressFrom. A request matches if it contains a resource in this list. If `*` is specified for `resources`, then this EgressTo rule will authorize access to all resources outside the perimeter.
  final List<String> resources;

  /// Creates a new [EgressToResponse].
  /// [externalResources] A list of external resources that are allowed to be accessed. Only AWS and Azure resources are supported. For Amazon S3, the supported format is s3://BUCKET_NAME. For Azure Storage, the supported format is azure://myaccount.blob.core.windows.net/CONTAINER_NAME. A request matches if it contains an external resource in this list (Example: s3://bucket/path). Currently '*' is not allowed.
  /// [operations] A list of ApiOperations allowed to be performed by the sources specified in the corresponding EgressFrom. A request matches if it uses an operation/service in this list.
  /// [resources] A list of resources, currently only projects in the form `projects/`, that are allowed to be accessed by sources defined in the corresponding EgressFrom. A request matches if it contains a resource in this list. If `*` is specified for `resources`, then this EgressTo rule will authorize access to all resources outside the perimeter.
  EgressToResponse({
    required this.externalResources,
    required this.operations,
    required this.resources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'externalResources': externalResources,
      'operations':
          pulumi.Input.encodeList<ApiOperationResponse, Map<String, dynamic>>(
            operations,
            (value) => value.toMap(),
          ),
      'resources': resources,
    };
  }

  factory EgressToResponse.fromMap(Map<String, dynamic> map) {
    return EgressToResponse(
      externalResources: (map['externalResources'] as List).cast<String>(),
      operations: pulumi.Input.decodeList<ApiOperationResponse>(
        map['operations'],
        (value) => ApiOperationResponse.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      resources: (map['resources'] as List).cast<String>(),
    );
  }
}
