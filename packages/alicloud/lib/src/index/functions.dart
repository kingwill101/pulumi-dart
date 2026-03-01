import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_account_result.dart';
import 'get_caller_identity_result.dart';
import 'get_file_crc64_checksum_args.dart';
import 'get_file_crc64_checksum_result.dart';
import 'get_msc_sub_contact_verification_message_args.dart';
import 'get_msc_sub_contact_verification_message_result.dart';
import 'get_msc_sub_contacts_args.dart';
import 'get_msc_sub_contacts_result.dart';
import 'get_msc_sub_subscriptions_args.dart';
import 'get_msc_sub_subscriptions_result.dart';
import 'get_msc_sub_webhooks_args.dart';
import 'get_msc_sub_webhooks_result.dart';
import 'get_regions_args.dart';
import 'get_regions_result.dart';
import 'get_zones_args.dart';
import 'get_zones_result.dart';

/// This data source provides information about the current account.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const current = alicloud.getAccount({});
/// export const currentAccountId = current.then(current => current.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// current = alicloud.get_account()
/// pulumi.export("currentAccountId", current.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = AliCloud.GetAccount.Invoke();
///
///     return new Dictionary<string, object?>
///     {
///         ["currentAccountId"] = current.Apply(getAccountResult => getAccountResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := alicloud.GetAccount(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("currentAccountId", current.Id)
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
/// import com.pulumi.alicloud.AlicloudFunctions;
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
///         final var current = AlicloudFunctions.getAccount(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         ctx.export("currentAccountId", current.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   current:
///     fn::invoke:
///       function: alicloud:getAccount
///       arguments: {}
/// outputs:
///   currentAccountId: ${current.id}
/// ```
/// [options] Invoke options controlling this call.
Future<GetAccountResult> getAccount(
  {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:index/getAccount:getAccount',
    const <String, dynamic>{},
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAccountResult.fromMap(result);
}

/// This data source provides the identity of the current user.
///
/// > **NOTE:** Available in 1.65.0+.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const current = alicloud.getCallerIdentity({});
/// export const currentUserArn = current.then(current => current.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// current = alicloud.get_caller_identity()
/// pulumi.export("currentUserArn", current.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = AliCloud.GetCallerIdentity.Invoke();
///
///     return new Dictionary<string, object?>
///     {
///         ["currentUserArn"] = current.Apply(getCallerIdentityResult => getCallerIdentityResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := alicloud.GetCallerIdentity(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("currentUserArn", current.Id)
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
/// import com.pulumi.alicloud.AlicloudFunctions;
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
///         final var current = AlicloudFunctions.getCallerIdentity(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         ctx.export("currentUserArn", current.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   current:
///     fn::invoke:
///       function: alicloud:getCallerIdentity
///       arguments: {}
/// outputs:
///   currentUserArn: ${current.id}
/// ```
/// [options] Invoke options controlling this call.
Future<GetCallerIdentityResult> getCallerIdentity(
  {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:index/getCallerIdentity:getCallerIdentity',
    const <String, dynamic>{},
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCallerIdentityResult.fromMap(result);
}

/// This data source compute file crc64 checksum.
///
/// > **NOTE:** Available in 1.59.0+.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = alicloud.getFileCrc64Checksum({
///     filename: "exampleFileName",
/// });
/// export const fileCrc64Checksum = defualt.checksum;
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.get_file_crc64_checksum(filename="exampleFileName")
/// pulumi.export("fileCrc64Checksum", defualt["checksum"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.GetFileCrc64Checksum.Invoke(new()
///     {
///         Filename = "exampleFileName",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["fileCrc64Checksum"] = defualt.Checksum,
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := alicloud.GetFileCrc64Checksum(ctx, &alicloud.GetFileCrc64ChecksumArgs{
/// 			Filename: "exampleFileName",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("fileCrc64Checksum", defualt.Checksum)
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
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.inputs.GetFileCrc64ChecksumArgs;
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
///         final var default = AlicloudFunctions.getFileCrc64Checksum(GetFileCrc64ChecksumArgs.builder()
///             .filename("exampleFileName")
///             .build());
///
///         ctx.export("fileCrc64Checksum", defualt.checksum());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getFileCrc64Checksum
///       arguments:
///         filename: exampleFileName
/// outputs:
///   fileCrc64Checksum: ${defualt.checksum}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_file_crc64_checksum_get_file_crc64_checksum_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFileCrc64ChecksumResult> getFileCrc64Checksum(
  GetFileCrc64ChecksumArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:index/getFileCrc64Checksum:getFileCrc64Checksum',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFileCrc64ChecksumResult.fromMap(result);
}

/// > **NOTE:** Available since v1.156.0.
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
/// const defaultMscSubContract = new alicloud.MscSubContract("default", {
///     contactName: "example_value",
///     position: "CEO",
///     email: "123@163.com",
///     mobile: "153xxxxx906",
/// });
/// const _default = defaultMscSubContract.id.apply(id => alicloud.getMscSubContactVerificationMessageOutput({
///     contactId: id,
///     type: 1,
/// }));
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default_msc_sub_contract = alicloud.MscSubContract("default",
///     contact_name="example_value",
///     position="CEO",
///     email="123@163.com",
///     mobile="153xxxxx906")
/// default = default_msc_sub_contract.id.apply(lambda id: alicloud.get_msc_sub_contact_verification_message_output(contact_id=id,
///     type=1))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var defaultMscSubContract = new AliCloud.MscSubContract("default", new()
///     {
///         ContactName = "example_value",
///         Position = "CEO",
///         Email = "123@163.com",
///         Mobile = "153xxxxx906",
///     });
///
///     var @default = AliCloud.GetMscSubContactVerificationMessage.Invoke(new()
///     {
///         ContactId = defaultMscSubContract.Id,
///         Type = 1,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		defaultMscSubContract, err := alicloud.NewMscSubContract(ctx, "default", &alicloud.MscSubContractArgs{
/// 			ContactName: pulumi.String("example_value"),
/// 			Position:    pulumi.String("CEO"),
/// 			Email:       pulumi.String("123@163.com"),
/// 			Mobile:      pulumi.String("153xxxxx906"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_ = defaultMscSubContract.ID().ApplyT(func(id string) (alicloud.GetMscSubContactVerificationMessageResult, error) {
/// 			return alicloud.GetMscSubContactVerificationMessageResult(interface{}(alicloud.GetMscSubContactVerificationMessage(ctx, &alicloud.GetMscSubContactVerificationMessageArgs{
/// 				ContactId: id,
/// 				Type:      1,
/// 			}, nil))), nil
/// 		}).(alicloud.GetMscSubContactVerificationMessageResultOutput)
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
/// import com.pulumi.alicloud.MscSubContract;
/// import com.pulumi.alicloud.MscSubContractArgs;
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.inputs.GetMscSubContactVerificationMessageArgs;
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
///         var defaultMscSubContract = new MscSubContract("defaultMscSubContract", MscSubContractArgs.builder()
///             .contactName("example_value")
///             .position("CEO")
///             .email("123@163.com")
///             .mobile("153xxxxx906")
///             .build());
///
///         final var default = defaultMscSubContract.id().applyValue(_id -> AlicloudFunctions.getMscSubContactVerificationMessage(GetMscSubContactVerificationMessageArgs.builder()
///             .contactId(_id)
///             .type(1)
///             .build()));
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   defaultMscSubContract:
///     type: alicloud:MscSubContract
///     name: default
///     properties:
///       contactName: example_value
///       position: CEO
///       email: 123@163.com
///       mobile: 153xxxxx906
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getMscSubContactVerificationMessage
///       arguments:
///         contactId: ${defaultMscSubContract.id}
///         type: 1
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_msc_sub_contact_verification_message_get_msc_sub_contact_verification_message_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMscSubContactVerificationMessageResult> getMscSubContactVerificationMessage(
  GetMscSubContactVerificationMessageArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:index/getMscSubContactVerificationMessage:getMscSubContactVerificationMessage',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMscSubContactVerificationMessageResult.fromMap(result);
}

/// This data source provides the Message Center Contacts of the current Alibaba Cloud user.
///
/// > **NOTE:** Available since v1.132.0.
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
/// const ids = alicloud.getMscSubContacts({});
/// export const mscSubContactId1 = ids.then(ids => ids.contacts?.[0]?.id);
/// const nameRegex = alicloud.getMscSubContacts({
///     nameRegex: "^my-Contact",
/// });
/// export const mscSubContactId2 = nameRegex.then(nameRegex => nameRegex.contacts?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.get_msc_sub_contacts()
/// pulumi.export("mscSubContactId1", ids.contacts[0].id)
/// name_regex = alicloud.get_msc_sub_contacts(name_regex="^my-Contact")
/// pulumi.export("mscSubContactId2", name_regex.contacts[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.GetMscSubContacts.Invoke();
///
///     var nameRegex = AliCloud.GetMscSubContacts.Invoke(new()
///     {
///         NameRegex = "^my-Contact",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["mscSubContactId1"] = ids.Apply(getMscSubContactsResult => getMscSubContactsResult.Contacts[0]?.Id),
///         ["mscSubContactId2"] = nameRegex.Apply(getMscSubContactsResult => getMscSubContactsResult.Contacts[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := alicloud.GetMscSubContacts(ctx, &alicloud.GetMscSubContactsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("mscSubContactId1", ids.Contacts[0].Id)
/// 		nameRegex, err := alicloud.GetMscSubContacts(ctx, &alicloud.GetMscSubContactsArgs{
/// 			NameRegex: pulumi.StringRef("^my-Contact"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("mscSubContactId2", nameRegex.Contacts[0].Id)
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
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.inputs.GetMscSubContactsArgs;
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
///         final var ids = AlicloudFunctions.getMscSubContacts(GetMscSubContactsArgs.builder()
///             .build());
///
///         ctx.export("mscSubContactId1", ids.contacts()[0].id());
///         final var nameRegex = AlicloudFunctions.getMscSubContacts(GetMscSubContactsArgs.builder()
///             .nameRegex("^my-Contact")
///             .build());
///
///         ctx.export("mscSubContactId2", nameRegex.contacts()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:getMscSubContacts
///       arguments: {}
///   nameRegex:
///     fn::invoke:
///       function: alicloud:getMscSubContacts
///       arguments:
///         nameRegex: ^my-Contact
/// outputs:
///   mscSubContactId1: ${ids.contacts[0].id}
///   mscSubContactId2: ${nameRegex.contacts[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_msc_sub_contacts_get_msc_sub_contacts_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMscSubContactsResult> getMscSubContacts(
  GetMscSubContactsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:index/getMscSubContacts:getMscSubContacts',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMscSubContactsResult.fromMap(result);
}

/// This data source provides the Message Center Subscriptions of the current Alibaba Cloud user.
///
/// > **NOTE:** Available since v1.135.0.
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
/// const _default = alicloud.getMscSubSubscriptions({});
/// export const mscSubSubscriptionId1 = _default.then(_default => _default.subscriptions?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.get_msc_sub_subscriptions()
/// pulumi.export("mscSubSubscriptionId1", default.subscriptions[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.GetMscSubSubscriptions.Invoke();
///
///     return new Dictionary<string, object?>
///     {
///         ["mscSubSubscriptionId1"] = @default.Apply(@default => @default.Apply(getMscSubSubscriptionsResult => getMscSubSubscriptionsResult.Subscriptions[0]?.Id)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := alicloud.GetMscSubSubscriptions(ctx, &alicloud.GetMscSubSubscriptionsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("mscSubSubscriptionId1", _default.Subscriptions[0].Id)
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
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.inputs.GetMscSubSubscriptionsArgs;
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
///         final var default = AlicloudFunctions.getMscSubSubscriptions(GetMscSubSubscriptionsArgs.builder()
///             .build());
///
///         ctx.export("mscSubSubscriptionId1", default_.subscriptions()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getMscSubSubscriptions
///       arguments: {}
/// outputs:
///   mscSubSubscriptionId1: ${default.subscriptions[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_msc_sub_subscriptions_get_msc_sub_subscriptions_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMscSubSubscriptionsResult> getMscSubSubscriptions(
  GetMscSubSubscriptionsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:index/getMscSubSubscriptions:getMscSubSubscriptions',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMscSubSubscriptionsResult.fromMap(result);
}

/// This data source provides the Msc Sub Webhooks of the current Alibaba Cloud user.
///
/// > **NOTE:** Available since v1.141.0.
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
/// const ids = alicloud.getMscSubWebhooks({
///     ids: ["example_id"],
/// });
/// export const mscSubWebhookId1 = ids.then(ids => ids.webhooks?.[0]?.id);
/// const nameRegex = alicloud.getMscSubWebhooks({
///     nameRegex: "^my-Webhook",
/// });
/// export const mscSubWebhookId2 = nameRegex.then(nameRegex => nameRegex.webhooks?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.get_msc_sub_webhooks(ids=["example_id"])
/// pulumi.export("mscSubWebhookId1", ids.webhooks[0].id)
/// name_regex = alicloud.get_msc_sub_webhooks(name_regex="^my-Webhook")
/// pulumi.export("mscSubWebhookId2", name_regex.webhooks[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.GetMscSubWebhooks.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_id",
///         },
///     });
///
///     var nameRegex = AliCloud.GetMscSubWebhooks.Invoke(new()
///     {
///         NameRegex = "^my-Webhook",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["mscSubWebhookId1"] = ids.Apply(getMscSubWebhooksResult => getMscSubWebhooksResult.Webhooks[0]?.Id),
///         ["mscSubWebhookId2"] = nameRegex.Apply(getMscSubWebhooksResult => getMscSubWebhooksResult.Webhooks[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := alicloud.GetMscSubWebhooks(ctx, &alicloud.GetMscSubWebhooksArgs{
/// 			Ids: []string{
/// 				"example_id",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("mscSubWebhookId1", ids.Webhooks[0].Id)
/// 		nameRegex, err := alicloud.GetMscSubWebhooks(ctx, &alicloud.GetMscSubWebhooksArgs{
/// 			NameRegex: pulumi.StringRef("^my-Webhook"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("mscSubWebhookId2", nameRegex.Webhooks[0].Id)
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
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.inputs.GetMscSubWebhooksArgs;
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
///         final var ids = AlicloudFunctions.getMscSubWebhooks(GetMscSubWebhooksArgs.builder()
///             .ids("example_id")
///             .build());
///
///         ctx.export("mscSubWebhookId1", ids.webhooks()[0].id());
///         final var nameRegex = AlicloudFunctions.getMscSubWebhooks(GetMscSubWebhooksArgs.builder()
///             .nameRegex("^my-Webhook")
///             .build());
///
///         ctx.export("mscSubWebhookId2", nameRegex.webhooks()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:getMscSubWebhooks
///       arguments:
///         ids:
///           - example_id
///   nameRegex:
///     fn::invoke:
///       function: alicloud:getMscSubWebhooks
///       arguments:
///         nameRegex: ^my-Webhook
/// outputs:
///   mscSubWebhookId1: ${ids.webhooks[0].id}
///   mscSubWebhookId2: ${nameRegex.webhooks[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_msc_sub_webhooks_get_msc_sub_webhooks_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMscSubWebhooksResult> getMscSubWebhooks(
  GetMscSubWebhooksArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:index/getMscSubWebhooks:getMscSubWebhooks',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMscSubWebhooksResult.fromMap(result);
}

/// This data source provides Alibaba Cloud regions.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const currentRegionDs = alicloud.getRegions({
///     current: true,
/// });
/// export const currentRegionId = currentRegionDs.then(currentRegionDs => currentRegionDs.regions?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// current_region_ds = alicloud.get_regions(current=True)
/// pulumi.export("currentRegionId", current_region_ds.regions[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var currentRegionDs = AliCloud.GetRegions.Invoke(new()
///     {
///         Current = true,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["currentRegionId"] = currentRegionDs.Apply(getRegionsResult => getRegionsResult.Regions[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		currentRegionDs, err := alicloud.GetRegions(ctx, &alicloud.GetRegionsArgs{
/// 			Current: pulumi.BoolRef(true),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("currentRegionId", currentRegionDs.Regions[0].Id)
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
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.inputs.GetRegionsArgs;
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
///         final var currentRegionDs = AlicloudFunctions.getRegions(GetRegionsArgs.builder()
///             .current(true)
///             .build());
///
///         ctx.export("currentRegionId", currentRegionDs.regions()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   currentRegionDs:
///     fn::invoke:
///       function: alicloud:getRegions
///       arguments:
///         current: true
/// outputs:
///   currentRegionId: ${currentRegionDs.regions[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_regions_get_regions_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionsResult> getRegions(
  GetRegionsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:index/getRegions:getRegions',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionsResult.fromMap(result);
}

