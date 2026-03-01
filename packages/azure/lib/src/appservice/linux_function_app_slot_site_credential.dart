// ignore_for_file: unused_element, unnecessary_cast


class LinuxFunctionAppSlotSiteCredential {
  /// The Site Credentials Username used for publishing.
  final String? name;
  /// The Site Credentials Password used for publishing.
  final String? password;

  /// Creates a new [LinuxFunctionAppSlotSiteCredential].
  /// [name] The Site Credentials Username used for publishing.
  /// [password] The Site Credentials Password used for publishing.
  LinuxFunctionAppSlotSiteCredential({
    this.name,
    this.password,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'password': ?password,
    };
  }

  factory LinuxFunctionAppSlotSiteCredential.fromMap(Map<String, dynamic> map) {
    return LinuxFunctionAppSlotSiteCredential(
      name: map['name'] == null ? null : map['name'] as String,
      password: map['password'] == null ? null : map['password'] as String,
    );
  }
}

