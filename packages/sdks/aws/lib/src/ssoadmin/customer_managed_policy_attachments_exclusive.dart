import 'package:pulumi/pulumi.dart' as pulumi;
import 'customer_managed_policy_attachments_exclusive_args.dart';
import 'customer_managed_policy_attachments_exclusive_state.dart';
import 'customer_managed_policy_attachments_exclusive_timeouts.dart';

/// Resource for managing exclusive AWS SSO Admin Customer Managed Policy Attachments.
///
/// This resource is designed to manage all customer managed policy attachments for an SSO permission set. Using this resource, Terraform will remove any customer managed policies attached to the permission set that are not defined in the configuration.
///
/// &gt; **WARNING:** Do not use this resource together with the `aws.ssoadmin.CustomerManagedPolicyAttachment` resource for the same permission set. Doing so will cause a conflict and will lead to customer managed policies being removed.
///
/// &gt; Destruction of this resource means Terraform will no longer manage the customer managed policy attachments, **but will not detach any policies**. The permission set will retain all customer managed policies that were attached at the time of destruction.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ssoadmin.getInstances({});
/// const examplePermissionSet = new aws.ssoadmin.PermissionSet("example", {
///     name: "Example",
///     instanceArn: example.then(example => example.arns?.[0]),
/// });
/// const examplePolicy = new aws.iam.Policy("example", {
///     name: "TestPolicy",
///     description: "My test policy",
///     policy: JSON.stringify({
///         Version: "2012-10-17",
///         Statement: [{
///             Action: ["ec2:Describe*"],
///             Effect: "Allow",
///             Resource: "*",
///         }],
///     }),
/// });
/// const exampleCustomerManagedPolicyAttachmentsExclusive = new aws.ssoadmin.CustomerManagedPolicyAttachmentsExclusive("example", {
///     instanceArn: example.then(example => example.arns?.[0]),
///     permissionSetArn: examplePermissionSet.arn,
///     customerManagedPolicyReferences: [{
///         name: examplePolicy.name,
///         path: "/",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example = aws.ssoadmin.get_instances()
/// example_permission_set = aws.ssoadmin.PermissionSet("example",
///     name="Example",
///     instance_arn=example.arns[0])
/// example_policy = aws.iam.Policy("example",
///     name="TestPolicy",
///     description="My test policy",
///     policy=json.dumps({
///         "Version": "2012-10-17",
///         "Statement": [{
///             "Action": ["ec2:Describe*"],
///             "Effect": "Allow",
///             "Resource": "*",
///         }],
///     }))
/// example_customer_managed_policy_attachments_exclusive = aws.ssoadmin.CustomerManagedPolicyAttachmentsExclusive("example",
///     instance_arn=example.arns[0],
///     permission_set_arn=example_permission_set.arn,
///     customer_managed_policy_references=[{
///         "name": example_policy.name,
///         "path": "/",
///     }])
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
///     var example = Aws.SsoAdmin.GetInstances.Invoke();
///
///     var examplePermissionSet = new Aws.SsoAdmin.PermissionSet("example", new()
///     {
///         Name = "Example",
///         InstanceArn = example.Apply(getInstancesResult => getInstancesResult.Arns[0]),
///     });
///
///     var examplePolicy = new Aws.Iam.Policy("example", new()
///     {
///         Name = "TestPolicy",
///         Description = "My test policy",
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
///     var exampleCustomerManagedPolicyAttachmentsExclusive = new Aws.SsoAdmin.CustomerManagedPolicyAttachmentsExclusive("example", new()
///     {
///         InstanceArn = example.Apply(getInstancesResult => getInstancesResult.Arns[0]),
///         PermissionSetArn = examplePermissionSet.Arn,
///         CustomerManagedPolicyReferences = new[]
///         {
///             new Aws.SsoAdmin.Inputs.CustomerManagedPolicyAttachmentsExclusiveCustomerManagedPolicyReferenceArgs
///             {
///                 Name = examplePolicy.Name,
///                 Path = "/",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssoadmin"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := ssoadmin.GetInstances(ctx, &ssoadmin.GetInstancesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		examplePermissionSet, err := ssoadmin.NewPermissionSet(ctx, "example", &ssoadmin.PermissionSetArgs{
/// 			Name:        pulumi.String("Example"),
/// 			InstanceArn: pulumi.String(example.Arns[0]),
/// 		})
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
/// 		examplePolicy, err := iam.NewPolicy(ctx, "example", &iam.PolicyArgs{
/// 			Name:        pulumi.String("TestPolicy"),
/// 			Description: pulumi.String("My test policy"),
/// 			Policy:      pulumi.String(json0),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ssoadmin.NewCustomerManagedPolicyAttachmentsExclusive(ctx, "example", &ssoadmin.CustomerManagedPolicyAttachmentsExclusiveArgs{
/// 			InstanceArn:      pulumi.String(example.Arns[0]),
/// 			PermissionSetArn: examplePermissionSet.Arn,
/// 			CustomerManagedPolicyReferences: ssoadmin.CustomerManagedPolicyAttachmentsExclusiveCustomerManagedPolicyReferenceArray{
/// 				&ssoadmin.CustomerManagedPolicyAttachmentsExclusiveCustomerManagedPolicyReferenceArgs{
/// 					Name: examplePolicy.Name,
/// 					Path: pulumi.String("/"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_ssoadmin_getinstances" "example" {
/// }
///
/// resource "aws_ssoadmin_permissionset" "example" {
///   name         = "Example"
///   instance_arn = data.aws_ssoadmin_getinstances.example.arns[0]
/// }
/// resource "aws_iam_policy" "example" {
///   name        = "TestPolicy"
///   description = "My test policy"
///   policy = jsonencode({
///     "Version" = "2012-10-17"
///     "Statement" = [{
///       "Action"   = ["ec2:Describe*"]
///       "Effect"   = "Allow"
///       "Resource" = "*"
///     }]
///   })
/// }
/// resource "aws_ssoadmin_customermanagedpolicyattachmentsexclusive" "example" {
///   instance_arn       = data.aws_ssoadmin_getinstances.example.arns[0]
///   permission_set_arn = aws_ssoadmin_permissionset.example.arn
///   customer_managed_policy_references {
///     name = aws_iam_policy.example.name
///     path = "/"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ssoadmin.SsoadminFunctions;
/// import com.pulumi.aws.ssoadmin.inputs.GetInstancesArgs;
/// import com.pulumi.aws.ssoadmin.PermissionSet;
/// import com.pulumi.aws.ssoadmin.PermissionSetArgs;
/// import com.pulumi.aws.iam.Policy;
/// import com.pulumi.aws.iam.PolicyArgs;
/// import com.pulumi.aws.ssoadmin.CustomerManagedPolicyAttachmentsExclusive;
/// import com.pulumi.aws.ssoadmin.CustomerManagedPolicyAttachmentsExclusiveArgs;
/// import com.pulumi.aws.ssoadmin.inputs.CustomerManagedPolicyAttachmentsExclusiveCustomerManagedPolicyReferenceArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         final var example = SsoadminFunctions.getInstances(GetInstancesArgs.builder()
///             .build());
///
///         var examplePermissionSet = new PermissionSet("examplePermissionSet", PermissionSetArgs.builder()
///             .name("Example")
///             .instanceArn(example.arns()[0])
///             .build());
///
///         var examplePolicy = new Policy("examplePolicy", PolicyArgs.builder()
///             .name("TestPolicy")
///             .description("My test policy")
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
///         var exampleCustomerManagedPolicyAttachmentsExclusive = new CustomerManagedPolicyAttachmentsExclusive("exampleCustomerManagedPolicyAttachmentsExclusive", CustomerManagedPolicyAttachmentsExclusiveArgs.builder()
///             .instanceArn(example.arns()[0])
///             .permissionSetArn(examplePermissionSet.arn())
///             .customerManagedPolicyReferences(CustomerManagedPolicyAttachmentsExclusiveCustomerManagedPolicyReferenceArgs.builder()
///                 .name(examplePolicy.name())
///                 .path("/")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   examplePermissionSet:
///     type: aws:ssoadmin:PermissionSet
///     name: example
///     properties:
///       name: Example
///       instanceArn: ${example.arns[0]}
///   examplePolicy:
///     type: aws:iam:Policy
///     name: example
///     properties:
///       name: TestPolicy
///       description: My test policy
///       policy:
///         fn::toJSON:
///           Version: 2012-10-17
///           Statement:
///             - Action:
///                 - ec2:Describe*
///               Effect: Allow
///               Resource: '*'
///   exampleCustomerManagedPolicyAttachmentsExclusive:
///     type: aws:ssoadmin:CustomerManagedPolicyAttachmentsExclusive
///     name: example
///     properties:
///       instanceArn: ${example.arns[0]}
///       permissionSetArn: ${examplePermissionSet.arn}
///       customerManagedPolicyReferences:
///         - name: ${examplePolicy.name}
///           path: /
/// variables:
///   example:
///     fn::invoke:
///       function: aws:ssoadmin:getInstances
///       arguments: {}
/// ```
///
///
/// ### Disallow Customer Managed Policy Attachments
///
/// To disallow all customer managed policy attachments, omit the `customerManagedPolicyReference` block.
///
/// &gt; Any customer managed policies attached to the permission set will be **removed**.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ssoadmin.CustomerManagedPolicyAttachmentsExclusive("example", {
///     instanceArn: exampleAwsSsoadminInstances.arns[0],
///     permissionSetArn: exampleAwsSsoadminPermissionSet.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ssoadmin.CustomerManagedPolicyAttachmentsExclusive("example",
///     instance_arn=example_aws_ssoadmin_instances["arns"][0],
///     permission_set_arn=example_aws_ssoadmin_permission_set["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.SsoAdmin.CustomerManagedPolicyAttachmentsExclusive("example", new()
///     {
///         InstanceArn = exampleAwsSsoadminInstances.Arns[0],
///         PermissionSetArn = exampleAwsSsoadminPermissionSet.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssoadmin"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ssoadmin.NewCustomerManagedPolicyAttachmentsExclusive(ctx, "example", &ssoadmin.CustomerManagedPolicyAttachmentsExclusiveArgs{
/// 			InstanceArn:      pulumi.Any(exampleAwsSsoadminInstances.Arns[0]),
/// 			PermissionSetArn: pulumi.Any(exampleAwsSsoadminPermissionSet.Arn),
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
/// resource "aws_ssoadmin_customermanagedpolicyattachmentsexclusive" "example" {
///   instance_arn       = exampleAwsSsoadminInstances.arns[0]
///   permission_set_arn = exampleAwsSsoadminPermissionSet.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ssoadmin.CustomerManagedPolicyAttachmentsExclusive;
/// import com.pulumi.aws.ssoadmin.CustomerManagedPolicyAttachmentsExclusiveArgs;
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
///         var example = new CustomerManagedPolicyAttachmentsExclusive("example", CustomerManagedPolicyAttachmentsExclusiveArgs.builder()
///             .instanceArn(exampleAwsSsoadminInstances.arns()[0])
///             .permissionSetArn(exampleAwsSsoadminPermissionSet.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ssoadmin:CustomerManagedPolicyAttachmentsExclusive
///     properties:
///       instanceArn: ${exampleAwsSsoadminInstances.arns[0]}
///       permissionSetArn: ${exampleAwsSsoadminPermissionSet.arn}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `instanceArn` (String) ARN of the SSO Instance.
/// * `permissionSetArn` (String) ARN of the Permission Set.
///
/// #### Optional
///
/// * `accountId` (String) Account ID where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import SSO Admin Customer Managed Policy Attachments Exclusive using the `instanceArn` and `permissionSetArn` arguments, separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:ssoadmin/customerManagedPolicyAttachmentsExclusive:CustomerManagedPolicyAttachmentsExclusive example arn:aws:sso:::instance/ssoins-1234567890abcdef,arn:aws:sso:::permissionSet/ssoins-1234567890abcdef/ps-1234567890abcdef
/// ```
class CustomerManagedPolicyAttachmentsExclusive extends pulumi.CustomResource {
  /// Specifies the names and paths of the customer managed policies to attach. See Customer Managed Policy Reference below.
  late final pulumi.Output<List<Map<String, dynamic>>?> customerManagedPolicyReferences;
  /// ARN of the SSO Instance.
  late final pulumi.Output<String> instanceArn;
  /// ARN of the Permission Set.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> permissionSetArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  late final pulumi.Output<CustomerManagedPolicyAttachmentsExclusiveTimeouts?> timeouts;

