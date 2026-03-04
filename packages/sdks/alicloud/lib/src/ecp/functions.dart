import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_types_args.dart';
import 'get_instance_types_result.dart';
import 'get_instances_args.dart';
import 'get_instances_result.dart';
import 'get_key_pairs_args.dart';
import 'get_key_pairs_result.dart';
import 'get_zones_args.dart';
import 'get_zones_result.dart';

/// This data source provides the available instance types with the Cloud Phone (ECP) Instance of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available in v1.158.0+.
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
/// const _default = alicloud.ecp.getInstanceTypes({});
/// export const firstEcpInstanceTypesInstanceType = _default.then(_default => _default.instanceTypes?.[0]?.instanceType);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.ecp.get_instance_types()
/// pulumi.export("firstEcpInstanceTypesInstanceType", default.instance_types[0].instance_type)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.Ecp.GetInstanceTypes.Invoke();
///
///     return new Dictionary<string, object?>
///     {
///         ["firstEcpInstanceTypesInstanceType"] = @default.Apply(@default => @default.Apply(getInstanceTypesResult => getInstanceTypesResult.InstanceTypes[0]?.InstanceType)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecp"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := ecp.GetInstanceTypes(ctx, &ecp.GetInstanceTypesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstEcpInstanceTypesInstanceType", _default.InstanceTypes[0].InstanceType)
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
/// import com.pulumi.alicloud.ecp.EcpFunctions;
/// import com.pulumi.alicloud.ecp.inputs.GetInstanceTypesArgs;
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
///         final var default = EcpFunctions.getInstanceTypes(GetInstanceTypesArgs.builder()
///             .build());
///
///         ctx.export("firstEcpInstanceTypesInstanceType", default_.instanceTypes()[0].instanceType());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:ecp:getInstanceTypes
///       arguments: {}
/// outputs:
///   firstEcpInstanceTypesInstanceType: ${default.instanceTypes[0].instanceType}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ecp_get_instance_types_get_instance_types_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceTypesResult> getInstanceTypes(
  GetInstanceTypesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:ecp/getInstanceTypes:getInstanceTypes',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceTypesResult.fromMap(result);
}

