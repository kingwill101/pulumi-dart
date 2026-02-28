// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_masking_policy.dart';
import 'data_policy_data_policy_type.dart';

/// {@template pulumi_bigquerydatapolicy_v1_data_policy_args_doc}
/// The set of arguments for DataPolicy.
/// {@endtemplate}
/// {@macro pulumi_bigquerydatapolicy_v1_data_policy_args_doc}
class DataPolicyArgs {
  /// The data masking policy that specifies the data masking rule to use.
  final pulumi.Input<DataMaskingPolicy>? dataMaskingPolicy;

  /// User-assigned (human readable) ID of the data policy that needs to be unique within a project. Used as {data_policy_id} in part of the resource name.
  final pulumi.Input<String>? dataPolicyId;

  /// Type of data policy.
  final pulumi.Input<DataPolicyDataPolicyType>? dataPolicyType;
  final pulumi.Input<String>? location;

  /// Policy tag resource name, in the format of `projects/{project_number}/locations/{location_id}/taxonomies/{taxonomy_id}/policyTags/{policyTag_id}`.
  final pulumi.Input<String>? policyTag;
  final pulumi.Input<String>? project;

  /// Creates a new [DataPolicyArgs].
  /// [dataMaskingPolicy] The data masking policy that specifies the data masking rule to use.
  /// [dataPolicyId] User-assigned (human readable) ID of the data policy that needs to be unique within a project. Used as {data_policy_id} in part of the resource name.
  /// [dataPolicyType] Type of data policy.
  /// [location] Optional.
  /// [policyTag] Policy tag resource name, in the format of `projects/{project_number}/locations/{location_id}/taxonomies/{taxonomy_id}/policyTags/{policyTag_id}`.
  /// [project] Optional.
  DataPolicyArgs({
    DataMaskingPolicy? dataMaskingPolicy,
    String? dataPolicyId,
    DataPolicyDataPolicyType? dataPolicyType,
    String? location,
    String? policyTag,
    String? project,
  })  : dataMaskingPolicy =
            pulumi.Input.asOptionalInput<DataMaskingPolicy>(dataMaskingPolicy),
        dataPolicyId = pulumi.Input.asOptionalInput<String>(dataPolicyId),
        dataPolicyType = pulumi.Input.asOptionalInput<DataPolicyDataPolicyType>(
            dataPolicyType),
        location = pulumi.Input.asOptionalInput<String>(location),
        policyTag = pulumi.Input.asOptionalInput<String>(policyTag),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dataMaskingPolicyValue = dataMaskingPolicy;
    if (dataMaskingPolicyValue != null) {
      map['dataMaskingPolicy'] = pulumi.Input.mapOptionalInputValue<
              DataMaskingPolicy, Map<String, dynamic>>(
          dataMaskingPolicyValue, (value) => value.toMap());
    }
    final dataPolicyIdValue = dataPolicyId;
    if (dataPolicyIdValue != null) {
      map['dataPolicyId'] = dataPolicyIdValue;
    }
    final dataPolicyTypeValue = dataPolicyType;
    if (dataPolicyTypeValue != null) {
      map['dataPolicyType'] =
          pulumi.Input.mapOptionalInputValue<DataPolicyDataPolicyType, String>(
              dataPolicyTypeValue, (value) => value.value);
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final policyTagValue = policyTag;
    if (policyTagValue != null) {
      map['policyTag'] = policyTagValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory DataPolicyArgs.fromMap(Map<String, dynamic> map) {
    return DataPolicyArgs(
      dataMaskingPolicy: map['dataMaskingPolicy'] == null
          ? null
          : DataMaskingPolicy.fromMap(
              (map['dataMaskingPolicy'] as Map).cast<String, dynamic>()),
      dataPolicyId:
          map['dataPolicyId'] == null ? null : map['dataPolicyId'] as String,
      dataPolicyType: map['dataPolicyType'] == null
          ? null
          : DataPolicyDataPolicyType.fromValue(map['dataPolicyType'] as String),
      location: map['location'] == null ? null : map['location'] as String,
      policyTag: map['policyTag'] == null ? null : map['policyTag'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
