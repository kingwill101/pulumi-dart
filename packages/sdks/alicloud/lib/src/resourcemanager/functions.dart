import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_account_deletion_check_task_args.dart';
import 'get_account_deletion_check_task_result.dart';
import 'get_accounts_args.dart';
import 'get_accounts_result.dart';
import 'get_control_policies_args.dart';
import 'get_control_policies_result.dart';
import 'get_control_policy_attachments_args.dart';
import 'get_control_policy_attachments_result.dart';
import 'get_delegated_administrators_args.dart';
import 'get_delegated_administrators_result.dart';
import 'get_folders_args.dart';
import 'get_folders_result.dart';
import 'get_handshakes_args.dart';
import 'get_handshakes_result.dart';
import 'get_policies_args.dart';
import 'get_policies_result.dart';
import 'get_policy_attachments_args.dart';
import 'get_policy_attachments_result.dart';
import 'get_policy_versions_args.dart';
import 'get_policy_versions_result.dart';
import 'get_resource_directories_args.dart';
import 'get_resource_directories_result.dart';
import 'get_resource_groups_args.dart';
import 'get_resource_groups_result.dart';
import 'get_resource_shares_args.dart';
import 'get_resource_shares_result.dart';
import 'get_roles_args.dart';
import 'get_roles_result.dart';
import 'get_shared_resources_args.dart';
import 'get_shared_resources_result.dart';
import 'get_shared_targets_args.dart';
import 'get_shared_targets_result.dart';

/// Using this data source can open Resource Manager Account Deletion Check Task.
///
/// For information about Resource Manager Account Deletion Check Task and how to use it, see [What is Resource Manager Account Deletion Check Task](https://www.alibabacloud.com/help/en/resource-management/latest/check-account-delete).
///
/// > **NOTE:** Available in v1.187.0+.
///
/// > **NOTE:** The member deletion feature is in invitational preview. You can contact the service manager of Alibaba Cloud to apply for a trial.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const task = alicloud.resourcemanager.getAccountDeletionCheckTask({
///     accountId: "your_account_id",
/// });
/// export const abandonAbleChecksIds = task.then(task => task.abandonAbleChecks.map(__item => __item.checkId));
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// task = alicloud.resourcemanager.get_account_deletion_check_task(account_id="your_account_id")
/// pulumi.export("abandonAbleChecksIds", [__item.check_id for __item in task.abandon_able_checks])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var task = AliCloud.ResourceManager.GetAccountDeletionCheckTask.Invoke(new()
///     {
///         AccountId = "your_account_id",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["abandonAbleChecksIds"] = task.Apply(getAccountDeletionCheckTaskResult => getAccountDeletionCheckTaskResult.AbandonAbleChecks).Select(__item => __item.CheckId).ToList(),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// task, err := resourcemanager.GetAccountDeletionCheckTask(ctx, &resourcemanager.GetAccountDeletionCheckTaskArgs{
/// AccountId: "your_account_id",
/// }, nil);
/// if err != nil {
/// return err
/// }
/// ctx.Export("abandonAbleChecksIds", pulumi.StringArray(%!v(PANIC=Format method: fatal: A failure has occurred: unlowered splat expression @ example.pp:5,11-44)))
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
/// import com.pulumi.alicloud.resourcemanager.ResourcemanagerFunctions;
/// import com.pulumi.alicloud.resourcemanager.inputs.GetAccountDeletionCheckTaskArgs;
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
///         final var task = ResourcemanagerFunctions.getAccountDeletionCheckTask(GetAccountDeletionCheckTaskArgs.builder()
///             .accountId("your_account_id")
///             .build());
///
///         ctx.export("abandonAbleChecksIds", task.abandonAbleChecks().stream().map(element -> element.checkId()).collect(toList()));
///     }
/// }
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_resourcemanager_get_account_deletion_check_task_get_account_deletion_check_task_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAccountDeletionCheckTaskResult> getAccountDeletionCheckTask(
  GetAccountDeletionCheckTaskArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:resourcemanager/getAccountDeletionCheckTask:getAccountDeletionCheckTask',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAccountDeletionCheckTaskResult.fromMap(result);
}

/// This data source provides the Resource Manager Accounts of the current Alibaba Cloud user.
///
/// > **NOTE:** Available since v1.86.0.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = alicloud.resourcemanager.getAccounts({});
/// export const resourceManagerAccountId0 = _default.then(_default => _default.accounts?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.resourcemanager.get_accounts()
/// pulumi.export("resourceManagerAccountId0", default.accounts[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.ResourceManager.GetAccounts.Invoke();
///
///     return new Dictionary<string, object?>
///     {
///         ["resourceManagerAccountId0"] = @default.Apply(@default => @default.Apply(getAccountsResult => getAccountsResult.Accounts[0]?.Id)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := resourcemanager.GetAccounts(ctx, &resourcemanager.GetAccountsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("resourceManagerAccountId0", _default.Accounts[0].Id)
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
/// import com.pulumi.alicloud.resourcemanager.ResourcemanagerFunctions;
/// import com.pulumi.alicloud.resourcemanager.inputs.GetAccountsArgs;
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
///         final var default = ResourcemanagerFunctions.getAccounts(GetAccountsArgs.builder()
///             .build());
///
///         ctx.export("resourceManagerAccountId0", default_.accounts()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:resourcemanager:getAccounts
///       arguments: {}
/// outputs:
///   resourceManagerAccountId0: ${default.accounts[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_resourcemanager_get_accounts_get_accounts_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAccountsResult> getAccounts(
  GetAccountsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:resourcemanager/getAccounts:getAccounts',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAccountsResult.fromMap(result);
}

