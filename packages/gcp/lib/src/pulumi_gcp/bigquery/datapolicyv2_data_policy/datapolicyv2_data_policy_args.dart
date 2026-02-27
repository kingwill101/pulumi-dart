// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../datapolicyv2_data_policy_data_masking_policy/datapolicyv2_data_policy_data_masking_policy.dart';

/// The set of arguments for Datapolicyv2DataPolicy.
class Datapolicyv2DataPolicyArgs {
  /// The policy used to specify data masking rule.
  /// Structure is documented below.
  final Input<Datapolicyv2DataPolicyDataMaskingPolicy>? dataMaskingPolicy;

  /// User-assigned (human readable) ID of the data policy that needs to be
  /// unique within a project. Used as {data_policy_id} in part of the resource
  /// name.
  final Input<String> dataPolicyId;

  /// Type of data policy.
  /// Possible values:
  /// DATA_MASKING_POLICY
  /// RAW_DATA_ACCESS_POLICY
  /// COLUMN_LEVEL_SECURITY_POLICY
  final Input<String> dataPolicyType;

  /// The etag for this Data Policy.
  /// This field is used for UpdateDataPolicy calls. If Data Policy exists, this
  /// field is required and must match the server's etag. It will also be
  /// populated in the response of GetDataPolicy, CreateDataPolicy, and
  /// UpdateDataPolicy calls.
  final Input<String>? etag;

  /// The list of IAM principals that have Fine Grained Access to the underlying
  /// data goverened by this data policy.
  /// Uses the [IAM V2 principal
  /// syntax](https://cloud.google.com/iam/docs/principal-identifiers#v2) Only
  /// supports principal types users, groups, serviceaccounts, cloudidentity.
  /// This field is supported in V2 Data Policy only. In case of V1 data policies
  /// (i.e. verion = 1 and policy_tag is set), this field is not populated.
  final Input<List<String>>? grantees;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  Datapolicyv2DataPolicyArgs({
    this.dataMaskingPolicy,
    required this.dataPolicyId,
    required this.dataPolicyType,
    this.etag,
    this.grantees,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dataMaskingPolicyValue = dataMaskingPolicy;
    if (dataMaskingPolicyValue != null) {
      map['dataMaskingPolicy'] = Input.mapOptionalInputValue<
              Datapolicyv2DataPolicyDataMaskingPolicy, Map<String, dynamic>>(
          dataMaskingPolicyValue, (value) => value.toMap());
    }
    map['dataPolicyId'] = dataPolicyId;
    map['dataPolicyType'] = dataPolicyType;
    final etagValue = etag;
    if (etagValue != null) {
      map['etag'] = etagValue;
    }
    final granteesValue = grantees;
    if (granteesValue != null) {
      map['grantees'] = granteesValue;
    }
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory Datapolicyv2DataPolicyArgs.fromMap(Map<String, dynamic> map) {
    return Datapolicyv2DataPolicyArgs(
      dataMaskingPolicy:
          Input.asOptionalInput<Datapolicyv2DataPolicyDataMaskingPolicy>(
              map['dataMaskingPolicy']),
      dataPolicyId: Input.asInput<String>(map['dataPolicyId']),
      dataPolicyType: Input.asInput<String>(map['dataPolicyType']),
      etag: Input.asOptionalInput<String>(map['etag']),
      grantees: Input.asOptionalInput<List<String>>(map['grantees']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
