// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'data_masking_policy.dart';
import 'data_policy_data_policy_type.dart';

/// The set of arguments for DataPolicy.
class DataPolicyArgs {
  /// The data masking policy that specifies the data masking rule to use.
  final Input<DataMaskingPolicy>? dataMaskingPolicy;

  /// User-assigned (human readable) ID of the data policy that needs to be unique within a project. Used as {data_policy_id} in part of the resource name.
  final Input<String>? dataPolicyId;

  /// Type of data policy.
  final Input<DataPolicyDataPolicyType>? dataPolicyType;
  final Input<String>? location;

  /// Policy tag resource name, in the format of `projects/{project_number}/locations/{location_id}/taxonomies/{taxonomy_id}/policyTags/{policyTag_id}`.
  final Input<String>? policyTag;
  final Input<String>? project;

  DataPolicyArgs({
    this.dataMaskingPolicy,
    this.dataPolicyId,
    this.dataPolicyType,
    this.location,
    this.policyTag,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dataMaskingPolicyValue = dataMaskingPolicy;
    if (dataMaskingPolicyValue != null) {
      map['dataMaskingPolicy'] =
          Input.mapOptionalInputValue<DataMaskingPolicy, Map<String, dynamic>>(
              dataMaskingPolicyValue, (value) => value.toMap());
    }
    final dataPolicyIdValue = dataPolicyId;
    if (dataPolicyIdValue != null) {
      map['dataPolicyId'] = dataPolicyIdValue;
    }
    final dataPolicyTypeValue = dataPolicyType;
    if (dataPolicyTypeValue != null) {
      map['dataPolicyType'] =
          Input.mapOptionalInputValue<DataPolicyDataPolicyType, String>(
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
      dataMaskingPolicy:
          Input.asOptionalInput<DataMaskingPolicy>(map['dataMaskingPolicy']),
      dataPolicyId: Input.asOptionalInput<String>(map['dataPolicyId']),
      dataPolicyType: Input.asOptionalInput<DataPolicyDataPolicyType>(
          map['dataPolicyType']),
      location: Input.asOptionalInput<String>(map['location']),
      policyTag: Input.asOptionalInput<String>(map['policyTag']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
