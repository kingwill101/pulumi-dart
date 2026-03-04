// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'repository_association_repository_bitbucket.dart';
import 'repository_association_repository_codecommit.dart';
import 'repository_association_repository_github_enterprise_server.dart';
import 'repository_association_repository_s3_bucket.dart';

class RepositoryAssociationRepository {
  final pulumi.Input<RepositoryAssociationRepositoryBitbucket>? bitbucket;
  final pulumi.Input<RepositoryAssociationRepositoryCodecommit>? codecommit;
  final pulumi.Input<RepositoryAssociationRepositoryGithubEnterpriseServer>?
  githubEnterpriseServer;
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
      'bitbucket':
          ?pulumi.Input.mapOptionalInputValue<
            RepositoryAssociationRepositoryBitbucket,
            Map<String, dynamic>
          >(bitbucket, (value) => value.toMap()),
      'codecommit':
          ?pulumi.Input.mapOptionalInputValue<
            RepositoryAssociationRepositoryCodecommit,
            Map<String, dynamic>
          >(codecommit, (value) => value.toMap()),
      'githubEnterpriseServer':
          ?pulumi.Input.mapOptionalInputValue<
            RepositoryAssociationRepositoryGithubEnterpriseServer,
            Map<String, dynamic>
          >(githubEnterpriseServer, (value) => value.toMap()),
      's3Bucket':
          ?pulumi.Input.mapOptionalInputValue<
            RepositoryAssociationRepositoryS3Bucket,
            Map<String, dynamic>
          >(s3Bucket, (value) => value.toMap()),
    };
  }

  factory RepositoryAssociationRepository.fromMap(Map<String, dynamic> map) {
    return RepositoryAssociationRepository(
      bitbucket: (() {
        final guardedValue = map['bitbucket'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RepositoryAssociationRepositoryBitbucket.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      codecommit: (() {
        final guardedValue = map['codecommit'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RepositoryAssociationRepositoryCodecommit.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      githubEnterpriseServer: (() {
        final guardedValue = map['githubEnterpriseServer'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RepositoryAssociationRepositoryGithubEnterpriseServer.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      s3Bucket: (() {
        final guardedValue = map['s3Bucket'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RepositoryAssociationRepositoryS3Bucket.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
