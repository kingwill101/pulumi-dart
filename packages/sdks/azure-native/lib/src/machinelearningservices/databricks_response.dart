// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'databricks_properties_response.dart';
import 'error_response_response.dart';

/// A DataFactory compute.
class DatabricksResponse {
  /// Location for the underlying compute
  final pulumi.Input<String>? computeLocation;
  /// The type of compute
  /// Expected value is 'Databricks'.
  final pulumi.Input<String> computeType;
  /// The time at which the compute was created.
  final pulumi.Input<String> createdOn;
  /// The description of the Machine Learning compute.
  final pulumi.Input<String>? description;
  /// Opt-out of local authentication and ensure customers can use only MSI and AAD exclusively for authentication.
  final pulumi.Input<bool>? disableLocalAuth;
  /// Indicating whether the compute was provisioned by user and brought from outside if true, or machine learning service provisioned it if false.
  final pulumi.Input<bool> isAttachedCompute;
  /// The time at which the compute was last modified.
  final pulumi.Input<String> modifiedOn;
  /// Properties of Databricks
  final pulumi.Input<DatabricksPropertiesResponse>? properties;
  /// Errors during provisioning
  final pulumi.Input<List<ErrorResponseResponse>> provisioningErrors;
  /// The provision state of the cluster. Valid values are Unknown, Updating, Provisioning, Succeeded, and Failed.
  final pulumi.Input<String> provisioningState;
  /// ARM resource id of the underlying compute
  final pulumi.Input<String>? resourceId;

  /// Creates a new [DatabricksResponse].
  /// [computeLocation] Location for the underlying compute
  /// [computeType] The type of compute
  /// [createdOn] The time at which the compute was created.
  /// [description] The description of the Machine Learning compute.
  /// [disableLocalAuth] Opt-out of local authentication and ensure customers can use only MSI and AAD exclusively for authentication.
  /// [isAttachedCompute] Indicating whether the compute was provisioned by user and brought from outside if true, or machine learning service provisioned it if false.
  /// [modifiedOn] The time at which the compute was last modified.
  /// [properties] Properties of Databricks
  /// [provisioningErrors] Errors during provisioning
  /// [provisioningState] The provision state of the cluster. Valid values are Unknown, Updating, Provisioning, Succeeded, and Failed.
  /// [resourceId] ARM resource id of the underlying compute
  const DatabricksResponse({
    this.computeLocation,
    required this.computeType,
    required this.createdOn,
    this.description,
    this.disableLocalAuth,
    required this.isAttachedCompute,
    required this.modifiedOn,
    this.properties,
    required this.provisioningErrors,
    required this.provisioningState,
    this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'computeLocation': ?computeLocation,
      'computeType': computeType,
      'createdOn': createdOn,
      'description': ?description,
      'disableLocalAuth': ?disableLocalAuth,
      'isAttachedCompute': isAttachedCompute,
      'modifiedOn': modifiedOn,
      'properties': ?pulumi.Input.mapOptionalInputValue<DatabricksPropertiesResponse, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'provisioningErrors': pulumi.Input.mapInputValue<List<ErrorResponseResponse>, List<Map<String, dynamic>>>(provisioningErrors, (value) => pulumi.Input.encodeList<ErrorResponseResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'provisioningState': provisioningState,
      'resourceId': ?resourceId,
    };
  }

  factory DatabricksResponse.fromMap(Map<String, dynamic> map) {
    return DatabricksResponse(
      computeLocation: (() { final guardedValue = map['computeLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      computeType: pulumi.Input.fromValue(map['computeType'] as String),
      createdOn: pulumi.Input.fromValue(map['createdOn'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disableLocalAuth: (() { final guardedValue = map['disableLocalAuth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isAttachedCompute: pulumi.Input.fromValue(map['isAttachedCompute'] as bool),
      modifiedOn: pulumi.Input.fromValue(map['modifiedOn'] as String),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatabricksPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      provisioningErrors: pulumi.Input.fromValue(pulumi.Input.decodeList<ErrorResponseResponse>(map['provisioningErrors']!, (value) => ErrorResponseResponse.fromMap((value as Map).cast<String, dynamic>()))),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      resourceId: (() { final guardedValue = map['resourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
