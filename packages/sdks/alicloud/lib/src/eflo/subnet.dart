import 'package:pulumi/pulumi.dart' as pulumi;
import 'subnet_args.dart';
import 'subnet_state.dart';

/// Provides a Eflo Subnet resource.
///
/// For information about Eflo Subnet and how to use it, see [What is Subnet](https://www.alibabacloud.com/help/en/pai/user-guide/overview-of-intelligent-computing-lingjun).
///
/// &gt; **NOTE:** Available since v1.204.0.
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
/// const name = config.get("name") || "tf-example";
/// const _default = alicloud.getZones({});
/// const defaultGetResourceGroups = alicloud.resourcemanager.getResourceGroups({});
/// const defaultVpd = new alicloud.eflo.Vpd("default", {
///     cidr: "10.0.0.0/8",
///     vpdName: name,
///     resourceGroupId: defaultGetResourceGroups.then(defaultGetResourceGroups => defaultGetResourceGroups.groups?.[0]?.id),
/// });
/// const defaultSubnet = new alicloud.eflo.Subnet("default", {
///     subnetName: name,
///     zoneId: _default.then(_default => _default.zones?.[0]?.id),
///     cidr: "10.0.0.0/16",
///     vpdId: defaultVpd.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf-example"
/// default = alicloud.get_zones()
/// default_get_resource_groups = alicloud.resourcemanager.get_resource_groups()
/// default_vpd = alicloud.eflo.Vpd("default",
///     cidr="10.0.0.0/8",
///     vpd_name=name,
///     resource_group_id=default_get_resource_groups.groups[0].id)
/// default_subnet = alicloud.eflo.Subnet("default",
///     subnet_name=name,
///     zone_id=default.zones[0].id,
///     cidr="10.0.0.0/16",
///     vpd_id=default_vpd.id)
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
///     var @default = AliCloud.GetZones.Invoke();
///
///     var defaultGetResourceGroups = AliCloud.ResourceManager.GetResourceGroups.Invoke();
///
///     var defaultVpd = new AliCloud.Eflo.Vpd("default", new()
///     {
///         Cidr = "10.0.0.0/8",
///         VpdName = name,
///         ResourceGroupId = defaultGetResourceGroups.Apply(getResourceGroupsResult => getResourceGroupsResult.Groups[0]?.Id),
///     });
///
///     var defaultSubnet = new AliCloud.Eflo.Subnet("default", new()
///     {
///         SubnetName = name,
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///         Cidr = "10.0.0.0/16",
///         VpdId = defaultVpd.Id,
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
/// 		_default, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetResourceGroups, err := resourcemanager.GetResourceGroups(ctx, &resourcemanager.GetResourceGroupsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultVpd, err := eflo.NewVpd(ctx, "default", &eflo.VpdArgs{
/// 			Cidr:            pulumi.String("10.0.0.0/8"),
/// 			VpdName:         pulumi.String(name),
/// 			ResourceGroupId: pulumi.String(defaultGetResourceGroups.Groups[0].Id),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = eflo.NewSubnet(ctx, "default", &eflo.SubnetArgs{
/// 			SubnetName: pulumi.String(name),
/// 			ZoneId:     pulumi.String(_default.Zones[0].Id),
/// 			Cidr:       pulumi.String("10.0.0.0/16"),
/// 			VpdId:      defaultVpd.ID(),
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
/// import com.pulumi.alicloud.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.resourcemanager.ResourcemanagerFunctions;
/// import com.pulumi.alicloud.resourcemanager.inputs.GetResourceGroupsArgs;
/// import com.pulumi.alicloud.eflo.Vpd;
/// import com.pulumi.alicloud.eflo.VpdArgs;
/// import com.pulumi.alicloud.eflo.Subnet;
/// import com.pulumi.alicloud.eflo.SubnetArgs;
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
///             .build());
///
///         final var defaultGetResourceGroups = ResourcemanagerFunctions.getResourceGroups(GetResourceGroupsArgs.builder()
///             .build());
///
///         var defaultVpd = new Vpd("defaultVpd", VpdArgs.builder()
///             .cidr("10.0.0.0/8")
///             .vpdName(name)
///             .resourceGroupId(defaultGetResourceGroups.groups()[0].id())
///             .build());
///
///         var defaultSubnet = new Subnet("defaultSubnet", SubnetArgs.builder()
///             .subnetName(name)
///             .zoneId(default_.zones()[0].id())
///             .cidr("10.0.0.0/16")
///             .vpdId(defaultVpd.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: tf-example
/// resources:
///   defaultVpd:
///     type: alicloud:eflo:Vpd
///     name: default
///     properties:
///       cidr: 10.0.0.0/8
///       vpdName: ${name}
///       resourceGroupId: ${defaultGetResourceGroups.groups[0].id}
///   defaultSubnet:
///     type: alicloud:eflo:Subnet
///     name: default
///     properties:
///       subnetName: ${name}
///       zoneId: ${default.zones[0].id}
///       cidr: 10.0.0.0/16
///       vpdId: ${defaultVpd.id}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getZones
///       arguments: {}
///   defaultGetResourceGroups:
///     fn::invoke:
///       function: alicloud:resourcemanager:getResourceGroups
///       arguments: {}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Eflo Subnet can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:eflo/subnet:Subnet example <vpd_id>:<subnet_id>
/// ```
class Subnet extends pulumi.CustomResource {
  /// CIDR network segment.
  late final pulumi.Output<String> cidr;
  /// The creation time of the resource.
  late final pulumi.Output<String> createTime;
  /// Modification time.
  late final pulumi.Output<String> gmtModified;
  /// Error message.
  late final pulumi.Output<String> message;
  /// Resource Group ID.
  late final pulumi.Output<String> resourceGroupId;
  /// The status of the resource.
  late final pulumi.Output<String> status;
  /// The id of the subnet.
  late final pulumi.Output<String> subnetId;
  /// The Subnet name.
  late final pulumi.Output<String> subnetName;
  /// Eflo subnet usage type. optional value:
  /// - General type is not filled in
  /// - OOB:OOB type
  /// - LB: LB type
  late final pulumi.Output<String?> type;
  /// The Eflo VPD ID.
  late final pulumi.Output<String> vpdId;
  /// The zone ID  of the resource.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [Subnet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Subnet]. {@macro pulumi_eflo_subnet_subnet_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Subnet(
    String name, {
    SubnetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:eflo/subnet:Subnet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    cidr = registerOutput<String>('cidr');
    createTime = registerOutput<String>('createTime');
    gmtModified = registerOutput<String>('gmtModified');
    message = registerOutput<String>('message');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    status = registerOutput<String>('status');
    subnetId = registerOutput<String>('subnetId');
    subnetName = registerOutput<String>('subnetName');
    type = registerOutput<String?>('type');
    vpdId = registerOutput<String>('vpdId');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [Subnet] resource's state with the given [name] and [id].
  static Subnet get(
    String name,
    pulumi.Input<String> id, {
    SubnetState? state,
  }) {
    return Subnet._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Subnet._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:eflo/subnet:Subnet',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    cidr = registerOutput<String>('cidr');
    createTime = registerOutput<String>('createTime');
    gmtModified = registerOutput<String>('gmtModified');
    message = registerOutput<String>('message');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    status = registerOutput<String>('status');
    subnetId = registerOutput<String>('subnetId');
    subnetName = registerOutput<String>('subnetName');
    type = registerOutput<String?>('type');
    vpdId = registerOutput<String>('vpdId');
    zoneId = registerOutput<String>('zoneId');
  }
}