/// This data source provides the Resource Manager Control Policies of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.120.0+.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const example = alicloud.resourcemanager.getControlPolicies({
///     ids: ["example_value"],
///     nameRegex: "the_resource_name",
/// });
/// export const firstResourceManagerControlPolicyId = example.then(example => example.policies?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.resourcemanager.get_control_policies(ids=["example_value"],
///     name_regex="the_resource_name")
/// pulumi.export("firstResourceManagerControlPolicyId", example.policies[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AliCloud.ResourceManager.GetControlPolicies.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_value",
///         },
///         NameRegex = "the_resource_name",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstResourceManagerControlPolicyId"] = example.Apply(getControlPoliciesResult => getControlPoliciesResult.Policies[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := resourcemanager.GetControlPolicies(ctx, &resourcemanager.GetControlPoliciesArgs{
/// 			Ids: []string{
/// 				"example_value",
/// 			},
/// 			NameRegex: pulumi.StringRef("the_resource_name"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstResourceManagerControlPolicyId", example.Policies[0].Id)
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
/// import com.pulumi.alicloud.resourcemanager.ResourcemanagerFunctions;
/// import com.pulumi.alicloud.resourcemanager.inputs.GetControlPoliciesArgs;
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
///         final var example = ResourcemanagerFunctions.getControlPolicies(GetControlPoliciesArgs.builder()
///             .ids("example_value")
///             .nameRegex("the_resource_name")
///             .build());
///
///         ctx.export("firstResourceManagerControlPolicyId", example.policies()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:resourcemanager:getControlPolicies
///       arguments:
///         ids:
///           - example_value
///         nameRegex: the_resource_name
/// outputs:
///   firstResourceManagerControlPolicyId: ${example.policies[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_resourcemanager_get_control_policies_get_control_policies_args_doc}
/// [options] Invoke options controlling this call.
Future<GetControlPoliciesResult> getControlPolicies(
  GetControlPoliciesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:resourcemanager/getControlPolicies:getControlPolicies',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetControlPoliciesResult.fromMap(result);
}

/// This data source provides the Resource Manager Control Policy Attachments of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.120.0+.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const example = alicloud.resourcemanager.getControlPolicyAttachments({
///     targetId: "example_value",
/// });
/// export const firstResourceManagerControlPolicyAttachmentId = example.then(example => example.attachments?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.resourcemanager.get_control_policy_attachments(target_id="example_value")
/// pulumi.export("firstResourceManagerControlPolicyAttachmentId", example.attachments[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AliCloud.ResourceManager.GetControlPolicyAttachments.Invoke(new()
///     {
///         TargetId = "example_value",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstResourceManagerControlPolicyAttachmentId"] = example.Apply(getControlPolicyAttachmentsResult => getControlPolicyAttachmentsResult.Attachments[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := resourcemanager.GetControlPolicyAttachments(ctx, &resourcemanager.GetControlPolicyAttachmentsArgs{
/// 			TargetId: "example_value",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstResourceManagerControlPolicyAttachmentId", example.Attachments[0].Id)
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
/// import com.pulumi.alicloud.resourcemanager.ResourcemanagerFunctions;
/// import com.pulumi.alicloud.resourcemanager.inputs.GetControlPolicyAttachmentsArgs;
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
///         final var example = ResourcemanagerFunctions.getControlPolicyAttachments(GetControlPolicyAttachmentsArgs.builder()
///             .targetId("example_value")
///             .build());
///
///         ctx.export("firstResourceManagerControlPolicyAttachmentId", example.attachments()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:resourcemanager:getControlPolicyAttachments
///       arguments:
///         targetId: example_value
/// outputs:
///   firstResourceManagerControlPolicyAttachmentId: ${example.attachments[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_resourcemanager_get_control_policy_attachments_get_control_policy_attachments_args_doc}
/// [options] Invoke options controlling this call.
Future<GetControlPolicyAttachmentsResult> getControlPolicyAttachments(
  GetControlPolicyAttachmentsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:resourcemanager/getControlPolicyAttachments:getControlPolicyAttachments',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetControlPolicyAttachmentsResult.fromMap(result);
}

