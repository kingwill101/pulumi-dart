import 'package:pulumi/pulumi.dart' as pulumi;
import 'workteam_args.dart';
import 'workteam_member_definition.dart';
import 'workteam_notification_configuration.dart';
import 'workteam_state.dart';
import 'workteam_worker_access_configuration.dart';

/// Provides a SageMaker AI Workteam resource.
///
/// ## Example Usage
///
/// ### Cognito Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.sagemaker.Workteam("example", {
///     memberDefinitions: [{
///         cognitoMemberDefinition: {
///             clientId: exampleAwsCognitoUserPoolClient.id,
///             userPool: exampleAwsCognitoUserPoolDomain.userPoolId,
///             userGroup: exampleAwsCognitoUserGroup.name,
///         },
///     }],
///     workteamName: "example",
///     workforceName: exampleAwsSagemakerWorkforce.id,
///     description: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.sagemaker.Workteam("example",
///     member_definitions=[{
///         "cognito_member_definition": {
///             "client_id": example_aws_cognito_user_pool_client["id"],
///             "user_pool": example_aws_cognito_user_pool_domain["userPoolId"],
///             "user_group": example_aws_cognito_user_group["name"],
///         },
///     }],
///     workteam_name="example",
///     workforce_name=example_aws_sagemaker_workforce["id"],
///     description="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Sagemaker.Workteam("example", new()
///     {
///         MemberDefinitions = new[]
///         {
///             new Aws.Sagemaker.Inputs.WorkteamMemberDefinitionArgs
///             {
///                 CognitoMemberDefinition = new Aws.Sagemaker.Inputs.WorkteamMemberDefinitionCognitoMemberDefinitionArgs
///                 {
///                     ClientId = exampleAwsCognitoUserPoolClient.Id,
///                     UserPool = exampleAwsCognitoUserPoolDomain.UserPoolId,
///                     UserGroup = exampleAwsCognitoUserGroup.Name,
///                 },
///             },
///         },
///         WorkteamName = "example",
///         WorkforceName = exampleAwsSagemakerWorkforce.Id,
///         Description = "example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sagemaker"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sagemaker.NewWorkteam(ctx, "example", &sagemaker.WorkteamArgs{
/// 			MemberDefinitions: sagemaker.WorkteamMemberDefinitionArray{
/// 				&sagemaker.WorkteamMemberDefinitionArgs{
/// 					CognitoMemberDefinition: &sagemaker.WorkteamMemberDefinitionCognitoMemberDefinitionArgs{
/// 						ClientId:  pulumi.Any(exampleAwsCognitoUserPoolClient.Id),
/// 						UserPool:  pulumi.Any(exampleAwsCognitoUserPoolDomain.UserPoolId),
/// 						UserGroup: pulumi.Any(exampleAwsCognitoUserGroup.Name),
/// 					},
/// 				},
/// 			},
/// 			WorkteamName:  pulumi.String("example"),
/// 			WorkforceName: pulumi.Any(exampleAwsSagemakerWorkforce.Id),
/// 			Description:   pulumi.String("example"),
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
/// resource "aws_sagemaker_workteam" "example" {
///   member_definitions {
///     cognito_member_definition = {
///       client_id  = exampleAwsCognitoUserPoolClient.id
///       user_pool  = exampleAwsCognitoUserPoolDomain.userPoolId
///       user_group = exampleAwsCognitoUserGroup.name
///     }
///   }
///   workteam_name  = "example"
///   workforce_name = exampleAwsSagemakerWorkforce.id
///   description    = "example"
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
///         var example = new Workteam("example", WorkteamArgs.builder()
///             .memberDefinitions(WorkteamMemberDefinitionArgs.builder()
///                 .cognitoMemberDefinition(WorkteamMemberDefinitionCognitoMemberDefinitionArgs.builder()
///                     .clientId(exampleAwsCognitoUserPoolClient.id())
///                     .userPool(exampleAwsCognitoUserPoolDomain.userPoolId())
///                     .userGroup(exampleAwsCognitoUserGroup.name())
///                     .build())
///                 .build())
///             .workteamName("example")
///             .workforceName(exampleAwsSagemakerWorkforce.id())
///             .description("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:sagemaker:Workteam
///     properties:
///       memberDefinitions:
///         - cognitoMemberDefinition:
///             clientId: ${exampleAwsCognitoUserPoolClient.id}
///             userPool: ${exampleAwsCognitoUserPoolDomain.userPoolId}
///             userGroup: ${exampleAwsCognitoUserGroup.name}
///       workteamName: example
///       workforceName: ${exampleAwsSagemakerWorkforce.id}
///       description: example
/// ```
///
///
/// ### Oidc Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.sagemaker.Workteam("example", {
///     memberDefinitions: [{
///         oidcMemberDefinition: {
///             groups: ["example"],
///         },
///     }],
///     workteamName: "example",
///     workforceName: exampleAwsSagemakerWorkforce.id,
///     description: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.sagemaker.Workteam("example",
///     member_definitions=[{
///         "oidc_member_definition": {
///             "groups": ["example"],
///         },
///     }],
///     workteam_name="example",
///     workforce_name=example_aws_sagemaker_workforce["id"],
///     description="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Sagemaker.Workteam("example", new()
///     {
///         MemberDefinitions = new[]
///         {
///             new Aws.Sagemaker.Inputs.WorkteamMemberDefinitionArgs
///             {
///                 OidcMemberDefinition = new Aws.Sagemaker.Inputs.WorkteamMemberDefinitionOidcMemberDefinitionArgs
///                 {
///                     Groups = new[]
///                     {
///                         "example",
///                     },
///                 },
///             },
///         },
///         WorkteamName = "example",
///         WorkforceName = exampleAwsSagemakerWorkforce.Id,
///         Description = "example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sagemaker"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sagemaker.NewWorkteam(ctx, "example", &sagemaker.WorkteamArgs{
/// 			MemberDefinitions: sagemaker.WorkteamMemberDefinitionArray{
/// 				&sagemaker.WorkteamMemberDefinitionArgs{
/// 					OidcMemberDefinition: &sagemaker.WorkteamMemberDefinitionOidcMemberDefinitionArgs{
/// 						Groups: pulumi.StringArray{
/// 							pulumi.String("example"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			WorkteamName:  pulumi.String("example"),
/// 			WorkforceName: pulumi.Any(exampleAwsSagemakerWorkforce.Id),
/// 			Description:   pulumi.String("example"),
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
/// resource "aws_sagemaker_workteam" "example" {
///   member_definitions {
///     oidc_member_definition = {
///       groups = ["example"]
///     }
///   }
///   workteam_name  = "example"
///   workforce_name = exampleAwsSagemakerWorkforce.id
///   description    = "example"
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
///         var example = new Workteam("example", WorkteamArgs.builder()
///             .memberDefinitions(WorkteamMemberDefinitionArgs.builder()
///                 .oidcMemberDefinition(WorkteamMemberDefinitionOidcMemberDefinitionArgs.builder()
///                     .groups("example")
///                     .build())
///                 .build())
///             .workteamName("example")
///             .workforceName(exampleAwsSagemakerWorkforce.id())
///             .description("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:sagemaker:Workteam
///     properties:
///       memberDefinitions:
///         - oidcMemberDefinition:
///             groups:
///               - example
///       workteamName: example
///       workforceName: ${exampleAwsSagemakerWorkforce.id}
///       description: example
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import SageMaker AI Workteams using the `workteamName`. For example:
///
/// ```sh
/// $ pulumi import aws:sagemaker/workteam:Workteam example example
/// ```
class Workteam extends pulumi.CustomResource {
  /// ARN assigned by AWS to this Workteam.
  late final pulumi.Output<String> arn;
  /// A description of the work team.
  late final pulumi.Output<String> description;
  /// A list of Member Definitions that contains objects that identify the workers that make up the work team. Workforces can be created using Amazon Cognito or your own OIDC Identity Provider (IdP). For private workforces created using Amazon Cognito use `cognitoMemberDefinition`. For workforces created using your own OIDC identity provider (IdP) use `oidcMemberDefinition`. Do not provide input for both of these parameters in a single request. see Member Definition details below.
  late final pulumi.Output<List<WorkteamMemberDefinition>> memberDefinitions;
  /// Configures notification of workers regarding available or expiring work items. see Notification Configuration details below.
  late final pulumi.Output<WorkteamNotificationConfiguration?> notificationConfiguration;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The subdomain for your OIDC Identity Provider.
  late final pulumi.Output<String> subdomain;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Use this optional parameter to constrain access to an Amazon S3 resource based on the IP address using supported IAM global condition keys. The Amazon S3 resource is accessed in the worker portal using a Amazon S3 presigned URL. see Worker Access Configuration details below.
  late final pulumi.Output<WorkteamWorkerAccessConfiguration> workerAccessConfiguration;
  /// The name of the workforce.
  late final pulumi.Output<String?> workforceName;
  /// The name of the Workteam (must be unique).
  late final pulumi.Output<String> workteamName;

