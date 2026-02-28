import 'package:pulumi/pulumi.dart' as pulumi;
import 'role_args.dart';
import 'role_inline_policy.dart';

/// Provides an IAM role.
///
/// > **NOTE:** If policies are attached to the role via the `aws.iam.PolicyAttachment` resource and you are modifying the role `name` or `path`, the `force_detach_policies` argument must be set to `true` and applied before attempting the operation otherwise you will encounter a `DeleteConflict` error. The `aws.iam.RolePolicyAttachment` resource (recommended) does not have this requirement.
///
/// > **NOTE:** If you use this resource's `managed_policy_arns` argument or `inline_policy` configuration blocks, this resource will take over exclusive management of the role's respective policy types (e.g., both policy types if both arguments are used). These arguments are incompatible with other ways of managing a role's policies, such as `aws.iam.PolicyAttachment`, `aws.iam.RolePolicyAttachment`, and `aws.iam.RolePolicy`. If you attempt to manage a role's policies by multiple means, you will get resource cycling and/or errors.
///
/// > **NOTE:** We suggest using explicit JSON encoding or `aws.iam.getPolicyDocument` when assigning a value to `policy`. They seamlessly translate configuration to JSON, enabling you to maintain consistency within your configuration without the need for context switches. Also, you can sidestep potential complications arising from formatting discrepancies, whitespace inconsistencies, and other nuances inherent to JSON.
///
/// ## Example Usage
///
/// ### Basic Example
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const testRole = new aws.iam.Role("test_role", {
///     name: "test_role",
///     assumeRolePolicy: JSON.stringify({
///         Version: "2012-10-17",
///         Statement: [{
///             Action: "sts:AssumeRole",
///             Effect: "Allow",
///             Sid: "",
///             Principal: {
///                 Service: "ec2.amazonaws.com",
///             },
///         }],
///     }),
///     tags: {
///         "tag-key": "tag-value",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// test_role = aws.iam.Role("test_role",
///     name="test_role",
///     assume_role_policy=json.dumps({
///         "Version": "2012-10-17",
///         "Statement": [{
///             "Action": "sts:AssumeRole",
///             "Effect": "Allow",
///             "Sid": "",
///             "Principal": {
///                 "Service": "ec2.amazonaws.com",
///             },
///         }],
///     }),
///     tags={
///         "tag-key": "tag-value",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var testRole = new Aws.Iam.Role("test_role", new()
///     {
///         Name = "test_role",
///         AssumeRolePolicy = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["Version"] = "2012-10-17",
///             ["Statement"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["Action"] = "sts:AssumeRole",
///                     ["Effect"] = "Allow",
///                     ["Sid"] = "",
///                     ["Principal"] = new Dictionary<string, object?>
///                     {
///                         ["Service"] = "ec2.amazonaws.com",
///                     },
///                 },
///             },
///         }),
///         Tags =
///         {
///             { "tag-key", "tag-value" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"Version": "2012-10-17",
/// 			"Statement": []map[string]interface{}{
/// 				map[string]interface{}{
/// 					"Action": "sts:AssumeRole",
/// 					"Effect": "Allow",
/// 					"Sid":    "",
/// 					"Principal": map[string]interface{}{
/// 						"Service": "ec2.amazonaws.com",
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = iam.NewRole(ctx, "test_role", &iam.RoleArgs{
/// 			Name:             pulumi.String("test_role"),
/// 			AssumeRolePolicy: pulumi.String(json0),
/// 			Tags: pulumi.StringMap{
/// 				"tag-key": pulumi.String("tag-value"),
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
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         var testRole = new Role("testRole", RoleArgs.builder()
///             .name("test_role")
///             .assumeRolePolicy(serializeJson(
///                 jsonObject(
///                     jsonProperty("Version", "2012-10-17"),
///                     jsonProperty("Statement", jsonArray(jsonObject(
///                         jsonProperty("Action", "sts:AssumeRole"),
///                         jsonProperty("Effect", "Allow"),
///                         jsonProperty("Sid", ""),
///                         jsonProperty("Principal", jsonObject(
///                             jsonProperty("Service", "ec2.amazonaws.com")
///                         ))
///                     )))
///                 )))
///             .tags(Map.of("tag-key", "tag-value"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   testRole:
///     type: aws:iam:Role
///     name: test_role
///     properties:
///       name: test_role
///       assumeRolePolicy:
///         fn::toJSON:
///           Version: 2012-10-17
///           Statement:
///             - Action: sts:AssumeRole
///               Effect: Allow
///               Sid: ""
///               Principal:
///                 Service: ec2.amazonaws.com
///       tags:
///         tag-key: tag-value
/// ```
///
///
/// ### Example of Using Data Source for Assume Role Policy
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const instanceAssumeRolePolicy = aws.iam.getPolicyDocument({
///     statements: [{
///         actions: ["sts:AssumeRole"],
///         principals: [{
///             type: "Service",
///             identifiers: ["ec2.amazonaws.com"],
///         }],
///     }],
/// });
/// const instance = new aws.iam.Role("instance", {
///     name: "instance_role",
///     path: "/system/",
///     assumeRolePolicy: instanceAssumeRolePolicy.then(instanceAssumeRolePolicy => instanceAssumeRolePolicy.json),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// instance_assume_role_policy = aws.iam.get_policy_document(statements=[{
///     "actions": ["sts:AssumeRole"],
///     "principals": [{
///         "type": "Service",
///         "identifiers": ["ec2.amazonaws.com"],
///     }],
/// }])
/// instance = aws.iam.Role("instance",
///     name="instance_role",
///     path="/system/",
///     assume_role_policy=instance_assume_role_policy.json)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var instanceAssumeRolePolicy = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Actions = new[]
///                 {
///                     "sts:AssumeRole",
///                 },
///                 Principals = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
///                     {
///                         Type = "Service",
///                         Identifiers = new[]
///                         {
///                             "ec2.amazonaws.com",
///                         },
///                     },
///                 },
///             },
///         },
///     });
///
///     var instance = new Aws.Iam.Role("instance", new()
///     {
///         Name = "instance_role",
///         Path = "/system/",
///         AssumeRolePolicy = instanceAssumeRolePolicy.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		instanceAssumeRolePolicy, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			Statements: []iam.GetPolicyDocumentStatement{
/// 				{
/// 					Actions: []string{
/// 						"sts:AssumeRole",
/// 					},
/// 					Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// 						{
/// 							Type: "Service",
/// 							Identifiers: []string{
/// 								"ec2.amazonaws.com",
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = iam.NewRole(ctx, "instance", &iam.RoleArgs{
/// 			Name:             pulumi.String("instance_role"),
/// 			Path:             pulumi.String("/system/"),
/// 			AssumeRolePolicy: pulumi.String(instanceAssumeRolePolicy.Json),
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
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
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
///         final var instanceAssumeRolePolicy = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .actions("sts:AssumeRole")
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("Service")
///                     .identifiers("ec2.amazonaws.com")
///                     .build())
///                 .build())
///             .build());
///
///         var instance = new Role("instance", RoleArgs.builder()
///             .name("instance_role")
///             .path("/system/")
///             .assumeRolePolicy(instanceAssumeRolePolicy.json())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   instance:
///     type: aws:iam:Role
///     properties:
///       name: instance_role
///       path: /system/
///       assumeRolePolicy: ${instanceAssumeRolePolicy.json}
/// variables:
///   instanceAssumeRolePolicy:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - actions:
///               - sts:AssumeRole
///             principals:
///               - type: Service
///                 identifiers:
///                   - ec2.amazonaws.com
/// ```
///
///
/// ### Example of Exclusive Inline Policies
///
/// > The `inline_policy` argument is deprecated. Use the `aws.iam.RolePolicy` resource instead. If Pulumi should exclusively manage all inline policy associations (the current behavior of this argument), use the `aws.iam.RolePoliciesExclusive` resource as well.
///
/// This example creates an IAM role with two inline IAM policies. If someone adds another inline policy out-of-band, on the next apply, this provider will remove that policy. If someone deletes these policies out-of-band, this provider will recreate them.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const inlinePolicy = aws.iam.getPolicyDocument({
///     statements: [{
///         actions: ["ec2:DescribeAccountAttributes"],
///         resources: ["*"],
///     }],
/// });
/// const example = new aws.iam.Role("example", {
///     name: "yak_role",
///     assumeRolePolicy: instanceAssumeRolePolicy.json,
///     inlinePolicies: [
///         {
///             name: "my_inline_policy",
///             policy: JSON.stringify({
///                 Version: "2012-10-17",
///                 Statement: [{
///                     Action: ["ec2:Describe*"],
///                     Effect: "Allow",
///                     Resource: "*",
///                 }],
///             }),
///         },
///         {
///             name: "policy-8675309",
///             policy: inlinePolicy.then(inlinePolicy => inlinePolicy.json),
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// inline_policy = aws.iam.get_policy_document(statements=[{
///     "actions": ["ec2:DescribeAccountAttributes"],
///     "resources": ["*"],
/// }])
/// example = aws.iam.Role("example",
///     name="yak_role",
///     assume_role_policy=instance_assume_role_policy["json"],
///     inline_policies=[
///         {
///             "name": "my_inline_policy",
///             "policy": json.dumps({
///                 "Version": "2012-10-17",
///                 "Statement": [{
///                     "Action": ["ec2:Describe*"],
///                     "Effect": "Allow",
///                     "Resource": "*",
///                 }],
///             }),
///         },
///         {
///             "name": "policy-8675309",
///             "policy": inline_policy.json,
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var inlinePolicy = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Actions = new[]
///                 {
///                     "ec2:DescribeAccountAttributes",
///                 },
///                 Resources = new[]
///                 {
///                     "*",
///                 },
///             },
///         },
///     });
///
///     var example = new Aws.Iam.Role("example", new()
///     {
///         Name = "yak_role",
///         AssumeRolePolicy = instanceAssumeRolePolicy.Json,
///         InlinePolicies = new[]
///         {
///             new Aws.Iam.Inputs.RoleInlinePolicyArgs
///             {
///                 Name = "my_inline_policy",
///                 Policy = JsonSerializer.Serialize(new Dictionary<string, object?>
///                 {
///                     ["Version"] = "2012-10-17",
///                     ["Statement"] = new[]
///                     {
///                         new Dictionary<string, object?>
///                         {
///                             ["Action"] = new[]
///                             {
///                                 "ec2:Describe*",
///                             },
///                             ["Effect"] = "Allow",
///                             ["Resource"] = "*",
///                         },
///                     },
///                 }),
///             },
///             new Aws.Iam.Inputs.RoleInlinePolicyArgs
///             {
///                 Name = "policy-8675309",
///                 Policy = inlinePolicy.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		inlinePolicy, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			Statements: []iam.GetPolicyDocumentStatement{
/// 				{
/// 					Actions: []string{
/// 						"ec2:DescribeAccountAttributes",
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
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"Version": "2012-10-17",
/// 			"Statement": []map[string]interface{}{
/// 				map[string]interface{}{
/// 					"Action": []string{
/// 						"ec2:Describe*",
/// 					},
/// 					"Effect":   "Allow",
/// 					"Resource": "*",
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = iam.NewRole(ctx, "example", &iam.RoleArgs{
/// 			Name:             pulumi.String("yak_role"),
/// 			AssumeRolePolicy: pulumi.Any(instanceAssumeRolePolicy.Json),
/// 			InlinePolicies: iam.RoleInlinePolicyArray{
/// 				&iam.RoleInlinePolicyArgs{
/// 					Name:   pulumi.String("my_inline_policy"),
/// 					Policy: pulumi.String(json0),
/// 				},
/// 				&iam.RoleInlinePolicyArgs{
/// 					Name:   pulumi.String("policy-8675309"),
/// 					Policy: pulumi.String(inlinePolicy.Json),
/// 				},
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
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.iam.inputs.RoleInlinePolicyArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         final var inlinePolicy = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .actions("ec2:DescribeAccountAttributes")
///                 .resources("*")
///                 .build())
///             .build());
///
///         var example = new Role("example", RoleArgs.builder()
///             .name("yak_role")
///             .assumeRolePolicy(instanceAssumeRolePolicy.json())
///             .inlinePolicies(
///                 RoleInlinePolicyArgs.builder()
///                     .name("my_inline_policy")
///                     .policy(serializeJson(
///                         jsonObject(
///                             jsonProperty("Version", "2012-10-17"),
///                             jsonProperty("Statement", jsonArray(jsonObject(
///                                 jsonProperty("Action", jsonArray("ec2:Describe*")),
///                                 jsonProperty("Effect", "Allow"),
///                                 jsonProperty("Resource", "*")
///                             )))
///                         )))
///                     .build(),
///                 RoleInlinePolicyArgs.builder()
///                     .name("policy-8675309")
///                     .policy(inlinePolicy.json())
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:iam:Role
///     properties:
///       name: yak_role
///       assumeRolePolicy: ${instanceAssumeRolePolicy.json}
///       inlinePolicies:
///         - name: my_inline_policy
///           policy:
///             fn::toJSON:
///               Version: 2012-10-17
///               Statement:
///                 - Action:
///                     - ec2:Describe*
///                   Effect: Allow
///                   Resource: '*'
///         - name: policy-8675309
///           policy: ${inlinePolicy.json}
/// variables:
///   inlinePolicy:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - actions:
///               - ec2:DescribeAccountAttributes
///             resources:
///               - '*'
/// ```
///
///
/// ### Example of Removing Inline Policies
///
/// > The `inline_policy` argument is deprecated. Use the `aws.iam.RolePolicy` resource instead. If Pulumi should exclusively manage all inline policy associations (the current behavior of this argument), use the `aws.iam.RolePoliciesExclusive` resource as well.
///
/// This example creates an IAM role with what appears to be empty IAM `inline_policy` argument instead of using `inline_policy` as a configuration block. The result is that if someone were to add an inline policy out-of-band, on the next apply, this provider will remove that policy.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.iam.Role("example", {
///     inlinePolicies: [{}],
///     name: "yak_role",
///     assumeRolePolicy: instanceAssumeRolePolicy.json,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.iam.Role("example",
///     inline_policies=[{}],
///     name="yak_role",
///     assume_role_policy=instance_assume_role_policy["json"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Iam.Role("example", new()
///     {
///         InlinePolicies = new[]
///         {
///             null,
///         },
///         Name = "yak_role",
///         AssumeRolePolicy = instanceAssumeRolePolicy.Json,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iam.NewRole(ctx, "example", &iam.RoleArgs{
/// 			InlinePolicies: iam.RoleInlinePolicyArray{
/// 				&iam.RoleInlinePolicyArgs{},
/// 			},
/// 			Name:             pulumi.String("yak_role"),
/// 			AssumeRolePolicy: pulumi.Any(instanceAssumeRolePolicy.Json),
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
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.iam.inputs.RoleInlinePolicyArgs;
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
///         var example = new Role("example", RoleArgs.builder()
///             .inlinePolicies(RoleInlinePolicyArgs.builder()
///                 .build())
///             .name("yak_role")
///             .assumeRolePolicy(instanceAssumeRolePolicy.json())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:iam:Role
///     properties:
///       inlinePolicies:
///         - {}
///       name: yak_role
///       assumeRolePolicy: ${instanceAssumeRolePolicy.json}
/// ```
///
///
/// ### Example of Exclusive Managed Policies
///
/// > The `managed_policy_arns` argument is deprecated. Use the `aws.iam.RolePolicyAttachment` resource instead. If Pulumi should exclusively manage all managed policy attachments (the current behavior of this argument), use the `aws.iam.RolePolicyAttachmentsExclusive` resource as well.
///
/// This example creates an IAM role and attaches two managed IAM policies. If someone attaches another managed policy out-of-band, on the next apply, this provider will detach that policy. If someone detaches these policies out-of-band, this provider will attach them again.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const policyOne = new aws.iam.Policy("policy_one", {
///     name: "policy-618033",
///     policy: JSON.stringify({
///         Version: "2012-10-17",
///         Statement: [{
///             Action: ["ec2:Describe*"],
///             Effect: "Allow",
///             Resource: "*",
///         }],
///     }),
/// });
/// const policyTwo = new aws.iam.Policy("policy_two", {
///     name: "policy-381966",
///     policy: JSON.stringify({
///         Version: "2012-10-17",
///         Statement: [{
///             Action: [
///                 "s3:ListAllMyBuckets",
///                 "s3:ListBucket",
///                 "s3:HeadBucket",
///             ],
///             Effect: "Allow",
///             Resource: "*",
///         }],
///     }),
/// });
/// const example = new aws.iam.Role("example", {
///     name: "yak_role",
///     assumeRolePolicy: instanceAssumeRolePolicy.json,
///     managedPolicyArns: [
///         policyOne.arn,
///         policyTwo.arn,
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// policy_one = aws.iam.Policy("policy_one",
///     name="policy-618033",
///     policy=json.dumps({
///         "Version": "2012-10-17",
///         "Statement": [{
///             "Action": ["ec2:Describe*"],
///             "Effect": "Allow",
///             "Resource": "*",
///         }],
///     }))
/// policy_two = aws.iam.Policy("policy_two",
///     name="policy-381966",
///     policy=json.dumps({
///         "Version": "2012-10-17",
///         "Statement": [{
///             "Action": [
///                 "s3:ListAllMyBuckets",
///                 "s3:ListBucket",
///                 "s3:HeadBucket",
///             ],
///             "Effect": "Allow",
///             "Resource": "*",
///         }],
///     }))
/// example = aws.iam.Role("example",
///     name="yak_role",
///     assume_role_policy=instance_assume_role_policy["json"],
///     managed_policy_arns=[
///         policy_one.arn,
///         policy_two.arn,
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policyOne = new Aws.Iam.Policy("policy_one", new()
///     {
///         Name = "policy-618033",
///         PolicyDocument = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["Version"] = "2012-10-17",
///             ["Statement"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["Action"] = new[]
///                     {
///                         "ec2:Describe*",
///                     },
///                     ["Effect"] = "Allow",
///                     ["Resource"] = "*",
///                 },
///             },
///         }),
///     });
///
///     var policyTwo = new Aws.Iam.Policy("policy_two", new()
///     {
///         Name = "policy-381966",
///         PolicyDocument = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["Version"] = "2012-10-17",
///             ["Statement"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["Action"] = new[]
///                     {
///                         "s3:ListAllMyBuckets",
///                         "s3:ListBucket",
///                         "s3:HeadBucket",
///                     },
///                     ["Effect"] = "Allow",
///                     ["Resource"] = "*",
///                 },
///             },
///         }),
///     });
///
///     var example = new Aws.Iam.Role("example", new()
///     {
///         Name = "yak_role",
///         AssumeRolePolicy = instanceAssumeRolePolicy.Json,
///         ManagedPolicyArns = new[]
///         {
///             policyOne.Arn,
///             policyTwo.Arn,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"Version": "2012-10-17",
/// 			"Statement": []map[string]interface{}{
/// 				map[string]interface{}{
/// 					"Action": []string{
/// 						"ec2:Describe*",
/// 					},
/// 					"Effect":   "Allow",
/// 					"Resource": "*",
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		policyOne, err := iam.NewPolicy(ctx, "policy_one", &iam.PolicyArgs{
/// 			Name:   pulumi.String("policy-618033"),
/// 			Policy: pulumi.String(json0),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON1, err := json.Marshal(map[string]interface{}{
/// 			"Version": "2012-10-17",
/// 			"Statement": []map[string]interface{}{
/// 				map[string]interface{}{
/// 					"Action": []string{
/// 						"s3:ListAllMyBuckets",
/// 						"s3:ListBucket",
/// 						"s3:HeadBucket",
/// 					},
/// 					"Effect":   "Allow",
/// 					"Resource": "*",
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json1 := string(tmpJSON1)
/// 		policyTwo, err := iam.NewPolicy(ctx, "policy_two", &iam.PolicyArgs{
/// 			Name:   pulumi.String("policy-381966"),
/// 			Policy: pulumi.String(json1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = iam.NewRole(ctx, "example", &iam.RoleArgs{
/// 			Name:             pulumi.String("yak_role"),
/// 			AssumeRolePolicy: pulumi.Any(instanceAssumeRolePolicy.Json),
/// 			ManagedPolicyArns: pulumi.StringArray{
/// 				policyOne.Arn,
/// 				policyTwo.Arn,
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
/// import com.pulumi.aws.iam.Policy;
/// import com.pulumi.aws.iam.PolicyArgs;
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         var policyOne = new Policy("policyOne", PolicyArgs.builder()
///             .name("policy-618033")
///             .policy(serializeJson(
///                 jsonObject(
///                     jsonProperty("Version", "2012-10-17"),
///                     jsonProperty("Statement", jsonArray(jsonObject(
///                         jsonProperty("Action", jsonArray("ec2:Describe*")),
///                         jsonProperty("Effect", "Allow"),
///                         jsonProperty("Resource", "*")
///                     )))
///                 )))
///             .build());
///
///         var policyTwo = new Policy("policyTwo", PolicyArgs.builder()
///             .name("policy-381966")
///             .policy(serializeJson(
///                 jsonObject(
///                     jsonProperty("Version", "2012-10-17"),
///                     jsonProperty("Statement", jsonArray(jsonObject(
///                         jsonProperty("Action", jsonArray(
///                             "s3:ListAllMyBuckets",
///                             "s3:ListBucket",
///                             "s3:HeadBucket"
///                         )),
///                         jsonProperty("Effect", "Allow"),
///                         jsonProperty("Resource", "*")
///                     )))
///                 )))
///             .build());
///
///         var example = new Role("example", RoleArgs.builder()
///             .name("yak_role")
///             .assumeRolePolicy(instanceAssumeRolePolicy.json())
///             .managedPolicyArns(
///                 policyOne.arn(),
///                 policyTwo.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:iam:Role
///     properties:
///       name: yak_role
///       assumeRolePolicy: ${instanceAssumeRolePolicy.json}
///       managedPolicyArns:
///         - ${policyOne.arn}
///         - ${policyTwo.arn}
///   policyOne:
///     type: aws:iam:Policy
///     name: policy_one
///     properties:
///       name: policy-618033
///       policy:
///         fn::toJSON:
///           Version: 2012-10-17
///           Statement:
///             - Action:
///                 - ec2:Describe*
///               Effect: Allow
///               Resource: '*'
///   policyTwo:
///     type: aws:iam:Policy
///     name: policy_two
///     properties:
///       name: policy-381966
///       policy:
///         fn::toJSON:
///           Version: 2012-10-17
///           Statement:
///             - Action:
///                 - s3:ListAllMyBuckets
///                 - s3:ListBucket
///                 - s3:HeadBucket
///               Effect: Allow
///               Resource: '*'
/// ```
///
///
/// ### Example of Removing Managed Policies
///
/// > The `managed_policy_arns` argument is deprecated. Use the `aws.iam.RolePolicyAttachment` resource instead. If Pulumi should exclusively manage all managed policy attachments (the current behavior of this argument), use the `aws.iam.RolePolicyAttachmentsExclusive` resource as well.
///
/// This example creates an IAM role with an empty `managed_policy_arns` argument. If someone attaches a policy out-of-band, on the next apply, this provider will detach that policy.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.iam.Role("example", {
///     name: "yak_role",
///     assumeRolePolicy: instanceAssumeRolePolicy.json,
///     managedPolicyArns: [],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.iam.Role("example",
///     name="yak_role",
///     assume_role_policy=instance_assume_role_policy["json"],
///     managed_policy_arns=[])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Iam.Role("example", new()
///     {
///         Name = "yak_role",
///         AssumeRolePolicy = instanceAssumeRolePolicy.Json,
///         ManagedPolicyArns = new[] {},
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iam.NewRole(ctx, "example", &iam.RoleArgs{
/// 			Name:              pulumi.String("yak_role"),
/// 			AssumeRolePolicy:  pulumi.Any(instanceAssumeRolePolicy.Json),
/// 			ManagedPolicyArns: pulumi.StringArray{},
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
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
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
///         var example = new Role("example", RoleArgs.builder()
///             .name("yak_role")
///             .assumeRolePolicy(instanceAssumeRolePolicy.json())
///             .managedPolicyArns()
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:iam:Role
///     properties:
///       name: yak_role
///       assumeRolePolicy: ${instanceAssumeRolePolicy.json}
///       managedPolicyArns: []
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `name` (String) Name of the IAM role.
///
/// #### Optional
///
/// * `account_id` (String) AWS Account where this resource is managed.
///
///
/// Using `pulumi import`, import IAM Roles using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:iam/role:Role example developer_name
/// ```
class Role extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) specifying the role.
  late final pulumi.Output<String> arn;
  /// Policy that grants an entity permission to assume the role.
  ///
  /// > **NOTE:** The `assume_role_policy` is very similar to but slightly different than a standard IAM policy and cannot use an `aws.iam.Policy` resource.  However, it _can_ use an `aws.iam.getPolicyDocument` data source. See the example above of how this works.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> assumeRolePolicy;
  /// Creation date of the IAM role.
  late final pulumi.Output<String> createDate;
  /// Description of the role.
  late final pulumi.Output<String?> description;
  /// Whether to force detaching any policies the role has before destroying it. Defaults to `false`.
  late final pulumi.Output<bool?> forceDetachPolicies;
  /// Configuration block defining an exclusive set of IAM inline policies associated with the IAM role. See below. If no blocks are configured, Pulumi will not manage any inline policies in this resource. Configuring one empty block (i.e., `inline_policy {}`) will cause Pulumi to remove _all_ inline policies added out of band on `apply`.
  late final pulumi.Output<List<RoleInlinePolicy>> inlinePolicies;
  /// Set of exclusive IAM managed policy ARNs to attach to the IAM role. If this attribute is not configured, Pulumi will ignore policy attachments to this resource. When configured, Pulumi will align the role's managed policy attachments with this set by attaching or detaching managed policies. Configuring an empty set (i.e., `managed_policy_arns = []`) will cause Pulumi to remove _all_ managed policy attachments.
  late final pulumi.Output<List<String>> managedPolicyArns;
  /// Maximum session duration (in seconds) that you want to set for the specified role. If you do not specify a value for this setting, the default maximum of one hour is applied. This setting can have a value from 1 hour to 12 hours.
  late final pulumi.Output<int?> maxSessionDuration;
  /// Friendly name of the role. If omitted, the provider will assign a random, unique name. See [IAM Identifiers](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html) for more information.
  late final pulumi.Output<String> name;
  /// Creates a unique friendly name beginning with the specified prefix. Conflicts with `name`.
  late final pulumi.Output<String> namePrefix;
  /// Path to the role. See [IAM Identifiers](https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html) for more information.
  late final pulumi.Output<String?> path;
  /// ARN of the policy that is used to set the permissions boundary for the role.
  late final pulumi.Output<String?> permissionsBoundary;
  /// Key-value mapping of tags for the IAM role. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Stable and unique string identifying the role.
  late final pulumi.Output<String> uniqueId;

  /// Creates a new [Role].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Role]. {@macro pulumi_iam_role_role_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Role(
    String name, {
    RoleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:iam/role:Role',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.assumeRolePolicy = registerOutput<String>('assumeRolePolicy');
    this.createDate = registerOutput<String>('createDate');
    this.description = registerOutput<String?>('description');
    this.forceDetachPolicies = registerOutput<bool?>('forceDetachPolicies');
    this.inlinePolicies = registerOutput<List<RoleInlinePolicy>>('inlinePolicies');
    this.managedPolicyArns = registerOutput<List<String>>('managedPolicyArns');
    this.maxSessionDuration = registerOutput<int?>('maxSessionDuration');
    this.name = registerOutput<String>('name');
    this.namePrefix = registerOutput<String>('namePrefix');
    this.path = registerOutput<String?>('path');
    this.permissionsBoundary = registerOutput<String?>('permissionsBoundary');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.uniqueId = registerOutput<String>('uniqueId');
  }
}