/// This data source provides the Resource Manager Delegated Administrators of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.181.0+.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const ids = alicloud.resourcemanager.getDelegatedAdministrators({
///     ids: ["example_value"],
/// });
/// export const resourceManagerDelegatedAdministratorId1 = ids.then(ids => ids.administrators?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.resourcemanager.get_delegated_administrators(ids=["example_value"])
/// pulumi.export("resourceManagerDelegatedAdministratorId1", ids.administrators[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.ResourceManager.GetDelegatedAdministrators.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_value",
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["resourceManagerDelegatedAdministratorId1"] = ids.Apply(getDelegatedAdministratorsResult => getDelegatedAdministratorsResult.Administrators[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := resourcemanager.GetDelegatedAdministrators(ctx, &resourcemanager.GetDelegatedAdministratorsArgs{
/// 			Ids: []string{
/// 				"example_value",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("resourceManagerDelegatedAdministratorId1", ids.Administrators[0].Id)
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
/// import com.pulumi.alicloud.resourcemanager.ResourcemanagerFunctions;
/// import com.pulumi.alicloud.resourcemanager.inputs.GetDelegatedAdministratorsArgs;
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
///         final var ids = ResourcemanagerFunctions.getDelegatedAdministrators(GetDelegatedAdministratorsArgs.builder()
///             .ids("example_value")
///             .build());
///
///         ctx.export("resourceManagerDelegatedAdministratorId1", ids.administrators()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:resourcemanager:getDelegatedAdministrators
///       arguments:
///         ids:
///           - example_value
/// outputs:
///   resourceManagerDelegatedAdministratorId1: ${ids.administrators[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_resourcemanager_get_delegated_administrators_get_delegated_administrators_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDelegatedAdministratorsResult> getDelegatedAdministrators(
  GetDelegatedAdministratorsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:resourcemanager/getDelegatedAdministrators:getDelegatedAdministrators',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDelegatedAdministratorsResult.fromMap(result);
}

/// This data source provides the Resource Manager Folders of the current Alibaba Cloud user.
///
/// > **NOTE:** Available since v1.84.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const _default = new alicloud.resourcemanager.Folder("default", {folderName: name});
/// const ids = alicloud.resourcemanager.getFoldersOutput({
///     ids: [_default.id],
/// });
/// export const resourceManagerFolderId0 = ids.apply(ids => ids.folders?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = alicloud.resourcemanager.Folder("default", folder_name=name)
/// ids = alicloud.resourcemanager.get_folders_output(ids=[default.id])
/// pulumi.export("resourceManagerFolderId0", ids.folders[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform-example";
///     var @default = new AliCloud.ResourceManager.Folder("default", new()
///     {
///         FolderName = name,
///     });
///
///     var ids = AliCloud.ResourceManager.GetFolders.Invoke(new()
///     {
///         Ids = new[]
///         {
///             @default.Id,
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["resourceManagerFolderId0"] = ids.Apply(getFoldersResult => getFoldersResult.Folders[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "terraform-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := resourcemanager.NewFolder(ctx, "default", &resourcemanager.FolderArgs{
/// 			FolderName: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ids := resourcemanager.GetFoldersOutput(ctx, resourcemanager.GetFoldersOutputArgs{
/// 			Ids: pulumi.StringArray{
/// 				_default.ID(),
/// 			},
/// 		}, nil)
/// 		ctx.Export("resourceManagerFolderId0", ids.ApplyT(func(ids resourcemanager.GetFoldersResult) (*string, error) {
/// 			return &ids.Folders[0].Id, nil
/// 		}).(pulumi.StringPtrOutput))
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
/// import com.pulumi.alicloud.resourcemanager.Folder;
/// import com.pulumi.alicloud.resourcemanager.FolderArgs;
/// import com.pulumi.alicloud.resourcemanager.ResourcemanagerFunctions;
/// import com.pulumi.alicloud.resourcemanager.inputs.GetFoldersArgs;
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
///         final var config = ctx.config();
///         final var name = config.get("name").orElse("terraform-example");
///         var default_ = new Folder("default", FolderArgs.builder()
///             .folderName(name)
///             .build());
///
///         final var ids = ResourcemanagerFunctions.getFolders(GetFoldersArgs.builder()
///             .ids(default_.id())
///             .build());
///
///         ctx.export("resourceManagerFolderId0", ids.applyValue(_ids -> _ids.folders()[0].id()));
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform-example
/// resources:
///   default:
///     type: alicloud:resourcemanager:Folder
///     properties:
///       folderName: ${name}
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:resourcemanager:getFolders
///       arguments:
///         ids:
///           - ${default.id}
/// outputs:
///   resourceManagerFolderId0: ${ids.folders[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_resourcemanager_get_folders_get_folders_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFoldersResult> getFolders(
  GetFoldersArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:resourcemanager/getFolders:getFolders',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFoldersResult.fromMap(result);
}

/// This data source provides the Resource Manager Handshakes of the current Alibaba Cloud user.
///
/// > **NOTE:**  Available in 1.86.0+.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const example = alicloud.resourcemanager.getHandshakes({});
/// export const firstHandshakeId = example.then(example => example.handshakes?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.resourcemanager.get_handshakes()
/// pulumi.export("firstHandshakeId", example.handshakes[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AliCloud.ResourceManager.GetHandshakes.Invoke();
///
///     return new Dictionary<string, object?>
///     {
///         ["firstHandshakeId"] = example.Apply(getHandshakesResult => getHandshakesResult.Handshakes[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := resourcemanager.GetHandshakes(ctx, &resourcemanager.GetHandshakesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstHandshakeId", example.Handshakes[0].Id)
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
/// import com.pulumi.alicloud.resourcemanager.ResourcemanagerFunctions;
/// import com.pulumi.alicloud.resourcemanager.inputs.GetHandshakesArgs;
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
///         final var example = ResourcemanagerFunctions.getHandshakes(GetHandshakesArgs.builder()
///             .build());
///
///         ctx.export("firstHandshakeId", example.handshakes()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:resourcemanager:getHandshakes
///       arguments: {}
/// outputs:
///   firstHandshakeId: ${example.handshakes[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_resourcemanager_get_handshakes_get_handshakes_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHandshakesResult> getHandshakes(
  GetHandshakesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:resourcemanager/getHandshakes:getHandshakes',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHandshakesResult.fromMap(result);
}

/// This data source provides the Resource Manager Policies of the current Alibaba Cloud user.
///
/// > **NOTE:**  Available in 1.86.0+.
///
/// ## Example Usage
///
///
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:resourcemanager:getPolicies
///       arguments:
///         nameRegex: tftest
///         descriptionRegex: tftest_policy
///         policyType: Custom
/// outputs:
///   firstPolicyId: ${example.policies[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_resourcemanager_get_policies_get_policies_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPoliciesResult> getPolicies(
  GetPoliciesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:resourcemanager/getPolicies:getPolicies',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPoliciesResult.fromMap(result);
}

/// This data source provides the Resource Manager Policy Attachments of the current Alibaba Cloud user.
///
/// > **NOTE:**  Available in 1.93.0+.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const example = alicloud.resourcemanager.getPolicyAttachments({});
/// export const firstAttachmentId = example.then(example => example.attachments?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.resourcemanager.get_policy_attachments()
/// pulumi.export("firstAttachmentId", example.attachments[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AliCloud.ResourceManager.GetPolicyAttachments.Invoke();
///
///     return new Dictionary<string, object?>
///     {
///         ["firstAttachmentId"] = example.Apply(getPolicyAttachmentsResult => getPolicyAttachmentsResult.Attachments[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := resourcemanager.GetPolicyAttachments(ctx, &resourcemanager.GetPolicyAttachmentsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstAttachmentId", example.Attachments[0].Id)
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
/// import com.pulumi.alicloud.resourcemanager.ResourcemanagerFunctions;
/// import com.pulumi.alicloud.resourcemanager.inputs.GetPolicyAttachmentsArgs;
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
///         final var example = ResourcemanagerFunctions.getPolicyAttachments(GetPolicyAttachmentsArgs.builder()
///             .build());
///
///         ctx.export("firstAttachmentId", example.attachments()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:resourcemanager:getPolicyAttachments
///       arguments: {}
/// outputs:
///   firstAttachmentId: ${example.attachments[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_resourcemanager_get_policy_attachments_get_policy_attachments_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPolicyAttachmentsResult> getPolicyAttachments(
  GetPolicyAttachmentsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:resourcemanager/getPolicyAttachments:getPolicyAttachments',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPolicyAttachmentsResult.fromMap(result);
}

/// This data source provides the Resource Manager Policy Versions of the current Alibaba Cloud user.
///
/// > **NOTE:**  Available in 1.85.0+.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = alicloud.resourcemanager.getPolicyVersions({
///     policyName: "tftest",
///     policyType: "Custom",
/// });
/// export const firstPolicyVersionId = _default.then(_default => _default.versions?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.resourcemanager.get_policy_versions(policy_name="tftest",
///     policy_type="Custom")
/// pulumi.export("firstPolicyVersionId", default.versions[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.ResourceManager.GetPolicyVersions.Invoke(new()
///     {
///         PolicyName = "tftest",
///         PolicyType = "Custom",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstPolicyVersionId"] = @default.Apply(@default => @default.Apply(getPolicyVersionsResult => getPolicyVersionsResult.Versions[0]?.Id)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := resourcemanager.GetPolicyVersions(ctx, &resourcemanager.GetPolicyVersionsArgs{
/// 			PolicyName: "tftest",
/// 			PolicyType: "Custom",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstPolicyVersionId", _default.Versions[0].Id)
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
/// import com.pulumi.alicloud.resourcemanager.ResourcemanagerFunctions;
/// import com.pulumi.alicloud.resourcemanager.inputs.GetPolicyVersionsArgs;
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
///         final var default = ResourcemanagerFunctions.getPolicyVersions(GetPolicyVersionsArgs.builder()
///             .policyName("tftest")
///             .policyType("Custom")
///             .build());
///
///         ctx.export("firstPolicyVersionId", default_.versions()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:resourcemanager:getPolicyVersions
///       arguments:
///         policyName: tftest
///         policyType: Custom
/// outputs:
///   firstPolicyVersionId: ${default.versions[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_resourcemanager_get_policy_versions_get_policy_versions_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPolicyVersionsResult> getPolicyVersions(
  GetPolicyVersionsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:resourcemanager/getPolicyVersions:getPolicyVersions',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPolicyVersionsResult.fromMap(result);
}

