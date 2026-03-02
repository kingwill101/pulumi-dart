// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'error_response_response.dart';
import 'hdinsight_properties_response.dart';

/// A HDInsight compute.
class HDInsightResponse {
  /// Location for the underlying compute
  final pulumi.Input<String>? computeLocation;
  /// The type of compute
  /// Expected value is 'HDInsight'.
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
  /// HDInsight compute properties
  final pulumi.Input<HDInsightPropertiesResponse>? properties;
  /// Errors during provisioning
  final pulumi.Input<List<ErrorResponseResponse>> provisioningErrors;
  /// The provision state of the cluster. Valid values are Unknown, Updating, Provisioning, Succeeded, and Failed.
  final pulumi.Input<String> provisioningState;
  /// ARM resource id of the underlying compute
  final pulumi.Input<String>? resourceId;

  /// Creates a new [HDInsightResponse].
  /// [computeLocation] Location for the underlying compute
  /// [computeType] The type of compute
  /// [createdOn] The time at which the compute was created.
  /// [description] The description of the Machine Learning compute.
  /// [disableLocalAuth] Opt-out of local authentication and ensure customers can use only MSI and AAD exclusively for authentication.
  /// [isAttachedCompute] Indicating whether the compute was provisioned by user and brought from outside if true, or machine learning service provisioned it if false.
  /// [modifiedOn] The time at which the compute was last modified.
  /// [properties] HDInsight compute properties
  /// [provisioningErrors] Errors during provisioning
  /// [provisioningState] The provision state of the cluster. Valid values are Unknown, Updating, Provisioning, Succeeded, and Failed.
  /// [resourceId] ARM resource id of the underlying compute
  HDInsightResponse({
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
      'properties': ?pulumi.Input.mapOptionalInputValue<HDInsightPropertiesResponse, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'provisioningErrors': pulumi.Input.mapInputValue<List<ErrorResponseResponse>, List<Map<String, dynamic>>>(provisioningErrors, (value) => pulumi.Input.encodeList<ErrorResponseResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'provisioningState': provisioningState,
      'resourceId': ?resourceId,
    };
  }

  factory HDInsightResponse.fromMap(Map<String, dynamic> map) {
    return HDInsightResponse(
      computeLocation: map['computeLocation'] == null ? null : (map['computeLocation'] as String).input(),
      computeType: (map['computeType'] as String).input(),
      createdOn: (map['createdOn'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      disableLocalAuth: map['disableLocalAuth'] == null ? null : (map['disableLocalAuth'] as bool).input(),
      isAttachedCompute: (map['isAttachedCompute'] as bool).input(),
      modifiedOn: (map['modifiedOn'] as String).input(),
      properties: map['properties'] == null ? null : (HDInsightPropertiesResponse.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
      provisioningErrors: (pulumi.Input.decodeList<ErrorResponseResponse>(map['provisioningErrors'], (value) => ErrorResponseResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      resourceId: map['resourceId'] == null ? null : (map['resourceId'] as String).input(),
    );
  }
}

