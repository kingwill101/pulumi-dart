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

  /// Creates a new [GetRegionalParameterVersionResult].
  /// [createTime] The time at which the Regional Parameter Version was created.
  /// [disabled] The current state of the Regional Parameter Version.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [kmsKeyVersion] The resource name of the Cloud KMS CryptoKeyVersion used to decrypt regional parameter version payload. Format `projects/{{project}}/locations/{{location}}/keyRings/{{key_ring}}/cryptoKeys/{{crypto_key}}/cryptoKeyVersions/{{crypto_key_version}}`
  /// [location] Required.
  /// [name] The resource name of the Regional Parameter Version. Format:
  /// [parameter] Required.
  /// [parameterData] The regional parameter data.
  /// [parameterVersionId] Required.
  /// [project] Required.
  /// [updateTime] The time at which the Regional Parameter Version was last updated.
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
    return <String, dynamic>{
      'createTime': createTime,
      'disabled': disabled,
      'id': id,
      'kmsKeyVersion': kmsKeyVersion,
      'location': location,
      'name': name,
      'parameter': parameter,
      'parameterData': parameterData,
      'parameterVersionId': parameterVersionId,
      'project': project,
      'updateTime': updateTime,
    };
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
