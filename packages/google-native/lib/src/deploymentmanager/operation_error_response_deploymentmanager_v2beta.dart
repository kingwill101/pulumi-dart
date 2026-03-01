// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'operation_error_errors_item_response_deploymentmanager_v2beta.dart';

/// [Output Only] If errors are generated during processing of the operation, this field will be populated.
class OperationErrorResponseDeploymentmanagerV2beta {
  /// The array of errors encountered while processing this operation.
  final List<OperationErrorErrorsItemResponseDeploymentmanagerV2beta> errors;

  /// Creates a new [OperationErrorResponseDeploymentmanagerV2beta].
  /// [errors] The array of errors encountered while processing this operation.
  OperationErrorResponseDeploymentmanagerV2beta({required this.errors});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errors':
          pulumi.Input.encodeList<
            OperationErrorErrorsItemResponseDeploymentmanagerV2beta,
            Map<String, dynamic>
          >(errors, (value) => value.toMap()),
    };
  }

  factory OperationErrorResponseDeploymentmanagerV2beta.fromMap(
    Map<String, dynamic> map,
  ) {
    return OperationErrorResponseDeploymentmanagerV2beta(
      errors:
          pulumi.Input.decodeList<
            OperationErrorErrorsItemResponseDeploymentmanagerV2beta
          >(
            map['errors'],
            (value) =>
                OperationErrorErrorsItemResponseDeploymentmanagerV2beta.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
    );
  }
}
