// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_regional_parameter_policy_member/get_regional_parameter_policy_member.dart';

/// Result data returned by getRegionalParameter.
class GetRegionalParameterResult {
  final String createTime;
  final Map<String, String> effectiveLabels;
  final String format;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String kmsKey;
  final Map<String, String> labels;
  final String location;
  final String name;
  final String parameterId;
  final List<GetRegionalParameterPolicyMember> policyMembers;
  final String? project;
  final Map<String, String> pulumiLabels;
  final String updateTime;

  GetRegionalParameterResult({
    required this.createTime,
    required this.effectiveLabels,
    required this.format,
    required this.id,
    required this.kmsKey,
    required this.labels,
    required this.location,
    required this.name,
    required this.parameterId,
    required this.policyMembers,
    this.project,
    required this.pulumiLabels,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['effectiveLabels'] = effectiveLabels;
    map['format'] = format;
    map['id'] = id;
    map['kmsKey'] = kmsKey;
    map['labels'] = labels;
    map['location'] = location;
    map['name'] = name;
    map['parameterId'] = parameterId;
    map['policyMembers'] = Input.encodeList<GetRegionalParameterPolicyMember,
        Map<String, dynamic>>(policyMembers, (value) => value.toMap());
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['pulumiLabels'] = pulumiLabels;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetRegionalParameterResult.fromMap(Map<String, dynamic> map) {
    return GetRegionalParameterResult(
      createTime: map['createTime'] as String,
      effectiveLabels: (map['effectiveLabels'] as Map).cast<String, String>(),
      format: map['format'] as String,
      id: map['id'] as String,
      kmsKey: map['kmsKey'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      location: map['location'] as String,
      name: map['name'] as String,
      parameterId: map['parameterId'] as String,
      policyMembers: Input.decodeList<GetRegionalParameterPolicyMember>(
          map['policyMembers'],
          (value) => GetRegionalParameterPolicyMember.fromMap(
              (value as Map).cast<String, dynamic>())),
      project: map['project'] == null ? null : map['project'] as String,
      pulumiLabels: (map['pulumiLabels'] as Map).cast<String, String>(),
      updateTime: map['updateTime'] as String,
    );
  }
}
