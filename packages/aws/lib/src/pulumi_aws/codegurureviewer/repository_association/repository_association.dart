import 'package:pulumi/pulumi.dart';
import '../repository_association_kms_key_details/repository_association_kms_key_details.dart';
import '../repository_association_repository/repository_association_repository.dart';
import '../repository_association_s3_repository_detail/repository_association_s3_repository_detail.dart';
import 'repository_association_args.dart';

/// Resource for managing an AWS CodeGuru Reviewer Repository Association.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.kms.Key("example", {});
/// const exampleRepository = new aws.codecommit.Repository("example", {repositoryName: "example-repo"});
/// const exampleRepositoryAssociation = new aws.codegurureviewer.RepositoryAssociation("example", {
/// repository: {
/// codecommit: {
/// name: exampleRepository.repositoryName,
/// },
/// },
/// kmsKeyDetails: {
/// encryptionOption: "CUSTOMER_MANAGED_CMK",
/// kmsKeyId: example.keyId,
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.kms.Key("example")
/// example_repository = aws.codecommit.Repository("example", repository_name="example-repo")
/// example_repository_association = aws.codegurureviewer.RepositoryAssociation("example",
/// repository={
/// "codecommit": {
/// "name": example_repository.repository_name,
/// },
/// },
/// kms_key_details={
/// "encryption_option": "CUSTOMER_MANAGED_CMK",
/// "kms_key_id": example.key_id,
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Kms.Key("example");
///
/// var exampleRepository = new Aws.CodeCommit.Repository("example", new()
/// {
/// RepositoryName = "example-repo",
/// });
///
/// var exampleRepositoryAssociation = new Aws.CodeGuruReviewer.RepositoryAssociation("example", new()
/// {
/// Repository = new Aws.CodeGuruReviewer.Inputs.RepositoryAssociationRepositoryArgs
/// {
/// Codecommit = new Aws.CodeGuruReviewer.Inputs.RepositoryAssociationRepositoryCodecommitArgs
/// {
/// Name = exampleRepository.RepositoryName,
/// },
/// },
/// KmsKeyDetails = new Aws.CodeGuruReviewer.Inputs.RepositoryAssociationKmsKeyDetailsArgs
/// {
/// EncryptionOption = "CUSTOMER_MANAGED_CMK",
/// KmsKeyId = example.KeyId,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/codecommit"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/codegurureviewer"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kms"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := kms.NewKey(ctx, "example", nil)
/// if err != nil {
/// return err
/// }
/// exampleRepository, err := codecommit.NewRepository(ctx, "example", &codecommit.RepositoryArgs{
/// RepositoryName: pulumi.String("example-repo"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = codegurureviewer.NewRepositoryAssociation(ctx, "example", &codegurureviewer.RepositoryAssociationArgs{
/// Repository: &codegurureviewer.RepositoryAssociationRepositoryArgs{
/// Codecommit: &codegurureviewer.RepositoryAssociationRepositoryCodecommitArgs{
/// Name: exampleRepository.RepositoryName,
/// },
/// },
/// KmsKeyDetails: &codegurureviewer.RepositoryAssociationKmsKeyDetailsArgs{
/// EncryptionOption: pulumi.String("CUSTOMER_MANAGED_CMK"),
/// KmsKeyId:         example.KeyId,
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new Key("example");
///
/// var exampleRepository = new Repository("exampleRepository", RepositoryArgs.builder()
/// .repositoryName("example-repo")
/// .build());
///
/// var exampleRepositoryAssociation = new RepositoryAssociation("exampleRepositoryAssociation", RepositoryAssociationArgs.builder()
/// .repository(RepositoryAssociationRepositoryArgs.builder()
/// .codecommit(RepositoryAssociationRepositoryCodecommitArgs.builder()
/// .name(exampleRepository.repositoryName())
/// .build())
/// .build())
/// .kmsKeyDetails(RepositoryAssociationKmsKeyDetailsArgs.builder()
/// .encryptionOption("CUSTOMER_MANAGED_CMK")
/// .kmsKeyId(example.keyId())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:kms:Key
/// exampleRepository:
/// type: aws:codecommit:Repository
/// name: example
/// properties:
/// repositoryName: example-repo
/// exampleRepositoryAssociation:
/// type: aws:codegurureviewer:RepositoryAssociation
/// name: example
/// properties:
/// repository:
/// codecommit:
/// name: ${exampleRepository.repositoryName}
/// kmsKeyDetails:
/// encryptionOption: CUSTOMER_MANAGED_CMK
/// kmsKeyId: ${example.keyId}
/// ```
/// <!--End PulumiCodeChooser -->
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

  /// An object describing the repository to associate. Valid values: <span pulumi-lang-nodejs="`bitbucket`" pulumi-lang-dotnet="`Bitbucket`" pulumi-lang-go="`bitbucket`" pulumi-lang-python="`bitbucket`" pulumi-lang-yaml="`bitbucket`" pulumi-lang-java="`bitbucket`">`bitbucket`</span>, <span pulumi-lang-nodejs="`codecommit`" pulumi-lang-dotnet="`Codecommit`" pulumi-lang-go="`codecommit`" pulumi-lang-python="`codecommit`" pulumi-lang-yaml="`codecommit`" pulumi-lang-java="`codecommit`">`codecommit`</span>, <span pulumi-lang-nodejs="`githubEnterpriseServer`" pulumi-lang-dotnet="`GithubEnterpriseServer`" pulumi-lang-go="`githubEnterpriseServer`" pulumi-lang-python="`github_enterprise_server`" pulumi-lang-yaml="`githubEnterpriseServer`" pulumi-lang-java="`githubEnterpriseServer`">`github_enterprise_server`</span>, or <span pulumi-lang-nodejs="`s3Bucket`" pulumi-lang-dotnet="`S3Bucket`" pulumi-lang-go="`s3Bucket`" pulumi-lang-python="`s3_bucket`" pulumi-lang-yaml="`s3Bucket`" pulumi-lang-java="`s3Bucket`">`s3_bucket`</span>. Block is documented below. Note: for repositories that leverage CodeStar connections (ex. <span pulumi-lang-nodejs="`bitbucket`" pulumi-lang-dotnet="`Bitbucket`" pulumi-lang-go="`bitbucket`" pulumi-lang-python="`bitbucket`" pulumi-lang-yaml="`bitbucket`" pulumi-lang-java="`bitbucket`">`bitbucket`</span>, <span pulumi-lang-nodejs="`githubEnterpriseServer`" pulumi-lang-dotnet="`GithubEnterpriseServer`" pulumi-lang-go="`githubEnterpriseServer`" pulumi-lang-python="`github_enterprise_server`" pulumi-lang-yaml="`githubEnterpriseServer`" pulumi-lang-java="`githubEnterpriseServer`">`github_enterprise_server`</span>) the connection must be in `Available` status prior to creating this resource.
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
    this.arn = Output.createUnknown<String>();
    this.associationId = Output.createUnknown<String>();
    this.connectionArn = Output.createUnknown<String>();
    this.kmsKeyDetails =
        Output.createUnknown<RepositoryAssociationKmsKeyDetails?>();
    this.name = Output.createUnknown<String>();
    this.owner = Output.createUnknown<String>();
    this.providerType = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.repository = Output.createUnknown<RepositoryAssociationRepository>();
    this.s3RepositoryDetails =
        Output.createUnknown<List<RepositoryAssociationS3RepositoryDetail>>();
    this.state = Output.createUnknown<String>();
    this.stateReason = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
  }
}
