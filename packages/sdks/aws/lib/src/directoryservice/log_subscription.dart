import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_subscription_args.dart';
import 'log_subscription_state.dart';

/// Provides a Log subscription for AWS Directory Service that pushes logs to cloudwatch.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.cloudwatch.LogGroup("example", {
///     name: `/aws/directoryservice/${exampleAwsDirectoryServiceDirectory.id}`,
///     retentionInDays: 14,
/// });
/// const ad_log_policy = aws.iam.getPolicyDocumentOutput({
///     statements: [{
///         actions: [
///             "logs:CreateLogStream",
///             "logs:PutLogEvents",
///         ],
///         principals: [{
///             identifiers: ["ds.amazonaws.com"],
///             type: "Service",
///         }],
///         resources: [pulumi.interpolate`${example.arn}:*`],
///         effect: "Allow",
///     }],
/// });
/// const ad_log_policyLogResourcePolicy = new aws.cloudwatch.LogResourcePolicy("ad-log-policy", {
///     policyDocument: ad_log_policy.apply(ad_log_policy => ad_log_policy.json),
///     policyName: "ad-log-policy",
/// });
/// const exampleLogSubscription = new aws.directoryservice.LogSubscription("example", {
///     directoryId: exampleAwsDirectoryServiceDirectory.id,
///     logGroupName: example.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudwatch.LogGroup("example",
///     name=f"/aws/directoryservice/{example_aws_directory_service_directory['id']}",
///     retention_in_days=14)
/// ad_log_policy = aws.iam.get_policy_document_output(statements=[{
///     "actions": [
///         "logs:CreateLogStream",
///         "logs:PutLogEvents",
///     ],
///     "principals": [{
///         "identifiers": ["ds.amazonaws.com"],
///         "type": "Service",
///     }],
///     "resources": [example.arn.apply(lambda arn: f"{arn}:*")],
///     "effect": "Allow",
/// }])
/// ad_log_policy_log_resource_policy = aws.cloudwatch.LogResourcePolicy("ad-log-policy",
///     policy_document=ad_log_policy.json,
///     policy_name="ad-log-policy")
/// example_log_subscription = aws.directoryservice.LogSubscription("example",
///     directory_id=example_aws_directory_service_directory["id"],
///     log_group_name=example.name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.CloudWatch.LogGroup("example", new()
///     {
///         Name = $"/aws/directoryservice/{exampleAwsDirectoryServiceDirectory.Id}",
///         RetentionInDays = 14,
///     });
///
///     var ad_log_policy = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Actions = new[]
///                 {
///                     "logs:CreateLogStream",
///                     "logs:PutLogEvents",
///                 },
///                 Principals = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
///                     {
///                         Identifiers = new[]
///                         {
///                             "ds.amazonaws.com",
///                         },
///                         Type = "Service",
///                     },
///                 },
///                 Resources = new[]
///                 {
///                     $"{example.Arn}:*",
///                 },
///                 Effect = "Allow",
///             },
///         },
///     });
///
///     var ad_log_policyLogResourcePolicy = new Aws.CloudWatch.LogResourcePolicy("ad-log-policy", new()
///     {
///         PolicyDocument = ad_log_policy.Apply(ad_log_policy => ad_log_policy.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json)),
///         PolicyName = "ad-log-policy",
///     });
///
///     var exampleLogSubscription = new Aws.DirectoryService.LogSubscription("example", new()
///     {
///         DirectoryId = exampleAwsDirectoryServiceDirectory.Id,
///         LogGroupName = example.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/directoryservice"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := cloudwatch.NewLogGroup(ctx, "example", &cloudwatch.LogGroupArgs{
/// 			Name:            pulumi.Sprintf("/aws/directoryservice/%v", exampleAwsDirectoryServiceDirectory.Id),
/// 			RetentionInDays: pulumi.Int(14),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ad_log_policy := iam.GetPolicyDocumentOutput(ctx, iam.GetPolicyDocumentOutputArgs{
/// 			Statements: iam.GetPolicyDocumentStatementArray{
/// 				&iam.GetPolicyDocumentStatementArgs{
/// 					Actions: pulumi.StringArray{
/// 						pulumi.String("logs:CreateLogStream"),
/// 						pulumi.String("logs:PutLogEvents"),
/// 					},
/// 					Principals: iam.GetPolicyDocumentStatementPrincipalArray{
/// 						&iam.GetPolicyDocumentStatementPrincipalArgs{
/// 							Identifiers: pulumi.StringArray{
/// 								pulumi.String("ds.amazonaws.com"),
/// 							},
/// 							Type: pulumi.String("Service"),
/// 						},
/// 					},
/// 					Resources: pulumi.StringArray{
/// 						example.Arn.ApplyT(func(arn string) (string, error) {
/// 							return fmt.Sprintf("%v:*", arn), nil
/// 						}).(pulumi.StringOutput),
/// 					},
/// 					Effect: pulumi.String("Allow"),
/// 				},
/// 			},
/// 		}, nil)
/// 		_, err = cloudwatch.NewLogResourcePolicy(ctx, "ad-log-policy", &cloudwatch.LogResourcePolicyArgs{
/// 			PolicyDocument: pulumi.String(ad_log_policy.ApplyT(func(ad_log_policy iam.GetPolicyDocumentResult) (*string, error) {
/// 				return &ad_log_policy.Json, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 			PolicyName: pulumi.String("ad-log-policy"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = directoryservice.NewLogSubscription(ctx, "example", &directoryservice.LogSubscriptionArgs{
/// 			DirectoryId:  pulumi.Any(exampleAwsDirectoryServiceDirectory.Id),
/// 			LogGroupName: example.Name,
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
/// import com.pulumi.aws.cloudwatch.LogGroup;
/// import com.pulumi.aws.cloudwatch.LogGroupArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.cloudwatch.LogResourcePolicy;
/// import com.pulumi.aws.cloudwatch.LogResourcePolicyArgs;
/// import com.pulumi.aws.directoryservice.LogSubscription;
/// import com.pulumi.aws.directoryservice.LogSubscriptionArgs;
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
///         var example = new LogGroup("example", LogGroupArgs.builder()
///             .name(String.format("/aws/directoryservice/%s", exampleAwsDirectoryServiceDirectory.id()))
///             .retentionInDays(14)
///             .build());
///
///         final var ad-log-policy = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .actions(
///                     "logs:CreateLogStream",
///                     "logs:PutLogEvents")
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .identifiers("ds.amazonaws.com")
///                     .type("Service")
///                     .build())
///                 .resources(example.arn().applyValue(_arn -> String.format("%s:*", _arn)))
///                 .effect("Allow")
///                 .build())
///             .build());
///
///         var ad_log_policyLogResourcePolicy = new LogResourcePolicy("ad-log-policyLogResourcePolicy", LogResourcePolicyArgs.builder()
///             .policyDocument(ad_log_policy.applyValue(_ad_log_policy -> _ad_log_policy.json()))
///             .policyName("ad-log-policy")
///             .build());
///
///         var exampleLogSubscription = new LogSubscription("exampleLogSubscription", LogSubscriptionArgs.builder()
///             .directoryId(exampleAwsDirectoryServiceDirectory.id())
///             .logGroupName(example.name())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:cloudwatch:LogGroup
///     properties:
///       name: /aws/directoryservice/${exampleAwsDirectoryServiceDirectory.id}
///       retentionInDays: 14
///   ad-log-policyLogResourcePolicy:
///     type: aws:cloudwatch:LogResourcePolicy
///     name: ad-log-policy
///     properties:
///       policyDocument: ${["ad-log-policy"].json}
///       policyName: ad-log-policy
///   exampleLogSubscription:
///     type: aws:directoryservice:LogSubscription
///     name: example
///     properties:
///       directoryId: ${exampleAwsDirectoryServiceDirectory.id}
///       logGroupName: ${example.name}
/// variables:
///   ad-log-policy:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - actions:
///               - logs:CreateLogStream
///               - logs:PutLogEvents
///             principals:
///               - identifiers:
///                   - ds.amazonaws.com
///                 type: Service
///             resources:
///               - ${example.arn}:*
///             effect: Allow
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Directory Service Log Subscriptions using the directory id. For example:
///
/// ```sh
/// $ pulumi import aws:directoryservice/logSubscription:LogSubscription msad d-1234567890
/// ```
class LogSubscription extends pulumi.CustomResource {
  /// ID of directory.
  late final pulumi.Output<String> directoryId;
  /// Name of the cloudwatch log group to which the logs should be published. The log group should be already created and the directory service principal should be provided with required permission to create stream and publish logs. Changing this value would delete the current subscription and create a new one. A directory can only have one log subscription at a time.
  late final pulumi.Output<String> logGroupName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [LogSubscription].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LogSubscription]. {@macro pulumi_directoryservice_log_subscription_log_subscription_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LogSubscription(
    String name, {
    LogSubscriptionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:directoryservice/logSubscription:LogSubscription',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.directoryId = registerOutput<String>('directoryId');
    this.logGroupName = registerOutput<String>('logGroupName');
    this.region = registerOutput<String>('region');
  }

  /// Gets an existing [LogSubscription] resource's state with the given [name] and [id].
  static LogSubscription get(
    String name,
    pulumi.Input<String> id, {
    LogSubscriptionState? state,
  }) {
    return LogSubscription._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  LogSubscription._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:directoryservice/logSubscription:LogSubscription',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.directoryId = registerOutput<String>('directoryId');
    this.logGroupName = registerOutput<String>('logGroupName');
    this.region = registerOutput<String>('region');
  }
}
