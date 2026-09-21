import 'package:pulumi/pulumi.dart' as pulumi;
import 'entitlement_args.dart';
import 'entitlement_entitlement.dart';
import 'entitlement_state.dart';

/// Manages an AWS Account Access Entitlement. An Entitlement grants an IAM Identity Center principal the ability to assume a specific IAM role in a target AWS account through an Account Access Application.
///
/// &gt; **Note:** Entitlements are immutable. Changing `applicationArn` or `entitlement` triggers replacement.
///
/// &gt; **Note:** The IAM role referenced by `entitlement.principal_role.role_arn` must have a trust policy that allows the Account Access service to assume it. The role's `assumeRolePolicy` must grant `sts:AssumeRole`, `sts:SetContext`, and `sts:TagSession` to the `account-access.amazonaws.com` service principal. Without `sts:TagSession`, credential retrieval for the entitlement fails. See the Complete Example below.
///
/// ## Example Usage
///
/// ### User Principal
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.accountaccess.Entitlement("example", {
///     entitlement: {
///         principalRole: {
///             principal: {
///                 identityCenter: {
///                     userId: "11111111-2222-3333-4444-555555555555",
///                 },
///             },
///             roleArn: "arn:aws:iam::123456789012:role/Developer",
///         },
///     },
///     applicationArn: exampleAwsAccountaccessApplication.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.accountaccess.Entitlement("example",
///     entitlement={
///         "principal_role": {
///             "principal": {
///                 "identity_center": {
///                     "user_id": "11111111-2222-3333-4444-555555555555",
///                 },
///             },
///             "role_arn": "arn:aws:iam::123456789012:role/Developer",
///         },
///     },
///     application_arn=example_aws_accountaccess_application["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.AccountAccess.Entitlement("example", new()
///     {
///         EntitlementDetails = new Aws.AccountAccess.Inputs.EntitlementEntitlementArgs
///         {
///             PrincipalRole = new Aws.AccountAccess.Inputs.EntitlementEntitlementPrincipalRoleArgs
///             {
///                 Principal = new Aws.AccountAccess.Inputs.EntitlementEntitlementPrincipalRolePrincipalArgs
///                 {
///                     IdentityCenter = new Aws.AccountAccess.Inputs.EntitlementEntitlementPrincipalRolePrincipalIdentityCenterArgs
///                     {
///                         UserId = "11111111-2222-3333-4444-555555555555",
///                     },
///                 },
///                 RoleArn = "arn:aws:iam::123456789012:role/Developer",
///             },
///         },
///         ApplicationArn = exampleAwsAccountaccessApplication.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/accountaccess"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := accountaccess.NewEntitlement(ctx, "example", &accountaccess.EntitlementArgs{
/// 			Entitlement: &accountaccess.EntitlementEntitlementArgs{
/// 				PrincipalRole: &accountaccess.EntitlementEntitlementPrincipalRoleArgs{
/// 					Principal: &accountaccess.EntitlementEntitlementPrincipalRolePrincipalArgs{
/// 						IdentityCenter: &accountaccess.EntitlementEntitlementPrincipalRolePrincipalIdentityCenterArgs{
/// 							UserId: pulumi.String("11111111-2222-3333-4444-555555555555"),
/// 						},
/// 					},
/// 					RoleArn: pulumi.String("arn:aws:iam::123456789012:role/Developer"),
/// 				},
/// 			},
/// 			ApplicationArn: pulumi.Any(exampleAwsAccountaccessApplication.Arn),
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
/// resource "aws_accountaccess_entitlement" "example" {
///   entitlement = {
///     principal_role = {
///       principal = {
///         identity_center = {
///           user_id = "11111111-2222-3333-4444-555555555555"
///         }
///       }
///       role_arn = "arn:aws:iam::123456789012:role/Developer"
///     }
///   }
///   application_arn = exampleAwsAccountaccessApplication.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.accountaccess.Entitlement;
/// import com.pulumi.aws.accountaccess.EntitlementArgs;
/// import com.pulumi.aws.accountaccess.inputs.EntitlementEntitlementArgs;
/// import com.pulumi.aws.accountaccess.inputs.EntitlementEntitlementPrincipalRoleArgs;
/// import com.pulumi.aws.accountaccess.inputs.EntitlementEntitlementPrincipalRolePrincipalArgs;
/// import com.pulumi.aws.accountaccess.inputs.EntitlementEntitlementPrincipalRolePrincipalIdentityCenterArgs;
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
///         var example = new Entitlement("example", EntitlementArgs.builder()
///             .entitlement(EntitlementEntitlementArgs.builder()
///                 .principalRole(EntitlementEntitlementPrincipalRoleArgs.builder()
///                     .principal(EntitlementEntitlementPrincipalRolePrincipalArgs.builder()
///                         .identityCenter(EntitlementEntitlementPrincipalRolePrincipalIdentityCenterArgs.builder()
///                             .userId("11111111-2222-3333-4444-555555555555")
///                             .build())
///                         .build())
///                     .roleArn("arn:aws:iam::123456789012:role/Developer")
///                     .build())
///                 .build())
///             .applicationArn(exampleAwsAccountaccessApplication.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:accountaccess:Entitlement
///     properties:
///       entitlement:
///         principalRole:
///           principal:
///             identityCenter:
///               userId: 11111111-2222-3333-4444-555555555555
///           roleArn: arn:aws:iam::123456789012:role/Developer
///       applicationArn: ${exampleAwsAccountaccessApplication.arn}
/// ```
///
///
/// ### Group Principal
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.accountaccess.Entitlement("example", {
///     entitlement: {
///         principalRole: {
///             principal: {
///                 identityCenter: {
///                     groupId: "aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee",
///                 },
///             },
///             roleArn: "arn:aws:iam::123456789012:role/Engineering",
///         },
///     },
///     applicationArn: exampleAwsAccountaccessApplication.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.accountaccess.Entitlement("example",
///     entitlement={
///         "principal_role": {
///             "principal": {
///                 "identity_center": {
///                     "group_id": "aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee",
///                 },
///             },
///             "role_arn": "arn:aws:iam::123456789012:role/Engineering",
///         },
///     },
///     application_arn=example_aws_accountaccess_application["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.AccountAccess.Entitlement("example", new()
///     {
///         EntitlementDetails = new Aws.AccountAccess.Inputs.EntitlementEntitlementArgs
///         {
///             PrincipalRole = new Aws.AccountAccess.Inputs.EntitlementEntitlementPrincipalRoleArgs
///             {
///                 Principal = new Aws.AccountAccess.Inputs.EntitlementEntitlementPrincipalRolePrincipalArgs
///                 {
///                     IdentityCenter = new Aws.AccountAccess.Inputs.EntitlementEntitlementPrincipalRolePrincipalIdentityCenterArgs
///                     {
///                         GroupId = "aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee",
///                     },
///                 },
///                 RoleArn = "arn:aws:iam::123456789012:role/Engineering",
///             },
///         },
///         ApplicationArn = exampleAwsAccountaccessApplication.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/accountaccess"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := accountaccess.NewEntitlement(ctx, "example", &accountaccess.EntitlementArgs{
/// 			Entitlement: &accountaccess.EntitlementEntitlementArgs{
/// 				PrincipalRole: &accountaccess.EntitlementEntitlementPrincipalRoleArgs{
/// 					Principal: &accountaccess.EntitlementEntitlementPrincipalRolePrincipalArgs{
/// 						IdentityCenter: &accountaccess.EntitlementEntitlementPrincipalRolePrincipalIdentityCenterArgs{
/// 							GroupId: pulumi.String("aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee"),
/// 						},
/// 					},
/// 					RoleArn: pulumi.String("arn:aws:iam::123456789012:role/Engineering"),
/// 				},
/// 			},
/// 			ApplicationArn: pulumi.Any(exampleAwsAccountaccessApplication.Arn),
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
/// resource "aws_accountaccess_entitlement" "example" {
///   entitlement = {
///     principal_role = {
///       principal = {
///         identity_center = {
///           group_id = "aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee"
///         }
///       }
///       role_arn = "arn:aws:iam::123456789012:role/Engineering"
///     }
///   }
///   application_arn = exampleAwsAccountaccessApplication.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.accountaccess.Entitlement;
/// import com.pulumi.aws.accountaccess.EntitlementArgs;
/// import com.pulumi.aws.accountaccess.inputs.EntitlementEntitlementArgs;
/// import com.pulumi.aws.accountaccess.inputs.EntitlementEntitlementPrincipalRoleArgs;
/// import com.pulumi.aws.accountaccess.inputs.EntitlementEntitlementPrincipalRolePrincipalArgs;
/// import com.pulumi.aws.accountaccess.inputs.EntitlementEntitlementPrincipalRolePrincipalIdentityCenterArgs;
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
///         var example = new Entitlement("example", EntitlementArgs.builder()
///             .entitlement(EntitlementEntitlementArgs.builder()
///                 .principalRole(EntitlementEntitlementPrincipalRoleArgs.builder()
///                     .principal(EntitlementEntitlementPrincipalRolePrincipalArgs.builder()
///                         .identityCenter(EntitlementEntitlementPrincipalRolePrincipalIdentityCenterArgs.builder()
///                             .groupId("aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee")
///                             .build())
///                         .build())
///                     .roleArn("arn:aws:iam::123456789012:role/Engineering")
///                     .build())
///                 .build())
///             .applicationArn(exampleAwsAccountaccessApplication.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:accountaccess:Entitlement
///     properties:
///       entitlement:
///         principalRole:
///           principal:
///             identityCenter:
///               groupId: aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee
///           roleArn: arn:aws:iam::123456789012:role/Engineering
///       applicationArn: ${exampleAwsAccountaccessApplication.arn}
/// ```
///
///
/// ### Complete Example
///
/// The target IAM role must trust the Account Access service. This example provisions a role with the required trust policy and grants an entitlement to it.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ssoadmin.getInstances({});
/// const exampleApplication = new aws.accountaccess.Application("example", {identitySource: {
///     identityCenter: {
///         instanceArn: example.then(example => example.arns?.[0]),
///     },
/// }});
/// // The target role must allow the Account Access service to assume it.
/// // sts:TagSession is required for credential retrieval to succeed.
/// const target = new aws.iam.Role("target", {
///     name: "example-account-access-developer",
///     assumeRolePolicy: JSON.stringify({
///         Version: "2012-10-17",
///         Statement: [{
///             Effect: "Allow",
///             Principal: {
///                 Service: "account-access.amazonaws.com",
///             },
///             Action: [
///                 "sts:AssumeRole",
///                 "sts:SetContext",
///                 "sts:TagSession",
///             ],
///         }],
///     }),
/// });
/// const exampleEntitlement = new aws.accountaccess.Entitlement("example", {
///     entitlement: {
///         principalRole: {
///             principal: {
///                 identityCenter: {
///                     userId: "11111111-2222-3333-4444-555555555555",
///                 },
///             },
///             roleArn: target.arn,
///         },
///     },
///     applicationArn: exampleApplication.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example = aws.ssoadmin.get_instances()
/// example_application = aws.accountaccess.Application("example", identity_source={
///     "identity_center": {
///         "instance_arn": example.arns[0],
///     },
/// })
/// # The target role must allow the Account Access service to assume it.
/// # sts:TagSession is required for credential retrieval to succeed.
/// target = aws.iam.Role("target",
///     name="example-account-access-developer",
///     assume_role_policy=json.dumps({
///         "Version": "2012-10-17",
///         "Statement": [{
///             "Effect": "Allow",
///             "Principal": {
///                 "Service": "account-access.amazonaws.com",
///             },
///             "Action": [
///                 "sts:AssumeRole",
///                 "sts:SetContext",
///                 "sts:TagSession",
///             ],
///         }],
///     }))
/// example_entitlement = aws.accountaccess.Entitlement("example",
///     entitlement={
///         "principal_role": {
///             "principal": {
///                 "identity_center": {
///                     "user_id": "11111111-2222-3333-4444-555555555555",
///                 },
///             },
///             "role_arn": target.arn,
///         },
///     },
///     application_arn=example_application.arn)
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
///     var exampleApplication = new Aws.AccountAccess.Application("example", new()
///     {
///         IdentitySource = new Aws.AccountAccess.Inputs.ApplicationIdentitySourceArgs
///         {
///             IdentityCenter = new Aws.AccountAccess.Inputs.ApplicationIdentitySourceIdentityCenterArgs
///             {
///                 InstanceArn = example.Apply(getInstancesResult => getInstancesResult.Arns[0]),
///             },
///         },
///     });
///
///     // The target role must allow the Account Access service to assume it.
///     // sts:TagSession is required for credential retrieval to succeed.
///     var target = new Aws.Iam.Role("target", new()
///     {
///         Name = "example-account-access-developer",
///         AssumeRolePolicy = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["Version"] = "2012-10-17",
///             ["Statement"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["Effect"] = "Allow",
///                     ["Principal"] = new Dictionary<string, object?>
///                     {
///                         ["Service"] = "account-access.amazonaws.com",
///                     },
///                     ["Action"] = new[]
///                     {
///                         "sts:AssumeRole",
///                         "sts:SetContext",
///                         "sts:TagSession",
///                     },
///                 },
///             },
///         }),
///     });
///
///     var exampleEntitlement = new Aws.AccountAccess.Entitlement("example", new()
///     {
///         EntitlementDetails = new Aws.AccountAccess.Inputs.EntitlementEntitlementArgs
///         {
///             PrincipalRole = new Aws.AccountAccess.Inputs.EntitlementEntitlementPrincipalRoleArgs
///             {
///                 Principal = new Aws.AccountAccess.Inputs.EntitlementEntitlementPrincipalRolePrincipalArgs
///                 {
///                     IdentityCenter = new Aws.AccountAccess.Inputs.EntitlementEntitlementPrincipalRolePrincipalIdentityCenterArgs
///                     {
///                         UserId = "11111111-2222-3333-4444-555555555555",
///                     },
///                 },
///                 RoleArn = target.Arn,
///             },
///         },
///         ApplicationArn = exampleApplication.Arn,
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/accountaccess"
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
/// 		exampleApplication, err := accountaccess.NewApplication(ctx, "example", &accountaccess.ApplicationArgs{
/// 			IdentitySource: &accountaccess.ApplicationIdentitySourceArgs{
/// 				IdentityCenter: &accountaccess.ApplicationIdentitySourceIdentityCenterArgs{
/// 					InstanceArn: pulumi.String(example.Arns[0]),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"Version": "2012-10-17",
/// 			"Statement": []map[string]interface{}{
/// 				map[string]interface{}{
/// 					"Effect": "Allow",
/// 					"Principal": map[string]string{
/// 						"Service": "account-access.amazonaws.com",
/// 					},
/// 					"Action": []string{
/// 						"sts:AssumeRole",
/// 						"sts:SetContext",
/// 						"sts:TagSession",
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		// The target role must allow the Account Access service to assume it.
/// 		// sts:TagSession is required for credential retrieval to succeed.
/// 		target, err := iam.NewRole(ctx, "target", &iam.RoleArgs{
/// 			Name:             pulumi.String("example-account-access-developer"),
/// 			AssumeRolePolicy: pulumi.String(json0),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = accountaccess.NewEntitlement(ctx, "example", &accountaccess.EntitlementArgs{
/// 			Entitlement: &accountaccess.EntitlementEntitlementArgs{
/// 				PrincipalRole: &accountaccess.EntitlementEntitlementPrincipalRoleArgs{
/// 					Principal: &accountaccess.EntitlementEntitlementPrincipalRolePrincipalArgs{
/// 						IdentityCenter: &accountaccess.EntitlementEntitlementPrincipalRolePrincipalIdentityCenterArgs{
/// 							UserId: pulumi.String("11111111-2222-3333-4444-555555555555"),
/// 						},
/// 					},
/// 					RoleArn: target.Arn,
/// 				},
/// 			},
/// 			ApplicationArn: exampleApplication.Arn,
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
/// resource "aws_accountaccess_application" "example" {
///   identity_source = {
///     identity_center = {
///       instance_arn = data.aws_ssoadmin_getinstances.example.arns[0]
///     }
///   }
/// }
/// # The target role must allow the Account Access service to assume it.
/// # sts:TagSession is required for credential retrieval to succeed.
/// resource "aws_iam_role" "target" {
///   name = "example-account-access-developer"
///   assume_role_policy = jsonencode({
///     "Version" = "2012-10-17"
///     "Statement" = [{
///       "Effect" = "Allow"
///       "Principal" = {
///         "Service" = "account-access.amazonaws.com"
///       }
///       "Action" = ["sts:AssumeRole", "sts:SetContext", "sts:TagSession"]
///     }]
///   })
/// }
/// resource "aws_accountaccess_entitlement" "example" {
///   entitlement = {
///     principal_role = {
///       principal = {
///         identity_center = {
///           user_id = "11111111-2222-3333-4444-555555555555"
///         }
///       }
///       role_arn = aws_iam_role.target.arn
///     }
///   }
///   application_arn = aws_accountaccess_application.example.arn
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
/// import com.pulumi.aws.accountaccess.Application;
/// import com.pulumi.aws.accountaccess.ApplicationArgs;
/// import com.pulumi.aws.accountaccess.inputs.ApplicationIdentitySourceArgs;
/// import com.pulumi.aws.accountaccess.inputs.ApplicationIdentitySourceIdentityCenterArgs;
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.accountaccess.Entitlement;
/// import com.pulumi.aws.accountaccess.EntitlementArgs;
/// import com.pulumi.aws.accountaccess.inputs.EntitlementEntitlementArgs;
/// import com.pulumi.aws.accountaccess.inputs.EntitlementEntitlementPrincipalRoleArgs;
/// import com.pulumi.aws.accountaccess.inputs.EntitlementEntitlementPrincipalRolePrincipalArgs;
/// import com.pulumi.aws.accountaccess.inputs.EntitlementEntitlementPrincipalRolePrincipalIdentityCenterArgs;
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
///         var exampleApplication = new Application("exampleApplication", ApplicationArgs.builder()
///             .identitySource(ApplicationIdentitySourceArgs.builder()
///                 .identityCenter(ApplicationIdentitySourceIdentityCenterArgs.builder()
///                     .instanceArn(example.arns()[0])
///                     .build())
///                 .build())
///             .build());
///
///         // The target role must allow the Account Access service to assume it.
///         // sts:TagSession is required for credential retrieval to succeed.
///         var target = new Role("target", RoleArgs.builder()
///             .name("example-account-access-developer")
///             .assumeRolePolicy(serializeJson(
///                 jsonObject(
///                     jsonProperty("Version", "2012-10-17"),
///                     jsonProperty("Statement", jsonArray(jsonObject(
///                         jsonProperty("Effect", "Allow"),
///                         jsonProperty("Principal", jsonObject(
///                             jsonProperty("Service", "account-access.amazonaws.com")
///                         )),
///                         jsonProperty("Action", jsonArray(
///                             "sts:AssumeRole",
///                             "sts:SetContext",
///                             "sts:TagSession"
///                         ))
///                     )))
///                 )))
///             .build());
///
///         var exampleEntitlement = new Entitlement("exampleEntitlement", EntitlementArgs.builder()
///             .entitlement(EntitlementEntitlementArgs.builder()
///                 .principalRole(EntitlementEntitlementPrincipalRoleArgs.builder()
///                     .principal(EntitlementEntitlementPrincipalRolePrincipalArgs.builder()
///                         .identityCenter(EntitlementEntitlementPrincipalRolePrincipalIdentityCenterArgs.builder()
///                             .userId("11111111-2222-3333-4444-555555555555")
///                             .build())
///                         .build())
///                     .roleArn(target.arn())
///                     .build())
///                 .build())
///             .applicationArn(exampleApplication.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleApplication:
///     type: aws:accountaccess:Application
///     name: example
///     properties:
///       identitySource:
///         identityCenter:
///           instanceArn: ${example.arns[0]}
///   # The target role must allow the Account Access service to assume it.
///   # sts:TagSession is required for credential retrieval to succeed.
///   target:
///     type: aws:iam:Role
///     properties:
///       name: example-account-access-developer
///       assumeRolePolicy:
///         fn::toJSON:
///           Version: 2012-10-17
///           Statement:
///             - Effect: Allow
///               Principal:
///                 Service: account-access.amazonaws.com
///               Action:
///                 - sts:AssumeRole
///                 - sts:SetContext
///                 - sts:TagSession
///   exampleEntitlement:
///     type: aws:accountaccess:Entitlement
///     name: example
///     properties:
///       entitlement:
///         principalRole:
///           principal:
///             identityCenter:
///               userId: 11111111-2222-3333-4444-555555555555
///           roleArn: ${target.arn}
///       applicationArn: ${exampleApplication.arn}
/// variables:
///   example:
///     fn::invoke:
///       function: aws:ssoadmin:getInstances
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `applicationArn` (String) ARN of the parent Account Access Application.
/// * `entitlementId` (String) Service-assigned unique identifier for this Entitlement.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import Account Access Entitlements using the composite ID. For example:
///
/// ```sh
/// $ pulumi import aws:accountaccess/entitlement:Entitlement example arn:aws:account-access:us-east-1:123456789012:application/aam-0123456789abcdef,ent-0123456789abcdef
/// ```
class Entitlement extends pulumi.CustomResource {
  /// ARN of the parent Account Access Application. Forces replacement when changed.
  late final pulumi.Output<String> applicationArn;
  /// Entitlement configuration. See `entitlement` Block below.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<EntitlementEntitlement> entitlement;
  /// Service-assigned unique identifier for this Entitlement.
  late final pulumi.Output<String> entitlementId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [Entitlement].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Entitlement]. {@macro pulumi_accountaccess_entitlement_entitlement_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Entitlement(
    String name, {
    EntitlementArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:accountaccess/entitlement:Entitlement',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.47.0').merge(options),
        ) {
    applicationArn = registerOutput<String>('applicationArn');
    entitlement = registerOutput<EntitlementEntitlement>('entitlement', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EntitlementEntitlement.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    entitlementId = registerOutput<String>('entitlementId');
    region = registerOutput<String>('region');
  }

  /// Gets an existing [Entitlement] resource's state with the given [name] and [id].
  static Entitlement get(
    String name,
    pulumi.Input<String> id, {
    EntitlementState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Entitlement._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Entitlement._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:accountaccess/entitlement:Entitlement',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    applicationArn = registerOutput<String>('applicationArn');
    entitlement = registerOutput<EntitlementEntitlement>('entitlement', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EntitlementEntitlement.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    entitlementId = registerOutput<String>('entitlementId');
    region = registerOutput<String>('region');
  }

  /// Creates a typed reference to an existing [Entitlement] resource.
  Entitlement.reference(String urn)
    : super(
        'aws:accountaccess/entitlement:Entitlement',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    applicationArn = registerOutput<String>('applicationArn');
    entitlement = registerOutput<EntitlementEntitlement>('entitlement', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EntitlementEntitlement.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    entitlementId = registerOutput<String>('entitlementId');
    region = registerOutput<String>('region');
  }
}
