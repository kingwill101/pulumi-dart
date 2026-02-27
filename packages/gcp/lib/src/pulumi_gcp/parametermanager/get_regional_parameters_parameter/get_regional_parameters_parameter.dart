// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_regional_parameters_parameter_policy_member/get_regional_parameters_parameter_policy_member.dart';

class GetRegionalParametersParameter {
  /// The time at which the regional parameter was created.
  final String createTime;
  final Map<String, String> effectiveLabels;

  /// The format type of the regional parameter.
  final String format;

  /// The resource name of the Cloud KMS CryptoKey used to encrypt regional parameter version payload. Format `projects/{{project}}/locations/{{location}}/keyRings/{{key_ring}}/cryptoKeys/{{crypto_key}}`
  final String kmsKey;

  /// The labels assigned to the regional parameter.
  final Map<String, String> labels;

  /// The location of regional parameter.
  final String location;

  /// The resource name of the regional parameter. Format: `projects/{{project}}/locations/{{location}}/parameters/{{parameter_id}}`
  final String name;

  /// The unique name of the resource.
  final String parameterId;

  /// An object containing a unique resource identity tied to the regional parameter. Structure is documented below.
  final List<GetRegionalParametersParameterPolicyMember> policyMembers;

  /// The ID of the project.
  final String project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final Map<String, String> pulumiLabels;

  /// The time at which the regional parameter was updated.
  final String updateTime;

  GetRegionalParametersParameter({
    required this.createTime,
    required this.effectiveLabels,
    required this.format,
    required this.kmsKey,
    required this.labels,
    required this.location,
    required this.name,
    required this.parameterId,
    required this.policyMembers,
    required this.project,
    required this.pulumiLabels,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['effectiveLabels'] = effectiveLabels;
    map['format'] = format;
    map['kmsKey'] = kmsKey;
    map['labels'] = labels;
    map['location'] = location;
    map['name'] = name;
    map['parameterId'] = parameterId;
    map['policyMembers'] = pulumi.Input.encodeList<
        GetRegionalParametersParameterPolicyMember,
        Map<String, dynamic>>(policyMembers, (value) => value.toMap());
    map['project'] = project;
    map['pulumiLabels'] = pulumiLabels;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetRegionalParametersParameter.fromMap(Map<String, dynamic> map) {
    return GetRegionalParametersParameter(
      createTime: map['createTime'] as String,
      effectiveLabels: (map['effectiveLabels'] as Map).cast<String, String>(),
      format: map['format'] as String,
      kmsKey: map['kmsKey'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      location: map['location'] as String,
      name: map['name'] as String,
      parameterId: map['parameterId'] as String,
      policyMembers:
          pulumi.Input.decodeList<GetRegionalParametersParameterPolicyMember>(
              map['policyMembers'],
              (value) => GetRegionalParametersParameterPolicyMember.fromMap(
                  (value as Map).cast<String, dynamic>())),
      project: map['project'] as String,
      pulumiLabels: (map['pulumiLabels'] as Map).cast<String, String>(),
      updateTime: map['updateTime'] as String,
    );
  }
}
