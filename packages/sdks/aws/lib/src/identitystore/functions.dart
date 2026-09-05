import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_group_args.dart';
import 'get_group_memberships_args.dart';
import 'get_group_memberships_result.dart';
import 'get_group_result.dart';
import 'get_groups_args.dart';
import 'get_groups_result.dart';
import 'get_user_args.dart';
import 'get_user_result.dart';
import 'get_users_args.dart';
import 'get_users_result.dart';

/// Use this data source to get an Identity Store Group.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ssoadmin.getInstances({});
/// const exampleGetGroup = example.then(example => aws.identitystore.getGroup({
///     alternateIdentifier: {
///         uniqueAttribute: {
///             attributePath: "DisplayName",
///             attributeValue: "ExampleGroup",
///         },
///     },
///     identityStoreId: example.identityStoreIds?.[0],
/// }));
/// export const groupId = exampleGetGroup.then(exampleGetGroup => exampleGetGroup.groupId);
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ssoadmin.get_instances()
/// example_get_group = aws.identitystore.get_group(alternate_identifier={
///         "unique_attribute": {
///             "attribute_path": "DisplayName",
///             "attribute_value": "ExampleGroup",
///         },
///     },
///     identity_store_id=example.identity_store_ids[0])
/// pulumi.export("groupId", example_get_group.group_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.SsoAdmin.GetInstances.Invoke();
///
///     var exampleGetGroup = Aws.IdentityStore.GetGroup.Invoke(new()
///     {
///         AlternateIdentifier = new Aws.IdentityStore.Inputs.GetGroupAlternateIdentifierInputArgs
///         {
///             UniqueAttribute = new Aws.IdentityStore.Inputs.GetGroupAlternateIdentifierUniqueAttributeInputArgs
///             {
///                 AttributePath = "DisplayName",
///                 AttributeValue = "ExampleGroup",
///             },
///         },
///         IdentityStoreId = example.Apply(getInstancesResult => getInstancesResult.IdentityStoreIds[0]),
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["groupId"] = exampleGetGroup.Apply(getGroupResult => getGroupResult.GroupId),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/identitystore"
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
/// 		exampleGetGroup, err := identitystore.LookupGroup(ctx, &identitystore.LookupGroupArgs{
/// 			AlternateIdentifier: identitystore.GetGroupAlternateIdentifier{
/// 				UniqueAttribute: identitystore.GetGroupAlternateIdentifierUniqueAttribute{
/// 					AttributePath:  "DisplayName",
/// 					AttributeValue: "ExampleGroup",
/// 				},
/// 			},
/// 			IdentityStoreId: example.IdentityStoreIds[0],
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("groupId", exampleGetGroup.GroupId)
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
/// data "aws_identitystore_getgroup" "exampleGetGroup" {
///   alternate_identifier = {
///     unique_attribute = {
///       attribute_path  = "DisplayName"
///       attribute_value = "ExampleGroup"
///     }
///   }
///   identity_store_id = data.aws_ssoadmin_getinstances.example.identity_store_ids[0]
/// }
///
/// output "groupId" {
///   value = data.aws_identitystore_getgroup.exampleGetGroup.group_id
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
/// import com.pulumi.aws.identitystore.IdentitystoreFunctions;
/// import com.pulumi.aws.identitystore.inputs.GetGroupArgs;
/// import com.pulumi.aws.identitystore.inputs.GetGroupAlternateIdentifierArgs;
/// import com.pulumi.aws.identitystore.inputs.GetGroupAlternateIdentifierUniqueAttributeArgs;
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
///         final var exampleGetGroup = IdentitystoreFunctions.getGroup(GetGroupArgs.builder()
///             .alternateIdentifier(GetGroupAlternateIdentifierArgs.builder()
///                 .uniqueAttribute(GetGroupAlternateIdentifierUniqueAttributeArgs.builder()
///                     .attributePath("DisplayName")
///                     .attributeValue("ExampleGroup")
///                     .build())
///                 .build())
///             .identityStoreId(example.identityStoreIds()[0])
///             .build());
///
///         ctx.export("groupId", exampleGetGroup.groupId());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:ssoadmin:getInstances
///       arguments: {}
///   exampleGetGroup:
///     fn::invoke:
///       function: aws:identitystore:getGroup
///       arguments:
///         alternateIdentifier:
///           uniqueAttribute:
///             attributePath: DisplayName
///             attributeValue: ExampleGroup
///         identityStoreId: ${example.identityStoreIds[0]}
/// outputs:
///   groupId: ${exampleGetGroup.groupId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_identitystore_get_group_get_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGroupResult> getGroup(
  GetGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:identitystore/getGroup:getGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGroupResult.fromMap(result);
}

