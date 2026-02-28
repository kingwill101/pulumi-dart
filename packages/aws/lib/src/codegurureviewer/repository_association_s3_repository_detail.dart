// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'repository_association_s3_repository_detail_code_artifact.dart';

class RepositoryAssociationS3RepositoryDetail {
  /// The name of the S3 bucket used for associating a new S3 repository. Note: The name must begin with `codeguru-reviewer-`.
  final String? bucketName;
  final List<RepositoryAssociationS3RepositoryDetailCodeArtifact>? codeArtifacts;

  /// Creates a new [RepositoryAssociationS3RepositoryDetail].
  /// [bucketName] The name of the S3 bucket used for associating a new S3 repository. Note: The name must begin with `codeguru-reviewer-`.
  /// [codeArtifacts] Optional.
  RepositoryAssociationS3RepositoryDetail({
    this.bucketName,
    this.codeArtifacts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketName': ?bucketName,
      'codeArtifacts': ?codeArtifacts == null ? null : pulumi.Input.encodeList<RepositoryAssociationS3RepositoryDetailCodeArtifact, Map<String, dynamic>>(codeArtifacts!, (value) => value.toMap()),
    };
  }

  factory RepositoryAssociationS3RepositoryDetail.fromMap(Map<String, dynamic> map) {
    return RepositoryAssociationS3RepositoryDetail(
      bucketName: map['bucketName'] == null ? null : map['bucketName'] as String,
      codeArtifacts: map['codeArtifacts'] == null ? null : pulumi.Input.decodeList<RepositoryAssociationS3RepositoryDetailCodeArtifact>(map['codeArtifacts'], (value) => RepositoryAssociationS3RepositoryDetailCodeArtifact.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

