import 'package:pulumi/pulumi.dart' as pulumi;
import 'prefix_list_args.dart';
import 'prefix_list_entry.dart';
import 'prefix_list_prefix_list_association.dart';

/// Provides a Vpc Prefix List resource. This resource is used to create a prefix list.
///
/// For information about Vpc Prefix List and how to use it, see [What is Prefix List](https://www.alibabacloud.com/help/zh/virtual-private-cloud/latest/creatvpcprefixlist).
///
/// > **NOTE:** Available since v1.182.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "tf-testacc-example";
/// const defaultRg = new alicloud.resourcemanager.ResourceGroup("defaultRg", {
///     displayName: "tf-testacc-chenyi",
///     resourceGroupName: name,
/// });
/// const changeRg = new alicloud.resourcemanager.ResourceGroup("changeRg", {
///     displayName: "tf-testacc-chenyi-change",
///     resourceGroupName: `${name}1`,
/// });
/// const _default = new alicloud.vpc.PrefixList("default", {
///     maxEntries: 50,
///     resourceGroupId: defaultRg.id,
///     prefixListDescription: "test",
///     ipVersion: "IPV4",
///     prefixListName: name,
///     entrys: [{
///         cidr: "192.168.0.0/16",
///         description: "test",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf-testacc-example"
/// default_rg = alicloud.resourcemanager.ResourceGroup("defaultRg",
///     display_name="tf-testacc-chenyi",
///     resource_group_name=name)
/// change_rg = alicloud.resourcemanager.ResourceGroup("changeRg",
///     display_name="tf-testacc-chenyi-change",
///     resource_group_name=f"{name}1")
/// default = alicloud.vpc.PrefixList("default",
///     max_entries=50,
///     resource_group_id=default_rg.id,
///     prefix_list_description="test",
///     ip_version="IPV4",
///     prefix_list_name=name,
///     entrys=[{
///         "cidr": "192.168.0.0/16",
///         "description": "test",
///     }])
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
///     var name = config.Get("name") ?? "tf-testacc-example";
///     var defaultRg = new AliCloud.ResourceManager.ResourceGroup("defaultRg", new()
///     {
///         DisplayName = "tf-testacc-chenyi",
///         ResourceGroupName = name,
///     });
///
///     var changeRg = new AliCloud.ResourceManager.ResourceGroup("changeRg", new()
///     {
///         DisplayName = "tf-testacc-chenyi-change",
///         ResourceGroupName = $"{name}1",
///     });
///
///     var @default = new AliCloud.Vpc.PrefixList("default", new()
///     {
///         MaxEntries = 50,
///         ResourceGroupId = defaultRg.Id,
///         PrefixListDescription = "test",
///         IpVersion = "IPV4",
///         PrefixListName = name,
///         Entrys = new[]
///         {
///             new AliCloud.Vpc.Inputs.PrefixListEntryArgs
///             {
///                 Cidr = "192.168.0.0/16",
///                 Description = "test",
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
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "tf-testacc-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		defaultRg, err := resourcemanager.NewResourceGroup(ctx, "defaultRg", &resourcemanager.ResourceGroupArgs{
/// 			DisplayName:       pulumi.String("tf-testacc-chenyi"),
/// 			ResourceGroupName: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = resourcemanager.NewResourceGroup(ctx, "changeRg", &resourcemanager.ResourceGroupArgs{
/// 			DisplayName:       pulumi.String("tf-testacc-chenyi-change"),
/// 			ResourceGroupName: pulumi.Sprintf("%v1", name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vpc.NewPrefixList(ctx, "default", &vpc.PrefixListArgs{
/// 			MaxEntries:            pulumi.Int(50),
/// 			ResourceGroupId:       defaultRg.ID(),
/// 			PrefixListDescription: pulumi.String("test"),
/// 			IpVersion:             pulumi.String("IPV4"),
/// 			PrefixListName:        pulumi.String(name),
/// 			Entrys: vpc.PrefixListEntryArray{
/// 				&vpc.PrefixListEntryArgs{
/// 					Cidr:        pulumi.String("192.168.0.0/16"),
/// 					Description: pulumi.String("test"),
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
/// import com.pulumi.alicloud.resourcemanager.ResourceGroup;
/// import com.pulumi.alicloud.resourcemanager.ResourceGroupArgs;
/// import com.pulumi.alicloud.vpc.PrefixList;
/// import com.pulumi.alicloud.vpc.PrefixListArgs;
/// import com.pulumi.alicloud.vpc.inputs.PrefixListEntryArgs;
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
///         final var name = config.get("name").orElse("tf-testacc-example");
///         var defaultRg = new ResourceGroup("defaultRg", ResourceGroupArgs.builder()
///             .displayName("tf-testacc-chenyi")
///             .resourceGroupName(name)
///             .build());
///
///         var changeRg = new ResourceGroup("changeRg", ResourceGroupArgs.builder()
///             .displayName("tf-testacc-chenyi-change")
///             .resourceGroupName(String.format("%s1", name))
///             .build());
///
///         var default_ = new PrefixList("default", PrefixListArgs.builder()
///             .maxEntries(50)
///             .resourceGroupId(defaultRg.id())
///             .prefixListDescription("test")
///             .ipVersion("IPV4")
///             .prefixListName(name)
///             .entrys(PrefixListEntryArgs.builder()
///                 .cidr("192.168.0.0/16")
///                 .description("test")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: tf-testacc-example
/// resources:
///   defaultRg:
///     type: alicloud:resourcemanager:ResourceGroup
///     properties:
///       displayName: tf-testacc-chenyi
///       resourceGroupName: ${name}
///   changeRg:
///     type: alicloud:resourcemanager:ResourceGroup
///     properties:
///       displayName: tf-testacc-chenyi-change
///       resourceGroupName: ${name}1
///   default:
///     type: alicloud:vpc:PrefixList
///     properties:
///       maxEntries: 50
///       resourceGroupId: ${defaultRg.id}
///       prefixListDescription: test
///       ipVersion: IPV4
///       prefixListName: ${name}
///       entrys:
///         - cidr: 192.168.0.0/16
///           description: test
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Vpc Prefix List can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:vpc/prefixList:PrefixList example <id>
/// ```
class PrefixList extends pulumi.CustomResource {
  /// The time when the prefix list was created.
  late final pulumi.Output<String> createTime;
  /// The CIDR address block list of the prefix list.See the following `Block Entrys`.
  late final pulumi.Output<List<PrefixListEntry>?> entrys;
  /// The IP version of the prefix list. Value:-**IPV4**:IPv4 version.-**IPV6**:IPv6 version.
  late final pulumi.Output<String> ipVersion;
  /// The maximum number of entries for CIDR address blocks in the prefix list.
  late final pulumi.Output<int> maxEntries;
  /// The association list information of the prefix list.
  late final pulumi.Output<List<PrefixListPrefixListAssociation>> prefixListAssociations;
  /// The description of the prefix list.It must be 2 to 256 characters in length and must start with a letter or Chinese, but cannot start with `http://` or `https://`.
  late final pulumi.Output<String?> prefixListDescription;
  /// The ID of the query Prefix List.
  late final pulumi.Output<String> prefixListId;
  /// The name of the prefix list. The name must be 2 to 128 characters in length, and must start with a letter. It can contain digits, periods (.), underscores (_), and hyphens (-).
  late final pulumi.Output<String?> prefixListName;
  /// The ID of the resource group to which the PrefixList belongs.
  late final pulumi.Output<String> resourceGroupId;
  /// The share type of the prefix list. Value:-**Shared**: indicates that the prefix list is a Shared prefix list.-Null: indicates that the prefix list is not a shared prefix list.
  late final pulumi.Output<String> shareType;
  /// Resource attribute fields that represent the status of the resource.
  late final pulumi.Output<String> status;
  /// The tags of PrefixList.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [PrefixList].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PrefixList]. {@macro pulumi_vpc_prefix_list_prefix_list_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PrefixList(
    String name, {
    PrefixListArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:vpc/prefixList:PrefixList',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.entrys = registerOutput<List<PrefixListEntry>?>('entrys');
    this.ipVersion = registerOutput<String>('ipVersion');
    this.maxEntries = registerOutput<int>('maxEntries');
    this.prefixListAssociations = registerOutput<List<PrefixListPrefixListAssociation>>('prefixListAssociations');
    this.prefixListDescription = registerOutput<String?>('prefixListDescription');
    this.prefixListId = registerOutput<String>('prefixListId');
    this.prefixListName = registerOutput<String?>('prefixListName');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.shareType = registerOutput<String>('shareType');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }
}
