// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'operation_warnings_item_data_item_response_deploymentmanager_v2beta.dart';

class OperationWarningsItemResponseDeploymentmanagerV2beta {
  /// A warning code, if applicable. For example, Compute Engine returns NO_RESULTS_ON_PAGE if there are no results in the response.
  final String code;

  /// Metadata about this warning in key: value format. For example: "data": [ { "key": "scope", "value": "zones/us-east1-d" }
  final List<OperationWarningsItemDataItemResponseDeploymentmanagerV2beta> data;

  /// A human-readable description of the warning code.
  final String message;

  /// Creates a new [OperationWarningsItemResponseDeploymentmanagerV2beta].
  /// [code] A warning code, if applicable. For example, Compute Engine returns NO_RESULTS_ON_PAGE if there are no results in the response.
  /// [data] Metadata about this warning in key: value format. For example: "data": [ { "key": "scope", "value": "zones/us-east1-d" }
  /// [message] A human-readable description of the warning code.
  OperationWarningsItemResponseDeploymentmanagerV2beta({
    required this.code,
    required this.data,
    required this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'data':
          pulumi.Input.encodeList<
            OperationWarningsItemDataItemResponseDeploymentmanagerV2beta,
            Map<String, dynamic>
          >(data, (value) => value.toMap()),
      'message': message,
    };
  }

  factory OperationWarningsItemResponseDeploymentmanagerV2beta.fromMap(
    Map<String, dynamic> map,
  ) {
    return OperationWarningsItemResponseDeploymentmanagerV2beta(
      code: map['code'] as String,
      data:
          pulumi.Input.decodeList<
            OperationWarningsItemDataItemResponseDeploymentmanagerV2beta
          >(
            map['data'],
            (value) =>
                OperationWarningsItemDataItemResponseDeploymentmanagerV2beta.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      message: map['message'] as String,
    );
  }
}