/// This data source provides the Resource Manager Resource Directories of the current Alibaba Cloud user.
///
/// > **NOTE:**  Available in 1.86.0+.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = alicloud.resourcemanager.getResourceDirectories({});
/// export const resourceDirectoryId = _default.then(_default => _default.directories?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.resourcemanager.get_resource_directories()
/// pulumi.export("resourceDirectoryId", default.directories[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.ResourceManager.GetResourceDirectories.Invoke();
///
///     return new Dictionary<string, object?>
///     {
///         ["resourceDirectoryId"] = @default.Apply(@default => @default.Apply(getResourceDirectoriesResult => getResourceDirectoriesResult.Directories[0]?.Id)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := resourcemanager.GetResourceDirectories(ctx, &resourcemanager.GetResourceDirectoriesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("resourceDirectoryId", _default.Directories[0].Id)
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
/// import com.pulumi.alicloud.resourcemanager.ResourcemanagerFunctions;
/// import com.pulumi.alicloud.resourcemanager.inputs.GetResourceDirectoriesArgs;
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
///         final var default = ResourcemanagerFunctions.getResourceDirectories(GetResourceDirectoriesArgs.builder()
///             .build());
///
///         ctx.export("resourceDirectoryId", default_.directories()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:resourcemanager:getResourceDirectories
///       arguments: {}
/// outputs:
///   resourceDirectoryId: ${default.directories[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_resourcemanager_get_resource_directories_get_resource_directories_args_doc}
/// [options] Invoke options controlling this call.
Future<GetResourceDirectoriesResult> getResourceDirectories(
  GetResourceDirectoriesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:resourcemanager/getResourceDirectories:getResourceDirectories',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetResourceDirectoriesResult.fromMap(result);
}

/// This data source provides resource groups of the current Alibaba Cloud user.
///
/// > **NOTE:** Available since v1.84.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const example = alicloud.resourcemanager.getResourceGroups({
///     nameRegex: "tf",
/// });
/// export const firstResourceGroupId = example.then(example => example.groups?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.resourcemanager.get_resource_groups(name_regex="tf")
/// pulumi.export("firstResourceGroupId", example.groups[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AliCloud.ResourceManager.GetResourceGroups.Invoke(new()
///     {
///         NameRegex = "tf",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstResourceGroupId"] = example.Apply(getResourceGroupsResult => getResourceGroupsResult.Groups[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := resourcemanager.GetResourceGroups(ctx, &resourcemanager.GetResourceGroupsArgs{
/// 			NameRegex: pulumi.StringRef("tf"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstResourceGroupId", example.Groups[0].Id)
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
/// import com.pulumi.alicloud.resourcemanager.ResourcemanagerFunctions;
/// import com.pulumi.alicloud.resourcemanager.inputs.GetResourceGroupsArgs;
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
///         final var example = ResourcemanagerFunctions.getResourceGroups(GetResourceGroupsArgs.builder()
///             .nameRegex("tf")
///             .build());
///
///         ctx.export("firstResourceGroupId", example.groups()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:resourcemanager:getResourceGroups
///       arguments:
///         nameRegex: tf
/// outputs:
///   firstResourceGroupId: ${example.groups[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_resourcemanager_get_resource_groups_get_resource_groups_args_doc}
/// [options] Invoke options controlling this call.
Future<GetResourceGroupsResult> getResourceGroups(
  GetResourceGroupsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:resourcemanager/getResourceGroups:getResourceGroups',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetResourceGroupsResult.fromMap(result);
}

