// ignore_for_file: unused_element, unnecessary_cast

class OsPolicyAssignmentOsPolicyResourceGroupResourceRepositoryZypper {
  /// The location of the repository directory.
  final String baseUrl;

  /// The display name of the repository.
  final String? displayName;

  /// URIs of GPG keys.
  final List<String>? gpgKeys;

  /// A one word, unique name for this repository. This is the
  /// `repo id` in the zypper config file and also the <span pulumi-lang-nodejs="`displayName`" pulumi-lang-dotnet="`DisplayName`" pulumi-lang-go="`displayName`" pulumi-lang-python="`display_name`" pulumi-lang-yaml="`displayName`" pulumi-lang-java="`displayName`">`display_name`</span> if
  /// <span pulumi-lang-nodejs="`displayName`" pulumi-lang-dotnet="`DisplayName`" pulumi-lang-go="`displayName`" pulumi-lang-python="`display_name`" pulumi-lang-yaml="`displayName`" pulumi-lang-java="`displayName`">`display_name`</span> is omitted. This id is also used as the unique identifier
  /// when checking for GuestPolicy conflicts.
  final String id;

  OsPolicyAssignmentOsPolicyResourceGroupResourceRepositoryZypper({
    required this.baseUrl,
    this.displayName,
    this.gpgKeys,
    required this.id,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['baseUrl'] = baseUrl;
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final gpgKeysValue = gpgKeys;
    if (gpgKeysValue != null) {
      map['gpgKeys'] = gpgKeysValue;
    }
    map['id'] = id;
    return map;
  }

  factory OsPolicyAssignmentOsPolicyResourceGroupResourceRepositoryZypper.fromMap(
      Map<String, dynamic> map) {
    return OsPolicyAssignmentOsPolicyResourceGroupResourceRepositoryZypper(
      baseUrl: map['baseUrl'] as String,
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      gpgKeys: map['gpgKeys'] == null
          ? null
          : (map['gpgKeys'] as List).cast<String>(),
      id: map['id'] as String,
    );
  }
}