/// This data source provides the Ecp Instances of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available in v1.158.0+.
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
/// const _default = alicloud.ecp.getZones({});
/// const defaultGetInstanceTypes = alicloud.ecp.getInstanceTypes({});
/// const countSize = _default.then(_default => _default.zones).length;
/// const zoneId = pulumi.all([_default, countSize]).apply(([_default, countSize]) => _default.zones[countSize - 1].zoneId);
/// const instanceTypeCountSize = defaultGetInstanceTypes.then(defaultGetInstanceTypes => defaultGetInstanceTypes.instanceTypes).length;
/// const instanceType = pulumi.all([defaultGetInstanceTypes, instanceTypeCountSize]).apply(([defaultGetInstanceTypes, instanceTypeCountSize]) => defaultGetInstanceTypes.instanceTypes[instanceTypeCountSize - 1].instanceType);
/// const defaultGetNetworks = alicloud.vpc.getNetworks({
///     nameRegex: "default-NODELETING",
/// });
/// const defaultGetSwitches = defaultGetNetworks.then(defaultGetNetworks => alicloud.vpc.getSwitchesOutput({
///     vpcId: defaultGetNetworks.ids?.[0],
///     zoneId: zoneId,
/// }));
/// const group = new alicloud.ecs.SecurityGroup("group", {
///     name: name,
///     vpcId: defaultGetNetworks.then(defaultGetNetworks => defaultGetNetworks.ids?.[0]),
/// });
/// const defaultKeyPair = new alicloud.ecp.KeyPair("default", {
///     keyPairName: name,
///     publicKeyBody: "ssh-rsa AAAAB3Nza12345678qwertyuudsfsg",
/// });
/// const defaultInstance = new alicloud.ecp.Instance("default", {
///     instanceName: name,
///     description: name,
///     force: true,
///     keyPairName: defaultKeyPair.keyPairName,
///     vswitchId: defaultGetSwitches.apply(defaultGetSwitches => defaultGetSwitches.ids?.[0]),
///     imageId: "android_9_0_0_release_2851157_20211201.vhd",
///     instanceType: pulumi.all([defaultGetInstanceTypes, instanceTypeCountSize]).apply(([defaultGetInstanceTypes, instanceTypeCountSize]) => defaultGetInstanceTypes.instanceTypes[instanceTypeCountSize - 1].instanceType),
///     paymentType: "PayAsYouGo",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.ecp.get_zones()
/// default_get_instance_types = alicloud.ecp.get_instance_types()
/// count_size = len(default.zones)
/// zone_id = count_size.apply(lambda count_size: default.zones[count_size - 1]).apply(lambda obj: obj.zone_id)
/// instance_type_count_size = len(default_get_instance_types.instance_types)
/// instance_type = instance_type_count_size.apply(lambda instance_type_count_size: default_get_instance_types.instance_types[instance_type_count_size - 1]).apply(lambda obj: obj.instance_type)
/// default_get_networks = alicloud.vpc.get_networks(name_regex="default-NODELETING")
/// default_get_switches = alicloud.vpc.get_switches(vpc_id=default_get_networks.ids[0],
///     zone_id=zone_id)
/// group = alicloud.ecs.SecurityGroup("group",
///     name=name,
///     vpc_id=default_get_networks.ids[0])
/// default_key_pair = alicloud.ecp.KeyPair("default",
///     key_pair_name=name,
///     public_key_body="ssh-rsa AAAAB3Nza12345678qwertyuudsfsg")
/// default_instance = alicloud.ecp.Instance("default",
///     instance_name=name,
///     description=name,
///     force=True,
///     key_pair_name=default_key_pair.key_pair_name,
///     vswitch_id=default_get_switches.ids[0],
///     image_id="android_9_0_0_release_2851157_20211201.vhd",
///     instance_type=instance_type_count_size.apply(lambda instance_type_count_size: default_get_instance_types.instance_types[instance_type_count_size - 1]).apply(lambda obj: obj.instance_type),
///     payment_type="PayAsYouGo")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.Ecp.GetZones.Invoke();
///
///     var defaultGetInstanceTypes = AliCloud.Ecp.GetInstanceTypes.Invoke();
///
///     var countSize = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones)).Length;
///
///     var zoneId = Output.Tuple(@default, countSize).Apply(values =>
///     {
///         var @default = values.Item1;
///         var countSize = values.Item2;
///         return @default.Apply(getZonesResult => getZonesResult.Zones)[countSize - 1].ZoneId;
///     });
///
///     var instanceTypeCountSize = defaultGetInstanceTypes.Apply(getInstanceTypesResult => getInstanceTypesResult.InstanceTypes).Length;
///
///     var instanceType = Output.Tuple(defaultGetInstanceTypes, instanceTypeCountSize).Apply(values =>
///     {
///         var defaultGetInstanceTypes = values.Item1;
///         var instanceTypeCountSize = values.Item2;
///         return defaultGetInstanceTypes.Apply(getInstanceTypesResult => getInstanceTypesResult.InstanceTypes)[instanceTypeCountSize - 1].InstanceType;
///     });
///
///     var defaultGetNetworks = AliCloud.Vpc.GetNetworks.Invoke(new()
///     {
///         NameRegex = "default-NODELETING",
///     });
///
///     var defaultGetSwitches = AliCloud.Vpc.GetSwitches.Invoke(new()
///     {
///         VpcId = defaultGetNetworks.Apply(getNetworksResult => getNetworksResult.Ids[0]),
///         ZoneId = zoneId,
///     });
///
///     var @group = new AliCloud.Ecs.SecurityGroup("group", new()
///     {
///         Name = name,
///         VpcId = defaultGetNetworks.Apply(getNetworksResult => getNetworksResult.Ids[0]),
///     });
///
///     var defaultKeyPair = new AliCloud.Ecp.KeyPair("default", new()
///     {
///         KeyPairName = name,
///         PublicKeyBody = "ssh-rsa AAAAB3Nza12345678qwertyuudsfsg",
///     });
///
///     var defaultInstance = new AliCloud.Ecp.Instance("default", new()
///     {
///         InstanceName = name,
///         Description = name,
///         Force = true,
///         KeyPairName = defaultKeyPair.KeyPairName,
///         VswitchId = defaultGetSwitches.Apply(getSwitchesResult => getSwitchesResult.Ids[0]),
///         ImageId = "android_9_0_0_release_2851157_20211201.vhd",
///         InstanceType = Output.Tuple(defaultGetInstanceTypes, instanceTypeCountSize).Apply(values =>
///         {
///             var defaultGetInstanceTypes = values.Item1;
///             var instanceTypeCountSize = values.Item2;
///             return defaultGetInstanceTypes.Apply(getInstanceTypesResult => getInstanceTypesResult.InstanceTypes)[instanceTypeCountSize - 1].InstanceType;
///         }),
///         PaymentType = "PayAsYouGo",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecp"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := ecp.GetZones(ctx, &ecp.GetZonesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetInstanceTypes, err := ecp.GetInstanceTypes(ctx, &ecp.GetInstanceTypesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		countSize := len(_default.Zones)
/// 		zoneId := countSize.ApplyT(func(countSize int) (ecp.GetZonesZone, error) {
/// 			return ecp.GetZonesZone(_default.Zones[float64(countSize.ApplyT(func(__convert float64) (float64, error) {
/// 				return __convert - 1, nil
/// 			}).(pulumi.Float64Output))]), nil
/// 		}).(ecp.GetZonesZoneOutput).ApplyT(func(obj ecp.GetZonesZone) (*string, error) {
/// 			return obj.ZoneId, nil
/// 		}).(pulumi.StringPtrOutput)
/// 		instanceTypeCountSize := len(defaultGetInstanceTypes.InstanceTypes)
/// 		_ = instanceTypeCountSize.ApplyT(func(instanceTypeCountSize int) (ecp.GetInstanceTypesInstanceType, error) {
/// 			return ecp.GetInstanceTypesInstanceType(defaultGetInstanceTypes.InstanceTypes[float64(instanceTypeCountSize.ApplyT(func(__convert float64) (float64, error) {
/// 				return __convert - 1, nil
/// 			}).(pulumi.Float64Output))]), nil
/// 		}).(ecp.GetInstanceTypesInstanceTypeOutput).ApplyT(func(obj ecp.GetInstanceTypesInstanceType) (*string, error) {
/// 			return obj.InstanceType, nil
/// 		}).(pulumi.StringPtrOutput)
/// 		defaultGetNetworks, err := vpc.GetNetworks(ctx, &vpc.GetNetworksArgs{
/// 			NameRegex: pulumi.StringRef("default-NODELETING"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetSwitches, err := vpc.GetSwitches(ctx, &vpc.GetSwitchesArgs{
/// 			VpcId:  pulumi.StringRef(defaultGetNetworks.Ids[0]),
/// 			ZoneId: pulumi.StringRef(zoneId),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ecs.NewSecurityGroup(ctx, "group", &ecs.SecurityGroupArgs{
/// 			Name:  pulumi.Any(name),
/// 			VpcId: pulumi.String(defaultGetNetworks.Ids[0]),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultKeyPair, err := ecp.NewKeyPair(ctx, "default", &ecp.KeyPairArgs{
/// 			KeyPairName:   pulumi.Any(name),
/// 			PublicKeyBody: pulumi.String("ssh-rsa AAAAB3Nza12345678qwertyuudsfsg"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ecp.NewInstance(ctx, "default", &ecp.InstanceArgs{
/// 			InstanceName: pulumi.Any(name),
/// 			Description:  pulumi.Any(name),
/// 			Force:        pulumi.Bool(true),
/// 			KeyPairName:  defaultKeyPair.KeyPairName,
/// 			VswitchId:    pulumi.String(defaultGetSwitches.Ids[0]),
/// 			ImageId:      pulumi.String("android_9_0_0_release_2851157_20211201.vhd"),
/// 			InstanceType: pulumi.String(instanceTypeCountSize.ApplyT(func(instanceTypeCountSize int) (ecp.GetInstanceTypesInstanceType, error) {
/// 				return ecp.GetInstanceTypesInstanceType(defaultGetInstanceTypes.InstanceTypes[float64(instanceTypeCountSize.ApplyT(func(__convert float64) (float64, error) {
/// 					return __convert - 1, nil
/// 				}).(pulumi.Float64Output))]), nil
/// 			}).(ecp.GetInstanceTypesInstanceTypeOutput).ApplyT(func(obj ecp.GetInstanceTypesInstanceType) (*string, error) {
/// 				return obj.InstanceType, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 			PaymentType: pulumi.String("PayAsYouGo"),
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
/// import com.pulumi.alicloud.ecp.EcpFunctions;
/// import com.pulumi.alicloud.ecp.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.ecp.inputs.GetInstanceTypesArgs;
/// import com.pulumi.alicloud.vpc.VpcFunctions;
/// import com.pulumi.alicloud.vpc.inputs.GetNetworksArgs;
/// import com.pulumi.alicloud.vpc.inputs.GetSwitchesArgs;
/// import com.pulumi.alicloud.ecs.SecurityGroup;
/// import com.pulumi.alicloud.ecs.SecurityGroupArgs;
/// import com.pulumi.alicloud.ecp.KeyPair;
/// import com.pulumi.alicloud.ecp.KeyPairArgs;
/// import com.pulumi.alicloud.ecp.Instance;
/// import com.pulumi.alicloud.ecp.InstanceArgs;
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
///         final var default = EcpFunctions.getZones(GetZonesArgs.builder()
///             .build());
///
///         final var defaultGetInstanceTypes = EcpFunctions.getInstanceTypes(GetInstanceTypesArgs.builder()
///             .build());
///
///         final var countSize = default_.zones().length();
///
///         final var zoneId = countSize.applyValue(_countSize -> default_.zones()[_countSize - 1]).applyValue(_obj -> _obj.zoneId());
///
///         final var instanceTypeCountSize = defaultGetInstanceTypes.instanceTypes().length();
///
///         final var instanceType = instanceTypeCountSize.applyValue(_instanceTypeCountSize -> defaultGetInstanceTypes.instanceTypes()[_instanceTypeCountSize - 1]).applyValue(_obj -> _obj.instanceType());
///
///         final var defaultGetNetworks = VpcFunctions.getNetworks(GetNetworksArgs.builder()
///             .nameRegex("default-NODELETING")
///             .build());
///
///         final var defaultGetSwitches = VpcFunctions.getSwitches(GetSwitchesArgs.builder()
///             .vpcId(defaultGetNetworks.ids()[0])
///             .zoneId(zoneId)
///             .build());
///
///         var group = new SecurityGroup("group", SecurityGroupArgs.builder()
///             .name(name)
///             .vpcId(defaultGetNetworks.ids()[0])
///             .build());
///
///         var defaultKeyPair = new KeyPair("defaultKeyPair", KeyPairArgs.builder()
///             .keyPairName(name)
///             .publicKeyBody("ssh-rsa AAAAB3Nza12345678qwertyuudsfsg")
///             .build());
///
///         var defaultInstance = new Instance("defaultInstance", InstanceArgs.builder()
///             .instanceName(name)
///             .description(name)
///             .force(true)
///             .keyPairName(defaultKeyPair.keyPairName())
///             .vswitchId(defaultGetSwitches.ids()[0])
///             .imageId("android_9_0_0_release_2851157_20211201.vhd")
///             .instanceType(instanceTypeCountSize.applyValue(_instanceTypeCountSize -> defaultGetInstanceTypes.instanceTypes()[_instanceTypeCountSize - 1]).applyValue(_obj -> _obj.instanceType()))
///             .paymentType("PayAsYouGo")
///             .build());
///
///     }
/// }
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ecp_get_instances_get_instances_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstancesResult> getInstances(
  GetInstancesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:ecp/getInstances:getInstances',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstancesResult.fromMap(result);
}

