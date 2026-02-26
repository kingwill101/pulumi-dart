import 'package:pulumi/pulumi.dart';
import 'repository_permissions_policy_args.dart';

/// Provides a CodeArtifact Repostory Permissions Policy Resource.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const exampleKey = new aws.kms.Key("example", {description: "domain key"});
/// const exampleDomain = new aws.codeartifact.Domain("example", {
/// domain: "example",
/// encryptionKey: exampleKey.arn,
/// });
/// const exampleRepository = new aws.codeartifact.Repository("example", {
/// repository: "example",
/// domain: exampleDomain.domain,
/// });
/// const example = aws.iam.getPolicyDocumentOutput({
/// statements: [{
/// effect: "Allow",
/// principals: [{
/// type: "*",
/// identifiers: ["*"],
/// }],
/// actions: ["codeartifact:ReadFromRepository"],
/// resources: [exampleRepository.arn],
/// }],
/// });
/// const exampleRepositoryPermissionsPolicy = new aws.codeartifact.RepositoryPermissionsPolicy("example", {
/// repository: exampleRepository.repository,
/// domain: exampleDomain.domain,
/// policyDocument: example.apply(example => example.json),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_key = aws.kms.Key("example", description="domain key")
/// example_domain = aws.codeartifact.Domain("example",
/// domain="example",
/// encryption_key=example_key.arn)
/// example_repository = aws.codeartifact.Repository("example",
/// repository="example",
/// domain=example_domain.domain)
/// example = aws.iam.get_policy_document_output(statements=[{
/// "effect": "Allow",
/// "principals": [{
/// "type": "*",
/// "identifiers": ["*"],
/// }],
/// "actions": ["codeartifact:ReadFromRepository"],
/// "resources": [example_repository.arn],
/// }])
/// example_repository_permissions_policy = aws.codeartifact.RepositoryPermissionsPolicy("example",
/// repository=example_repository.repository,
/// domain=example_domain.domain,
/// policy_document=example.json)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var exampleKey = new Aws.Kms.Key("example", new()
/// {
/// Description = "domain key",
/// });
///
/// var exampleDomain = new Aws.CodeArtifact.Domain("example", new()
/// {
/// DomainName = "example",
/// EncryptionKey = exampleKey.Arn,
/// });
///
/// var exampleRepository = new Aws.CodeArtifact.Repository("example", new()
/// {
/// RepositoryName = "example",
/// Domain = exampleDomain.DomainName,
/// });
///
/// var example = Aws.Iam.GetPolicyDocument.Invoke(new()
/// {
/// Statements = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
/// {
/// Effect = "Allow",
/// Principals = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
/// {
/// Type = "*",
/// Identifiers = new[]
/// {
/// "*",
/// },
/// },
/// },
/// Actions = new[]
/// {
/// "codeartifact:ReadFromRepository",
/// },
/// Resources = new[]
/// {
/// exampleRepository.Arn,
/// },
/// },
/// },
/// });
///
/// var exampleRepositoryPermissionsPolicy = new Aws.CodeArtifact.RepositoryPermissionsPolicy("example", new()
/// {
/// Repository = exampleRepository.RepositoryName,
/// Domain = exampleDomain.DomainName,
/// PolicyDocument = example.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/codeartifact"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kms"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// exampleKey, err := kms.NewKey(ctx, "example", &kms.KeyArgs{
/// Description: pulumi.String("domain key"),
/// })
/// if err != nil {
/// return err
/// }
/// exampleDomain, err := codeartifact.NewDomain(ctx, "example", &codeartifact.DomainArgs{
/// Domain:        pulumi.String("example"),
/// EncryptionKey: exampleKey.Arn,
/// })
/// if err != nil {
/// return err
/// }
/// exampleRepository, err := codeartifact.NewRepository(ctx, "example", &codeartifact.RepositoryArgs{
/// Repository: pulumi.String("example"),
/// Domain:     exampleDomain.Domain,
/// })
/// if err != nil {
/// return err
/// }
/// example := iam.GetPolicyDocumentOutput(ctx, iam.GetPolicyDocumentOutputArgs{
/// Statements: iam.GetPolicyDocumentStatementArray{
/// &iam.GetPolicyDocumentStatementArgs{
/// Effect: pulumi.String("Allow"),
/// Principals: iam.GetPolicyDocumentStatementPrincipalArray{
/// &iam.GetPolicyDocumentStatementPrincipalArgs{
/// Type: pulumi.String("*"),
/// Identifiers: pulumi.StringArray{
/// pulumi.String("*"),
/// },
/// },
/// },
/// Actions: pulumi.StringArray{
/// pulumi.String("codeartifact:ReadFromRepository"),
/// },
/// Resources: pulumi.StringArray{
/// exampleRepository.Arn,
/// },
/// },
/// },
/// }, nil)
/// _, err = codeartifact.NewRepositoryPermissionsPolicy(ctx, "example", &codeartifact.RepositoryPermissionsPolicyArgs{
/// Repository: exampleRepository.Repository,
/// Domain:     exampleDomain.Domain,
/// PolicyDocument: pulumi.String(example.ApplyT(func(example iam.GetPolicyDocumentResult) (*string, error) {
/// return &example.Json, nil
/// }).(pulumi.StringPtrOutput)),
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
/// import com.pulumi.aws.kms.KeyArgs;
/// import com.pulumi.aws.codeartifact.Domain;
/// import com.pulumi.aws.codeartifact.DomainArgs;
/// import com.pulumi.aws.codeartifact.Repository;
/// import com.pulumi.aws.codeartifact.RepositoryArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.codeartifact.RepositoryPermissionsPolicy;
/// import com.pulumi.aws.codeartifact.RepositoryPermissionsPolicyArgs;
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
/// var exampleKey = new Key("exampleKey", KeyArgs.builder()
/// .description("domain key")
/// .build());
///
/// var exampleDomain = new Domain("exampleDomain", DomainArgs.builder()
/// .domain("example")
/// .encryptionKey(exampleKey.arn())
/// .build());
///
/// var exampleRepository = new Repository("exampleRepository", RepositoryArgs.builder()
/// .repository("example")
/// .domain(exampleDomain.domain())
/// .build());
///
/// final var example = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
/// .statements(GetPolicyDocumentStatementArgs.builder()
/// .effect("Allow")
/// .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
/// .type("*")
/// .identifiers("*")
/// .build())
/// .actions("codeartifact:ReadFromRepository")
/// .resources(exampleRepository.arn())
/// .build())
/// .build());
///
/// var exampleRepositoryPermissionsPolicy = new RepositoryPermissionsPolicy("exampleRepositoryPermissionsPolicy", RepositoryPermissionsPolicyArgs.builder()
/// .repository(exampleRepository.repository())
/// .domain(exampleDomain.domain())
/// .policyDocument(example.applyValue(_example -> _example.json()))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// exampleKey:
/// type: aws:kms:Key
/// name: example
/// properties:
/// description: domain key
/// exampleDomain:
/// type: aws:codeartifact:Domain
/// name: example
/// properties:
/// domain: example
/// encryptionKey: ${exampleKey.arn}
/// exampleRepository:
/// type: aws:codeartifact:Repository
/// name: example
/// properties:
/// repository: example
/// domain: ${exampleDomain.domain}
/// exampleRepositoryPermissionsPolicy:
/// type: aws:codeartifact:RepositoryPermissionsPolicy
/// name: example
/// properties:
/// repository: ${exampleRepository.repository}
/// domain: ${exampleDomain.domain}
/// policyDocument: ${example.json}
/// variables:
/// example:
/// fn::invoke:
/// function: aws:iam:getPolicyDocument
/// arguments:
/// statements:
/// - effect: Allow
/// principals:
/// - type: '*'
/// identifiers:
/// - '*'
/// actions:
/// - codeartifact:ReadFromRepository
/// resources:
/// - ${exampleRepository.arn}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span> (String) Amazon Resource Name (ARN) of the CodeArtifact repository.
///
///
/// Using `pulumi import`, import CodeArtifact Repository Permissions Policies using the CodeArtifact Repository ARN. For example:
///
/// ```sh
/// $ pulumi import aws:codeartifact/repositoryPermissionsPolicy:RepositoryPermissionsPolicy example arn:aws:codeartifact:us-west-2:012345678912:repository/tf-acc-test-6968272603913957763/tf-acc-test-6968272603913957763
/// ```
class RepositoryPermissionsPolicy extends CustomResource {
  /// The name of the domain on which to set the resource policy.
  late final Output<String> domain;

  /// The account number of the AWS account that owns the domain.
  late final Output<String> domainOwner;

  /// A JSON policy string to be set as the access control resource policy on the provided domain.
  late final Output<String> policyDocument;

  /// The current revision of the resource policy to be set. This revision is used for optimistic locking, which prevents others from overwriting your changes to the domain's resource policy.
  late final Output<String> policyRevision;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The name of the repository to set the resource policy on.
  late final Output<String> repository;

  /// The ARN of the resource associated with the resource policy.
  late final Output<String> resourceArn;

  RepositoryPermissionsPolicy(
    String name, {
    RepositoryPermissionsPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:codeartifact/repositoryPermissionsPolicy:RepositoryPermissionsPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.domain = Output.createUnknown<String>();
    this.domainOwner = Output.createUnknown<String>();
    this.policyDocument = Output.createUnknown<String>();
    this.policyRevision = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.repository = Output.createUnknown<String>();
    this.resourceArn = Output.createUnknown<String>();
  }
}
