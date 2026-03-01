import 'package:pulumi/pulumi.dart' as pulumi;
import 'email_channel_args.dart';

/// Provides a Pinpoint Email Channel resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const app = new aws.pinpoint.App("app", {});
/// const assumeRole = aws.iam.getPolicyDocument({
///     statements: [{
///         effect: "Allow",
///         principals: [{
///             type: "Service",
///             identifiers: ["pinpoint.amazonaws.com"],
///         }],
///         actions: ["sts:AssumeRole"],
///     }],
/// });
/// const role = new aws.iam.Role("role", {assumeRolePolicy: assumeRole.then(assumeRole => assumeRole.json)});
/// const email = new aws.pinpoint.EmailChannel("email", {
///     applicationId: app.applicationId,
///     fromAddress: "user@example.com",
///     roleArn: role.arn,
/// });
/// const identity = new aws.ses.DomainIdentity("identity", {domain: "example.com"});
/// const rolePolicy = aws.iam.getPolicyDocument({
///     statements: [{
///         effect: "Allow",
///         actions: [
///             "mobileanalytics:PutEvents",
///             "mobileanalytics:PutItems",
///         ],
///         resources: ["*"],
///     }],
/// });
/// const rolePolicyRolePolicy = new aws.iam.RolePolicy("role_policy", {
///     name: "role_policy",
///     role: role.id,
///     policy: rolePolicy.then(rolePolicy => rolePolicy.json),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// app = aws.pinpoint.App("app")
/// assume_role = aws.iam.get_policy_document(statements=[{
///     "effect": "Allow",
///     "principals": [{
///         "type": "Service",
///         "identifiers": ["pinpoint.amazonaws.com"],
///     }],
///     "actions": ["sts:AssumeRole"],
/// }])
/// role = aws.iam.Role("role", assume_role_policy=assume_role.json)
/// email = aws.pinpoint.EmailChannel("email",
///     application_id=app.application_id,
///     from_address="user@example.com",
///     role_arn=role.arn)
/// identity = aws.ses.DomainIdentity("identity", domain="example.com")
/// role_policy = aws.iam.get_policy_document(statements=[{
///     "effect": "Allow",
///     "actions": [
///         "mobileanalytics:PutEvents",
///         "mobileanalytics:PutItems",
///     ],
///     "resources": ["*"],
/// }])
/// role_policy_role_policy = aws.iam.RolePolicy("role_policy",
///     name="role_policy",
///     role=role.id,
///     policy=role_policy.json)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var app = new Aws.Pinpoint.App("app");
///
///     var assumeRole = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Effect = "Allow",
///                 Principals = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
///                     {
///                         Type = "Service",
///                         Identifiers = new[]
///                         {
///                             "pinpoint.amazonaws.com",
///                         },
///                     },
///                 },
///                 Actions = new[]
///                 {
///                     "sts:AssumeRole",
///                 },
///             },
///         },
///     });
///
///     var role = new Aws.Iam.Role("role", new()
///     {
///         AssumeRolePolicy = assumeRole.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
///     var email = new Aws.Pinpoint.EmailChannel("email", new()
///     {
///         ApplicationId = app.ApplicationId,
///         FromAddress = "user@example.com",
///         RoleArn = role.Arn,
///     });
///
///     var identity = new Aws.Ses.DomainIdentity("identity", new()
///     {
///         Domain = "example.com",
///     });
///
///     var rolePolicy = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Effect = "Allow",
///                 Actions = new[]
///                 {
///                     "mobileanalytics:PutEvents",
///                     "mobileanalytics:PutItems",
///                 },
///                 Resources = new[]
///                 {
///                     "*",
///                 },
///             },
///         },
///     });
///
///     var rolePolicyRolePolicy = new Aws.Iam.RolePolicy("role_policy", new()
///     {
///         Name = "role_policy",
///         Role = role.Id,
///         Policy = rolePolicy.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/pinpoint"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ses"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		app, err := pinpoint.NewApp(ctx, "app", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		assumeRole, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			Statements: []iam.GetPolicyDocumentStatement{
/// 				{
/// 					Effect: pulumi.StringRef("Allow"),
/// 					Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// 						{
/// 							Type: "Service",
/// 							Identifiers: []string{
/// 								"pinpoint.amazonaws.com",
/// 							},
/// 						},
/// 					},
/// 					Actions: []string{
/// 						"sts:AssumeRole",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		role, err := iam.NewRole(ctx, "role", &iam.RoleArgs{
/// 			AssumeRolePolicy: pulumi.String(assumeRole.Json),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = pinpoint.NewEmailChannel(ctx, "email", &pinpoint.EmailChannelArgs{
/// 			ApplicationId: app.ApplicationId,
/// 			FromAddress:   pulumi.String("user@example.com"),
/// 			RoleArn:       role.Arn,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ses.NewDomainIdentity(ctx, "identity", &ses.DomainIdentityArgs{
/// 			Domain: pulumi.String("example.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		rolePolicy, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			Statements: []iam.GetPolicyDocumentStatement{
/// 				{
/// 					Effect: pulumi.StringRef("Allow"),
/// 					Actions: []string{
/// 						"mobileanalytics:PutEvents",
/// 						"mobileanalytics:PutItems",
/// 					},
/// 					Resources: []string{
/// 						"*",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = iam.NewRolePolicy(ctx, "role_policy", &iam.RolePolicyArgs{
/// 			Name:   pulumi.String("role_policy"),
/// 			Role:   role.ID(),
/// 			Policy: pulumi.String(rolePolicy.Json),
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
/// import com.pulumi.aws.pinpoint.App;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.pinpoint.EmailChannel;
/// import com.pulumi.aws.pinpoint.EmailChannelArgs;
/// import com.pulumi.aws.ses.DomainIdentity;
/// import com.pulumi.aws.ses.DomainIdentityArgs;
/// import com.pulumi.aws.iam.RolePolicy;
/// import com.pulumi.aws.iam.RolePolicyArgs;
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
///         var app = new App("app");
///
///         final var assumeRole = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .effect("Allow")
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("Service")
///                     .identifiers("pinpoint.amazonaws.com")
///                     .build())
///                 .actions("sts:AssumeRole")
///                 .build())
///             .build());
///
///         var role = new Role("role", RoleArgs.builder()
///             .assumeRolePolicy(assumeRole.json())
///             .build());
///
///         var email = new EmailChannel("email", EmailChannelArgs.builder()
///             .applicationId(app.applicationId())
///             .fromAddress("user@example.com")
///             .roleArn(role.arn())
///             .build());
///
///         var identity = new DomainIdentity("identity", DomainIdentityArgs.builder()
///             .domain("example.com")
///             .build());
///
///         final var rolePolicy = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .effect("Allow")
///                 .actions(
///                     "mobileanalytics:PutEvents",
///                     "mobileanalytics:PutItems")
///                 .resources("*")
///                 .build())
///             .build());
///
///         var rolePolicyRolePolicy = new RolePolicy("rolePolicyRolePolicy", RolePolicyArgs.builder()
///             .name("role_policy")
///             .role(role.id())
///             .policy(rolePolicy.json())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   email:
///     type: aws:pinpoint:EmailChannel
///     properties:
///       applicationId: ${app.applicationId}
///       fromAddress: user@example.com
///       roleArn: ${role.arn}
///   app:
///     type: aws:pinpoint:App
///   identity:
///     type: aws:ses:DomainIdentity
///     properties:
///       domain: example.com
///   role:
///     type: aws:iam:Role
///     properties:
///       assumeRolePolicy: ${assumeRole.json}
///   rolePolicyRolePolicy:
///     type: aws:iam:RolePolicy
///     name: role_policy
///     properties:
///       name: role_policy
///       role: ${role.id}
///       policy: ${rolePolicy.json}
/// variables:
///   assumeRole:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - effect: Allow
///             principals:
///               - type: Service
///                 identifiers:
///                   - pinpoint.amazonaws.com
///             actions:
///               - sts:AssumeRole
///   rolePolicy:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - effect: Allow
///             actions:
///               - mobileanalytics:PutEvents
///               - mobileanalytics:PutItems
///             resources:
///               - '*'
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Pinpoint Email Channel using the `application-id`. For example:
///
/// ```sh
/// $ pulumi import aws:pinpoint/emailChannel:EmailChannel email application-id
/// ```
class EmailChannel extends pulumi.CustomResource {
  /// The application ID.
  late final pulumi.Output<String> applicationId;

