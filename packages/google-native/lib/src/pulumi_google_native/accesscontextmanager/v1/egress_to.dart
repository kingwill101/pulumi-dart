// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_operation.dart';

/// Defines the conditions under which an EgressPolicy matches a request. Conditions are based on information about the ApiOperation intended to be performed on the `resources` specified. Note that if the destination of the request is also protected by a ServicePerimeter, then that ServicePerimeter must have an IngressPolicy which allows access in order for this request to succeed. The request must match `operations` AND `resources` fields in order to be allowed egress out of the perimeter.
class EgressTo {
  /// A list of external resources that are allowed to be accessed. Only AWS and Azure resources are supported. For Amazon S3, the supported format is s3://BUCKET_NAME. For Azure Storage, the supported format is azure://myaccount.blob.core.windows.net/CONTAINER_NAME. A request matches if it contains an external resource in this list (Example: s3://bucket/path). Currently '*' is not allowed.
  final List<String>? externalResources;

  /// A list of ApiOperations allowed to be performed by the sources specified in the corresponding EgressFrom. A request matches if it uses an operation/service in this list.
  final List<ApiOperation>? operations;

  /// A list of resources, currently only projects in the form `projects/`, that are allowed to be accessed by sources defined in the corresponding EgressFrom. A request matches if it contains a resource in this list. If `*` is specified for `resources`, then this EgressTo rule will authorize access to all resources outside the perimeter.
  final List<String>? resources;

  EgressTo({
    this.externalResources,
    this.operations,
    this.resources,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final externalResourcesValue = externalResources;
    if (externalResourcesValue != null) {
      map['externalResources'] = externalResourcesValue;
    }
    final operationsValue = operations;
    if (operationsValue != null) {
      map['operations'] =
          pulumi.Input.encodeList<ApiOperation, Map<String, dynamic>>(
              operationsValue, (value) => value.toMap());
    }
    final resourcesValue = resources;
    if (resourcesValue != null) {
      map['resources'] = resourcesValue;
    }
    return map;
  }

  factory EgressTo.fromMap(Map<String, dynamic> map) {
    return EgressTo(
      externalResources: map['externalResources'] == null
          ? null
          : (map['externalResources'] as List).cast<String>(),
      operations: map['operations'] == null
          ? null
          : pulumi.Input.decodeList<ApiOperation>(
              map['operations'],
              (value) =>
                  ApiOperation.fromMap((value as Map).cast<String, dynamic>())),
      resources: map['resources'] == null
          ? null
          : (map['resources'] as List).cast<String>(),
    );
  }
}
