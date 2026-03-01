import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_member_args.dart';

/// Provides a Cloud Firewall Instance Member resource.
///
/// For information about Cloud Firewall Instance Member and how to use it, see [What is Instance Member](https://www.alibabacloud.com/help/en/cloud-firewall/cloudfirewall/developer-reference/api-cloudfw-2017-12-07-addinstancemembers).
///
/// > **NOTE:** Available since v1.194.0.
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
/// import * as random from "@pulumi/random";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "AliyunTerraform";
/// const _default = new random.index.Integer("default", {
///     min: 10000,
///     max: 99999,
/// });
/// const defaultAccount = new alicloud.resourcemanager.Account("default", {displayName: `${name}-${_default.result}`});
/// const defaultInstanceMember = new alicloud.cloudfirewall.InstanceMember("default", {
///     memberDesc: `${name}-${_default.result}`,
///     memberUid: defaultAccount.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "AliyunTerraform"
/// default = random.index.Integer("default",
///     min=10000,
///     max=99999)
/// default_account = alicloud.resourcemanager.Account("default", display_name=f"{name}-{default['result']}")
/// default_instance_member = alicloud.cloudfirewall.InstanceMember("default",
///     member_desc=f"{name}-{default['result']}",
///     member_uid=default_account.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Random = Pulumi.Random;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "AliyunTerraform";
///     var @default = new Random.Index.Integer("default", new()
///     {
///         Min = 10000,
///         Max = 99999,
///     });
///
///     var defaultAccount = new AliCloud.ResourceManager.Account("default", new()
///     {
///         DisplayName = $"{name}-{@default.Result}",
///     });
///
///     var defaultInstanceMember = new AliCloud.CloudFirewall.InstanceMember("default", new()
///     {
///         MemberDesc = $"{name}-{@default.Result}",
///         MemberUid = defaultAccount.Id,
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cloudfirewall"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "AliyunTerraform"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Min: 10000,
/// 			Max: 99999,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultAccount, err := resourcemanager.NewAccount(ctx, "default", &resourcemanager.AccountArgs{
/// 			DisplayName: pulumi.Sprintf("%v-%v", name, _default.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudfirewall.NewInstanceMember(ctx, "default", &cloudfirewall.InstanceMemberArgs{
/// 			MemberDesc: pulumi.Sprintf("%v-%v", name, _default.Result),
/// 			MemberUid:  defaultAccount.ID(),
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
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.resourcemanager.Account;
/// import com.pulumi.alicloud.resourcemanager.AccountArgs;
/// import com.pulumi.alicloud.cloudfirewall.InstanceMember;
/// import com.pulumi.alicloud.cloudfirewall.InstanceMemberArgs;
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
///         final var name = config.get("name").orElse("AliyunTerraform");
///         var default_ = new Integer("default", IntegerArgs.builder()
///             .min(10000)
///             .max(99999)
///             .build());
///
///         var defaultAccount = new Account("defaultAccount", AccountArgs.builder()
///             .displayName(String.format("%s-%s", name,default_.result()))
///             .build());
///
///         var defaultInstanceMember = new InstanceMember("defaultInstanceMember", InstanceMemberArgs.builder()
///             .memberDesc(String.format("%s-%s", name,default_.result()))
///             .memberUid(defaultAccount.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: AliyunTerraform
/// resources:
///   default:
///     type: random:Integer
///     properties:
///       min: 10000
///       max: 99999
///   defaultAccount:
///     type: alicloud:resourcemanager:Account
///     name: default
///     properties:
///       displayName: ${name}-${default.result}
///   defaultInstanceMember:
///     type: alicloud:cloudfirewall:InstanceMember
///     name: default
///     properties:
///       memberDesc: ${name}-${default.result}
///       memberUid: ${defaultAccount.id}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Cloud Firewall Instance Member can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cloudfirewall/instanceMember:InstanceMember example <id>
/// ```
class InstanceMember extends pulumi.CustomResource {
  /// When the cloud firewall member account was added.> use second-level timestamp format.
  late final pulumi.Output<int> createTime;
  /// Remarks of cloud firewall member accounts.
  late final pulumi.Output<String?> memberDesc;
  /// The name of the cloud firewall member account.
  late final pulumi.Output<String> memberDisplayName;
  /// The UID of the cloud firewall member account.
  late final pulumi.Output<String> memberUid;
  /// The last modification time of the cloud firewall member account.> use second-level timestamp format.
  late final pulumi.Output<int> modifyTime;
  /// The resource attribute field that represents the resource status.
  late final pulumi.Output<String> status;

  /// Creates a new [InstanceMember].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InstanceMember]. {@macro pulumi_cloudfirewall_instance_member_instance_member_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InstanceMember(
    String name, {
    InstanceMemberArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cloudfirewall/instanceMember:InstanceMember',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<int>('createTime');
    this.memberDesc = registerOutput<String?>('memberDesc');
    this.memberDisplayName = registerOutput<String>('memberDisplayName');
    this.memberUid = registerOutput<String>('memberUid');
    this.modifyTime = registerOutput<int>('modifyTime');
    this.status = registerOutput<String>('status');
  }
}
