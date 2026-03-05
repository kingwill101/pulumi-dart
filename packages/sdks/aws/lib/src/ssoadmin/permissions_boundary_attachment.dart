import 'package:pulumi/pulumi.dart' as pulumi;
import 'permissions_boundary_attachment_args.dart';
import 'permissions_boundary_attachment_permissions_boundary.dart';
import 'permissions_boundary_attachment_state.dart';

/// Attaches a permissions boundary policy to a Single Sign-On (SSO) Permission Set resource.
///
/// &gt; **NOTE:** A permission set can have at most one permissions boundary attached; using more than one `aws.ssoadmin.PermissionsBoundaryAttachment` references the same permission set will show a permanent difference.
///
/// ## Example Usage
///
/// ### Attaching a customer-managed policy
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
/// const examplePermissionsBoundaryAttachment = new aws.ssoadmin.PermissionsBoundaryAttachment("example", {
///     instanceArn: examplePermissionSet.instanceArn,
///     permissionSetArn: examplePermissionSet.arn,
///     permissionsBoundary: {
///         customerManagedPolicyReference: {
///             name: examplePolicy.name,
///             path: "/",
///         },
///     },
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
/// example_permissions_boundary_attachment = aws.ssoadmin.PermissionsBoundaryAttachment("example",
///     instance_arn=example_permission_set.instance_arn,
///     permission_set_arn=example_permission_set.arn,
///     permissions_boundary={
///         "customer_managed_policy_reference": {
///             "name": example_policy.name,
///             "path": "/",
///         },
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
///     var examplePermissionsBoundaryAttachment = new Aws.SsoAdmin.PermissionsBoundaryAttachment("example", new()
///     {
///         InstanceArn = examplePermissionSet.InstanceArn,
///         PermissionSetArn = examplePermissionSet.Arn,
///         PermissionsBoundary = new Aws.SsoAdmin.Inputs.PermissionsBoundaryAttachmentPermissionsBoundaryArgs
///         {
///             CustomerManagedPolicyReference = new Aws.SsoAdmin.Inputs.PermissionsBoundaryAttachmentPermissionsBoundaryCustomerManagedPolicyReferenceArgs
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
/// 		_, err = ssoadmin.NewPermissionsBoundaryAttachment(ctx, "example", &ssoadmin.PermissionsBoundaryAttachmentArgs{
/// 			InstanceArn:      examplePermissionSet.InstanceArn,
/// 			PermissionSetArn: examplePermissionSet.Arn,
/// 			PermissionsBoundary: &ssoadmin.PermissionsBoundaryAttachmentPermissionsBoundaryArgs{
/// 				CustomerManagedPolicyReference: &ssoadmin.PermissionsBoundaryAttachmentPermissionsBoundaryCustomerManagedPolicyReferenceArgs{
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
/// import com.pulumi.aws.ssoadmin.PermissionsBoundaryAttachment;
/// import com.pulumi.aws.ssoadmin.PermissionsBoundaryAttachmentArgs;
/// import com.pulumi.aws.ssoadmin.inputs.PermissionsBoundaryAttachmentPermissionsBoundaryArgs;
/// import com.pulumi.aws.ssoadmin.inputs.PermissionsBoundaryAttachmentPermissionsBoundaryCustomerManagedPolicyReferenceArgs;
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
///         var examplePermissionsBoundaryAttachment = new PermissionsBoundaryAttachment("examplePermissionsBoundaryAttachment", PermissionsBoundaryAttachmentArgs.builder()
///             .instanceArn(examplePermissionSet.instanceArn())
///             .permissionSetArn(examplePermissionSet.arn())
///             .permissionsBoundary(PermissionsBoundaryAttachmentPermissionsBoundaryArgs.builder()
///                 .customerManagedPolicyReference(PermissionsBoundaryAttachmentPermissionsBoundaryCustomerManagedPolicyReferenceArgs.builder()
///                     .name(examplePolicy.name())
///                     .path("/")
///                     .build())
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
///   examplePermissionsBoundaryAttachment:
///     type: aws:ssoadmin:PermissionsBoundaryAttachment
///     name: example
///     properties:
///       instanceArn: ${examplePermissionSet.instanceArn}
///       permissionSetArn: ${examplePermissionSet.arn}
///       permissionsBoundary:
///         customerManagedPolicyReference:
///           name: ${examplePolicy.name}
///           path: /
/// variables:
///   example:
///     fn::invoke:
///       function: aws:ssoadmin:getInstances
///       arguments: {}
/// ```
///
///
/// ### Attaching an AWS-managed policy
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ssoadmin.PermissionsBoundaryAttachment("example", {
///     instanceArn: exampleAwsSsoadminPermissionSet.instanceArn,
///     permissionSetArn: exampleAwsSsoadminPermissionSet.arn,
///     permissionsBoundary: {
///         managedPolicyArn: "arn:aws:iam::aws:policy/ReadOnlyAccess",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ssoadmin.PermissionsBoundaryAttachment("example",
///     instance_arn=example_aws_ssoadmin_permission_set["instanceArn"],
///     permission_set_arn=example_aws_ssoadmin_permission_set["arn"],
///     permissions_boundary={
///         "managed_policy_arn": "arn:aws:iam::aws:policy/ReadOnlyAccess",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.SsoAdmin.PermissionsBoundaryAttachment("example", new()
///     {
///         InstanceArn = exampleAwsSsoadminPermissionSet.InstanceArn,
///         PermissionSetArn = exampleAwsSsoadminPermissionSet.Arn,
///         PermissionsBoundary = new Aws.SsoAdmin.Inputs.PermissionsBoundaryAttachmentPermissionsBoundaryArgs
///         {
///             ManagedPolicyArn = "arn:aws:iam::aws:policy/ReadOnlyAccess",
///         },
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
/// 		_, err := ssoadmin.NewPermissionsBoundaryAttachment(ctx, "example", &ssoadmin.PermissionsBoundaryAttachmentArgs{
/// 			InstanceArn:      pulumi.Any(exampleAwsSsoadminPermissionSet.InstanceArn),
/// 			PermissionSetArn: pulumi.Any(exampleAwsSsoadminPermissionSet.Arn),
/// 			PermissionsBoundary: &ssoadmin.PermissionsBoundaryAttachmentPermissionsBoundaryArgs{
/// 				ManagedPolicyArn: pulumi.String("arn:aws:iam::aws:policy/ReadOnlyAccess"),
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
/// import com.pulumi.aws.ssoadmin.PermissionsBoundaryAttachment;
/// import com.pulumi.aws.ssoadmin.PermissionsBoundaryAttachmentArgs;
/// import com.pulumi.aws.ssoadmin.inputs.PermissionsBoundaryAttachmentPermissionsBoundaryArgs;
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
///         var example = new PermissionsBoundaryAttachment("example", PermissionsBoundaryAttachmentArgs.builder()
///             .instanceArn(exampleAwsSsoadminPermissionSet.instanceArn())
///             .permissionSetArn(exampleAwsSsoadminPermissionSet.arn())
///             .permissionsBoundary(PermissionsBoundaryAttachmentPermissionsBoundaryArgs.builder()
///                 .managedPolicyArn("arn:aws:iam::aws:policy/ReadOnlyAccess")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ssoadmin:PermissionsBoundaryAttachment
///     properties:
///       instanceArn: ${exampleAwsSsoadminPermissionSet.instanceArn}
///       permissionSetArn: ${exampleAwsSsoadminPermissionSet.arn}
///       permissionsBoundary:
///         managedPolicyArn: arn:aws:iam::aws:policy/ReadOnlyAccess
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import SSO Admin Permissions Boundary Attachments using the `permission_set_arn` and `instance_arn`, separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:ssoadmin/permissionsBoundaryAttachment:PermissionsBoundaryAttachment example arn:aws:sso:::permissionSet/ssoins-2938j0x8920sbj72/ps-80383020jr9302rk,arn:aws:sso:::instance/ssoins-2938j0x8920sbj72
/// ```
class PermissionsBoundaryAttachment extends pulumi.CustomResource {
  /// The Amazon Resource Name (ARN) of the SSO Instance under which the operation will be executed.
  late final pulumi.Output<String> instanceArn;

  /// The Amazon Resource Name (ARN) of the Permission Set.
  late final pulumi.Output<String> permissionSetArn;

  /// The permissions boundary policy. See below.
  late final pulumi.Output<PermissionsBoundaryAttachmentPermissionsBoundary>
  permissionsBoundary;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [PermissionsBoundaryAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PermissionsBoundaryAttachment]. {@macro pulumi_ssoadmin_permissions_boundary_attachment_permissions_boundary_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PermissionsBoundaryAttachment(
    String name, {
    PermissionsBoundaryAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:ssoadmin/permissionsBoundaryAttachment:PermissionsBoundaryAttachment',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    instanceArn = registerOutput<String>('instanceArn');
    permissionSetArn = registerOutput<String>('permissionSetArn');
    permissionsBoundary =
        registerOutput<PermissionsBoundaryAttachmentPermissionsBoundary>(
          'permissionsBoundary',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return PermissionsBoundaryAttachmentPermissionsBoundary.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    region = registerOutput<String>('region');
  }

  /// Gets an existing [PermissionsBoundaryAttachment] resource's state with the given [name] and [id].
  static PermissionsBoundaryAttachment get(
    String name,
    pulumi.Input<String> id, {
    PermissionsBoundaryAttachmentState? state,
  }) {
    return PermissionsBoundaryAttachment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  PermissionsBoundaryAttachment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:ssoadmin/permissionsBoundaryAttachment:PermissionsBoundaryAttachment',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    instanceArn = registerOutput<String>('instanceArn');
    permissionSetArn = registerOutput<String>('permissionSetArn');
    permissionsBoundary =
        registerOutput<PermissionsBoundaryAttachmentPermissionsBoundary>(
          'permissionsBoundary',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return PermissionsBoundaryAttachmentPermissionsBoundary.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    region = registerOutput<String>('region');
  }
}