  /// The ARN of the Amazon SES configuration set that you want to apply to messages that you send through the channel.
  late final pulumi.Output<String?> configurationSet;

  /// Whether the channel is enabled or disabled. Defaults to `true`.
  late final pulumi.Output<bool?> enabled;

  /// The email address used to send emails from. You can use email only (`user@example.com`) or friendly address (`User <user@example.com>`). This field comply with [RFC 5322](https://www.ietf.org/rfc/rfc5322.txt).
  late final pulumi.Output<String> fromAddress;

  /// The ARN of an identity verified with SES.
  late final pulumi.Output<String> identity;

  /// Messages per second that can be sent.
  late final pulumi.Output<int> messagesPerSecond;

  /// The ARN of an IAM role for Amazon Pinpoint to use to send email from your campaigns or journeys through Amazon SES.
  late final pulumi.Output<String?> orchestrationSendingRoleArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// *Deprecated* The ARN of an IAM Role used to submit events to Mobile Analytics' event ingestion service.
  late final pulumi.Output<String?> roleArn;

  /// Creates a new [EmailChannel].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EmailChannel]. {@macro pulumi_pinpoint_email_channel_email_channel_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EmailChannel(
    String name, {
    EmailChannelArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:pinpoint/emailChannel:EmailChannel',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.applicationId = registerOutput<String>('applicationId');
    this.configurationSet = registerOutput<String?>('configurationSet');
    this.enabled = registerOutput<bool?>('enabled');
    this.fromAddress = registerOutput<String>('fromAddress');
    this.identity = registerOutput<String>('identity');
    this.messagesPerSecond = registerOutput<int>('messagesPerSecond');
    this.orchestrationSendingRoleArn = registerOutput<String?>(
      'orchestrationSendingRoleArn',
    );
    this.region = registerOutput<String>('region');
    this.roleArn = registerOutput<String?>('roleArn');
  }
}