/// This data source provides the Ecp Key Pairs of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available in v1.130.0+.
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
/// const ids = alicloud.ecp.getKeyPairs({});
/// export const ecpKeyPairId1 = ids.then(ids => ids.pairs?.[0]?.id);
/// const nameRegex = alicloud.ecp.getKeyPairs({
///     nameRegex: "^my-KeyPair",
/// });
/// export const ecpKeyPairId2 = nameRegex.then(nameRegex => nameRegex.pairs?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.ecp.get_key_pairs()
/// pulumi.export("ecpKeyPairId1", ids.pairs[0].id)
/// name_regex = alicloud.ecp.get_key_pairs(name_regex="^my-KeyPair")
/// pulumi.export("ecpKeyPairId2", name_regex.pairs[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Ecp.GetKeyPairs.Invoke();
///
///     var nameRegex = AliCloud.Ecp.GetKeyPairs.Invoke(new()
///     {
///         NameRegex = "^my-KeyPair",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["ecpKeyPairId1"] = ids.Apply(getKeyPairsResult => getKeyPairsResult.Pairs[0]?.Id),
///         ["ecpKeyPairId2"] = nameRegex.Apply(getKeyPairsResult => getKeyPairsResult.Pairs[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecp"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := ecp.GetKeyPairs(ctx, &ecp.GetKeyPairsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("ecpKeyPairId1", ids.Pairs[0].Id)
/// 		nameRegex, err := ecp.GetKeyPairs(ctx, &ecp.GetKeyPairsArgs{
/// 			NameRegex: pulumi.StringRef("^my-KeyPair"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("ecpKeyPairId2", nameRegex.Pairs[0].Id)
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
/// import com.pulumi.alicloud.ecp.EcpFunctions;
/// import com.pulumi.alicloud.ecp.inputs.GetKeyPairsArgs;
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
///         final var ids = EcpFunctions.getKeyPairs(GetKeyPairsArgs.builder()
///             .build());
///
///         ctx.export("ecpKeyPairId1", ids.pairs()[0].id());
///         final var nameRegex = EcpFunctions.getKeyPairs(GetKeyPairsArgs.builder()
///             .nameRegex("^my-KeyPair")
///             .build());
///
///         ctx.export("ecpKeyPairId2", nameRegex.pairs()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:ecp:getKeyPairs
///       arguments: {}
///   nameRegex:
///     fn::invoke:
///       function: alicloud:ecp:getKeyPairs
///       arguments:
///         nameRegex: ^my-KeyPair
/// outputs:
///   ecpKeyPairId1: ${ids.pairs[0].id}
///   ecpKeyPairId2: ${nameRegex.pairs[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ecp_get_key_pairs_get_key_pairs_args_doc}
/// [options] Invoke options controlling this call.
Future<GetKeyPairsResult> getKeyPairs(
  GetKeyPairsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:ecp/getKeyPairs:getKeyPairs',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetKeyPairsResult.fromMap(result);
}