pulumi.Output<GetGroupResult> getGroupOutput(
  GetGroupArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:identitystore/getGroup:getGroup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetGroupResult.fromMap);
}

/// Use this data source to get a list of members in an Identity Store Group.
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
/// const exampleGetGroup = example.then(example => aws.identitystore.getGroup({
///     alternateIdentifier: {
///         uniqueAttribute: {
///             attributePath: "DisplayName",
///             attributeValue: "ExampleGroup",
///         },
///     },
///     identityStoreId: example.identityStoreIds?.[0],
/// }));
/// const exampleGetGroupMemberships = Promise.all([example, exampleGetGroup]).then(([example, exampleGetGroup]) => aws.identitystore.getGroupMemberships({
///     identityStoreId: example.identityStoreIds?.[0],
///     groupId: exampleGetGroup.groupId,
/// }));
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ssoadmin.get_instances()
/// example_get_group = aws.identitystore.get_group(alternate_identifier={
///         "unique_attribute": {
///             "attribute_path": "DisplayName",
///             "attribute_value": "ExampleGroup",
///         },
///     },
///     identity_store_id=example.identity_store_ids[0])
/// example_get_group_memberships = aws.identitystore.get_group_memberships(identity_store_id=example.identity_store_ids[0],
///     group_id=example_get_group.group_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.SsoAdmin.GetInstances.Invoke();
///
///     var exampleGetGroup = Aws.IdentityStore.GetGroup.Invoke(new()
///     {
///         AlternateIdentifier = new Aws.IdentityStore.Inputs.GetGroupAlternateIdentifierInputArgs
///         {
///             UniqueAttribute = new Aws.IdentityStore.Inputs.GetGroupAlternateIdentifierUniqueAttributeInputArgs
///             {
///                 AttributePath = "DisplayName",
///                 AttributeValue = "ExampleGroup",
///             },
///         },
///         IdentityStoreId = example.Apply(getInstancesResult => getInstancesResult.IdentityStoreIds[0]),
///     });
///
///     var exampleGetGroupMemberships = Aws.IdentityStore.GetGroupMemberships.Invoke(new()
///     {
///         IdentityStoreId = example.Apply(getInstancesResult => getInstancesResult.IdentityStoreIds[0]),
///         GroupId = exampleGetGroup.Apply(getGroupResult => getGroupResult.GroupId),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/identitystore"
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
/// 		exampleGetGroup, err := identitystore.LookupGroup(ctx, &identitystore.LookupGroupArgs{
/// 			AlternateIdentifier: identitystore.GetGroupAlternateIdentifier{
/// 				UniqueAttribute: identitystore.GetGroupAlternateIdentifierUniqueAttribute{
/// 					AttributePath:  "DisplayName",
/// 					AttributeValue: "ExampleGroup",
/// 				},
/// 			},
/// 			IdentityStoreId: example.IdentityStoreIds[0],
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = identitystore.GetGroupMemberships(ctx, &identitystore.GetGroupMembershipsArgs{
/// 			IdentityStoreId: example.IdentityStoreIds[0],
/// 			GroupId:         exampleGetGroup.GroupId,
/// 		}, nil)
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
/// data "aws_identitystore_getgroup" "exampleGetGroup" {
///   alternate_identifier = {
///     unique_attribute = {
///       attribute_path  = "DisplayName"
///       attribute_value = "ExampleGroup"
///     }
///   }
///   identity_store_id = data.aws_ssoadmin_getinstances.example.identity_store_ids[0]
/// }
/// data "aws_identitystore_getgroupmemberships" "exampleGetGroupMemberships" {
///   identity_store_id = data.aws_ssoadmin_getinstances.example.identity_store_ids[0]
///   group_id          = data.aws_identitystore_getgroup.exampleGetGroup.group_id
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
/// import com.pulumi.aws.identitystore.IdentitystoreFunctions;
/// import com.pulumi.aws.identitystore.inputs.GetGroupArgs;
/// import com.pulumi.aws.identitystore.inputs.GetGroupAlternateIdentifierArgs;
/// import com.pulumi.aws.identitystore.inputs.GetGroupAlternateIdentifierUniqueAttributeArgs;
/// import com.pulumi.aws.identitystore.inputs.GetGroupMembershipsArgs;
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
///         final var exampleGetGroup = IdentitystoreFunctions.getGroup(GetGroupArgs.builder()
///             .alternateIdentifier(GetGroupAlternateIdentifierArgs.builder()
///                 .uniqueAttribute(GetGroupAlternateIdentifierUniqueAttributeArgs.builder()
///                     .attributePath("DisplayName")
///                     .attributeValue("ExampleGroup")
///                     .build())
///                 .build())
///             .identityStoreId(example.identityStoreIds()[0])
///             .build());
///
///         final var exampleGetGroupMemberships = IdentitystoreFunctions.getGroupMemberships(GetGroupMembershipsArgs.builder()
///             .identityStoreId(example.identityStoreIds()[0])
///             .groupId(exampleGetGroup.groupId())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:ssoadmin:getInstances
///       arguments: {}
///   exampleGetGroup:
///     fn::invoke:
///       function: aws:identitystore:getGroup
///       arguments:
///         alternateIdentifier:
///           uniqueAttribute:
///             attributePath: DisplayName
///             attributeValue: ExampleGroup
///         identityStoreId: ${example.identityStoreIds[0]}
///   exampleGetGroupMemberships:
///     fn::invoke:
///       function: aws:identitystore:getGroupMemberships
///       arguments:
///         identityStoreId: ${example.identityStoreIds[0]}
///         groupId: ${exampleGetGroup.groupId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_identitystore_get_group_memberships_get_group_memberships_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGroupMembershipsResult> getGroupMemberships(
  GetGroupMembershipsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:identitystore/getGroupMemberships:getGroupMemberships',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGroupMembershipsResult.fromMap(result);
}

pulumi.Output<GetGroupMembershipsResult> getGroupMembershipsOutput(
  GetGroupMembershipsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:identitystore/getGroupMemberships:getGroupMemberships',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetGroupMembershipsResult.fromMap);
}

/// Data source for managing an AWS SSO Identity Store Groups.
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
/// const exampleGetGroups = example.then(example => aws.identitystore.getGroups({
///     identityStoreId: example.identityStoreIds?.[0],
/// }));
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ssoadmin.get_instances()
/// example_get_groups = aws.identitystore.get_groups(identity_store_id=example.identity_store_ids[0])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.SsoAdmin.GetInstances.Invoke();
///
///     var exampleGetGroups = Aws.IdentityStore.GetGroups.Invoke(new()
///     {
///         IdentityStoreId = example.Apply(getInstancesResult => getInstancesResult.IdentityStoreIds[0]),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/identitystore"
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
/// 		_, err = identitystore.GetGroups(ctx, &identitystore.GetGroupsArgs{
/// 			IdentityStoreId: example.IdentityStoreIds[0],
/// 		}, nil)
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
/// data "aws_identitystore_getgroups" "exampleGetGroups" {
///   identity_store_id = data.aws_ssoadmin_getinstances.example.identity_store_ids[0]
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
/// import com.pulumi.aws.identitystore.IdentitystoreFunctions;
/// import com.pulumi.aws.identitystore.inputs.GetGroupsArgs;
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
///         final var exampleGetGroups = IdentitystoreFunctions.getGroups(GetGroupsArgs.builder()
///             .identityStoreId(example.identityStoreIds()[0])
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:ssoadmin:getInstances
///       arguments: {}
///   exampleGetGroups:
///     fn::invoke:
///       function: aws:identitystore:getGroups
///       arguments:
///         identityStoreId: ${example.identityStoreIds[0]}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_identitystore_get_groups_get_groups_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGroupsResult> getGroups(
  GetGroupsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:identitystore/getGroups:getGroups',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGroupsResult.fromMap(result);
}

