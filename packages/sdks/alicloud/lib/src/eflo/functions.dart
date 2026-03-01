import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_subnets_args.dart';
import 'get_subnets_result.dart';
import 'get_vpds_args.dart';
import 'get_vpds_result.dart';

/// This data source provides Eflo Subnet available to the user.[What is Subnet](https://help.aliyun.com/document_detail/604977.html)
///
/// > **NOTE:** Available in 1.204.0+
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = alicloud.eflo.getSubnets({
///     nameRegex: defaultAlicloudEfloSubnet.name,
///     subnetName: "SubnetTestForTerraform",
///     vpdId: vpdId,
///     zoneId: zoneId,
/// });
/// export const alicloudEfloSubnetExampleId = _default.then(_default => _default.subnets?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.eflo.get_subnets(name_regex=default_alicloud_eflo_subnet["name"],
///     subnet_name="SubnetTestForTerraform",
///     vpd_id=vpd_id,
///     zone_id=zone_id)
/// pulumi.export("alicloudEfloSubnetExampleId", default.subnets[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.Eflo.GetSubnets.Invoke(new()
///     {
///         NameRegex = defaultAlicloudEfloSubnet.Name,
///         SubnetName = "SubnetTestForTerraform",
///         VpdId = vpdId,
///         ZoneId = zoneId,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["alicloudEfloSubnetExampleId"] = @default.Apply(@default => @default.Apply(getSubnetsResult => getSubnetsResult.Subnets[0]?.Id)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/eflo"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := eflo.GetSubnets(ctx, &eflo.GetSubnetsArgs{
/// 			NameRegex:  pulumi.StringRef(defaultAlicloudEfloSubnet.Name),
/// 			SubnetName: pulumi.StringRef("SubnetTestForTerraform"),
/// 			VpdId:      pulumi.StringRef(vpdId),
/// 			ZoneId:     pulumi.StringRef(zoneId),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("alicloudEfloSubnetExampleId", _default.Subnets[0].Id)
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
/// import com.pulumi.alicloud.eflo.EfloFunctions;
/// import com.pulumi.alicloud.eflo.inputs.GetSubnetsArgs;
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
///         final var default = EfloFunctions.getSubnets(GetSubnetsArgs.builder()
///             .nameRegex(defaultAlicloudEfloSubnet.name())
///             .subnetName("SubnetTestForTerraform")
///             .vpdId(vpdId)
///             .zoneId(zoneId)
///             .build());
///
///         ctx.export("alicloudEfloSubnetExampleId", default_.subnets()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:eflo:getSubnets
///       arguments:
///         nameRegex: ${defaultAlicloudEfloSubnet.name}
///         subnetName: SubnetTestForTerraform
///         vpdId: ${vpdId}
///         zoneId: ${zoneId}
/// outputs:
///   alicloudEfloSubnetExampleId: ${default.subnets[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_eflo_get_subnets_get_subnets_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSubnetsResult> getSubnets(
  GetSubnetsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:eflo/getSubnets:getSubnets',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSubnetsResult.fromMap(result);
}

/// This data source provides Eflo Vpd available to the user.[What is Vpd](https://help.aliyun.com/document_detail/604976.html)
///
/// > **NOTE:** Available in 1.201.0+
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = alicloud.eflo.getVpds({
///     ids: [defaultAlicloudEfloVpd.id],
///     nameRegex: defaultAlicloudEfloVpd.name,
///     vpdName: "RMC-Terraform-Test",
/// });
/// export const alicloudEfloVpdExampleId = _default.then(_default => _default.vpds?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.eflo.get_vpds(ids=[default_alicloud_eflo_vpd["id"]],
///     name_regex=default_alicloud_eflo_vpd["name"],
///     vpd_name="RMC-Terraform-Test")
/// pulumi.export("alicloudEfloVpdExampleId", default.vpds[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.Eflo.GetVpds.Invoke(new()
///     {
///         Ids = new[]
///         {
///             defaultAlicloudEfloVpd.Id,
///         },
///         NameRegex = defaultAlicloudEfloVpd.Name,
///         VpdName = "RMC-Terraform-Test",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["alicloudEfloVpdExampleId"] = @default.Apply(@default => @default.Apply(getVpdsResult => getVpdsResult.Vpds[0]?.Id)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/eflo"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _default, err := eflo.GetVpds(ctx, &eflo.GetVpdsArgs{
/// Ids: interface{}{
/// defaultAlicloudEfloVpd.Id,
/// },
/// NameRegex: pulumi.StringRef(defaultAlicloudEfloVpd.Name),
/// VpdName: pulumi.StringRef("RMC-Terraform-Test"),
/// }, nil);
/// if err != nil {
/// return err
/// }
/// ctx.Export("alicloudEfloVpdExampleId", _default.Vpds[0].Id)
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
/// import com.pulumi.alicloud.eflo.EfloFunctions;
/// import com.pulumi.alicloud.eflo.inputs.GetVpdsArgs;
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
///         final var default = EfloFunctions.getVpds(GetVpdsArgs.builder()
///             .ids(defaultAlicloudEfloVpd.id())
///             .nameRegex(defaultAlicloudEfloVpd.name())
///             .vpdName("RMC-Terraform-Test")
///             .build());
///
///         ctx.export("alicloudEfloVpdExampleId", default_.vpds()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:eflo:getVpds
///       arguments:
///         ids:
///           - ${defaultAlicloudEfloVpd.id}
///         nameRegex: ${defaultAlicloudEfloVpd.name}
///         vpdName: RMC-Terraform-Test
/// outputs:
///   alicloudEfloVpdExampleId: ${default.vpds[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_eflo_get_vpds_get_vpds_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVpdsResult> getVpds(
  GetVpdsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:eflo/getVpds:getVpds',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVpdsResult.fromMap(result);
}
