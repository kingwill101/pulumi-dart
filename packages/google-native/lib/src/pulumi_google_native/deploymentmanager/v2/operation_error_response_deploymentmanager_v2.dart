// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'operation_error_errors_item_response_deploymentmanager_v2.dart';

/// [Output Only] If errors are generated during processing of the operation, this field will be populated.
class OperationErrorResponseDeploymentmanagerV2 {
  /// The array of errors encountered while processing this operation.
  final List<OperationErrorErrorsItemResponseDeploymentmanagerV2> errors;

  OperationErrorResponseDeploymentmanagerV2({
    required this.errors,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['errors'] = pulumi.Input.encodeList<
        OperationErrorErrorsItemResponseDeploymentmanagerV2,
        Map<String, dynamic>>(errors, (value) => value.toMap());
    return map;
  }

  factory OperationErrorResponseDeploymentmanagerV2.fromMap(
      Map<String, dynamic> map) {
    return OperationErrorResponseDeploymentmanagerV2(
      errors: pulumi.Input.decodeList<
              OperationErrorErrorsItemResponseDeploymentmanagerV2>(
          map['errors'],
          (value) =>
              OperationErrorErrorsItemResponseDeploymentmanagerV2.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
