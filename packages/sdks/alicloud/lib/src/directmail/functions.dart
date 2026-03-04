import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_domains_args.dart';
import 'get_domains_result.dart';
import 'get_mail_addresses_args.dart';
import 'get_mail_addresses_result.dart';
import 'get_receivers_args.dart';
import 'get_receivers_result.dart';
import 'get_tags_args.dart';
import 'get_tags_result.dart';

/// This data source provides the Direct Mail Domains of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available since v1.134.0.
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
/// const name = config.get("name") || "terraform-example.pop.com";
/// const _default = new alicloud.directmail.Domain("default", {domainName: name});
/// const ids = alicloud.directmail.getDomainsOutput({
///     ids: [_default.id],
/// });
/// export const directMailDomainsId0 = ids.apply(ids => ids.domains?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example.pop.com"
/// default = alicloud.directmail.Domain("default", domain_name=name)
/// ids = alicloud.directmail.get_domains_output(ids=[default.id])
/// pulumi.export("directMailDomainsId0", ids.domains[0].id)
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
///     var name = config.Get("name") ?? "terraform-example.pop.com";
///     var @default = new AliCloud.DirectMail.Domain("default", new()
///     {
///         DomainName = name,
///     });
///
///     var ids = AliCloud.DirectMail.GetDomains.Invoke(new()
///     {
///         Ids = new[]
///         {
///             @default.Id,
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["directMailDomainsId0"] = ids.Apply(getDomainsResult => getDomainsResult.Domains[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/directmail"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "terraform-example.pop.com"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := directmail.NewDomain(ctx, "default", &directmail.DomainArgs{
/// 			DomainName: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ids := directmail.GetDomainsOutput(ctx, directmail.GetDomainsOutputArgs{
/// 			Ids: pulumi.StringArray{
/// 				_default.ID(),
/// 			},
/// 		}, nil)
/// 		ctx.Export("directMailDomainsId0", ids.ApplyT(func(ids directmail.GetDomainsResult) (*string, error) {
/// 			return &ids.Domains[0].Id, nil
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
/// import com.pulumi.alicloud.directmail.Domain;
/// import com.pulumi.alicloud.directmail.DomainArgs;
/// import com.pulumi.alicloud.directmail.DirectmailFunctions;
/// import com.pulumi.alicloud.directmail.inputs.GetDomainsArgs;
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
///         final var name = config.get("name").orElse("terraform-example.pop.com");
///         var default_ = new Domain("default", DomainArgs.builder()
///             .domainName(name)
///             .build());
///
///         final var ids = DirectmailFunctions.getDomains(GetDomainsArgs.builder()
///             .ids(default_.id())
///             .build());
///
///         ctx.export("directMailDomainsId0", ids.applyValue(_ids -> _ids.domains()[0].id()));
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform-example.pop.com
/// resources:
///   default:
///     type: alicloud:directmail:Domain
///     properties:
///       domainName: ${name}
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:directmail:getDomains
///       arguments:
///         ids:
///           - ${default.id}
/// outputs:
///   directMailDomainsId0: ${ids.domains[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_directmail_get_domains_get_domains_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDomainsResult> getDomains(
  GetDomainsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:directmail/getDomains:getDomains',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDomainsResult.fromMap(result);
}

/// This data source provides the Direct Mail Mail Addresses of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available in v1.134.0+.
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
/// const ids = alicloud.directmail.getMailAddresses({
///     ids: ["example_id"],
/// });
/// export const directMailMailAddressId1 = ids.then(ids => ids.addresses?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.directmail.get_mail_addresses(ids=["example_id"])
/// pulumi.export("directMailMailAddressId1", ids.addresses[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.DirectMail.GetMailAddresses.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_id",
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["directMailMailAddressId1"] = ids.Apply(getMailAddressesResult => getMailAddressesResult.Addresses[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/directmail"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := directmail.GetMailAddresses(ctx, &directmail.GetMailAddressesArgs{
/// 			Ids: []string{
/// 				"example_id",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("directMailMailAddressId1", ids.Addresses[0].Id)
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
/// import com.pulumi.alicloud.directmail.DirectmailFunctions;
/// import com.pulumi.alicloud.directmail.inputs.GetMailAddressesArgs;
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
///         final var ids = DirectmailFunctions.getMailAddresses(GetMailAddressesArgs.builder()
///             .ids("example_id")
///             .build());
///
///         ctx.export("directMailMailAddressId1", ids.addresses()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:directmail:getMailAddresses
///       arguments:
///         ids:
///           - example_id
/// outputs:
///   directMailMailAddressId1: ${ids.addresses[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_directmail_get_mail_addresses_get_mail_addresses_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMailAddressesResult> getMailAddresses(
  GetMailAddressesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:directmail/getMailAddresses:getMailAddresses',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMailAddressesResult.fromMap(result);
}

/// This data source provides the Direct Mail Receiverses of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available in v1.125.0+.
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
/// const example = alicloud.directmail.getReceivers({
///     ids: ["ca73b1e4fb0df7c935a5097a****"],
///     nameRegex: "the_resource_name",
/// });
/// export const firstDirectMailReceiversId = example.then(example => example.receiverses?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.directmail.get_receivers(ids=["ca73b1e4fb0df7c935a5097a****"],
///     name_regex="the_resource_name")
/// pulumi.export("firstDirectMailReceiversId", example.receiverses[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AliCloud.DirectMail.GetReceivers.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "ca73b1e4fb0df7c935a5097a****",
///         },
///         NameRegex = "the_resource_name",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstDirectMailReceiversId"] = example.Apply(getReceiversResult => getReceiversResult.Receiverses[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/directmail"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := directmail.LookupReceivers(ctx, &directmail.LookupReceiversArgs{
/// 			Ids: []string{
/// 				"ca73b1e4fb0df7c935a5097a****",
/// 			},
/// 			NameRegex: pulumi.StringRef("the_resource_name"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstDirectMailReceiversId", example.Receiverses[0].Id)
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
/// import com.pulumi.alicloud.directmail.DirectmailFunctions;
/// import com.pulumi.alicloud.directmail.inputs.GetReceiversArgs;
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
///         final var example = DirectmailFunctions.getReceivers(GetReceiversArgs.builder()
///             .ids("ca73b1e4fb0df7c935a5097a****")
///             .nameRegex("the_resource_name")
///             .build());
///
///         ctx.export("firstDirectMailReceiversId", example.receiverses()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:directmail:getReceivers
///       arguments:
///         ids:
///           - ca73b1e4fb0df7c935a5097a****
///         nameRegex: the_resource_name
/// outputs:
///   firstDirectMailReceiversId: ${example.receiverses[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_directmail_get_receivers_get_receivers_args_doc}
/// [options] Invoke options controlling this call.
Future<GetReceiversResult> getReceivers(
  GetReceiversArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:directmail/getReceivers:getReceivers',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetReceiversResult.fromMap(result);
}

/// This data source provides the Direct Mail Tags of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available in v1.144.0+.
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
/// const ids = alicloud.directmail.getTags({
///     ids: ["example_id"],
/// });
/// export const directMailTagId1 = ids.then(ids => ids.tags?.[0]?.id);
/// const nameRegex = alicloud.directmail.getTags({
///     nameRegex: "^my-Tag",
/// });
/// export const directMailTagId2 = nameRegex.then(nameRegex => nameRegex.tags?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.directmail.get_tags(ids=["example_id"])
/// pulumi.export("directMailTagId1", ids.tags[0].id)
/// name_regex = alicloud.directmail.get_tags(name_regex="^my-Tag")
/// pulumi.export("directMailTagId2", name_regex.tags[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.DirectMail.GetTags.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_id",
///         },
///     });
///
///     var nameRegex = AliCloud.DirectMail.GetTags.Invoke(new()
///     {
///         NameRegex = "^my-Tag",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["directMailTagId1"] = ids.Apply(getTagsResult => getTagsResult.Tags[0]?.Id),
///         ["directMailTagId2"] = nameRegex.Apply(getTagsResult => getTagsResult.Tags[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/directmail"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := directmail.GetTags(ctx, &directmail.GetTagsArgs{
/// 			Ids: []string{
/// 				"example_id",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("directMailTagId1", ids.Tags[0].Id)
/// 		nameRegex, err := directmail.GetTags(ctx, &directmail.GetTagsArgs{
/// 			NameRegex: pulumi.StringRef("^my-Tag"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("directMailTagId2", nameRegex.Tags[0].Id)
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
/// import com.pulumi.alicloud.directmail.DirectmailFunctions;
/// import com.pulumi.alicloud.directmail.inputs.GetTagsArgs;
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
///         final var ids = DirectmailFunctions.getTags(GetTagsArgs.builder()
///             .ids("example_id")
///             .build());
///
///         ctx.export("directMailTagId1", ids.tags()[0].id());
///         final var nameRegex = DirectmailFunctions.getTags(GetTagsArgs.builder()
///             .nameRegex("^my-Tag")
///             .build());
///
///         ctx.export("directMailTagId2", nameRegex.tags()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:directmail:getTags
///       arguments:
///         ids:
///           - example_id
///   nameRegex:
///     fn::invoke:
///       function: alicloud:directmail:getTags
///       arguments:
///         nameRegex: ^my-Tag
/// outputs:
///   directMailTagId1: ${ids.tags[0].id}
///   directMailTagId2: ${nameRegex.tags[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_directmail_get_tags_get_tags_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTagsResult> getTags(
  GetTagsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:directmail/getTags:getTags',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTagsResult.fromMap(result);
}
