// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getParameterVersion.
class GetParameterVersionResult {
  /// The time at which the Parameter Version was created.
  final String createTime;
  /// The current state of the Parameter Version.
  final bool disabled;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The resource name of the Cloud KMS CryptoKeyVersion used to decrypt parameter version payload. Format `projects/{{project}}/locations/global/keyRings/{{key_ring}}/cryptoKeys/{{crypto_key}}/cryptoKeyVersions/{{crypto_key_version}}`
  final String kmsKeyVersion;
  /// The resource name of the ParameterVersion. Format:
  /// `projects/{{project}}/locations/global/parameters/{{parameter_id}}/versions/{{parameter_version_id}}`
  final String name;
  final String parameter;
  /// The parameter data.
  final String parameterData;
  final String parameterVersionId;
  final String project;
  /// The time at which the Parameter Version was last updated.
  final String updateTime;

  /// Creates a new [GetParameterVersionResult].
  /// [createTime] The time at which the Parameter Version was created.
  /// [disabled] The current state of the Parameter Version.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [kmsKeyVersion] The resource name of the Cloud KMS CryptoKeyVersion used to decrypt parameter version payload. Format `projects/{{project}}/locations/global/keyRings/{{key_ring}}/cryptoKeys/{{crypto_key}}/cryptoKeyVersions/{{crypto_key_version}}`
  /// [name] The resource name of the ParameterVersion. Format:
  /// [parameter] Required.
  /// [parameterData] The parameter data.
  /// [parameterVersionId] Required.
  /// [project] Required.
  /// [updateTime] The time at which the Parameter Version was last updated.
  GetParameterVersionResult({
    required this.createTime,
    required this.disabled,
    required this.id,
    required this.kmsKeyVersion,
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
      'name': name,
      'parameter': parameter,
      'parameterData': parameterData,
      'parameterVersionId': parameterVersionId,
      'project': project,
      'updateTime': updateTime,
    };
  }

  factory GetParameterVersionResult.fromMap(Map<String, dynamic> map) {
    return GetParameterVersionResult(
      createTime: map['createTime'] as String,
      disabled: map['disabled'] as bool,
      id: map['id'] as String,
      kmsKeyVersion: map['kmsKeyVersion'] as String,
      name: map['name'] as String,
      parameter: map['parameter'] as String,
      parameterData: map['parameterData'] as String,
      parameterVersionId: map['parameterVersionId'] as String,
      project: map['project'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}

