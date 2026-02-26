import 'package:pulumi/pulumi.dart';
import '../container_service_private_registry_access/container_service_private_registry_access.dart';
import '../container_service_public_domain_names/container_service_public_domain_names.dart';
import 'container_service_args.dart';

/// Manages a Lightsail container service. Use this resource to create and manage a scalable compute and networking platform for deploying, running, and managing containerized applications in Lightsail.
///
/// > **Note:** For more information about the AWS Regions in which you can create Amazon Lightsail container services, see ["Regions and Availability Zones in Amazon Lightsail"](https://lightsail.aws.amazon.com/ls/docs/overview/article/understanding-regions-and-availability-zones-in-amazon-lightsail).
///
/// > **NOTE:** You must create and validate an SSL/TLS certificate before you can use <span pulumi-lang-nodejs="`publicDomainNames`" pulumi-lang-dotnet="`PublicDomainNames`" pulumi-lang-go="`publicDomainNames`" pulumi-lang-python="`public_domain_names`" pulumi-lang-yaml="`publicDomainNames`" pulumi-lang-java="`publicDomainNames`">`public_domain_names`</span> with your container service. For more information, see [Enabling and managing custom domains for your Amazon Lightsail container services](https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-creating-container-services-certificates).
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.lightsail.ContainerService("example", {
/// name: "container-service-1",
/// power: "nano",
/// scale: 1,
/// isDisabled: false,
/// tags: {
/// foo1: "bar1",
/// foo2: "",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lightsail.ContainerService("example",
/// name="container-service-1",
/// power="nano",
/// scale=1,
/// is_disabled=False,
/// tags={
/// "foo1": "bar1",
/// "foo2": "",
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
/// var example = new Aws.LightSail.ContainerService("example", new()
/// {
/// Name = "container-service-1",
/// Power = "nano",
/// Scale = 1,
/// IsDisabled = false,
/// Tags =
/// {
/// { "foo1", "bar1" },
/// { "foo2", "" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lightsail"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := lightsail.NewContainerService(ctx, "example", &lightsail.ContainerServiceArgs{
/// Name:       pulumi.String("container-service-1"),
/// Power:      pulumi.String("nano"),
/// Scale:      pulumi.Int(1),
/// IsDisabled: pulumi.Bool(false),
/// Tags: pulumi.StringMap{
/// "foo1": pulumi.String("bar1"),
/// "foo2": pulumi.String(""),
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
/// import com.pulumi.aws.lightsail.ContainerService;
/// import com.pulumi.aws.lightsail.ContainerServiceArgs;
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
/// var example = new ContainerService("example", ContainerServiceArgs.builder()
/// .name("container-service-1")
/// .power("nano")
/// .scale(1)
/// .isDisabled(false)
/// .tags(Map.ofEntries(
/// Map.entry("foo1", "bar1"),
/// Map.entry("foo2", "")
/// ))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:lightsail:ContainerService
/// properties:
/// name: container-service-1
/// power: nano
/// scale: 1
/// isDisabled: false
/// tags:
/// foo1: bar1
/// foo2: ""
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Public Domain Names
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.lightsail.ContainerService("example", {publicDomainNames: {
/// certificates: [{
/// certificateName: "example-certificate",
/// domainNames: ["www.example.com"],
/// }],
/// }});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lightsail.ContainerService("example", public_domain_names={
/// "certificates": [{
/// "certificate_name": "example-certificate",
/// "domain_names": ["www.example.com"],
/// }],
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
/// var example = new Aws.LightSail.ContainerService("example", new()
/// {
/// PublicDomainNames = new Aws.LightSail.Inputs.ContainerServicePublicDomainNamesArgs
/// {
/// Certificates = new[]
/// {
/// new Aws.LightSail.Inputs.ContainerServicePublicDomainNamesCertificateArgs
/// {
/// CertificateName = "example-certificate",
/// DomainNames = new[]
/// {
/// "www.example.com",
/// },
/// },
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lightsail"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := lightsail.NewContainerService(ctx, "example", &lightsail.ContainerServiceArgs{
/// PublicDomainNames: &lightsail.ContainerServicePublicDomainNamesArgs{
/// Certificates: lightsail.ContainerServicePublicDomainNamesCertificateArray{
/// &lightsail.ContainerServicePublicDomainNamesCertificateArgs{
/// CertificateName: pulumi.String("example-certificate"),
/// DomainNames: pulumi.StringArray{
/// pulumi.String("www.example.com"),
/// },
/// },
/// },
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
/// import com.pulumi.aws.lightsail.ContainerService;
/// import com.pulumi.aws.lightsail.ContainerServiceArgs;
/// import com.pulumi.aws.lightsail.inputs.ContainerServicePublicDomainNamesArgs;
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
/// var example = new ContainerService("example", ContainerServiceArgs.builder()
/// .publicDomainNames(ContainerServicePublicDomainNamesArgs.builder()
/// .certificates(ContainerServicePublicDomainNamesCertificateArgs.builder()
/// .certificateName("example-certificate")
/// .domainNames("www.example.com")
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:lightsail:ContainerService
/// properties:
/// publicDomainNames:
/// certificates:
/// - certificateName: example-certificate
/// domainNames:
/// - www.example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Private Registry Access
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const exampleContainerService = new aws.lightsail.ContainerService("example", {privateRegistryAccess: {
/// ecrImagePullerRole: {
/// isActive: true,
/// },
/// }});
/// const example = exampleContainerService.privateRegistryAccess.apply(privateRegistryAccess => aws.iam.getPolicyDocumentOutput({
/// statements: [{
/// effect: "Allow",
/// principals: [{
/// type: "AWS",
/// identifiers: [privateRegistryAccess.ecrImagePullerRole?.principalArn],
/// }],
/// actions: [
/// "ecr:BatchGetImage",
/// "ecr:GetDownloadUrlForLayer",
/// ],
/// }],
/// }));
/// const exampleRepositoryPolicy = new aws.ecr.RepositoryPolicy("example", {
/// repository: exampleAwsEcrRepository.name,
/// policy: example.apply(example => example.json),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_container_service = aws.lightsail.ContainerService("example", private_registry_access={
/// "ecr_image_puller_role": {
/// "is_active": True,
/// },
/// })
/// example = example_container_service.private_registry_access.apply(lambda private_registry_access: aws.iam.get_policy_document_output(statements=[{
/// "effect": "Allow",
/// "principals": [{
/// "type": "AWS",
/// "identifiers": [private_registry_access.ecr_image_puller_role.principal_arn],
/// }],
/// "actions": [
/// "ecr:BatchGetImage",
/// "ecr:GetDownloadUrlForLayer",
/// ],
/// }]))
/// example_repository_policy = aws.ecr.RepositoryPolicy("example",
/// repository=example_aws_ecr_repository["name"],
/// policy=example.json)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var exampleContainerService = new Aws.LightSail.ContainerService("example", new()
/// {
/// PrivateRegistryAccess = new Aws.LightSail.Inputs.ContainerServicePrivateRegistryAccessArgs
/// {
/// EcrImagePullerRole = new Aws.LightSail.Inputs.ContainerServicePrivateRegistryAccessEcrImagePullerRoleArgs
/// {
/// IsActive = true,
/// },
/// },
/// });
///
/// var example = Aws.Iam.GetPolicyDocument.Invoke(new()
/// {
/// Statements = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementArgs
/// {
/// Effect = "Allow",
/// Principals = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalArgs
/// {
/// Type = "AWS",
/// Identifiers = new[]
/// {
/// exampleContainerService.PrivateRegistryAccess.EcrImagePullerRole?.PrincipalArn,
/// },
/// },
/// },
/// Actions = new[]
/// {
/// "ecr:BatchGetImage",
/// "ecr:GetDownloadUrlForLayer",
/// },
/// },
/// },
/// });
///
/// var exampleRepositoryPolicy = new Aws.Ecr.RepositoryPolicy("example", new()
/// {
/// Repository = exampleAwsEcrRepository.Name,
/// Policy = example.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ecr"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lightsail"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// exampleContainerService, err := lightsail.NewContainerService(ctx, "example", &lightsail.ContainerServiceArgs{
/// PrivateRegistryAccess: &lightsail.ContainerServicePrivateRegistryAccessArgs{
/// EcrImagePullerRole: &lightsail.ContainerServicePrivateRegistryAccessEcrImagePullerRoleArgs{
/// IsActive: pulumi.Bool(true),
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// example := exampleContainerService.PrivateRegistryAccess.ApplyT(func(privateRegistryAccess lightsail.ContainerServicePrivateRegistryAccess) (iam.GetPolicyDocumentResult, error) {
/// return iam.GetPolicyDocumentResult(interface{}(iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// Statements: []iam.GetPolicyDocumentStatement([]iam.GetPolicyDocumentStatement{
/// {
/// Effect: pulumi.StringRef(pulumi.String(pulumi.StringRef("Allow"))),
/// Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// {
/// Type: "AWS",
/// Identifiers: interface{}{
/// privateRegistryAccess.EcrImagePullerRole.PrincipalArn,
/// },
/// },
/// },
/// Actions: []string{
/// "ecr:BatchGetImage",
/// "ecr:GetDownloadUrlForLayer",
/// },
/// },
/// }),
/// }, nil))), nil
/// }).(iam.GetPolicyDocumentResultOutput)
/// _, err = ecr.NewRepositoryPolicy(ctx, "example", &ecr.RepositoryPolicyArgs{
/// Repository: pulumi.Any(exampleAwsEcrRepository.Name),
/// Policy: pulumi.String(example.ApplyT(func(example iam.GetPolicyDocumentResult) (*string, error) {
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
/// import com.pulumi.aws.lightsail.ContainerService;
/// import com.pulumi.aws.lightsail.ContainerServiceArgs;
/// import com.pulumi.aws.lightsail.inputs.ContainerServicePrivateRegistryAccessArgs;
/// import com.pulumi.aws.lightsail.inputs.ContainerServicePrivateRegistryAccessEcrImagePullerRoleArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.ecr.RepositoryPolicy;
/// import com.pulumi.aws.ecr.RepositoryPolicyArgs;
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
/// var exampleContainerService = new ContainerService("exampleContainerService", ContainerServiceArgs.builder()
/// .privateRegistryAccess(ContainerServicePrivateRegistryAccessArgs.builder()
/// .ecrImagePullerRole(ContainerServicePrivateRegistryAccessEcrImagePullerRoleArgs.builder()
/// .isActive(true)
/// .build())
/// .build())
/// .build());
///
/// final var example = exampleContainerService.privateRegistryAccess().applyValue(_privateRegistryAccess -> IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
/// .statements(GetPolicyDocumentStatementArgs.builder()
/// .effect("Allow")
/// .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
/// .type("AWS")
/// .identifiers(_privateRegistryAccess.ecrImagePullerRole().principalArn())
/// .build())
/// .actions(
/// "ecr:BatchGetImage",
/// "ecr:GetDownloadUrlForLayer")
/// .build())
/// .build()));
///
/// var exampleRepositoryPolicy = new RepositoryPolicy("exampleRepositoryPolicy", RepositoryPolicyArgs.builder()
/// .repository(exampleAwsEcrRepository.name())
/// .policy(example.applyValue(_example -> _example.json()))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// exampleContainerService:
/// type: aws:lightsail:ContainerService
/// name: example
/// properties:
/// privateRegistryAccess:
/// ecrImagePullerRole:
/// isActive: true
/// exampleRepositoryPolicy:
/// type: aws:ecr:RepositoryPolicy
/// name: example
/// properties:
/// repository: ${exampleAwsEcrRepository.name}
/// policy: ${example.json}
/// variables:
/// example:
/// fn::invoke:
/// function: aws:iam:getPolicyDocument
/// arguments:
/// statements:
/// - effect: Allow
/// principals:
/// - type: AWS
/// identifiers:
/// - ${exampleContainerService.privateRegistryAccess.ecrImagePullerRole.principalArn}
/// actions:
/// - ecr:BatchGetImage
/// - ecr:GetDownloadUrlForLayer
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Lightsail Container Service using the <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:lightsail/containerService:ContainerService example container-service-1
/// ```
class ContainerService extends CustomResource {
  /// ARN of the container service.
  late final Output<String> arn;

  /// Availability Zone. Follows the format us-east-2a (case-sensitive).
  late final Output<String> availabilityZone;

  /// Date and time when the container service was created.
  late final Output<String> createdAt;

  /// Whether to disable the container service. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  late final Output<bool?> isDisabled;

  /// Name of the container service. Names must be of length 1 to 63, and be unique within each AWS Region in your Lightsail account.
  late final Output<String> name;

  /// Power specification for the container service. The power specifies the amount of memory, the number of vCPUs, and the monthly price of each node of the container service. Possible values: <span pulumi-lang-nodejs="`nano`" pulumi-lang-dotnet="`Nano`" pulumi-lang-go="`nano`" pulumi-lang-python="`nano`" pulumi-lang-yaml="`nano`" pulumi-lang-java="`nano`">`nano`</span>, <span pulumi-lang-nodejs="`micro`" pulumi-lang-dotnet="`Micro`" pulumi-lang-go="`micro`" pulumi-lang-python="`micro`" pulumi-lang-yaml="`micro`" pulumi-lang-java="`micro`">`micro`</span>, <span pulumi-lang-nodejs="`small`" pulumi-lang-dotnet="`Small`" pulumi-lang-go="`small`" pulumi-lang-python="`small`" pulumi-lang-yaml="`small`" pulumi-lang-java="`small`">`small`</span>, <span pulumi-lang-nodejs="`medium`" pulumi-lang-dotnet="`Medium`" pulumi-lang-go="`medium`" pulumi-lang-python="`medium`" pulumi-lang-yaml="`medium`" pulumi-lang-java="`medium`">`medium`</span>, <span pulumi-lang-nodejs="`large`" pulumi-lang-dotnet="`Large`" pulumi-lang-go="`large`" pulumi-lang-python="`large`" pulumi-lang-yaml="`large`" pulumi-lang-java="`large`">`large`</span>, <span pulumi-lang-nodejs="`xlarge`" pulumi-lang-dotnet="`Xlarge`" pulumi-lang-go="`xlarge`" pulumi-lang-python="`xlarge`" pulumi-lang-yaml="`xlarge`" pulumi-lang-java="`xlarge`">`xlarge`</span>.
  late final Output<String> power;

  /// Power ID of the container service.
  late final Output<String> powerId;

  /// Principal ARN of the container service. The principal ARN can be used to create a trust relationship between your standard AWS account and your Lightsail container service.
  late final Output<String> principalArn;

  /// Private domain name of the container service. The private domain name is accessible only by other resources within the default virtual private cloud (VPC) of your Lightsail account.
  late final Output<String> privateDomainName;

  /// Configuration for the container service to access private container image repositories, such as Amazon Elastic Container Registry (Amazon ECR) private repositories. See below.
  late final Output<ContainerServicePrivateRegistryAccess>
      privateRegistryAccess;

  /// Public domain names to use with the container service, such as example.com and www.example.com. You can specify up to four public domain names for a container service. The domain names that you specify are used when you create a deployment with a container configured as the public endpoint of your container service. If you don't specify public domain names, then you can use the default domain of the container service. See below.
  late final Output<ContainerServicePublicDomainNames?> publicDomainNames;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Lightsail resource type of the container service (i.e., ContainerService).
  late final Output<String> resourceType;

  /// Scale specification for the container service. The scale specifies the allocated compute nodes of the container service.
  ///
  /// The following arguments are optional:
  late final Output<int> scale;

  /// Current state of the container service.
  late final Output<String> state;

  /// Map of tags to assign to the resource. To create a key-only tag, use an empty string as the value. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Publicly accessible URL of the container service. If no public endpoint is specified in the currentDeployment, this URL returns a 404 response.
  late final Output<String> url;

  ContainerService(
    String name, {
    ContainerServiceArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:lightsail/containerService:ContainerService',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.availabilityZone = registerOutput<String>('availabilityZone');
    this.createdAt = registerOutput<String>('createdAt');
    this.isDisabled = registerOutput<bool?>('isDisabled');
    this.name = registerOutput<String>('name');
    this.power = registerOutput<String>('power');
    this.powerId = registerOutput<String>('powerId');
    this.principalArn = registerOutput<String>('principalArn');
    this.privateDomainName = registerOutput<String>('privateDomainName');
    this.privateRegistryAccess =
        registerOutput<ContainerServicePrivateRegistryAccess>(
            'privateRegistryAccess');
    this.publicDomainNames =
        registerOutput<ContainerServicePublicDomainNames?>('publicDomainNames');
    this.region = registerOutput<String>('region');
    this.resourceType = registerOutput<String>('resourceType');
    this.scale = registerOutput<int>('scale');
    this.state = registerOutput<String>('state');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.url = registerOutput<String>('url');
  }
}