  /// Creates a new [CustomerManagedPolicyAttachmentsExclusive].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CustomerManagedPolicyAttachmentsExclusive]. {@macro pulumi_ssoadmin_customer_managed_policy_attachments_exclusive_customer_managed_policy_attachments_exclusive_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CustomerManagedPolicyAttachmentsExclusive(
    String name, {
    CustomerManagedPolicyAttachmentsExclusiveArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ssoadmin/customerManagedPolicyAttachmentsExclusive:CustomerManagedPolicyAttachmentsExclusive',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    customerManagedPolicyReferences = registerOutput<List<Map<String, dynamic>>?>('customerManagedPolicyReferences');
    instanceArn = registerOutput<String>('instanceArn');
    permissionSetArn = registerOutput<String>('permissionSetArn');
    region = registerOutput<String>('region');
    timeouts = registerOutput<CustomerManagedPolicyAttachmentsExclusiveTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CustomerManagedPolicyAttachmentsExclusiveTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [CustomerManagedPolicyAttachmentsExclusive] resource's state with the given [name] and [id].
  static CustomerManagedPolicyAttachmentsExclusive get(
    String name,
    pulumi.Input<String> id, {
    CustomerManagedPolicyAttachmentsExclusiveState? state,
  }) {
    return CustomerManagedPolicyAttachmentsExclusive._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  CustomerManagedPolicyAttachmentsExclusive._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ssoadmin/customerManagedPolicyAttachmentsExclusive:CustomerManagedPolicyAttachmentsExclusive',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    customerManagedPolicyReferences = registerOutput<List<Map<String, dynamic>>?>('customerManagedPolicyReferences');
    instanceArn = registerOutput<String>('instanceArn');
    permissionSetArn = registerOutput<String>('permissionSetArn');
    region = registerOutput<String>('region');
    timeouts = registerOutput<CustomerManagedPolicyAttachmentsExclusiveTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CustomerManagedPolicyAttachmentsExclusiveTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
