// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getRegionalParameterVersion.
class GetRegionalParameterVersionResult {
  /// The time at which the Regional Parameter Version was created.
  final String createTime;

  /// The current state of the Regional Parameter Version.
  final bool disabled;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// The resource name of the Cloud KMS CryptoKeyVersion used to decrypt regional parameter version payload. Format `projects/{{project}}/locations/{{location}}/keyRings/{{key_ring}}/cryptoKeys/{{crypto_key}}/cryptoKeyVersions/{{crypto_key_version}}`
  final String kmsKeyVersion;
  final String location;

  /// The resource name of the Regional Parameter Version. Format:
  /// `projects/{{project}}/locations/{{location}}/parameters/{{parameter_id}}/versions/{{parameter_version_id}}`
  final String name;
  final String parameter;

  /// The regional parameter data.
  final String parameterData;
  final String parameterVersionId;
  final String project;

  /// The time at which the Regional Parameter Version was last updated.
  final String updateTime;

  GetRegionalParameterVersionResult({
    required this.createTime,
    required this.disabled,
    required this.id,
    required this.kmsKeyVersion,
    required this.location,
    required this.name,
    required this.parameter,
    required this.parameterData,
    required this.parameterVersionId,
    required this.project,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['disabled'] = disabled;
    map['id'] = id;
    map['kmsKeyVersion'] = kmsKeyVersion;
    map['location'] = location;
    map['name'] = name;
    map['parameter'] = parameter;
    map['parameterData'] = parameterData;
    map['parameterVersionId'] = parameterVersionId;
    map['project'] = project;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetRegionalParameterVersionResult.fromMap(Map<String, dynamic> map) {
    return GetRegionalParameterVersionResult(
      createTime: map['createTime'] as String,
      disabled: map['disabled'] as bool,
      id: map['id'] as String,
      kmsKeyVersion: map['kmsKeyVersion'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      parameter: map['parameter'] as String,
      parameterData: map['parameterData'] as String,
      parameterVersionId: map['parameterVersionId'] as String,
      project: map['project'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