/// This data source provides the Resource Manager Resource Shares of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.111.0+.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const example = alicloud.resourcemanager.getResourceShares({
///     resourceShareOwner: "Self",
///     ids: ["example_value"],
///     nameRegex: "the_resource_name",
/// });
/// export const firstResourceManagerResourceShareId = example.then(example => example.shares?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.resourcemanager.get_resource_shares(resource_share_owner="Self",
///     ids=["example_value"],
///     name_regex="the_resource_name")
/// pulumi.export("firstResourceManagerResourceShareId", example.shares[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AliCloud.ResourceManager.GetResourceShares.Invoke(new()
///     {
///         ResourceShareOwner = "Self",
///         Ids = new[]
///         {
///             "example_value",
///         },
///         NameRegex = "the_resource_name",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstResourceManagerResourceShareId"] = example.Apply(getResourceSharesResult => getResourceSharesResult.Shares[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := resourcemanager.GetResourceShares(ctx, &resourcemanager.GetResourceSharesArgs{
/// 			ResourceShareOwner: "Self",
/// 			Ids: []string{
/// 				"example_value",
/// 			},
/// 			NameRegex: pulumi.StringRef("the_resource_name"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstResourceManagerResourceShareId", example.Shares[0].Id)
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
/// import com.pulumi.alicloud.resourcemanager.ResourcemanagerFunctions;
/// import com.pulumi.alicloud.resourcemanager.inputs.GetResourceSharesArgs;
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
///         final var example = ResourcemanagerFunctions.getResourceShares(GetResourceSharesArgs.builder()
///             .resourceShareOwner("Self")
///             .ids("example_value")
///             .nameRegex("the_resource_name")
///             .build());
///
///         ctx.export("firstResourceManagerResourceShareId", example.shares()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:resourcemanager:getResourceShares
///       arguments:
///         resourceShareOwner: Self
///         ids:
///           - example_value
///         nameRegex: the_resource_name
/// outputs:
///   firstResourceManagerResourceShareId: ${example.shares[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_resourcemanager_get_resource_shares_get_resource_shares_args_doc}
/// [options] Invoke options controlling this call.
Future<GetResourceSharesResult> getResourceShares(
  GetResourceSharesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:resourcemanager/getResourceShares:getResourceShares',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetResourceSharesResult.fromMap(result);
}

/// This data source provides the Resource Manager Roles of the current Alibaba Cloud user.
///
/// > **NOTE:**  Available in 1.86.0+.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const example = alicloud.resourcemanager.getRoles({
///     nameRegex: "tftest",
/// });
/// export const firstRoleId = example.then(example => example.roles?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.resourcemanager.get_roles(name_regex="tftest")
/// pulumi.export("firstRoleId", example.roles[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AliCloud.ResourceManager.GetRoles.Invoke(new()
///     {
///         NameRegex = "tftest",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstRoleId"] = example.Apply(getRolesResult => getRolesResult.Roles[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := resourcemanager.GetRoles(ctx, &resourcemanager.GetRolesArgs{
/// 			NameRegex: pulumi.StringRef("tftest"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstRoleId", example.Roles[0].Id)
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
/// import com.pulumi.alicloud.resourcemanager.ResourcemanagerFunctions;
/// import com.pulumi.alicloud.resourcemanager.inputs.GetRolesArgs;
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
///         final var example = ResourcemanagerFunctions.getRoles(GetRolesArgs.builder()
///             .nameRegex("tftest")
///             .build());
///
///         ctx.export("firstRoleId", example.roles()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:resourcemanager:getRoles
///       arguments:
///         nameRegex: tftest
/// outputs:
///   firstRoleId: ${example.roles[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_resourcemanager_get_roles_get_roles_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRolesResult> getRoles(
  GetRolesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:resourcemanager/getRoles:getRoles',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRolesResult.fromMap(result);
}

