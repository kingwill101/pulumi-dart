// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_masking_policy.dart';
import 'data_policy_data_policy_type.dart';

/// The set of arguments for DataPolicy.
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
      dataMaskingPolicy: pulumi.Input.asOptionalInput<DataMaskingPolicy>(
          map['dataMaskingPolicy']),
      dataPolicyId: pulumi.Input.asOptionalInput<String>(map['dataPolicyId']),
      dataPolicyType: pulumi.Input.asOptionalInput<DataPolicyDataPolicyType>(
          map['dataPolicyType']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      policyTag: pulumi.Input.asOptionalInput<String>(map['policyTag']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
