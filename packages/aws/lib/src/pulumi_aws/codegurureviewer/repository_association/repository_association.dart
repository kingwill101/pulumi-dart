import 'package:pulumi/pulumi.dart';
import '../repository_association_kms_key_details/repository_association_kms_key_details.dart';
import '../repository_association_repository/repository_association_repository.dart';
import '../repository_association_s3_repository_detail/repository_association_s3_repository_detail.dart';
import 'repository_association_args.dart';

/// Resource for managing an AWS CodeGuru Reviewer Repository Association.
class RepositoryAssociation extends CustomResource {
  /// The Amazon Resource Name (ARN) identifying the repository association.
  late final Output<String> arn;

  /// The ID of the repository association.
  late final Output<String> associationId;

  /// The Amazon Resource Name (ARN) of an AWS CodeStar Connections connection.
  late final Output<String> connectionArn;

  /// An object describing the KMS key to asssociate. Block is documented below.
  late final Output<RepositoryAssociationKmsKeyDetails?> kmsKeyDetails;

  /// The name of the repository.
  late final Output<String> name;

  /// The owner of the repository.
  late final Output<String> owner;

  /// The provider type of the repository association.
  late final Output<String> providerType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// An object describing the repository to associate. Valid values: `bitbucket`, `codecommit`, `github_enterprise_server`, or `s3_bucket`. Block is documented below. Note: for repositories that leverage CodeStar connections (ex. `bitbucket`, `github_enterprise_server`) the connection must be in `Available` status prior to creating this resource.
  ///
  /// The following arguments are optional:
  late final Output<RepositoryAssociationRepository> repository;
  late final Output<List<RepositoryAssociationS3RepositoryDetail>>
      s3RepositoryDetails;

  /// The state of the repository association.
  late final Output<String> state;

  /// A description of why the repository association is in the current state.
  late final Output<String> stateReason;
  late final Output<Map<String, String>?> tags;
  late final Output<Map<String, String>> tagsAll;

  RepositoryAssociation(
    String name, {
    RepositoryAssociationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:codegurureviewer/repositoryAssociation:RepositoryAssociation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.associationId = registerOutput<String>('associationId');
    this.connectionArn = registerOutput<String>('connectionArn');
    this.kmsKeyDetails =
        registerOutput<RepositoryAssociationKmsKeyDetails?>('kmsKeyDetails');
    this.name = registerOutput<String>('name');
    this.owner = registerOutput<String>('owner');
    this.providerType = registerOutput<String>('providerType');
    this.region = registerOutput<String>('region');
    this.repository =
        registerOutput<RepositoryAssociationRepository>('repository');
    this.s3RepositoryDetails =
        registerOutput<List<RepositoryAssociationS3RepositoryDetail>>(
            's3RepositoryDetails');
    this.state = registerOutput<String>('state');
    this.stateReason = registerOutput<String>('stateReason');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
