// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'api_operation.dart';

/// Defines the conditions under which an IngressPolicy matches a request. Conditions are based on information about the ApiOperation intended to be performed on the target resource of the request. The request must satisfy what is defined in `operations` AND `resources` in order to match.
class IngressTo {
  /// A list of ApiOperations allowed to be performed by the sources specified in corresponding IngressFrom in this ServicePerimeter.
  final List<ApiOperation>? operations;

  /// A list of resources, currently only projects in the form `projects/`, protected by this ServicePerimeter that are allowed to be accessed by sources defined in the corresponding IngressFrom. If a single `*` is specified, then access to all resources inside the perimeter are allowed.
  final List<String>? resources;

  IngressTo({
    this.operations,
    this.resources,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final operationsValue = operations;
    if (operationsValue != null) {
      map['operations'] = Input.encodeList<ApiOperation, Map<String, dynamic>>(
          operationsValue, (value) => value.toMap());
    }
    final resourcesValue = resources;
    if (resourcesValue != null) {
      map['resources'] = resourcesValue;
    }
    return map;
  }

  factory IngressTo.fromMap(Map<String, dynamic> map) {
    return IngressTo(
      operations: map['operations'] == null
          ? null
          : Input.decodeList<ApiOperation>(
              map['operations'],
              (value) =>
                  ApiOperation.fromMap((value as Map).cast<String, dynamic>())),
      resources: map['resources'] == null
          ? null
          : (map['resources'] as List).cast<String>(),
    );
  }
}
