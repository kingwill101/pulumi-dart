// ignore_for_file: unused_element, unnecessary_cast


/// Represents a single Yum package repository. This repository is added to a repo file that is stored at `/etc/yum.repos.d/google_osconfig.repo`.
class YumRepository {
  /// The location of the repository directory.
  final String baseUrl;
  /// The display name of the repository.
  final String? displayName;
  /// URIs of GPG keys.
  final List<String>? gpgKeys;
  /// A one word, unique name for this repository. This is the `repo id` in the Yum config file and also the `display_name` if `display_name` is omitted. This id is also used as the unique identifier when checking for guest policy conflicts.
  final String id;

  /// Creates a new [YumRepository].
  /// [baseUrl] The location of the repository directory.
  /// [displayName] The display name of the repository.
  /// [gpgKeys] URIs of GPG keys.
  /// [id] A one word, unique name for this repository. This is the `repo id` in the Yum config file and also the `display_name` if `display_name` is omitted. This id is also used as the unique identifier when checking for guest policy conflicts.
  YumRepository({
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

  factory YumRepository.fromMap(Map<String, dynamic> map) {
    return YumRepository(
      baseUrl: map['baseUrl'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      gpgKeys: map['gpgKeys'] == null ? null : (map['gpgKeys'] as List).cast<String>(),
      id: map['id'] as String,
    );
  }
}