/// This data source provides the Resource Manager Shared Resources of the current Alibaba Cloud user.
///
/// > **NOTE:** Available since v1.111.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
/// import * as std from "@pulumi/std";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "tf-example";
/// const _default = alicloud.getZones({
///     availableResourceCreation: "VSwitch",
/// });
/// const defaultGetNetworks = alicloud.vpc.getNetworks({
///     nameRegex: "^default-NODELETING$",
/// });
/// const defaultGetSwitches = Promise.all([defaultGetNetworks, _default]).then(([defaultGetNetworks, _default]) => alicloud.vpc.getSwitches({
///     vpcId: defaultGetNetworks.ids?.[0],
///     zoneId: _default.ids?.[0],
/// }));
/// const defaultResourceShare = new alicloud.resourcemanager.ResourceShare("default", {resourceShareName: name});
/// const defaultSharedResource = new alicloud.resourcemanager.SharedResource("default", {
///     resourceShareId: defaultResourceShare.id,
///     resourceId: defaultGetSwitches.then(defaultGetSwitches => defaultGetSwitches.ids?.[0]),
///     resourceType: "VSwitch",
/// });
/// const ids = std.format({
///     input: "%s:%s",
///     args: [
///         defaultSharedResource.resourceId,
///         defaultSharedResource.resourceType,
///     ],
/// }).then(invoke => alicloud.resourcemanager.getSharedResources({
///     ids: [invoke.result],
/// }));
/// export const firstResourceManagerSharedResourceId = ids.then(ids => ids.resources?.[0]?.id);
/// const resourceShareId = alicloud.resourcemanager.getSharedResourcesOutput({
///     resourceShareId: defaultSharedResource.resourceShareId,
/// });
/// export const secondResourceManagerSharedResourceId = resourceShareId.apply(resourceShareId => resourceShareId.resources?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_std as std
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf-example"
/// default = alicloud.get_zones(available_resource_creation="VSwitch")
/// default_get_networks = alicloud.vpc.get_networks(name_regex="^default-NODELETING$")
/// default_get_switches = alicloud.vpc.get_switches(vpc_id=default_get_networks.ids[0],
///     zone_id=default.ids[0])
/// default_resource_share = alicloud.resourcemanager.ResourceShare("default", resource_share_name=name)
/// default_shared_resource = alicloud.resourcemanager.SharedResource("default",
///     resource_share_id=default_resource_share.id,
///     resource_id=default_get_switches.ids[0],
///     resource_type="VSwitch")
/// ids = alicloud.resourcemanager.get_shared_resources(ids=[std.format(input="%s:%s",
///     args=[
///         default_shared_resource.resource_id,
///         default_shared_resource.resource_type,
///     ]).result])
/// pulumi.export("firstResourceManagerSharedResourceId", ids.resources[0].id)
/// resource_share_id = alicloud.resourcemanager.get_shared_resources_output(resource_share_id=default_shared_resource.resource_share_id)
/// pulumi.export("secondResourceManagerSharedResourceId", resource_share_id.resources[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "tf-example";
///     var @default = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableResourceCreation = "VSwitch",
///     });
///
///     var defaultGetNetworks = AliCloud.Vpc.GetNetworks.Invoke(new()
///     {
///         NameRegex = "^default-NODELETING$",
///     });
///
///     var defaultGetSwitches = AliCloud.Vpc.GetSwitches.Invoke(new()
///     {
///         VpcId = defaultGetNetworks.Apply(getNetworksResult => getNetworksResult.Ids[0]),
///         ZoneId = @default.Apply(getZonesResult => getZonesResult.Ids[0]),
///     });
///
///     var defaultResourceShare = new AliCloud.ResourceManager.ResourceShare("default", new()
///     {
///         ResourceShareName = name,
///     });
///
///     var defaultSharedResource = new AliCloud.ResourceManager.SharedResource("default", new()
///     {
///         ResourceShareId = defaultResourceShare.Id,
///         ResourceId = defaultGetSwitches.Apply(getSwitchesResult => getSwitchesResult.Ids[0]),
///         ResourceType = "VSwitch",
///     });
///
///     var ids = AliCloud.ResourceManager.GetSharedResources.Invoke(new()
///     {
///         Ids = new[]
///         {
///             Std.Format.Invoke(new()
///             {
///                 Input = "%s:%s",
///                 Args = new[]
///                 {
///                     defaultSharedResource.ResourceId,
///                     defaultSharedResource.ResourceType,
///                 },
///             }).Result,
///         },
///     });
///
///     var resourceShareId = AliCloud.ResourceManager.GetSharedResources.Invoke(new()
///     {
///         ResourceShareId = defaultSharedResource.ResourceShareId,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstResourceManagerSharedResourceId"] = ids.Apply(getSharedResourcesResult => getSharedResourcesResult.Resources[0]?.Id),
///         ["secondResourceManagerSharedResourceId"] = resourceShareId.Apply(getSharedResourcesResult => getSharedResourcesResult.Resources[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// cfg := config.New(ctx, "")
/// name := "tf-example";
/// if param := cfg.Get("name"); param != ""{
/// name = param
/// }
/// _default, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{
/// AvailableResourceCreation: pulumi.StringRef("VSwitch"),
/// }, nil);
/// if err != nil {
/// return err
/// }
/// defaultGetNetworks, err := vpc.GetNetworks(ctx, &vpc.GetNetworksArgs{
/// NameRegex: pulumi.StringRef("^default-NODELETING$"),
/// }, nil);
/// if err != nil {
/// return err
/// }
/// defaultGetSwitches, err := vpc.GetSwitches(ctx, &vpc.GetSwitchesArgs{
/// VpcId: pulumi.StringRef(defaultGetNetworks.Ids[0]),
/// ZoneId: pulumi.StringRef(_default.Ids[0]),
/// }, nil);
/// if err != nil {
/// return err
/// }
/// defaultResourceShare, err := resourcemanager.NewResourceShare(ctx, "default", &resourcemanager.ResourceShareArgs{
/// ResourceShareName: pulumi.String(name),
/// })
/// if err != nil {
/// return err
/// }
/// defaultSharedResource, err := resourcemanager.NewSharedResource(ctx, "default", &resourcemanager.SharedResourceArgs{
/// ResourceShareId: defaultResourceShare.ID(),
/// ResourceId: pulumi.String(defaultGetSwitches.Ids[0]),
/// ResourceType: pulumi.String("VSwitch"),
/// })
/// if err != nil {
/// return err
/// }
/// ids, err := resourcemanager.GetSharedResources(ctx, &resourcemanager.GetSharedResourcesArgs{
/// Ids: interface{}{
/// std.Format(ctx, &std.FormatArgs{
/// Input: "%s:%s",
/// Args: pulumi.StringArray{
/// defaultSharedResource.ResourceId,
/// defaultSharedResource.ResourceType,
/// },
/// }, nil).Result,
/// },
/// }, nil);
/// if err != nil {
/// return err
/// }
/// ctx.Export("firstResourceManagerSharedResourceId", ids.Resources[0].Id)
/// resourceShareId := resourcemanager.GetSharedResourcesOutput(ctx, resourcemanager.GetSharedResourcesOutputArgs{
/// ResourceShareId: defaultSharedResource.ResourceShareId,
/// }, nil);
/// ctx.Export("secondResourceManagerSharedResourceId", resourceShareId.ApplyT(func(resourceShareId resourcemanager.GetSharedResourcesResult) (*string, error) {
/// return &resourceShareId.Resources[0].Id, nil
/// }).(pulumi.StringPtrOutput))
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
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.vpc.VpcFunctions;
/// import com.pulumi.alicloud.vpc.inputs.GetNetworksArgs;
/// import com.pulumi.alicloud.vpc.inputs.GetSwitchesArgs;
/// import com.pulumi.alicloud.resourcemanager.ResourceShare;
/// import com.pulumi.alicloud.resourcemanager.ResourceShareArgs;
/// import com.pulumi.alicloud.resourcemanager.SharedResource;
/// import com.pulumi.alicloud.resourcemanager.SharedResourceArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FormatArgs;
/// import com.pulumi.alicloud.resourcemanager.ResourcemanagerFunctions;
/// import com.pulumi.alicloud.resourcemanager.inputs.GetSharedResourcesArgs;
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
///         final var config = ctx.config();
///         final var name = config.get("name").orElse("tf-example");
///         final var default = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .availableResourceCreation("VSwitch")
///             .build());
///
///         final var defaultGetNetworks = VpcFunctions.getNetworks(GetNetworksArgs.builder()
///             .nameRegex("^default-NODELETING$")
///             .build());
///
///         final var defaultGetSwitches = VpcFunctions.getSwitches(GetSwitchesArgs.builder()
///             .vpcId(defaultGetNetworks.ids()[0])
///             .zoneId(default_.ids()[0])
///             .build());
///
///         var defaultResourceShare = new ResourceShare("defaultResourceShare", ResourceShareArgs.builder()
///             .resourceShareName(name)
///             .build());
///
///         var defaultSharedResource = new SharedResource("defaultSharedResource", SharedResourceArgs.builder()
///             .resourceShareId(defaultResourceShare.id())
///             .resourceId(defaultGetSwitches.ids()[0])
///             .resourceType("VSwitch")
///             .build());
///
///         final var ids = ResourcemanagerFunctions.getSharedResources(GetSharedResourcesArgs.builder()
///             .ids(StdFunctions.format(FormatArgs.builder()
///                 .input("%s:%s")
///                 .args(
///                     defaultSharedResource.resourceId(),
///                     defaultSharedResource.resourceType())
///                 .build()).result())
///             .build());
///
///         ctx.export("firstResourceManagerSharedResourceId", ids.resources()[0].id());
///         final var resourceShareId = ResourcemanagerFunctions.getSharedResources(GetSharedResourcesArgs.builder()
///             .resourceShareId(defaultSharedResource.resourceShareId())
///             .build());
///
///         ctx.export("secondResourceManagerSharedResourceId", resourceShareId.applyValue(_resourceShareId -> _resourceShareId.resources()[0].id()));
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: tf-example
/// resources:
///   defaultResourceShare:
///     type: alicloud:resourcemanager:ResourceShare
///     name: default
///     properties:
///       resourceShareName: ${name}
///   defaultSharedResource:
///     type: alicloud:resourcemanager:SharedResource
///     name: default
///     properties:
///       resourceShareId: ${defaultResourceShare.id}
///       resourceId: ${defaultGetSwitches.ids[0]}
///       resourceType: VSwitch
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getZones
///       arguments:
///         availableResourceCreation: VSwitch
///   defaultGetNetworks:
///     fn::invoke:
///       function: alicloud:vpc:getNetworks
///       arguments:
///         nameRegex: ^default-NODELETING$
///   defaultGetSwitches:
///     fn::invoke:
///       function: alicloud:vpc:getSwitches
///       arguments:
///         vpcId: ${defaultGetNetworks.ids[0]}
///         zoneId: ${default.ids[0]}
///   ids:
///     fn::invoke:
///       function: alicloud:resourcemanager:getSharedResources
///       arguments:
///         ids:
///           - fn::invoke:
///               function: std:format
///               arguments:
///                 input: '%s:%s'
///                 args:
///                   - ${defaultSharedResource.resourceId}
///                   - ${defaultSharedResource.resourceType}
///               return: result
///   resourceShareId:
///     fn::invoke:
///       function: alicloud:resourcemanager:getSharedResources
///       arguments:
///         resourceShareId: ${defaultSharedResource.resourceShareId}
/// outputs:
///   firstResourceManagerSharedResourceId: ${ids.resources[0].id}
///   secondResourceManagerSharedResourceId: ${resourceShareId.resources[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_resourcemanager_get_shared_resources_get_shared_resources_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSharedResourcesResult> getSharedResources(
  GetSharedResourcesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:resourcemanager/getSharedResources:getSharedResources',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSharedResourcesResult.fromMap(result);
}

