// ignore_for_file: unused_element, unnecessary_cast


class OsPolicyAssignmentOsPolicyResourceGroupResourceRepositoryYum {
  /// The location of the repository directory.
  final String baseUrl;
  /// The display name of the repository.
  final String? displayName;
  /// URIs of GPG keys.
  final List<String>? gpgKeys;
  /// A one word, unique name for this repository. This is the
  /// `repo id` in the yum config file and also the `display_name` if
  /// `display_name` is omitted. This id is also used as the unique identifier
  /// when checking for resource conflicts.
  final String id;

  /// Creates a new [OsPolicyAssignmentOsPolicyResourceGroupResourceRepositoryYum].
  /// [baseUrl] The location of the repository directory.
  /// [displayName] The display name of the repository.
  /// [gpgKeys] URIs of GPG keys.
  /// [id] A one word, unique name for this repository. This is the
  OsPolicyAssignmentOsPolicyResourceGroupResourceRepositoryYum({
    required this.baseUrl,
    this.displayName,
    this.gpgKeys,
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baseUrl': baseUrl,
      'displayName': ?displayName,
      'gpgKeys': ?gpgKeys,
      'id': id,
    };
  }

  factory OsPolicyAssignmentOsPolicyResourceGroupResourceRepositoryYum.fromMap(Map<String, dynamic> map) {
    return OsPolicyAssignmentOsPolicyResourceGroupResourceRepositoryYum(
      baseUrl: map['baseUrl'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      gpgKeys: map['gpgKeys'] == null ? null : (map['gpgKeys'] as List).cast<String>(),
      id: map['id'] as String,
    );
  }
}

