import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpd_grant_rule_args.dart';
import 'vpd_grant_rule_state.dart';

/// Provides a Eflo Vpd Grant Rule resource.
///
/// Lingjun Network Segment Cross-Account Authorization Information.
///
/// For information about Eflo Vpd Grant Rule and how to use it, see [What is Vpd Grant Rule](https://next.api.alibabacloud.com/document/eflo/2022-05-30/CreateVpdGrantRule).
///
/// > **NOTE:** Available since v1.263.0.
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
/// const name = config.get("name") || "terraform-example";
/// const _default = alicloud.getAccount({});
/// const defaultEr = new alicloud.eflo.Er("default", {
///     erName: name,
///     masterZoneId: "cn-hangzhou-a",
/// });
/// const defaultVpd = new alicloud.eflo.Vpd("default", {
///     cidr: "10.0.0.0/8",
///     vpdName: name,
/// });
/// const defaultVpdGrantRule = new alicloud.eflo.VpdGrantRule("default", {
///     grantTenantId: _default.then(_default => _default.id),
///     erId: defaultEr.id,
///     instanceId: defaultVpd.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = alicloud.get_account()
/// default_er = alicloud.eflo.Er("default",
///     er_name=name,
///     master_zone_id="cn-hangzhou-a")
/// default_vpd = alicloud.eflo.Vpd("default",
///     cidr="10.0.0.0/8",
///     vpd_name=name)
/// default_vpd_grant_rule = alicloud.eflo.VpdGrantRule("default",
///     grant_tenant_id=default.id,
///     er_id=default_er.id,
///     instance_id=default_vpd.id)
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
///     var @default = AliCloud.GetAccount.Invoke();
///
///     var defaultEr = new AliCloud.Eflo.Er("default", new()
///     {
///         ErName = name,
///         MasterZoneId = "cn-hangzhou-a",
///     });
///
///     var defaultVpd = new AliCloud.Eflo.Vpd("default", new()
///     {
///         Cidr = "10.0.0.0/8",
///         VpdName = name,
///     });
///
///     var defaultVpdGrantRule = new AliCloud.Eflo.VpdGrantRule("default", new()
///     {
///         GrantTenantId = @default.Apply(@default => @default.Apply(getAccountResult => getAccountResult.Id)),
///         ErId = defaultEr.Id,
///         InstanceId = defaultVpd.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/eflo"
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
/// 		_default, err := alicloud.GetAccount(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultEr, err := eflo.NewEr(ctx, "default", &eflo.ErArgs{
/// 			ErName:       pulumi.String(name),
/// 			MasterZoneId: pulumi.String("cn-hangzhou-a"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultVpd, err := eflo.NewVpd(ctx, "default", &eflo.VpdArgs{
/// 			Cidr:    pulumi.String("10.0.0.0/8"),
/// 			VpdName: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = eflo.NewVpdGrantRule(ctx, "default", &eflo.VpdGrantRuleArgs{
/// 			GrantTenantId: pulumi.String(_default.Id),
/// 			ErId:          defaultEr.ID(),
/// 			InstanceId:    defaultVpd.ID(),
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
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.eflo.Er;
/// import com.pulumi.alicloud.eflo.ErArgs;
/// import com.pulumi.alicloud.eflo.Vpd;
/// import com.pulumi.alicloud.eflo.VpdArgs;
/// import com.pulumi.alicloud.eflo.VpdGrantRule;
/// import com.pulumi.alicloud.eflo.VpdGrantRuleArgs;
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
///         final var default = AlicloudFunctions.getAccount(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var defaultEr = new Er("defaultEr", ErArgs.builder()
///             .erName(name)
///             .masterZoneId("cn-hangzhou-a")
///             .build());
///
///         var defaultVpd = new Vpd("defaultVpd", VpdArgs.builder()
///             .cidr("10.0.0.0/8")
///             .vpdName(name)
///             .build());
///
///         var defaultVpdGrantRule = new VpdGrantRule("defaultVpdGrantRule", VpdGrantRuleArgs.builder()
///             .grantTenantId(default_.id())
///             .erId(defaultEr.id())
///             .instanceId(defaultVpd.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform-example
/// resources:
///   defaultEr:
///     type: alicloud:eflo:Er
///     name: default
///     properties:
///       erName: ${name}
///       masterZoneId: cn-hangzhou-a
///   defaultVpd:
///     type: alicloud:eflo:Vpd
///     name: default
///     properties:
///       cidr: 10.0.0.0/8
///       vpdName: ${name}
///   defaultVpdGrantRule:
///     type: alicloud:eflo:VpdGrantRule
///     name: default
///     properties:
///       grantTenantId: ${default.id}
///       erId: ${defaultEr.id}
///       instanceId: ${defaultVpd.id}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getAccount
///       arguments: {}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Eflo Vpd Grant Rule can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:eflo/vpdGrantRule:VpdGrantRule example <id>
/// ```
class VpdGrantRule extends pulumi.CustomResource {
  /// The Creation time.
  late final pulumi.Output<String> createTime;
  /// The ID of the ER instance under the cross-account tenant.
  late final pulumi.Output<String> erId;
  /// Cross-account authorized tenant ID.
  late final pulumi.Output<String> grantTenantId;
  /// Instance ID of VPD.
  late final pulumi.Output<String> instanceId;
  /// The Region ID.
  late final pulumi.Output<String> regionId;

  /// Creates a new [VpdGrantRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VpdGrantRule]. {@macro pulumi_eflo_vpd_grant_rule_vpd_grant_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VpdGrantRule(
    String name, {
    VpdGrantRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:eflo/vpdGrantRule:VpdGrantRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.erId = registerOutput<String>('erId');
    this.grantTenantId = registerOutput<String>('grantTenantId');
    this.instanceId = registerOutput<String>('instanceId');
    this.regionId = registerOutput<String>('regionId');
  }

  /// Gets an existing [VpdGrantRule] resource's state with the given [name] and [id].
  static VpdGrantRule get(
    String name,
    pulumi.Input<String> id, {
    VpdGrantRuleState? state,
  }) {
    return VpdGrantRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  VpdGrantRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:eflo/vpdGrantRule:VpdGrantRule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.erId = registerOutput<String>('erId');
    this.grantTenantId = registerOutput<String>('grantTenantId');
    this.instanceId = registerOutput<String>('instanceId');
    this.regionId = registerOutput<String>('regionId');
  }
}
