// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../repository_association_kms_key_details/repository_association_kms_key_details.dart';
import '../repository_association_repository/repository_association_repository.dart';

/// The set of arguments for RepositoryAssociation.
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
      map['kmsKeyDetails'] = pulumi.Input.mapOptionalInputValue<
          RepositoryAssociationKmsKeyDetails,
          Map<String, dynamic>>(kmsKeyDetailsValue, (value) => value.toMap());
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['repository'] = pulumi.Input.mapInputValue<
        RepositoryAssociationRepository,
        Map<String, dynamic>>(repository, (value) => value.toMap());
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory RepositoryAssociationArgs.fromMap(Map<String, dynamic> map) {
    return RepositoryAssociationArgs(
      kmsKeyDetails:
          pulumi.Input.asOptionalInput<RepositoryAssociationKmsKeyDetails>(
              map['kmsKeyDetails']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      repository: pulumi.Input.asInput<RepositoryAssociationRepository>(
          map['repository']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