/// This data source provides the available zones with the Cloud Phone (ECP) Instance of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available in v1.158.0+.
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
/// const _default = alicloud.ecp.getZones({});
/// export const alicloudNasZonesId = _default.then(_default => _default.zones?.[0]?.zoneId);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.ecp.get_zones()
/// pulumi.export("alicloudNasZonesId", default.zones[0].zone_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.Ecp.GetZones.Invoke();
///
///     return new Dictionary<string, object?>
///     {
///         ["alicloudNasZonesId"] = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.ZoneId)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecp"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := ecp.GetZones(ctx, &ecp.GetZonesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("alicloudNasZonesId", _default.Zones[0].ZoneId)
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
/// import com.pulumi.alicloud.ecp.EcpFunctions;
/// import com.pulumi.alicloud.ecp.inputs.GetZonesArgs;
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
///         final var default = EcpFunctions.getZones(GetZonesArgs.builder()
///             .build());
///
///         ctx.export("alicloudNasZonesId", default_.zones()[0].zoneId());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:ecp:getZones
///       arguments: {}
/// outputs:
///   alicloudNasZonesId: ${default.zones[0].zoneId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ecp_get_zones_get_zones_args_doc}
/// [options] Invoke options controlling this call.
Future<GetZonesResult> getZones(
  GetZonesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:ecp/getZones:getZones',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetZonesResult.fromMap(result);
}
