import 'package:pulumi/pulumi.dart';
import '../workteam_member_definition/workteam_member_definition.dart';
import '../workteam_notification_configuration/workteam_notification_configuration.dart';
import '../workteam_worker_access_configuration/workteam_worker_access_configuration.dart';
import 'workteam_args.dart';

/// Provides a SageMaker AI Workteam resource.
///
/// ## Example Usage
///
/// ### Cognito Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.sagemaker.Workteam("example", {
/// workteamName: "example",
/// workforceName: exampleAwsSagemakerWorkforce.id,
/// description: "example",
/// memberDefinitions: [{
/// cognitoMemberDefinition: {
/// clientId: exampleAwsCognitoUserPoolClient.id,
/// userPool: exampleAwsCognitoUserPoolDomain.userPoolId,
/// userGroup: exampleAwsCognitoUserGroup.name,
/// },
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.sagemaker.Workteam("example",
/// workteam_name="example",
/// workforce_name=example_aws_sagemaker_workforce["id"],
/// description="example",
/// member_definitions=[{
/// "cognito_member_definition": {
/// "client_id": example_aws_cognito_user_pool_client["id"],
/// "user_pool": example_aws_cognito_user_pool_domain["userPoolId"],
/// "user_group": example_aws_cognito_user_group["name"],
/// },
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Sagemaker.Workteam("example", new()
/// {
/// WorkteamName = "example",
/// WorkforceName = exampleAwsSagemakerWorkforce.Id,
/// Description = "example",
/// MemberDefinitions = new[]
/// {
/// new Aws.Sagemaker.Inputs.WorkteamMemberDefinitionArgs
/// {
/// CognitoMemberDefinition = new Aws.Sagemaker.Inputs.WorkteamMemberDefinitionCognitoMemberDefinitionArgs
/// {
/// ClientId = exampleAwsCognitoUserPoolClient.Id,
/// UserPool = exampleAwsCognitoUserPoolDomain.UserPoolId,
/// UserGroup = exampleAwsCognitoUserGroup.Name,
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sagemaker"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := sagemaker.NewWorkteam(ctx, "example", &sagemaker.WorkteamArgs{
/// WorkteamName:  pulumi.String("example"),
/// WorkforceName: pulumi.Any(exampleAwsSagemakerWorkforce.Id),
/// Description:   pulumi.String("example"),
/// MemberDefinitions: sagemaker.WorkteamMemberDefinitionArray{
/// &sagemaker.WorkteamMemberDefinitionArgs{
/// CognitoMemberDefinition: &sagemaker.WorkteamMemberDefinitionCognitoMemberDefinitionArgs{
/// ClientId:  pulumi.Any(exampleAwsCognitoUserPoolClient.Id),
/// UserPool:  pulumi.Any(exampleAwsCognitoUserPoolDomain.UserPoolId),
/// UserGroup: pulumi.Any(exampleAwsCognitoUserGroup.Name),
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
/// import com.pulumi.aws.sagemaker.Workteam;
/// import com.pulumi.aws.sagemaker.WorkteamArgs;
/// import com.pulumi.aws.sagemaker.inputs.WorkteamMemberDefinitionArgs;
/// import com.pulumi.aws.sagemaker.inputs.WorkteamMemberDefinitionCognitoMemberDefinitionArgs;
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
/// var example = new Workteam("example", WorkteamArgs.builder()
/// .workteamName("example")
/// .workforceName(exampleAwsSagemakerWorkforce.id())
/// .description("example")
/// .memberDefinitions(WorkteamMemberDefinitionArgs.builder()
/// .cognitoMemberDefinition(WorkteamMemberDefinitionCognitoMemberDefinitionArgs.builder()
/// .clientId(exampleAwsCognitoUserPoolClient.id())
/// .userPool(exampleAwsCognitoUserPoolDomain.userPoolId())
/// .userGroup(exampleAwsCognitoUserGroup.name())
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
/// type: aws:sagemaker:Workteam
/// properties:
/// workteamName: example
/// workforceName: ${exampleAwsSagemakerWorkforce.id}
/// description: example
/// memberDefinitions:
/// - cognitoMemberDefinition:
/// clientId: ${exampleAwsCognitoUserPoolClient.id}
/// userPool: ${exampleAwsCognitoUserPoolDomain.userPoolId}
/// userGroup: ${exampleAwsCognitoUserGroup.name}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Oidc Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.sagemaker.Workteam("example", {
/// workteamName: "example",
/// workforceName: exampleAwsSagemakerWorkforce.id,
/// description: "example",
/// memberDefinitions: [{
/// oidcMemberDefinition: {
/// groups: ["example"],
/// },
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.sagemaker.Workteam("example",
/// workteam_name="example",
/// workforce_name=example_aws_sagemaker_workforce["id"],
/// description="example",
/// member_definitions=[{
/// "oidc_member_definition": {
/// "groups": ["example"],
/// },
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Sagemaker.Workteam("example", new()
/// {
/// WorkteamName = "example",
/// WorkforceName = exampleAwsSagemakerWorkforce.Id,
/// Description = "example",
/// MemberDefinitions = new[]
/// {
/// new Aws.Sagemaker.Inputs.WorkteamMemberDefinitionArgs
/// {
/// OidcMemberDefinition = new Aws.Sagemaker.Inputs.WorkteamMemberDefinitionOidcMemberDefinitionArgs
/// {
/// Groups = new[]
/// {
/// "example",
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sagemaker"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := sagemaker.NewWorkteam(ctx, "example", &sagemaker.WorkteamArgs{
/// WorkteamName:  pulumi.String("example"),
/// WorkforceName: pulumi.Any(exampleAwsSagemakerWorkforce.Id),
/// Description:   pulumi.String("example"),
/// MemberDefinitions: sagemaker.WorkteamMemberDefinitionArray{
/// &sagemaker.WorkteamMemberDefinitionArgs{
/// OidcMemberDefinition: &sagemaker.WorkteamMemberDefinitionOidcMemberDefinitionArgs{
/// Groups: pulumi.StringArray{
/// pulumi.String("example"),
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
/// import com.pulumi.aws.sagemaker.Workteam;
/// import com.pulumi.aws.sagemaker.WorkteamArgs;
/// import com.pulumi.aws.sagemaker.inputs.WorkteamMemberDefinitionArgs;
/// import com.pulumi.aws.sagemaker.inputs.WorkteamMemberDefinitionOidcMemberDefinitionArgs;
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
/// var example = new Workteam("example", WorkteamArgs.builder()
/// .workteamName("example")
/// .workforceName(exampleAwsSagemakerWorkforce.id())
/// .description("example")
/// .memberDefinitions(WorkteamMemberDefinitionArgs.builder()
/// .oidcMemberDefinition(WorkteamMemberDefinitionOidcMemberDefinitionArgs.builder()
/// .groups("example")
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
/// type: aws:sagemaker:Workteam
/// properties:
/// workteamName: example
/// workforceName: ${exampleAwsSagemakerWorkforce.id}
/// description: example
/// memberDefinitions:
/// - oidcMemberDefinition:
/// groups:
/// - example
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import SageMaker AI Workteams using the <span pulumi-lang-nodejs="`workteamName`" pulumi-lang-dotnet="`WorkteamName`" pulumi-lang-go="`workteamName`" pulumi-lang-python="`workteam_name`" pulumi-lang-yaml="`workteamName`" pulumi-lang-java="`workteamName`">`workteam_name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:sagemaker/workteam:Workteam example example
/// ```
class Workteam extends CustomResource {
  /// The Amazon Resource Name (ARN) assigned by AWS to this Workteam.
  late final Output<String> arn;

  /// A description of the work team.
  late final Output<String> description;

  /// A list of Member Definitions that contains objects that identify the workers that make up the work team. Workforces can be created using Amazon Cognito or your own OIDC Identity Provider (IdP). For private workforces created using Amazon Cognito use <span pulumi-lang-nodejs="`cognitoMemberDefinition`" pulumi-lang-dotnet="`CognitoMemberDefinition`" pulumi-lang-go="`cognitoMemberDefinition`" pulumi-lang-python="`cognito_member_definition`" pulumi-lang-yaml="`cognitoMemberDefinition`" pulumi-lang-java="`cognitoMemberDefinition`">`cognito_member_definition`</span>. For workforces created using your own OIDC identity provider (IdP) use <span pulumi-lang-nodejs="`oidcMemberDefinition`" pulumi-lang-dotnet="`OidcMemberDefinition`" pulumi-lang-go="`oidcMemberDefinition`" pulumi-lang-python="`oidc_member_definition`" pulumi-lang-yaml="`oidcMemberDefinition`" pulumi-lang-java="`oidcMemberDefinition`">`oidc_member_definition`</span>. Do not provide input for both of these parameters in a single request. see Member Definition details below.
  late final Output<List<WorkteamMemberDefinition>> memberDefinitions;

  /// Configures notification of workers regarding available or expiring work items. see Notification Configuration details below.
  late final Output<WorkteamNotificationConfiguration?>
      notificationConfiguration;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The subdomain for your OIDC Identity Provider.
  late final Output<String> subdomain;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Use this optional parameter to constrain access to an Amazon S3 resource based on the IP address using supported IAM global condition keys. The Amazon S3 resource is accessed in the worker portal using a Amazon S3 presigned URL. see Worker Access Configuration details below.
  late final Output<WorkteamWorkerAccessConfiguration>
      workerAccessConfiguration;

  /// The name of the workforce.
  late final Output<String?> workforceName;

  /// The name of the Workteam (must be unique).
  late final Output<String> workteamName;

  Workteam(
    String name, {
    WorkteamArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:sagemaker/workteam:Workteam',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.description = Output.createUnknown<String>();
    this.memberDefinitions =
        Output.createUnknown<List<WorkteamMemberDefinition>>();
    this.notificationConfiguration =
        Output.createUnknown<WorkteamNotificationConfiguration?>();
    this.region = Output.createUnknown<String>();
    this.subdomain = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.workerAccessConfiguration =
        Output.createUnknown<WorkteamWorkerAccessConfiguration>();
    this.workforceName = Output.createUnknown<String?>();
    this.workteamName = Output.createUnknown<String>();
  }
}
