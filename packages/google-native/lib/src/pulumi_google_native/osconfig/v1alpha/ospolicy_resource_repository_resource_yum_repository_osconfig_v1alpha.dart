// ignore_for_file: unused_element, unnecessary_cast

/// Represents a single yum package repository. These are added to a repo file that is managed at `/etc/yum.repos.d/google_osconfig.repo`.
class OSPolicyResourceRepositoryResourceYumRepositoryOsconfigV1alpha {
  /// The location of the repository directory.
  final String baseUrl;

  /// The display name of the repository.
  final String? displayName;

  /// URIs of GPG keys.
  final List<String>? gpgKeys;

  /// A one word, unique name for this repository. This is the `repo id` in the yum config file and also the `display_name` if `display_name` is omitted. This id is also used as the unique identifier when checking for resource conflicts.
  final String id;

  OSPolicyResourceRepositoryResourceYumRepositoryOsconfigV1alpha({
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

  factory OSPolicyResourceRepositoryResourceYumRepositoryOsconfigV1alpha.fromMap(
      Map<String, dynamic> map) {
    return OSPolicyResourceRepositoryResourceYumRepositoryOsconfigV1alpha(
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
