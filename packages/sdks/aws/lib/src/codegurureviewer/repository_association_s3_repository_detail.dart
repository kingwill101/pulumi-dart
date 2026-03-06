// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'repository_association_s3_repository_detail_code_artifact.dart';

class RepositoryAssociationS3RepositoryDetail {
  /// The name of the S3 bucket used for associating a new S3 repository. Note: The name must begin with `codeguru-reviewer-`.
  final pulumi.Input<String>? bucketName;
  final pulumi.Input<List<RepositoryAssociationS3RepositoryDetailCodeArtifact>>? codeArtifacts;

  /// Creates a new [RepositoryAssociationS3RepositoryDetail].
  /// [bucketName] The name of the S3 bucket used for associating a new S3 repository. Note: The name must begin with `codeguru-reviewer-`.
  /// [codeArtifacts] Optional.
  const RepositoryAssociationS3RepositoryDetail({
    this.bucketName,
    this.codeArtifacts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketName': ?bucketName,
      'codeArtifacts': ?pulumi.Input.mapOptionalInputValue<List<RepositoryAssociationS3RepositoryDetailCodeArtifact>, List<Map<String, dynamic>>>(codeArtifacts, (value) => pulumi.Input.encodeList<RepositoryAssociationS3RepositoryDetailCodeArtifact, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RepositoryAssociationS3RepositoryDetail.fromMap(Map<String, dynamic> map) {
    return RepositoryAssociationS3RepositoryDetail(
      bucketName: (() { final guardedValue = map['bucketName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      codeArtifacts: (() { final guardedValue = map['codeArtifacts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RepositoryAssociationS3RepositoryDetailCodeArtifact>(guardedValue, (value) => RepositoryAssociationS3RepositoryDetailCodeArtifact.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

