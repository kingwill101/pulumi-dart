// ignore_for_file: unused_element, unnecessary_cast


class LinuxWebAppSiteCredential {
  /// The name which should be used for this Linux Web App. Changing this forces a new Linux Web App to be created.
  ///
  /// > **Note:** Terraform will perform a name availability check as part of the creation progress, if this Web App is part of an App Service Environment terraform will require Read permission on the ASE for this to complete reliably.
  final String? name;
  /// The Site Credentials Password used for publishing.
  final String? password;

  /// Creates a new [LinuxWebAppSiteCredential].
  /// [name] The name which should be used for this Linux Web App. Changing this forces a new Linux Web App to be created.
  /// [password] The Site Credentials Password used for publishing.
  LinuxWebAppSiteCredential({
    this.name,
    this.password,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'password': ?password,
    };
  }

  factory LinuxWebAppSiteCredential.fromMap(Map<String, dynamic> map) {
    return LinuxWebAppSiteCredential(
      name: map['name'] == null ? null : map['name'] as String,
      password: map['password'] == null ? null : map['password'] as String,
    );
  }
}

