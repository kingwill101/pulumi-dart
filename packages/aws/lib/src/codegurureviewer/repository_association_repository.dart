// ignore_for_file: unused_element, unnecessary_cast

import 'repository_association_repository_bitbucket.dart';
import 'repository_association_repository_codecommit.dart';
import 'repository_association_repository_github_enterprise_server.dart';
import 'repository_association_repository_s3_bucket.dart';

class RepositoryAssociationRepository {
  final RepositoryAssociationRepositoryBitbucket? bitbucket;
  final RepositoryAssociationRepositoryCodecommit? codecommit;
  final RepositoryAssociationRepositoryGithubEnterpriseServer? githubEnterpriseServer;
  final RepositoryAssociationRepositoryS3Bucket? s3Bucket;

  /// Creates a new [RepositoryAssociationRepository].
  /// [bitbucket] Optional.
  /// [codecommit] Optional.
  /// [githubEnterpriseServer] Optional.
  /// [s3Bucket] Optional.
  RepositoryAssociationRepository({
    this.bitbucket,
    this.codecommit,
    this.githubEnterpriseServer,
    this.s3Bucket,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bitbucket': ?bitbucket == null ? null : bitbucket!.toMap(),
      'codecommit': ?codecommit == null ? null : codecommit!.toMap(),
      'githubEnterpriseServer': ?githubEnterpriseServer == null ? null : githubEnterpriseServer!.toMap(),
      's3Bucket': ?s3Bucket == null ? null : s3Bucket!.toMap(),
    };
  }

  factory RepositoryAssociationRepository.fromMap(Map<String, dynamic> map) {
    return RepositoryAssociationRepository(
      bitbucket: map['bitbucket'] == null ? null : RepositoryAssociationRepositoryBitbucket.fromMap((map['bitbucket'] as Map).cast<String, dynamic>()),
      codecommit: map['codecommit'] == null ? null : RepositoryAssociationRepositoryCodecommit.fromMap((map['codecommit'] as Map).cast<String, dynamic>()),
      githubEnterpriseServer: map['githubEnterpriseServer'] == null ? null : RepositoryAssociationRepositoryGithubEnterpriseServer.fromMap((map['githubEnterpriseServer'] as Map).cast<String, dynamic>()),
      s3Bucket: map['s3Bucket'] == null ? null : RepositoryAssociationRepositoryS3Bucket.fromMap((map['s3Bucket'] as Map).cast<String, dynamic>()),
    );
  }
}

