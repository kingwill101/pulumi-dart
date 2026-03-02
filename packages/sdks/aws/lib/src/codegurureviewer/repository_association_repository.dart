// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'repository_association_repository_bitbucket.dart';
import 'repository_association_repository_codecommit.dart';
import 'repository_association_repository_github_enterprise_server.dart';
import 'repository_association_repository_s3_bucket.dart';

class RepositoryAssociationRepository {
  final pulumi.Input<RepositoryAssociationRepositoryBitbucket>? bitbucket;
  final pulumi.Input<RepositoryAssociationRepositoryCodecommit>? codecommit;
  final pulumi.Input<RepositoryAssociationRepositoryGithubEnterpriseServer>? githubEnterpriseServer;
  final pulumi.Input<RepositoryAssociationRepositoryS3Bucket>? s3Bucket;

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
      'bitbucket': ?pulumi.Input.mapOptionalInputValue<RepositoryAssociationRepositoryBitbucket, Map<String, dynamic>>(bitbucket, (value) => value.toMap()),
      'codecommit': ?pulumi.Input.mapOptionalInputValue<RepositoryAssociationRepositoryCodecommit, Map<String, dynamic>>(codecommit, (value) => value.toMap()),
      'githubEnterpriseServer': ?pulumi.Input.mapOptionalInputValue<RepositoryAssociationRepositoryGithubEnterpriseServer, Map<String, dynamic>>(githubEnterpriseServer, (value) => value.toMap()),
      's3Bucket': ?pulumi.Input.mapOptionalInputValue<RepositoryAssociationRepositoryS3Bucket, Map<String, dynamic>>(s3Bucket, (value) => value.toMap()),
    };
  }

  factory RepositoryAssociationRepository.fromMap(Map<String, dynamic> map) {
    return RepositoryAssociationRepository(
      bitbucket: map['bitbucket'] == null ? null : ((RepositoryAssociationRepositoryBitbucket.fromMap((map['bitbucket']! as Map).cast<String, dynamic>())).input()).input(),
      codecommit: map['codecommit'] == null ? null : ((RepositoryAssociationRepositoryCodecommit.fromMap((map['codecommit']! as Map).cast<String, dynamic>())).input()).input(),
      githubEnterpriseServer: map['githubEnterpriseServer'] == null ? null : ((RepositoryAssociationRepositoryGithubEnterpriseServer.fromMap((map['githubEnterpriseServer']! as Map).cast<String, dynamic>())).input()).input(),
      s3Bucket: map['s3Bucket'] == null ? null : ((RepositoryAssociationRepositoryS3Bucket.fromMap((map['s3Bucket']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