/// This data source provides the Resource Manager Shared Targets of the current Alibaba Cloud user.
///
/// > **NOTE:** Available since v1.111.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "tf-example";
/// const _default = alicloud.resourcemanager.getAccounts({});
/// const defaultResourceShare = new alicloud.resourcemanager.ResourceShare("default", {resourceShareName: name});
/// const defaultSharedTarget = new alicloud.resourcemanager.SharedTarget("default", {
///     resourceShareId: defaultResourceShare.id,
///     targetId: _default.then(_default => _default.ids?.[0]),
/// });
/// const ids = alicloud.resourcemanager.getSharedTargetsOutput({
///     ids: [defaultSharedTarget.targetId],
/// });
/// export const firstResourceManagerSharedTargetId = ids.apply(ids => ids.targets?.[0]?.id);
/// const resourceShareId = alicloud.resourcemanager.getSharedTargetsOutput({
///     resourceShareId: defaultSharedTarget.resourceShareId,
/// });
/// export const secondResourceManagerSharedTargetId = resourceShareId.apply(resourceShareId => resourceShareId.targets?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf-example"
/// default = alicloud.resourcemanager.get_accounts()
/// default_resource_share = alicloud.resourcemanager.ResourceShare("default", resource_share_name=name)
/// default_shared_target = alicloud.resourcemanager.SharedTarget("default",
///     resource_share_id=default_resource_share.id,
///     target_id=default.ids[0])
/// ids = alicloud.resourcemanager.get_shared_targets_output(ids=[default_shared_target.target_id])
/// pulumi.export("firstResourceManagerSharedTargetId", ids.targets[0].id)
/// resource_share_id = alicloud.resourcemanager.get_shared_targets_output(resource_share_id=default_shared_target.resource_share_id)
/// pulumi.export("secondResourceManagerSharedTargetId", resource_share_id.targets[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "tf-example";
///     var @default = AliCloud.ResourceManager.GetAccounts.Invoke();
///
///     var defaultResourceShare = new AliCloud.ResourceManager.ResourceShare("default", new()
///     {
///         ResourceShareName = name,
///     });
///
///     var defaultSharedTarget = new AliCloud.ResourceManager.SharedTarget("default", new()
///     {
///         ResourceShareId = defaultResourceShare.Id,
///         TargetId = @default.Apply(@default => @default.Apply(getAccountsResult => getAccountsResult.Ids[0])),
///     });
///
///     var ids = AliCloud.ResourceManager.GetSharedTargets.Invoke(new()
///     {
///         Ids = new[]
///         {
///             defaultSharedTarget.TargetId,
///         },
///     });
///
///     var resourceShareId = AliCloud.ResourceManager.GetSharedTargets.Invoke(new()
///     {
///         ResourceShareId = defaultSharedTarget.ResourceShareId,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstResourceManagerSharedTargetId"] = ids.Apply(getSharedTargetsResult => getSharedTargetsResult.Targets[0]?.Id),
///         ["secondResourceManagerSharedTargetId"] = resourceShareId.Apply(getSharedTargetsResult => getSharedTargetsResult.Targets[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "tf-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := resourcemanager.GetAccounts(ctx, &resourcemanager.GetAccountsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultResourceShare, err := resourcemanager.NewResourceShare(ctx, "default", &resourcemanager.ResourceShareArgs{
/// 			ResourceShareName: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSharedTarget, err := resourcemanager.NewSharedTarget(ctx, "default", &resourcemanager.SharedTargetArgs{
/// 			ResourceShareId: defaultResourceShare.ID(),
/// 			TargetId:        pulumi.String(_default.Ids[0]),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ids := resourcemanager.GetSharedTargetsOutput(ctx, resourcemanager.GetSharedTargetsOutputArgs{
/// 			Ids: pulumi.StringArray{
/// 				defaultSharedTarget.TargetId,
/// 			},
/// 		}, nil)
/// 		ctx.Export("firstResourceManagerSharedTargetId", ids.ApplyT(func(ids resourcemanager.GetSharedTargetsResult) (*string, error) {
/// 			return &ids.Targets[0].Id, nil
/// 		}).(pulumi.StringPtrOutput))
/// 		resourceShareId := resourcemanager.GetSharedTargetsOutput(ctx, resourcemanager.GetSharedTargetsOutputArgs{
/// 			ResourceShareId: defaultSharedTarget.ResourceShareId,
/// 		}, nil)
/// 		ctx.Export("secondResourceManagerSharedTargetId", resourceShareId.ApplyT(func(resourceShareId resourcemanager.GetSharedTargetsResult) (*string, error) {
/// 			return &resourceShareId.Targets[0].Id, nil
/// 		}).(pulumi.StringPtrOutput))
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
/// import com.pulumi.alicloud.resourcemanager.ResourcemanagerFunctions;
/// import com.pulumi.alicloud.resourcemanager.inputs.GetAccountsArgs;
/// import com.pulumi.alicloud.resourcemanager.ResourceShare;
/// import com.pulumi.alicloud.resourcemanager.ResourceShareArgs;
/// import com.pulumi.alicloud.resourcemanager.SharedTarget;
/// import com.pulumi.alicloud.resourcemanager.SharedTargetArgs;
/// import com.pulumi.alicloud.resourcemanager.inputs.GetSharedTargetsArgs;
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
///         final var config = ctx.config();
///         final var name = config.get("name").orElse("tf-example");
///         final var default = ResourcemanagerFunctions.getAccounts(GetAccountsArgs.builder()
///             .build());
///
///         var defaultResourceShare = new ResourceShare("defaultResourceShare", ResourceShareArgs.builder()
///             .resourceShareName(name)
///             .build());
///
///         var defaultSharedTarget = new SharedTarget("defaultSharedTarget", SharedTargetArgs.builder()
///             .resourceShareId(defaultResourceShare.id())
///             .targetId(default_.ids()[0])
///             .build());
///
///         final var ids = ResourcemanagerFunctions.getSharedTargets(GetSharedTargetsArgs.builder()
///             .ids(defaultSharedTarget.targetId())
///             .build());
///
///         ctx.export("firstResourceManagerSharedTargetId", ids.applyValue(_ids -> _ids.targets()[0].id()));
///         final var resourceShareId = ResourcemanagerFunctions.getSharedTargets(GetSharedTargetsArgs.builder()
///             .resourceShareId(defaultSharedTarget.resourceShareId())
///             .build());
///
///         ctx.export("secondResourceManagerSharedTargetId", resourceShareId.applyValue(_resourceShareId -> _resourceShareId.targets()[0].id()));
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: tf-example
/// resources:
///   defaultResourceShare:
///     type: alicloud:resourcemanager:ResourceShare
///     name: default
///     properties:
///       resourceShareName: ${name}
///   defaultSharedTarget:
///     type: alicloud:resourcemanager:SharedTarget
///     name: default
///     properties:
///       resourceShareId: ${defaultResourceShare.id}
///       targetId: ${default.ids[0]}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:resourcemanager:getAccounts
///       arguments: {}
///   ids:
///     fn::invoke:
///       function: alicloud:resourcemanager:getSharedTargets
///       arguments:
///         ids:
///           - ${defaultSharedTarget.targetId}
///   resourceShareId:
///     fn::invoke:
///       function: alicloud:resourcemanager:getSharedTargets
///       arguments:
///         resourceShareId: ${defaultSharedTarget.resourceShareId}
/// outputs:
///   firstResourceManagerSharedTargetId: ${ids.targets[0].id}
///   secondResourceManagerSharedTargetId: ${resourceShareId.targets[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_resourcemanager_get_shared_targets_get_shared_targets_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSharedTargetsResult> getSharedTargets(
  GetSharedTargetsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:resourcemanager/getSharedTargets:getSharedTargets',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSharedTargetsResult.fromMap(result);
}
