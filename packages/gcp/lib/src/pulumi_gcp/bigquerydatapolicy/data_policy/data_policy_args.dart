// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../data_policy_data_masking_policy/data_policy_data_masking_policy.dart';

/// The set of arguments for DataPolicy.
class DataPolicyArgs {
  /// The data masking policy that specifies the data masking rule to use.
  /// Structure is documented below.
  final Input<DataPolicyDataMaskingPolicy>? dataMaskingPolicy;

  /// User-assigned (human readable) ID of the data policy that needs to be unique within a project. Used as {dataPolicyId} in part of the resource name.
  final Input<String> dataPolicyId;

  /// The enrollment level of the service.
  /// Possible values are: `COLUMN_LEVEL_SECURITY_POLICY`, `DATA_MASKING_POLICY`.
  final Input<String> dataPolicyType;

  /// The name of the location of the data policy.
  final Input<String> location;

  /// Policy tag resource name, in the format of projects/{project_number}/locations/{locationId}/taxonomies/{taxonomyId}/policyTags/{policyTag_id}.
  final Input<String> policyTag;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  DataPolicyArgs({
    this.dataMaskingPolicy,
    required this.dataPolicyId,
    required this.dataPolicyType,
    required this.location,
    required this.policyTag,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dataMaskingPolicyValue = dataMaskingPolicy;
    if (dataMaskingPolicyValue != null) {
      map['dataMaskingPolicy'] = Input.mapOptionalInputValue<
              DataPolicyDataMaskingPolicy, Map<String, dynamic>>(
          dataMaskingPolicyValue, (value) => value.toMap());
    }
    map['dataPolicyId'] = dataPolicyId;
    map['dataPolicyType'] = dataPolicyType;
    map['location'] = location;
    map['policyTag'] = policyTag;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory DataPolicyArgs.fromMap(Map<String, dynamic> map) {
    return DataPolicyArgs(
      dataMaskingPolicy: Input.asOptionalInput<DataPolicyDataMaskingPolicy>(
          map['dataMaskingPolicy']),
      dataPolicyId: Input.asInput<String>(map['dataPolicyId']),
      dataPolicyType: Input.asInput<String>(map['dataPolicyType']),
      location: Input.asInput<String>(map['location']),
      policyTag: Input.asInput<String>(map['policyTag']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
