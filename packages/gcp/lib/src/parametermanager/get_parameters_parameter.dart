// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_parameters_parameter_policy_member.dart';

class GetParametersParameter {
  /// The time at which the parameter was created.
  final String createTime;
  final Map<String, String> effectiveLabels;

  /// The format type of the parameter.
  final String format;

  /// The resource name of the Cloud KMS CryptoKey used to encrypt parameter version payload. Format `projects/{{project}}/locations/global/keyRings/{{key_ring}}/cryptoKeys/{{crypto_key}}`
  final String kmsKey;

  /// The labels assigned to the parameter.
  final Map<String, String> labels;

  /// The resource name of the parameter. Format: `projects/{{project}}/locations/global/parameters/{{parameter_id}}`
  final String name;

  /// The unique name of the resource.
  final String parameterId;

  /// An object containing a unique resource identity tied to the parameter. Structure is documented below.
  final List<GetParametersParameterPolicyMember> policyMembers;

  /// The ID of the project.
  final String project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final Map<String, String> pulumiLabels;

  /// The time at which the parameter was updated.
  final String updateTime;

  /// Creates a new [GetParametersParameter].
  /// [createTime] The time at which the parameter was created.
  /// [effectiveLabels] Required.
  /// [format] The format type of the parameter.
  /// [kmsKey] The resource name of the Cloud KMS CryptoKey used to encrypt parameter version payload. Format `projects/{{project}}/locations/global/keyRings/{{key_ring}}/cryptoKeys/{{crypto_key}}`
  /// [labels] The labels assigned to the parameter.
  /// [name] The resource name of the parameter. Format: `projects/{{project}}/locations/global/parameters/{{parameter_id}}`
  /// [parameterId] The unique name of the resource.
  /// [policyMembers] An object containing a unique resource identity tied to the parameter. Structure is documented below.
  /// [project] The ID of the project.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [updateTime] The time at which the parameter was updated.
  GetParametersParameter({
    required this.createTime,
    required this.effectiveLabels,
    required this.format,
    required this.kmsKey,
    required this.labels,
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
    map['name'] = name;
    map['parameterId'] = parameterId;
    map['policyMembers'] = pulumi.Input.encodeList<
        GetParametersParameterPolicyMember,
        Map<String, dynamic>>(policyMembers, (value) => value.toMap());
    map['project'] = project;
    map['pulumiLabels'] = pulumiLabels;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetParametersParameter.fromMap(Map<String, dynamic> map) {
    return GetParametersParameter(
      createTime: map['createTime'] as String,
      effectiveLabels: (map['effectiveLabels'] as Map).cast<String, String>(),
      format: map['format'] as String,
      kmsKey: map['kmsKey'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      parameterId: map['parameterId'] as String,
      policyMembers:
          pulumi.Input.decodeList<GetParametersParameterPolicyMember>(
              map['policyMembers'],
              (value) => GetParametersParameterPolicyMember.fromMap(
                  (value as Map).cast<String, dynamic>())),
      project: map['project'] as String,
      pulumiLabels: (map['pulumiLabels'] as Map).cast<String, String>(),
      updateTime: map['updateTime'] as String,
    );
  }
}
