// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getSecretVersion.
class GetSecretVersionResult2 {
  /// The time at which the Secret was created.
  final String createTime;

  /// The time at which the Secret was destroyed. Only present if state is DESTROYED.
  final String destroyTime;

  /// True if the current state of the SecretVersion is enabled.
  final bool enabled;
  final bool? fetchSecretData;

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

  GetSecretVersionResult2({
    required this.createTime,
    required this.destroyTime,
    required this.enabled,
    this.fetchSecretData,
    required this.id,
    this.isSecretDataBase64,
    required this.name,
    required this.project,
    required this.secret,
    required this.secretData,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['destroyTime'] = destroyTime;
    map['enabled'] = enabled;
    final fetchSecretDataValue = fetchSecretData;
    if (fetchSecretDataValue != null) {
      map['fetchSecretData'] = fetchSecretDataValue;
    }
    map['id'] = id;
    final isSecretDataBase64Value = isSecretDataBase64;
    if (isSecretDataBase64Value != null) {
      map['isSecretDataBase64'] = isSecretDataBase64Value;
    }
    map['name'] = name;
    map['project'] = project;
    map['secret'] = secret;
    map['secretData'] = secretData;
    map['version'] = version;
    return map;
  }

  factory GetSecretVersionResult2.fromMap(Map<String, dynamic> map) {
    return GetSecretVersionResult2(
      createTime: map['createTime'] as String,
      destroyTime: map['destroyTime'] as String,
      enabled: map['enabled'] as bool,
      fetchSecretData: map['fetchSecretData'] == null
          ? null
          : map['fetchSecretData'] as bool,
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