pulumi.Output<GetGroupsResult> getGroupsOutput(
  GetGroupsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:identitystore/getGroups:getGroups',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetGroupsResult.fromMap);
}

/// Use this data source to get an Identity Store User.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ssoadmin.getInstances({});
/// const exampleGetUser = example.then(example => aws.identitystore.getUser({
///     alternateIdentifier: {
///         uniqueAttribute: {
///             attributePath: "UserName",
///             attributeValue: "ExampleUser",
///         },
///     },
///     identityStoreId: example.identityStoreIds?.[0],
/// }));
/// export const userId = exampleGetUser.then(exampleGetUser => exampleGetUser.userId);
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ssoadmin.get_instances()
/// example_get_user = aws.identitystore.get_user(alternate_identifier={
///         "unique_attribute": {
///             "attribute_path": "UserName",
///             "attribute_value": "ExampleUser",
///         },
///     },
///     identity_store_id=example.identity_store_ids[0])
/// pulumi.export("userId", example_get_user.user_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.SsoAdmin.GetInstances.Invoke();
///
///     var exampleGetUser = Aws.IdentityStore.GetUser.Invoke(new()
///     {
///         AlternateIdentifier = new Aws.IdentityStore.Inputs.GetUserAlternateIdentifierInputArgs
///         {
///             UniqueAttribute = new Aws.IdentityStore.Inputs.GetUserAlternateIdentifierUniqueAttributeInputArgs
///             {
///                 AttributePath = "UserName",
///                 AttributeValue = "ExampleUser",
///             },
///         },
///         IdentityStoreId = example.Apply(getInstancesResult => getInstancesResult.IdentityStoreIds[0]),
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["userId"] = exampleGetUser.Apply(getUserResult => getUserResult.UserId),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/identitystore"
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
/// 		exampleGetUser, err := identitystore.LookupUser(ctx, &identitystore.LookupUserArgs{
/// 			AlternateIdentifier: identitystore.GetUserAlternateIdentifier{
/// 				UniqueAttribute: identitystore.GetUserAlternateIdentifierUniqueAttribute{
/// 					AttributePath:  "UserName",
/// 					AttributeValue: "ExampleUser",
/// 				},
/// 			},
/// 			IdentityStoreId: example.IdentityStoreIds[0],
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("userId", exampleGetUser.UserId)
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
/// data "aws_identitystore_getuser" "exampleGetUser" {
///   alternate_identifier = {
///     unique_attribute = {
///       attribute_path  = "UserName"
///       attribute_value = "ExampleUser"
///     }
///   }
///   identity_store_id = data.aws_ssoadmin_getinstances.example.identity_store_ids[0]
/// }
///
/// output "userId" {
///   value = data.aws_identitystore_getuser.exampleGetUser.user_id
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
/// import com.pulumi.aws.identitystore.IdentitystoreFunctions;
/// import com.pulumi.aws.identitystore.inputs.GetUserArgs;
/// import com.pulumi.aws.identitystore.inputs.GetUserAlternateIdentifierArgs;
/// import com.pulumi.aws.identitystore.inputs.GetUserAlternateIdentifierUniqueAttributeArgs;
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
///         final var exampleGetUser = IdentitystoreFunctions.getUser(GetUserArgs.builder()
///             .alternateIdentifier(GetUserAlternateIdentifierArgs.builder()
///                 .uniqueAttribute(GetUserAlternateIdentifierUniqueAttributeArgs.builder()
///                     .attributePath("UserName")
///                     .attributeValue("ExampleUser")
///                     .build())
///                 .build())
///             .identityStoreId(example.identityStoreIds()[0])
///             .build());
///
///         ctx.export("userId", exampleGetUser.userId());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:ssoadmin:getInstances
///       arguments: {}
///   exampleGetUser:
///     fn::invoke:
///       function: aws:identitystore:getUser
///       arguments:
///         alternateIdentifier:
///           uniqueAttribute:
///             attributePath: UserName
///             attributeValue: ExampleUser
///         identityStoreId: ${example.identityStoreIds[0]}
/// outputs:
///   userId: ${exampleGetUser.userId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_identitystore_get_user_get_user_args_doc}
/// [options] Invoke options controlling this call.
Future<GetUserResult> getUser(
  GetUserArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:identitystore/getUser:getUser',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetUserResult.fromMap(result);
}

