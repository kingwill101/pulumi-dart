// ignore_for_file: unused_element, unnecessary_cast

class ProjectFileSystemLocation {
  /// The name used to access a file system created by Amazon EFS. CodeBuild creates an
  /// environment variable by appending the identifier in all capital letters to CODEBUILD\_. For example, if you specify
  /// my-efs for identifier, a new environment variable is create named CODEBUILD_MY-EFS.
  final String? identifier;

  /// A string that specifies the location of the file system created by Amazon EFS. Its format is
  /// `efs-dns-name:/directory-path`.
  final String? location;

  /// The mount options for a file system created by AWS EFS.
  final String? mountOptions;

  /// The location in the container where you mount the file system.
  final String? mountPoint;

  /// The type of the file system. The one supported type is `EFS`.
  final String? type;

  /// Creates a new [ProjectFileSystemLocation].
  /// [identifier] The name used to access a file system created by Amazon EFS. CodeBuild creates an
  /// [location] A string that specifies the location of the file system created by Amazon EFS. Its format is
  /// [mountOptions] The mount options for a file system created by AWS EFS.
  /// [mountPoint] The location in the container where you mount the file system.
  /// [type] The type of the file system. The one supported type is `EFS`.
  ProjectFileSystemLocation({
    this.identifier,
    this.location,
    this.mountOptions,
    this.mountPoint,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identifier': ?identifier,
      'location': ?location,
      'mountOptions': ?mountOptions,
      'mountPoint': ?mountPoint,
      'type': ?type,
    };
  }

  factory ProjectFileSystemLocation.fromMap(Map<String, dynamic> map) {
    return ProjectFileSystemLocation(
      identifier: map['identifier'] == null
          ? null
          : map['identifier'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      mountOptions: map['mountOptions'] == null
          ? null
          : map['mountOptions'] as String,
      mountPoint: map['mountPoint'] == null
          ? null
          : map['mountPoint'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
