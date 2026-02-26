// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../repository_association_kms_key_details/repository_association_kms_key_details.dart';
import '../repository_association_repository/repository_association_repository.dart';

/// The set of arguments for RepositoryAssociation.
class RepositoryAssociationArgs {
  /// An object describing the KMS key to asssociate. Block is documented below.
  final Input<RepositoryAssociationKmsKeyDetails>? kmsKeyDetails;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// An object describing the repository to associate. Valid values: <span pulumi-lang-nodejs="`bitbucket`" pulumi-lang-dotnet="`Bitbucket`" pulumi-lang-go="`bitbucket`" pulumi-lang-python="`bitbucket`" pulumi-lang-yaml="`bitbucket`" pulumi-lang-java="`bitbucket`">`bitbucket`</span>, <span pulumi-lang-nodejs="`codecommit`" pulumi-lang-dotnet="`Codecommit`" pulumi-lang-go="`codecommit`" pulumi-lang-python="`codecommit`" pulumi-lang-yaml="`codecommit`" pulumi-lang-java="`codecommit`">`codecommit`</span>, <span pulumi-lang-nodejs="`githubEnterpriseServer`" pulumi-lang-dotnet="`GithubEnterpriseServer`" pulumi-lang-go="`githubEnterpriseServer`" pulumi-lang-python="`github_enterprise_server`" pulumi-lang-yaml="`githubEnterpriseServer`" pulumi-lang-java="`githubEnterpriseServer`">`github_enterprise_server`</span>, or <span pulumi-lang-nodejs="`s3Bucket`" pulumi-lang-dotnet="`S3Bucket`" pulumi-lang-go="`s3Bucket`" pulumi-lang-python="`s3_bucket`" pulumi-lang-yaml="`s3Bucket`" pulumi-lang-java="`s3Bucket`">`s3_bucket`</span>. Block is documented below. Note: for repositories that leverage CodeStar connections (ex. <span pulumi-lang-nodejs="`bitbucket`" pulumi-lang-dotnet="`Bitbucket`" pulumi-lang-go="`bitbucket`" pulumi-lang-python="`bitbucket`" pulumi-lang-yaml="`bitbucket`" pulumi-lang-java="`bitbucket`">`bitbucket`</span>, <span pulumi-lang-nodejs="`githubEnterpriseServer`" pulumi-lang-dotnet="`GithubEnterpriseServer`" pulumi-lang-go="`githubEnterpriseServer`" pulumi-lang-python="`github_enterprise_server`" pulumi-lang-yaml="`githubEnterpriseServer`" pulumi-lang-java="`githubEnterpriseServer`">`github_enterprise_server`</span>) the connection must be in `Available` status prior to creating this resource.
  ///
  /// The following arguments are optional:
  final Input<RepositoryAssociationRepository> repository;
  final Input<Map<String, String>>? tags;

  RepositoryAssociationArgs({
    this.kmsKeyDetails,
    this.region,
    required this.repository,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final kmsKeyDetailsValue = kmsKeyDetails;
    if (kmsKeyDetailsValue != null) {
      map['kmsKeyDetails'] = Input.mapOptionalInputValue<
          RepositoryAssociationKmsKeyDetails,
          Map<String, dynamic>>(kmsKeyDetailsValue, (value) => value.toMap());
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['repository'] = Input.mapInputValue<RepositoryAssociationRepository,
        Map<String, dynamic>>(repository, (value) => value.toMap());
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory RepositoryAssociationArgs.fromMap(Map<String, dynamic> map) {
    return RepositoryAssociationArgs(
      kmsKeyDetails: Input.asOptionalInput<RepositoryAssociationKmsKeyDetails>(
          map['kmsKeyDetails']),
      region: Input.asOptionalInput<String>(map['region']),
      repository:
          Input.asInput<RepositoryAssociationRepository>(map['repository']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