/// This data source provides availability zones that can be accessed by an Alibaba Cloud account within the region configured in the provider.
///
///
/// > **NOTE:** If one zone is sold out, it will not be exported.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// // Declare the data source
/// const zonesDs = alicloud.getZones({
///     availableInstanceType: "ecs.n4.large",
///     availableDiskCategory: "cloud_ssd",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// # Declare the data source
/// zones_ds = alicloud.get_zones(available_instance_type="ecs.n4.large",
///     available_disk_category="cloud_ssd")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Declare the data source
///     var zonesDs = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableInstanceType = "ecs.n4.large",
///         AvailableDiskCategory = "cloud_ssd",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// Declare the data source
/// 		_, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{
/// 			AvailableInstanceType: pulumi.StringRef("ecs.n4.large"),
/// 			AvailableDiskCategory: pulumi.StringRef("cloud_ssd"),
/// 		}, nil)
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
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.inputs.GetZonesArgs;
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
///         // Declare the data source
///         final var zonesDs = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .availableInstanceType("ecs.n4.large")
///             .availableDiskCategory("cloud_ssd")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   # Declare the data source
///   zonesDs:
///     fn::invoke:
///       function: alicloud:getZones
///       arguments:
///         availableInstanceType: ecs.n4.large
///         availableDiskCategory: cloud_ssd
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_index_get_zones_get_zones_args_doc}
/// [options] Invoke options controlling this call.
Future<GetZonesResult> getZones(
  GetZonesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:index/getZones:getZones',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetZonesResult.fromMap(result);
}
