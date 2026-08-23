import 'package:pulumi/pulumi.dart' as pulumi;
import 'repository_association_args.dart';
import 'repository_association_kms_key_details.dart';
import 'repository_association_repository.dart';
import 'repository_association_state.dart';

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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_kms_key" "example" {
/// }
/// resource "aws_codecommit_repository" "example" {
///   repository_name = "example-repo"
/// }
/// resource "aws_codegurureviewer_repositoryassociation" "example" {
///   repository = {
///     codecommit = {
///       name = aws_codecommit_repository.example.repository_name
///     }
///   }
///   kms_key_details = {
///     encryption_option = "CUSTOMER_MANAGED_CMK"
///     kms_key_id        = aws_kms_key.example.key_id
///   }
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
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
  /// An object describing the repository to associate. Valid values: `bitbucket`, `codecommit`, `githubEnterpriseServer`, or `s3Bucket`. Block is documented below. Note: for repositories that leverage CodeStar connections (ex. `bitbucket`, `githubEnterpriseServer`) the connection must be in `Available` status prior to creating this resource.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<RepositoryAssociationRepository> repository;
  late final pulumi.Output<List<Map<String, dynamic>>> s3RepositoryDetails;
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
    arn = registerOutput<String>('arn');
    associationId = registerOutput<String>('associationId');
    connectionArn = registerOutput<String>('connectionArn');
    kmsKeyDetails = registerOutput<RepositoryAssociationKmsKeyDetails?>('kmsKeyDetails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RepositoryAssociationKmsKeyDetails.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    owner = registerOutput<String>('owner');
    providerType = registerOutput<String>('providerType');
    region = registerOutput<String>('region');
    repository = registerOutput<RepositoryAssociationRepository>('repository', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RepositoryAssociationRepository.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    s3RepositoryDetails = registerOutput<List<Map<String, dynamic>>>('s3RepositoryDetails');
    state = registerOutput<String>('state');
    stateReason = registerOutput<String>('stateReason');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [RepositoryAssociation] resource's state with the given [name] and [id].
  static RepositoryAssociation get(
    String name,
    pulumi.Input<String> id, {
    RepositoryAssociationState? state,
  }) {
    return RepositoryAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RepositoryAssociation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:codegurureviewer/repositoryAssociation:RepositoryAssociation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    associationId = registerOutput<String>('associationId');
    connectionArn = registerOutput<String>('connectionArn');
    kmsKeyDetails = registerOutput<RepositoryAssociationKmsKeyDetails?>('kmsKeyDetails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RepositoryAssociationKmsKeyDetails.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    owner = registerOutput<String>('owner');
    providerType = registerOutput<String>('providerType');
    region = registerOutput<String>('region');
    repository = registerOutput<RepositoryAssociationRepository>('repository', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RepositoryAssociationRepository.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    s3RepositoryDetails = registerOutput<List<Map<String, dynamic>>>('s3RepositoryDetails');
    this.state = registerOutput<String>('state');
    stateReason = registerOutput<String>('stateReason');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
