// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getSecretVersionAccess.
class GetSecretVersionAccessResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final bool? isSecretDataBase64;

  /// The resource name of the SecretVersion. Format:
  /// `projects/{{project}}/secrets/{{secret_id}}/versions/{{version}}`
  final String name;
  final String project;
  final String secret;

  /// The secret data. No larger than 64KiB.
  final String secretData;
  final String version;

  /// Creates a new [GetSecretVersionAccessResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [isSecretDataBase64] Optional.
  /// [name] The resource name of the SecretVersion. Format:
  /// [project] Required.
  /// [secret] Required.
  /// [secretData] The secret data. No larger than 64KiB.
  /// [version] Required.
  GetSecretVersionAccessResult({
    required this.id,
    this.isSecretDataBase64,
    required this.name,
    required this.project,
    required this.secret,
    required this.secretData,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'isSecretDataBase64': ?isSecretDataBase64,
      'name': name,
      'project': project,
      'secret': secret,
      'secretData': secretData,
      'version': version,
    };
  }

  factory GetSecretVersionAccessResult.fromMap(Map<String, dynamic> map) {
    return GetSecretVersionAccessResult(
      id: map['id'] as String,
      isSecretDataBase64: map['isSecretDataBase64'] == null
          ? null
          : map['isSecretDataBase64'] as bool,
      name: map['name'] as String,
      project: map['project'] as String,
      secret: map['secret'] as String,
      secretData: map['secretData'] as String,
      version: map['version'] as String,
    );
  }
}