  /// Creates a new [Workteam].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Workteam]. {@macro pulumi_sagemaker_workteam_workteam_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Workteam(
    String name, {
    WorkteamArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sagemaker/workteam:Workteam',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String>('description');
    memberDefinitions = registerOutput<List<WorkteamMemberDefinition>>('memberDefinitions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WorkteamMemberDefinition>(guardedValue, (value) => WorkteamMemberDefinition.fromMap((value as Map).cast<String, dynamic>())); });
    notificationConfiguration = registerOutput<WorkteamNotificationConfiguration?>('notificationConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkteamNotificationConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    subdomain = registerOutput<String>('subdomain');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    workerAccessConfiguration = registerOutput<WorkteamWorkerAccessConfiguration>('workerAccessConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkteamWorkerAccessConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    workforceName = registerOutput<String?>('workforceName');
    workteamName = registerOutput<String>('workteamName');
  }

  /// Gets an existing [Workteam] resource's state with the given [name] and [id].
  static Workteam get(
    String name,
    pulumi.Input<String> id, {
    WorkteamState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Workteam._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Workteam._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sagemaker/workteam:Workteam',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String>('description');
    memberDefinitions = registerOutput<List<WorkteamMemberDefinition>>('memberDefinitions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WorkteamMemberDefinition>(guardedValue, (value) => WorkteamMemberDefinition.fromMap((value as Map).cast<String, dynamic>())); });
    notificationConfiguration = registerOutput<WorkteamNotificationConfiguration?>('notificationConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkteamNotificationConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    subdomain = registerOutput<String>('subdomain');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    workerAccessConfiguration = registerOutput<WorkteamWorkerAccessConfiguration>('workerAccessConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkteamWorkerAccessConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    workforceName = registerOutput<String?>('workforceName');
    workteamName = registerOutput<String>('workteamName');
  }

  /// Creates a typed reference to an existing [Workteam] resource.
  Workteam.reference(String urn)
    : super(
        'aws:sagemaker/workteam:Workteam',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String>('description');
    memberDefinitions = registerOutput<List<WorkteamMemberDefinition>>('memberDefinitions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<WorkteamMemberDefinition>(guardedValue, (value) => WorkteamMemberDefinition.fromMap((value as Map).cast<String, dynamic>())); });
    notificationConfiguration = registerOutput<WorkteamNotificationConfiguration?>('notificationConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkteamNotificationConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    subdomain = registerOutput<String>('subdomain');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    workerAccessConfiguration = registerOutput<WorkteamWorkerAccessConfiguration>('workerAccessConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WorkteamWorkerAccessConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    workforceName = registerOutput<String?>('workforceName');
    workteamName = registerOutput<String>('workteamName');
  }
}
