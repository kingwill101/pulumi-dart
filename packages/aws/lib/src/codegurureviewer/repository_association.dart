import 'package:pulumi/pulumi.dart' as pulumi;
import 'repository_association_args.dart';
import 'repository_association_kms_key_details.dart';
import 'repository_association_repository.dart';
import 'repository_association_s3_repository_detail.dart';

/// Resource for managing an AWS CodeGuru Reviewer Repository Association.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.kms.Key("example", {});
/// const exampleRepository = new aws.codecommit.Repository("example", {repositoryName: "example-repo"});
/// const exampleRepositoryAssociation = new aws.codegurureviewer.RepositoryAssociation("example", {
///     repository: {
///         codecommit: {
///             name: exampleRepository.repositoryName,
///         },
///     },
///     kmsKeyDetails: {
///         encryptionOption: "CUSTOMER_MANAGED_CMK",
///         kmsKeyId: example.keyId,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.kms.Key("example")
/// example_repository = aws.codecommit.Repository("example", repository_name="example-repo")
/// example_repository_association = aws.codegurureviewer.RepositoryAssociation("example",
///     repository={
///         "codecommit": {
///             "name": example_repository.repository_name,
///         },
///     },
///     kms_key_details={
///         "encryption_option": "CUSTOMER_MANAGED_CMK",
///         "kms_key_id": example.key_id,
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Kms.Key("example");
///
///     var exampleRepository = new Aws.CodeCommit.Repository("example", new()
///     {
///         RepositoryName = "example-repo",
///     });
///
///     var exampleRepositoryAssociation = new Aws.CodeGuruReviewer.RepositoryAssociation("example", new()
///     {
///         Repository = new Aws.CodeGuruReviewer.Inputs.RepositoryAssociationRepositoryArgs
///         {
///             Codecommit = new Aws.CodeGuruReviewer.Inputs.RepositoryAssociationRepositoryCodecommitArgs
///             {
///                 Name = exampleRepository.RepositoryName,
///             },
///         },
///         KmsKeyDetails = new Aws.CodeGuruReviewer.Inputs.RepositoryAssociationKmsKeyDetailsArgs
///         {
///             EncryptionOption = "CUSTOMER_MANAGED_CMK",
///             KmsKeyId = example.KeyId,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/codecommit"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/codegurureviewer"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := kms.NewKey(ctx, "example", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleRepository, err := codecommit.NewRepository(ctx, "example", &codecommit.RepositoryArgs{
/// 			RepositoryName: pulumi.String("example-repo"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = codegurureviewer.NewRepositoryAssociation(ctx, "example", &codegurureviewer.RepositoryAssociationArgs{
/// 			Repository: &codegurureviewer.RepositoryAssociationRepositoryArgs{
/// 				Codecommit: &codegurureviewer.RepositoryAssociationRepositoryCodecommitArgs{
/// 					Name: exampleRepository.RepositoryName,
/// 				},
/// 			},
/// 			KmsKeyDetails: &codegurureviewer.RepositoryAssociationKmsKeyDetailsArgs{
/// 				EncryptionOption: pulumi.String("CUSTOMER_MANAGED_CMK"),
/// 				KmsKeyId:         example.KeyId,
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.kms.Key;
/// import com.pulumi.aws.codecommit.Repository;
/// import com.pulumi.aws.codecommit.RepositoryArgs;
/// import com.pulumi.aws.codegurureviewer.RepositoryAssociation;
/// import com.pulumi.aws.codegurureviewer.RepositoryAssociationArgs;
/// import com.pulumi.aws.codegurureviewer.inputs.RepositoryAssociationRepositoryArgs;
/// import com.pulumi.aws.codegurureviewer.inputs.RepositoryAssociationRepositoryCodecommitArgs;
/// import com.pulumi.aws.codegurureviewer.inputs.RepositoryAssociationKmsKeyDetailsArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new Key("example");
///
///         var exampleRepository = new Repository("exampleRepository", RepositoryArgs.builder()
///             .repositoryName("example-repo")
///             .build());
///
///         var exampleRepositoryAssociation = new RepositoryAssociation("exampleRepositoryAssociation", RepositoryAssociationArgs.builder()
///             .repository(RepositoryAssociationRepositoryArgs.builder()
///                 .codecommit(RepositoryAssociationRepositoryCodecommitArgs.builder()
///                     .name(exampleRepository.repositoryName())
///                     .build())
///                 .build())
///             .kmsKeyDetails(RepositoryAssociationKmsKeyDetailsArgs.builder()
///                 .encryptionOption("CUSTOMER_MANAGED_CMK")
///                 .kmsKeyId(example.keyId())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:kms:Key
///   exampleRepository:
///     type: aws:codecommit:Repository
///     name: example
///     properties:
///       repositoryName: example-repo
///   exampleRepositoryAssociation:
///     type: aws:codegurureviewer:RepositoryAssociation
///     name: example
///     properties:
///       repository:
///         codecommit:
///           name: ${exampleRepository.repositoryName}
///       kmsKeyDetails:
///         encryptionOption: CUSTOMER_MANAGED_CMK
///         kmsKeyId: ${example.keyId}
/// ```
class RepositoryAssociation extends pulumi.CustomResource {
  /// The Amazon Resource Name (ARN) identifying the repository association.
  late final pulumi.Output<String> arn;
  /// The ID of the repository association.
  late final pulumi.Output<String> associationId;
  /// The Amazon Resource Name (ARN) of an AWS CodeStar Connections connection.
  late final pulumi.Output<String> connectionArn;
  /// An object describing the KMS key to asssociate. Block is documented below.
  late final pulumi.Output<RepositoryAssociationKmsKeyDetails?> kmsKeyDetails;
  /// The name of the repository.
  late final pulumi.Output<String> name;
  /// The owner of the repository.
  late final pulumi.Output<String> owner;
  /// The provider type of the repository association.
  late final pulumi.Output<String> providerType;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// An object describing the repository to associate. Valid values: `bitbucket`, `codecommit`, `github_enterprise_server`, or `s3_bucket`. Block is documented below. Note: for repositories that leverage CodeStar connections (ex. `bitbucket`, `github_enterprise_server`) the connection must be in `Available` status prior to creating this resource.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<RepositoryAssociationRepository> repository;
  late final pulumi.Output<List<RepositoryAssociationS3RepositoryDetail>> s3RepositoryDetails;
  /// The state of the repository association.
  late final pulumi.Output<String> state;
  /// A description of why the repository association is in the current state.
  late final pulumi.Output<String> stateReason;
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [RepositoryAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RepositoryAssociation]. {@macro pulumi_codegurureviewer_repository_association_repository_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RepositoryAssociation(
    String name, {
    RepositoryAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:codegurureviewer/repositoryAssociation:RepositoryAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.associationId = registerOutput<String>('associationId');
    this.connectionArn = registerOutput<String>('connectionArn');
    this.kmsKeyDetails = registerOutput<RepositoryAssociationKmsKeyDetails?>('kmsKeyDetails');
    this.name = registerOutput<String>('name');
    this.owner = registerOutput<String>('owner');
    this.providerType = registerOutput<String>('providerType');
    this.region = registerOutput<String>('region');
    this.repository = registerOutput<RepositoryAssociationRepository>('repository');
    this.s3RepositoryDetails = registerOutput<List<RepositoryAssociationS3RepositoryDetail>>('s3RepositoryDetails');
    this.state = registerOutput<String>('state');
    this.stateReason = registerOutput<String>('stateReason');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
