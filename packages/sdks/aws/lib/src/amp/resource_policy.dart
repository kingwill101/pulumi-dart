import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_policy_args.dart';
import 'resource_policy_state.dart';
import 'resource_policy_timeouts.dart';

/// Manages an Amazon Managed Service for Prometheus (AMP) Resource Policy.
///
/// Resource-based policies allow you to grant permissions to other AWS accounts or services to access your Prometheus workspace. This enables cross-account access and fine-grained permissions for workspace sharing.
///
/// The following actions are supported in resource policies for Prometheus workspaces: `aps:RemoteWrite`, `aps:QueryMetrics`, `aps:GetSeries`, `aps:GetLabels`, `aps:GetMetricMetadata`.
///
/// &gt; **Note:** Only Prometheus-compatible APIs can be used for workspace sharing. Non-Prometheus-compatible APIs added to the policy will be ignored. If your workspace uses customer-managed KMS keys for encryption, you must grant the principals in your resource-based policy access to those KMS keys through KMS grants. The resource ARN in the policy document must match the workspace ARN that the policy is being attached to.
///
/// ## Example Usage
///
/// ### Basic Resource Policy
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const exampleWorkspace = new aws.amp.Workspace("example", {alias: "example-workspace"});
/// const current = aws.getCallerIdentity({});
/// const example = aws.iam.getPolicyDocumentOutput({
///     statements: [{
///         principals: [{
///             type: "AWS",
///             identifiers: [current.then(current => current.accountId)],
///         }],
///         effect: "Allow",
///         actions: [
///             "aps:RemoteWrite",
///             "aps:QueryMetrics",
///             "aps:GetSeries",
///             "aps:GetLabels",
///             "aps:GetMetricMetadata",
///         ],
///         resources: [exampleWorkspace.arn],
///     }],
/// });
/// const exampleResourcePolicy = new aws.amp.ResourcePolicy("example", {
///     workspaceId: exampleWorkspace.id,
///     policyDocument: example.json,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_workspace = aws.amp.Workspace("example", alias="example-workspace")
/// current = aws.get_caller_identity()
/// example = aws.iam.get_policy_document_output(statements=[{
///     "principals": [{
///         "type": "AWS",
///         "identifiers": [current.account_id],
///     }],
///     "effect": "Allow",
///     "actions": [
///         "aps:RemoteWrite",
///         "aps:QueryMetrics",
///         "aps:GetSeries",
///         "aps:GetLabels",
///         "aps:GetMetricMetadata",
///     ],
///     "resources": [example_workspace.arn],
/// }])
/// example_resource_policy = aws.amp.ResourcePolicy("example",
///     workspace_id=example_workspace.id,
///     policy_document=example.json)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleWorkspace = new Aws.Amp.Workspace("example", new()
///     {
///         Alias = "example-workspace",
///     });
///
///     var current = Aws.GetCallerIdentity.Invoke();
///
///     var example = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Principals = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
///                     {
///                         Type = "AWS",
///                         Identifiers = new[]
///                         {
///                             current.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId),
///                         },
///                     },
///                 },
///                 Effect = "Allow",
///                 Actions = new[]
///                 {
///                     "aps:RemoteWrite",
///                     "aps:QueryMetrics",
///                     "aps:GetSeries",
///                     "aps:GetLabels",
///                     "aps:GetMetricMetadata",
///                 },
///                 Resources = new[]
///                 {
///                     exampleWorkspace.Arn,
///                 },
///             },
///         },
///     });
///
///     var exampleResourcePolicy = new Aws.Amp.ResourcePolicy("example", new()
///     {
///         WorkspaceId = exampleWorkspace.Id,
///         PolicyDocument = example.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/amp"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		exampleWorkspace, err := amp.NewWorkspace(ctx, "example", &amp.WorkspaceArgs{
/// 			Alias: pulumi.String("example-workspace"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		current, err := aws.GetCallerIdentity(ctx, &aws.GetCallerIdentityArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example := iam.GetPolicyDocumentOutput(ctx, iam.GetPolicyDocumentOutputArgs{
/// 			Statements: iam.GetPolicyDocumentStatementArray{
/// 				&iam.GetPolicyDocumentStatementArgs{
/// 					Principals: iam.GetPolicyDocumentStatementPrincipalArray{
/// 						&iam.GetPolicyDocumentStatementPrincipalArgs{
/// 							Type: pulumi.String("AWS"),
/// 							Identifiers: pulumi.StringArray{
/// 								pulumi.String(current.AccountId),
/// 							},
/// 						},
/// 					},
/// 					Effect: pulumi.String("Allow"),
/// 					Actions: pulumi.StringArray{
/// 						pulumi.String("aps:RemoteWrite"),
/// 						pulumi.String("aps:QueryMetrics"),
/// 						pulumi.String("aps:GetSeries"),
/// 						pulumi.String("aps:GetLabels"),
/// 						pulumi.String("aps:GetMetricMetadata"),
/// 					},
/// 					Resources: pulumi.StringArray{
/// 						exampleWorkspace.Arn,
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		_, err = amp.NewResourcePolicy(ctx, "example", &amp.ResourcePolicyArgs{
/// 			WorkspaceId:    exampleWorkspace.ID().ToIDOutput().ToStringOutput(),
/// 			PolicyDocument: example.Json(),
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
/// data "aws_getcalleridentity" "current" {
/// }
/// data "aws_iam_getpolicydocument" "example" {
///   statements {
///     principals {
///       type        = "AWS"
///       identifiers = [data.aws_getcalleridentity.current.account_id]
///     }
///     effect    = "Allow"
///     actions   = ["aps:RemoteWrite", "aps:QueryMetrics", "aps:GetSeries", "aps:GetLabels", "aps:GetMetricMetadata"]
///     resources = [aws_amp_workspace.example.arn]
///   }
/// }
///
/// resource "aws_amp_workspace" "example" {
///   alias = "example-workspace"
/// }
/// resource "aws_amp_resourcepolicy" "example" {
///   workspace_id    = aws_amp_workspace.example.id
///   policy_document = data.aws_iam_getpolicydocument.example.json
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.amp.Workspace;
/// import com.pulumi.aws.amp.WorkspaceArgs;
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetCallerIdentityArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementPrincipalArgs;
/// import com.pulumi.aws.amp.ResourcePolicy;
/// import com.pulumi.aws.amp.ResourcePolicyArgs;
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
///         var exampleWorkspace = new Workspace("exampleWorkspace", WorkspaceArgs.builder()
///             .alias("example-workspace")
///             .build());
///
///         final var current = AwsFunctions.getCallerIdentity(GetCallerIdentityArgs.builder()
///             .build());
///
///         final var example = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("AWS")
///                     .identifiers(current.accountId())
///                     .build())
///                 .effect("Allow")
///                 .actions(
///                     "aps:RemoteWrite",
///                     "aps:QueryMetrics",
///                     "aps:GetSeries",
///                     "aps:GetLabels",
///                     "aps:GetMetricMetadata")
///                 .resources(exampleWorkspace.arn())
///                 .build())
///             .build());
///
///         var exampleResourcePolicy = new ResourcePolicy("exampleResourcePolicy", ResourcePolicyArgs.builder()
///             .workspaceId(exampleWorkspace.id())
///             .policyDocument(example.applyValue(_example -> _example.json()))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleWorkspace:
///     type: aws:amp:Workspace
///     name: example
///     properties:
///       alias: example-workspace
///   exampleResourcePolicy:
///     type: aws:amp:ResourcePolicy
///     name: example
///     properties:
///       workspaceId: ${exampleWorkspace.id}
///       policyDocument: ${example.json}
/// variables:
///   current:
///     fn::invoke:
///       function: aws:getCallerIdentity
///       arguments: {}
///   example:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - principals:
///               - type: AWS
///                 identifiers:
///                   - ${current.accountId}
///             effect: Allow
///             actions:
///               - aps:RemoteWrite
///               - aps:QueryMetrics
///               - aps:GetSeries
///               - aps:GetLabels
///               - aps:GetMetricMetadata
///             resources:
///               - ${exampleWorkspace.arn}
/// ```
///
///
/// ### Cross-Account Access
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.amp.Workspace("example", {alias: "example-workspace"});
/// const crossAccount = aws.iam.getPolicyDocumentOutput({
///     statements: [{
///         principals: [{
///             type: "AWS",
///             identifiers: ["arn:aws:iam::123456789012:root"],
///         }],
///         effect: "Allow",
///         actions: [
///             "aps:RemoteWrite",
///             "aps:QueryMetrics",
///         ],
///         resources: [example.arn],
///     }],
/// });
/// const crossAccountResourcePolicy = new aws.amp.ResourcePolicy("cross_account", {
///     workspaceId: example.id,
///     policyDocument: crossAccount.json,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.amp.Workspace("example", alias="example-workspace")
/// cross_account = aws.iam.get_policy_document_output(statements=[{
///     "principals": [{
///         "type": "AWS",
///         "identifiers": ["arn:aws:iam::123456789012:root"],
///     }],
///     "effect": "Allow",
///     "actions": [
///         "aps:RemoteWrite",
///         "aps:QueryMetrics",
///     ],
///     "resources": [example.arn],
/// }])
/// cross_account_resource_policy = aws.amp.ResourcePolicy("cross_account",
///     workspace_id=example.id,
///     policy_document=cross_account.json)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Amp.Workspace("example", new()
///     {
///         Alias = "example-workspace",
///     });
///
///     var crossAccount = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Principals = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
///                     {
///                         Type = "AWS",
///                         Identifiers = new[]
///                         {
///                             "arn:aws:iam::123456789012:root",
///                         },
///                     },
///                 },
///                 Effect = "Allow",
///                 Actions = new[]
///                 {
///                     "aps:RemoteWrite",
///                     "aps:QueryMetrics",
///                 },
///                 Resources = new[]
///                 {
///                     example.Arn,
///                 },
///             },
///         },
///     });
///
///     var crossAccountResourcePolicy = new Aws.Amp.ResourcePolicy("cross_account", new()
///     {
///         WorkspaceId = example.Id,
///         PolicyDocument = crossAccount.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/amp"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := amp.NewWorkspace(ctx, "example", &amp.WorkspaceArgs{
/// 			Alias: pulumi.String("example-workspace"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		crossAccount := iam.GetPolicyDocumentOutput(ctx, iam.GetPolicyDocumentOutputArgs{
/// 			Statements: iam.GetPolicyDocumentStatementArray{
/// 				&iam.GetPolicyDocumentStatementArgs{
/// 					Principals: iam.GetPolicyDocumentStatementPrincipalArray{
/// 						&iam.GetPolicyDocumentStatementPrincipalArgs{
/// 							Type: pulumi.String("AWS"),
/// 							Identifiers: pulumi.StringArray{
/// 								pulumi.String("arn:aws:iam::123456789012:root"),
/// 							},
/// 						},
/// 					},
/// 					Effect: pulumi.String("Allow"),
/// 					Actions: pulumi.StringArray{
/// 						pulumi.String("aps:RemoteWrite"),
/// 						pulumi.String("aps:QueryMetrics"),
/// 					},
/// 					Resources: pulumi.StringArray{
/// 						example.Arn,
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		_, err = amp.NewResourcePolicy(ctx, "cross_account", &amp.ResourcePolicyArgs{
/// 			WorkspaceId:    example.ID().ToIDOutput().ToStringOutput(),
/// 			PolicyDocument: crossAccount.Json(),
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
/// data "aws_iam_getpolicydocument" "crossAccount" {
///   statements {
///     principals {
///       type        = "AWS"
///       identifiers = ["arn:aws:iam::123456789012:root"]
///     }
///     effect    = "Allow"
///     actions   = ["aps:RemoteWrite", "aps:QueryMetrics"]
///     resources = [aws_amp_workspace.example.arn]
///   }
/// }
///
/// resource "aws_amp_workspace" "example" {
///   alias = "example-workspace"
/// }
/// resource "aws_amp_resourcepolicy" "cross_account" {
///   workspace_id    = aws_amp_workspace.example.id
///   policy_document = data.aws_iam_getpolicydocument.crossAccount.json
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.amp.Workspace;
/// import com.pulumi.aws.amp.WorkspaceArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementPrincipalArgs;
/// import com.pulumi.aws.amp.ResourcePolicy;
/// import com.pulumi.aws.amp.ResourcePolicyArgs;
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
///         var example = new Workspace("example", WorkspaceArgs.builder()
///             .alias("example-workspace")
///             .build());
///
///         final var crossAccount = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("AWS")
///                     .identifiers("arn:aws:iam::123456789012:root")
///                     .build())
///                 .effect("Allow")
///                 .actions(
///                     "aps:RemoteWrite",
///                     "aps:QueryMetrics")
///                 .resources(example.arn())
///                 .build())
///             .build());
///
///         var crossAccountResourcePolicy = new ResourcePolicy("crossAccountResourcePolicy", ResourcePolicyArgs.builder()
///             .workspaceId(example.id())
///             .policyDocument(crossAccount.applyValue(_crossAccount -> _crossAccount.json()))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:amp:Workspace
///     properties:
///       alias: example-workspace
///   crossAccountResourcePolicy:
///     type: aws:amp:ResourcePolicy
///     name: cross_account
///     properties:
///       workspaceId: ${example.id}
///       policyDocument: ${crossAccount.json}
/// variables:
///   crossAccount:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - principals:
///               - type: AWS
///                 identifiers:
///                   - arn:aws:iam::123456789012:root
///             effect: Allow
///             actions:
///               - aps:RemoteWrite
///               - aps:QueryMetrics
///             resources:
///               - ${example.arn}
/// ```
///
///
/// ### Service-Specific Access
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.amp.Workspace("example", {alias: "example-workspace"});
/// const serviceAccess = aws.iam.getPolicyDocumentOutput({
///     statements: [{
///         principals: [{
///             type: "Service",
///             identifiers: ["grafana.amazonaws.com"],
///         }],
///         effect: "Allow",
///         actions: [
///             "aps:QueryMetrics",
///             "aps:GetSeries",
///             "aps:GetLabels",
///             "aps:GetMetricMetadata",
///         ],
///         resources: [example.arn],
///     }],
/// });
/// const serviceAccessResourcePolicy = new aws.amp.ResourcePolicy("service_access", {
///     workspaceId: example.id,
///     policyDocument: serviceAccess.json,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.amp.Workspace("example", alias="example-workspace")
/// service_access = aws.iam.get_policy_document_output(statements=[{
///     "principals": [{
///         "type": "Service",
///         "identifiers": ["grafana.amazonaws.com"],
///     }],
///     "effect": "Allow",
///     "actions": [
///         "aps:QueryMetrics",
///         "aps:GetSeries",
///         "aps:GetLabels",
///         "aps:GetMetricMetadata",
///     ],
///     "resources": [example.arn],
/// }])
/// service_access_resource_policy = aws.amp.ResourcePolicy("service_access",
///     workspace_id=example.id,
///     policy_document=service_access.json)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Amp.Workspace("example", new()
///     {
///         Alias = "example-workspace",
///     });
///
///     var serviceAccess = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Principals = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
///                     {
///                         Type = "Service",
///                         Identifiers = new[]
///                         {
///                             "grafana.amazonaws.com",
///                         },
///                     },
///                 },
///                 Effect = "Allow",
///                 Actions = new[]
///                 {
///                     "aps:QueryMetrics",
///                     "aps:GetSeries",
///                     "aps:GetLabels",
///                     "aps:GetMetricMetadata",
///                 },
///                 Resources = new[]
///                 {
///                     example.Arn,
///                 },
///             },
///         },
///     });
///
///     var serviceAccessResourcePolicy = new Aws.Amp.ResourcePolicy("service_access", new()
///     {
///         WorkspaceId = example.Id,
///         PolicyDocument = serviceAccess.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/amp"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := amp.NewWorkspace(ctx, "example", &amp.WorkspaceArgs{
/// 			Alias: pulumi.String("example-workspace"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		serviceAccess := iam.GetPolicyDocumentOutput(ctx, iam.GetPolicyDocumentOutputArgs{
/// 			Statements: iam.GetPolicyDocumentStatementArray{
/// 				&iam.GetPolicyDocumentStatementArgs{
/// 					Principals: iam.GetPolicyDocumentStatementPrincipalArray{
/// 						&iam.GetPolicyDocumentStatementPrincipalArgs{
/// 							Type: pulumi.String("Service"),
/// 							Identifiers: pulumi.StringArray{
/// 								pulumi.String("grafana.amazonaws.com"),
/// 							},
/// 						},
/// 					},
/// 					Effect: pulumi.String("Allow"),
/// 					Actions: pulumi.StringArray{
/// 						pulumi.String("aps:QueryMetrics"),
/// 						pulumi.String("aps:GetSeries"),
/// 						pulumi.String("aps:GetLabels"),
/// 						pulumi.String("aps:GetMetricMetadata"),
/// 					},
/// 					Resources: pulumi.StringArray{
/// 						example.Arn,
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		_, err = amp.NewResourcePolicy(ctx, "service_access", &amp.ResourcePolicyArgs{
/// 			WorkspaceId:    example.ID().ToIDOutput().ToStringOutput(),
/// 			PolicyDocument: serviceAccess.Json(),
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
/// data "aws_iam_getpolicydocument" "serviceAccess" {
///   statements {
///     principals {
///       type        = "Service"
///       identifiers = ["grafana.amazonaws.com"]
///     }
///     effect    = "Allow"
///     actions   = ["aps:QueryMetrics", "aps:GetSeries", "aps:GetLabels", "aps:GetMetricMetadata"]
///     resources = [aws_amp_workspace.example.arn]
///   }
/// }
///
/// resource "aws_amp_workspace" "example" {
///   alias = "example-workspace"
/// }
/// resource "aws_amp_resourcepolicy" "service_access" {
///   workspace_id    = aws_amp_workspace.example.id
///   policy_document = data.aws_iam_getpolicydocument.serviceAccess.json
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.amp.Workspace;
/// import com.pulumi.aws.amp.WorkspaceArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementPrincipalArgs;
/// import com.pulumi.aws.amp.ResourcePolicy;
/// import com.pulumi.aws.amp.ResourcePolicyArgs;
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
///         var example = new Workspace("example", WorkspaceArgs.builder()
///             .alias("example-workspace")
///             .build());
///
///         final var serviceAccess = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("Service")
///                     .identifiers("grafana.amazonaws.com")
///                     .build())
///                 .effect("Allow")
///                 .actions(
///                     "aps:QueryMetrics",
///                     "aps:GetSeries",
///                     "aps:GetLabels",
///                     "aps:GetMetricMetadata")
///                 .resources(example.arn())
///                 .build())
///             .build());
///
///         var serviceAccessResourcePolicy = new ResourcePolicy("serviceAccessResourcePolicy", ResourcePolicyArgs.builder()
///             .workspaceId(example.id())
///             .policyDocument(serviceAccess.applyValue(_serviceAccess -> _serviceAccess.json()))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:amp:Workspace
///     properties:
///       alias: example-workspace
///   serviceAccessResourcePolicy:
///     type: aws:amp:ResourcePolicy
///     name: service_access
///     properties:
///       workspaceId: ${example.id}
///       policyDocument: ${serviceAccess.json}
/// variables:
///   serviceAccess:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - principals:
///               - type: Service
///                 identifiers:
///                   - grafana.amazonaws.com
///             effect: Allow
///             actions:
///               - aps:QueryMetrics
///               - aps:GetSeries
///               - aps:GetLabels
///               - aps:GetMetricMetadata
///             resources:
///               - ${example.arn}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import AMP Resource Policies using the workspace ID. For example:
///
/// ```sh
/// $ pulumi import aws:amp/resourcePolicy:ResourcePolicy example ws-12345678-90ab-cdef-1234-567890abcdef
/// ```
class ResourcePolicy extends pulumi.CustomResource {
  /// The JSON policy document to use as the resource-based policy. This policy defines the permissions that other AWS accounts or services have to access your workspace.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> policyDocument;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The revision ID of the current resource-based policy.
  late final pulumi.Output<String> revisionId;
  late final pulumi.Output<ResourcePolicyTimeouts?> timeouts;
  /// The ID of the workspace to attach the resource-based policy to.
  late final pulumi.Output<String> workspaceId;

  /// Creates a new [ResourcePolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResourcePolicy]. {@macro pulumi_amp_resource_policy_resource_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResourcePolicy(
    String name, {
    ResourcePolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:amp/resourcePolicy:ResourcePolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    policyDocument = registerOutput<String>('policyDocument');
    region = registerOutput<String>('region');
    revisionId = registerOutput<String>('revisionId');
    timeouts = registerOutput<ResourcePolicyTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourcePolicyTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    workspaceId = registerOutput<String>('workspaceId');
  }

  /// Gets an existing [ResourcePolicy] resource's state with the given [name] and [id].
  static ResourcePolicy get(
    String name,
    pulumi.Input<String> id, {
    ResourcePolicyState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ResourcePolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ResourcePolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:amp/resourcePolicy:ResourcePolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    policyDocument = registerOutput<String>('policyDocument');
    region = registerOutput<String>('region');
    revisionId = registerOutput<String>('revisionId');
    timeouts = registerOutput<ResourcePolicyTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourcePolicyTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    workspaceId = registerOutput<String>('workspaceId');
  }

  /// Creates a typed reference to an existing [ResourcePolicy] resource.
  ResourcePolicy.reference(String urn)
    : super(
        'aws:amp/resourcePolicy:ResourcePolicy',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    policyDocument = registerOutput<String>('policyDocument');
    region = registerOutput<String>('region');
    revisionId = registerOutput<String>('revisionId');
    timeouts = registerOutput<ResourcePolicyTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourcePolicyTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    workspaceId = registerOutput<String>('workspaceId');
  }
}
