// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RepositoryAssociationRepositoryS3Bucket {
  /// The name of the S3 bucket used for associating a new S3 repository. Note: The name must begin with `codeguru-reviewer-`.
  final pulumi.Input<String> bucketName;
  /// The name of the repository in the S3 bucket.
  final pulumi.Input<String> name;

  /// Creates a new [RepositoryAssociationRepositoryS3Bucket].
  /// [bucketName] The name of the S3 bucket used for associating a new S3 repository. Note: The name must begin with `codeguru-reviewer-`.
  /// [name] The name of the repository in the S3 bucket.
  const RepositoryAssociationRepositoryS3Bucket({
    required this.bucketName,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketName': bucketName,
      'name': name,
    };
  }

  factory RepositoryAssociationRepositoryS3Bucket.fromMap(Map<String, dynamic> map) {
    return RepositoryAssociationRepositoryS3Bucket(
      bucketName: pulumi.Input.fromValue(map['bucketName'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