pulumi.Output<GetUserResult> getUserOutput(
  GetUserArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:identitystore/getUser:getUser',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetUserResult.fromMap);
}

/// Use this data source to get a list of users in an Identity Store instance.
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
/// const exampleGetUsers = example.then(example => aws.identitystore.getUsers({
///     identityStoreId: example.identityStoreIds?.[0],
/// }));
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ssoadmin.get_instances()
/// example_get_users = aws.identitystore.get_users(identity_store_id=example.identity_store_ids[0])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.SsoAdmin.GetInstances.Invoke();
///
///     var exampleGetUsers = Aws.IdentityStore.GetUsers.Invoke(new()
///     {
///         IdentityStoreId = example.Apply(getInstancesResult => getInstancesResult.IdentityStoreIds[0]),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/identitystore"
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
/// 		_, err = identitystore.GetUsers(ctx, &identitystore.GetUsersArgs{
/// 			IdentityStoreId: example.IdentityStoreIds[0],
/// 		}, nil)
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
/// data "aws_identitystore_getusers" "exampleGetUsers" {
///   identity_store_id = data.aws_ssoadmin_getinstances.example.identity_store_ids[0]
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
/// import com.pulumi.aws.identitystore.IdentitystoreFunctions;
/// import com.pulumi.aws.identitystore.inputs.GetUsersArgs;
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
///         final var exampleGetUsers = IdentitystoreFunctions.getUsers(GetUsersArgs.builder()
///             .identityStoreId(example.identityStoreIds()[0])
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:ssoadmin:getInstances
///       arguments: {}
///   exampleGetUsers:
///     fn::invoke:
///       function: aws:identitystore:getUsers
///       arguments:
///         identityStoreId: ${example.identityStoreIds[0]}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_identitystore_get_users_get_users_args_doc}
/// [options] Invoke options controlling this call.
Future<GetUsersResult> getUsers(
  GetUsersArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:identitystore/getUsers:getUsers',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetUsersResult.fromMap(result);
}

pulumi.Output<GetUsersResult> getUsersOutput(
  GetUsersArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'aws:identitystore/getUsers:getUsers',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetUsersResult.fromMap);
}
