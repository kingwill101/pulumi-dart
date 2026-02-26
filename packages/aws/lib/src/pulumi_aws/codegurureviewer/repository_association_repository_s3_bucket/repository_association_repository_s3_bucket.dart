// ignore_for_file: unused_element, unnecessary_cast

class RepositoryAssociationRepositoryS3Bucket {
  /// The name of the S3 bucket used for associating a new S3 repository. Note: The name must begin with `codeguru-reviewer-`.
  final String bucketName;

  /// The name of the repository in the S3 bucket.
  final String name;

  RepositoryAssociationRepositoryS3Bucket({
    required this.bucketName,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucketName'] = bucketName;
    map['name'] = name;
    return map;
  }

  factory RepositoryAssociationRepositoryS3Bucket.fromMap(
      Map<String, dynamic> map) {
    return RepositoryAssociationRepositoryS3Bucket(
      bucketName: map['bucketName'] as String,
      name: map['name'] as String,
    );
  }
}
