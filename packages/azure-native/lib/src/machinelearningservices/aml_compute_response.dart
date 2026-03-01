// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aml_compute_properties_response.dart';
import 'error_response_response.dart';

/// An Azure Machine Learning compute.
class AmlComputeResponse {
  /// Location for the underlying compute
  final String? computeLocation;
  /// The type of compute
  /// Expected value is 'AmlCompute'.
  final String computeType;
  /// The time at which the compute was created.
  final String createdOn;
  /// The description of the Machine Learning compute.
  final String? description;
  /// Opt-out of local authentication and ensure customers can use only MSI and AAD exclusively for authentication.
  final bool? disableLocalAuth;
  /// Indicating whether the compute was provisioned by user and brought from outside if true, or machine learning service provisioned it if false.
  final bool isAttachedCompute;
  /// The time at which the compute was last modified.
  final String modifiedOn;
  /// Properties of AmlCompute
  final AmlComputePropertiesResponse? properties;
  /// Errors during provisioning
  final List<ErrorResponseResponse> provisioningErrors;
  /// The provision state of the cluster. Valid values are Unknown, Updating, Provisioning, Succeeded, and Failed.
  final String provisioningState;
  /// ARM resource id of the underlying compute
  final String? resourceId;

  /// Creates a new [AmlComputeResponse].
  /// [computeLocation] Location for the underlying compute
  /// [computeType] The type of compute
  /// [createdOn] The time at which the compute was created.
  /// [description] The description of the Machine Learning compute.
  /// [disableLocalAuth] Opt-out of local authentication and ensure customers can use only MSI and AAD exclusively for authentication.
  /// [isAttachedCompute] Indicating whether the compute was provisioned by user and brought from outside if true, or machine learning service provisioned it if false.
  /// [modifiedOn] The time at which the compute was last modified.
  /// [properties] Properties of AmlCompute
  /// [provisioningErrors] Errors during provisioning
  /// [provisioningState] The provision state of the cluster. Valid values are Unknown, Updating, Provisioning, Succeeded, and Failed.
  /// [resourceId] ARM resource id of the underlying compute
  AmlComputeResponse({
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
      'properties': ?properties == null ? null : properties!.toMap(),
      'provisioningErrors': pulumi.Input.encodeList<ErrorResponseResponse, Map<String, dynamic>>(provisioningErrors, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'resourceId': ?resourceId,
    };
  }

  factory AmlComputeResponse.fromMap(Map<String, dynamic> map) {
    return AmlComputeResponse(
      computeLocation: map['computeLocation'] == null ? null : map['computeLocation'] as String,
      computeType: map['computeType'] as String,
      createdOn: map['createdOn'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      disableLocalAuth: map['disableLocalAuth'] == null ? null : map['disableLocalAuth'] as bool,
      isAttachedCompute: map['isAttachedCompute'] as bool,
      modifiedOn: map['modifiedOn'] as String,
      properties: map['properties'] == null ? null : AmlComputePropertiesResponse.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      provisioningErrors: pulumi.Input.decodeList<ErrorResponseResponse>(map['provisioningErrors'], (value) => ErrorResponseResponse.fromMap((value as Map).cast<String, dynamic>())),
      provisioningState: map['provisioningState'] as String,
      resourceId: map['resourceId'] == null ? null : map['resourceId'] as String,
    );
  }
}

