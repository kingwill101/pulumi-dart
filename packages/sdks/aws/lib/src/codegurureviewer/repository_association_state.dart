// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'repository_association_kms_key_details.dart';
import 'repository_association_repository.dart';
import 'repository_association_s3_repository_detail.dart';

/// Input properties used for looking up and filtering RepositoryAssociation resources.
class RepositoryAssociationState {
  /// The Amazon Resource Name (ARN) identifying the repository association.
  final pulumi.Input<String>? arn;

  /// The ID of the repository association.
  final pulumi.Input<String>? associationId;

  /// The Amazon Resource Name (ARN) of an AWS CodeStar Connections connection.
  final pulumi.Input<String>? connectionArn;

  /// An object describing the KMS key to asssociate. Block is documented below.
  final pulumi.Input<RepositoryAssociationKmsKeyDetails>? kmsKeyDetails;

  /// The name of the repository.
  final pulumi.Input<String>? name;

  /// The owner of the repository.
  final pulumi.Input<String>? owner;

  /// The provider type of the repository association.
  final pulumi.Input<String>? providerType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// An object describing the repository to associate. Valid values: `bitbucket`, `codecommit`, `github_enterprise_server`, or `s3_bucket`. Block is documented below. Note: for repositories that leverage CodeStar connections (ex. `bitbucket`, `github_enterprise_server`) the connection must be in `Available` status prior to creating this resource.
  ///
  /// The following arguments are optional:
  final pulumi.Input<RepositoryAssociationRepository>? repository;
  final pulumi.Input<List<RepositoryAssociationS3RepositoryDetail>>?
  s3RepositoryDetails;

  /// The state of the repository association.
  final pulumi.Input<String>? state;

  /// A description of why the repository association is in the current state.
  final pulumi.Input<String>? stateReason;
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [RepositoryAssociationState].
  /// [arn] The Amazon Resource Name (ARN) identifying the repository association.
  /// [associationId] The ID of the repository association.
  /// [connectionArn] The Amazon Resource Name (ARN) of an AWS CodeStar Connections connection.
  /// [kmsKeyDetails] An object describing the KMS key to asssociate. Block is documented below.
  /// [name] The name of the repository.
  /// [owner] The owner of the repository.
  /// [providerType] The provider type of the repository association.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [repository] An object describing the repository to associate. Valid values: `bitbucket`, `codecommit`, `github_enterprise_server`, or `s3_bucket`. Block is documented below. Note: for repositories that leverage CodeStar connections (ex. `bitbucket`, `github_enterprise_server`) the connection must be in `Available` status prior to creating this resource.
  /// [s3RepositoryDetails] Optional.
  /// [state] The state of the repository association.
  /// [stateReason] A description of why the repository association is in the current state.
  /// [tags] Optional.
  /// [tagsAll] Optional.
  RepositoryAssociationState({
    this.arn,
    this.associationId,
    this.connectionArn,
    this.kmsKeyDetails,
    this.name,
    this.owner,
    this.providerType,
    this.region,
    this.repository,
    this.s3RepositoryDetails,
    this.state,
    this.stateReason,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'associationId': ?associationId,
      'connectionArn': ?connectionArn,
      'kmsKeyDetails':
          ?pulumi.Input.mapOptionalInputValue<
            RepositoryAssociationKmsKeyDetails,
            Map<String, dynamic>
          >(kmsKeyDetails, (value) => value.toMap()),
      'name': ?name,
      'owner': ?owner,
      'providerType': ?providerType,
      'region': ?region,
      'repository':
          ?pulumi.Input.mapOptionalInputValue<
            RepositoryAssociationRepository,
            Map<String, dynamic>
          >(repository, (value) => value.toMap()),
      's3RepositoryDetails':
          ?pulumi.Input.mapOptionalInputValue<
            List<RepositoryAssociationS3RepositoryDetail>,
            List<Map<String, dynamic>>
          >(
            s3RepositoryDetails,
            (value) =>
                pulumi.Input.encodeList<
                  RepositoryAssociationS3RepositoryDetail,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'state': ?state,
      'stateReason': ?stateReason,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory RepositoryAssociationState.fromMap(Map<String, dynamic> map) {
    return RepositoryAssociationState(
      arn: (() {
        final guardedValue = map['arn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      associationId: (() {
        final guardedValue = map['associationId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      connectionArn: (() {
        final guardedValue = map['connectionArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      kmsKeyDetails: (() {
        final guardedValue = map['kmsKeyDetails'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RepositoryAssociationKmsKeyDetails.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      owner: (() {
        final guardedValue = map['owner'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      providerType: (() {
        final guardedValue = map['providerType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      repository: (() {
        final guardedValue = map['repository'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RepositoryAssociationRepository.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      s3RepositoryDetails: (() {
        final guardedValue = map['s3RepositoryDetails'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<RepositoryAssociationS3RepositoryDetail>(
            guardedValue,
            (value) => RepositoryAssociationS3RepositoryDetail.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      state: (() {
        final guardedValue = map['state'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      stateReason: (() {
        final guardedValue = map['stateReason'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      tagsAll: (() {
        final guardedValue = map['tagsAll'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
