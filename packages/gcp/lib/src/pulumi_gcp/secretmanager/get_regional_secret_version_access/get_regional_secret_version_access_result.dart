// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getRegionalSecretVersionAccess.
class GetRegionalSecretVersionAccessResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final bool? isSecretDataBase64;
  final String location;

  /// The resource name of the regional SecretVersion. Format:
  /// `projects/{{project}}/locations/{{location}}/secrets/{{secret_id}}/versions/{{version}}`
  final String name;
  final String project;
  final String secret;

  /// The secret data. No larger than 64KiB.
  final String secretData;
  final String version;

  GetRegionalSecretVersionAccessResult({
    required this.id,
    this.isSecretDataBase64,
    required this.location,
    required this.name,
    required this.project,
    required this.secret,
    required this.secretData,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    final isSecretDataBase64Value = isSecretDataBase64;
    if (isSecretDataBase64Value != null) {
      map['isSecretDataBase64'] = isSecretDataBase64Value;
    }
    map['location'] = location;
    map['name'] = name;
    map['project'] = project;
    map['secret'] = secret;
    map['secretData'] = secretData;
    map['version'] = version;
    return map;
  }

  factory GetRegionalSecretVersionAccessResult.fromMap(
      Map<String, dynamic> map) {
    return GetRegionalSecretVersionAccessResult(
      id: map['id'] as String,
      isSecretDataBase64: map['isSecretDataBase64'] == null
          ? null
          : map['isSecretDataBase64'] as bool,
      location: map['location'] as String,
      name: map['name'] as String,
      project: map['project'] as String,
      secret: map['secret'] as String,
      secretData: map['secretData'] as String,
      version: map['version'] as String,
    );
  }
}
