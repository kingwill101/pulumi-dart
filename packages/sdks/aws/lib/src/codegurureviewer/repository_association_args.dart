// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'repository_association_kms_key_details.dart';
import 'repository_association_repository.dart';

/// {@template pulumi_codegurureviewer_repository_association_repository_association_args_doc}
/// The set of arguments for RepositoryAssociation.
/// {@endtemplate}
/// {@macro pulumi_codegurureviewer_repository_association_repository_association_args_doc}
class RepositoryAssociationArgs {
  /// An object describing the KMS key to asssociate. Block is documented below.
  final pulumi.Input<RepositoryAssociationKmsKeyDetails>? kmsKeyDetails;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// An object describing the repository to associate. Valid values: `bitbucket`, `codecommit`, `github_enterprise_server`, or `s3_bucket`. Block is documented below. Note: for repositories that leverage CodeStar connections (ex. `bitbucket`, `github_enterprise_server`) the connection must be in `Available` status prior to creating this resource.
  ///
  /// The following arguments are optional:
  final pulumi.Input<RepositoryAssociationRepository> repository;
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [RepositoryAssociationArgs].
  /// [kmsKeyDetails] An object describing the KMS key to asssociate. Block is documented below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [repository] An object describing the repository to associate. Valid values: `bitbucket`, `codecommit`, `github_enterprise_server`, or `s3_bucket`. Block is documented below. Note: for repositories that leverage CodeStar connections (ex. `bitbucket`, `github_enterprise_server`) the connection must be in `Available` status prior to creating this resource.
  /// [tags] Optional.
  RepositoryAssociationArgs({
    this.kmsKeyDetails,
    this.region,
    required this.repository,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyDetails': ?pulumi.Input.mapOptionalInputValue<RepositoryAssociationKmsKeyDetails, Map<String, dynamic>>(kmsKeyDetails, (value) => value.toMap()),
      'region': ?region,
      'repository': pulumi.Input.mapInputValue<RepositoryAssociationRepository, Map<String, dynamic>>(repository, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory RepositoryAssociationArgs.fromMap(Map<String, dynamic> map) {
    return RepositoryAssociationArgs(
      kmsKeyDetails: map['kmsKeyDetails'] == null ? null : (RepositoryAssociationKmsKeyDetails.fromMap((map['kmsKeyDetails'] as Map).cast<String, dynamic>())).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      repository: (RepositoryAssociationRepository.fromMap((map['repository'] as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

