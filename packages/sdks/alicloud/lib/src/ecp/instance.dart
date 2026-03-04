import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_args.dart';
import 'instance_state.dart';

/// Provides a Elastic Cloud Phone (ECP) Instance resource.
///
/// For information about Elastic Cloud Phone (ECP) Instance and how to use it, see [What is Instance](https://next.api.aliyun.com/document/cloudphone/2020-12-30/RunInstances).
///
/// &gt; **NOTE:** Available since v1.158.0.
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
/// const name = config.get("name") || "terraform-example";
/// const _default = alicloud.ecp.getZones({});
/// const defaultGetInstanceTypes = alicloud.ecp.getInstanceTypes({});
/// const defaultInteger = new random.index.Integer("default", {
///     min: 10000,
///     max: 99999,
/// });
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     vpcName: `${name}-${defaultInteger.result}`,
///     cidrBlock: "192.168.0.0/16",
/// });
/// const defaultSwitch = new alicloud.vpc.Switch("default", {
///     vswitchName: `${name}-${defaultInteger.result}`,
///     vpcId: defaultNetwork.id,
///     cidrBlock: "192.168.192.0/24",
///     zoneId: _default.then(_default => _default.zones?.[0]?.zoneId),
/// });
/// const defaultSecurityGroup = new alicloud.ecs.SecurityGroup("default", {
///     name: `${name}-${defaultInteger.result}`,
///     vpcId: defaultNetwork.id,
/// });
/// const defaultKeyPair = new alicloud.ecp.KeyPair("default", {
///     keyPairName: `${name}-${defaultInteger.result}`,
///     publicKeyBody: "ssh-rsa AAAAB3Nza12345678qwertyuudsfsg",
/// });
/// const defaultInstance = new alicloud.ecp.Instance("default", {
///     instanceType: defaultGetInstanceTypes.then(defaultGetInstanceTypes => defaultGetInstanceTypes.instanceTypes?.[0]?.instanceType),
///     imageId: "android-image-release5501072_a11_20240530.raw",
///     vswitchId: defaultSwitch.id,
///     securityGroupId: defaultSecurityGroup.id,
///     keyPairName: defaultKeyPair.keyPairName,
///     vncPassword: "Ecp123",
///     paymentType: "PayAsYouGo",
///     instanceName: name,
///     description: name,
///     force: true,
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
///     name = "terraform-example"
/// default = alicloud.ecp.get_zones()
/// default_get_instance_types = alicloud.ecp.get_instance_types()
/// default_integer = random.index.Integer("default",
///     min=10000,
///     max=99999)
/// default_network = alicloud.vpc.Network("default",
///     vpc_name=f"{name}-{default_integer['result']}",
///     cidr_block="192.168.0.0/16")
/// default_switch = alicloud.vpc.Switch("default",
///     vswitch_name=f"{name}-{default_integer['result']}",
///     vpc_id=default_network.id,
///     cidr_block="192.168.192.0/24",
///     zone_id=default.zones[0].zone_id)
/// default_security_group = alicloud.ecs.SecurityGroup("default",
///     name=f"{name}-{default_integer['result']}",
///     vpc_id=default_network.id)
/// default_key_pair = alicloud.ecp.KeyPair("default",
///     key_pair_name=f"{name}-{default_integer['result']}",
///     public_key_body="ssh-rsa AAAAB3Nza12345678qwertyuudsfsg")
/// default_instance = alicloud.ecp.Instance("default",
///     instance_type=default_get_instance_types.instance_types[0].instance_type,
///     image_id="android-image-release5501072_a11_20240530.raw",
///     vswitch_id=default_switch.id,
///     security_group_id=default_security_group.id,
///     key_pair_name=default_key_pair.key_pair_name,
///     vnc_password="Ecp123",
///     payment_type="PayAsYouGo",
///     instance_name=name,
///     description=name,
///     force=True)
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
///     var name = config.Get("name") ?? "terraform-example";
///     var @default = AliCloud.Ecp.GetZones.Invoke();
///
///     var defaultGetInstanceTypes = AliCloud.Ecp.GetInstanceTypes.Invoke();
///
///     var defaultInteger = new Random.Index.Integer("default", new()
///     {
///         Min = 10000,
///         Max = 99999,
///     });
///
///     var defaultNetwork = new AliCloud.Vpc.Network("default", new()
///     {
///         VpcName = $"{name}-{defaultInteger.Result}",
///         CidrBlock = "192.168.0.0/16",
///     });
///
///     var defaultSwitch = new AliCloud.Vpc.Switch("default", new()
///     {
///         VswitchName = $"{name}-{defaultInteger.Result}",
///         VpcId = defaultNetwork.Id,
///         CidrBlock = "192.168.192.0/24",
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.ZoneId)),
///     });
///
///     var defaultSecurityGroup = new AliCloud.Ecs.SecurityGroup("default", new()
///     {
///         Name = $"{name}-{defaultInteger.Result}",
///         VpcId = defaultNetwork.Id,
///     });
///
///     var defaultKeyPair = new AliCloud.Ecp.KeyPair("default", new()
///     {
///         KeyPairName = $"{name}-{defaultInteger.Result}",
///         PublicKeyBody = "ssh-rsa AAAAB3Nza12345678qwertyuudsfsg",
///     });
///
///     var defaultInstance = new AliCloud.Ecp.Instance("default", new()
///     {
///         InstanceType = defaultGetInstanceTypes.Apply(getInstanceTypesResult => getInstanceTypesResult.InstanceTypes[0]?.InstanceType),
///         ImageId = "android-image-release5501072_a11_20240530.raw",
///         VswitchId = defaultSwitch.Id,
///         SecurityGroupId = defaultSecurityGroup.Id,
///         KeyPairName = defaultKeyPair.KeyPairName,
///         VncPassword = "Ecp123",
///         PaymentType = "PayAsYouGo",
///         InstanceName = name,
///         Description = name,
///         Force = true,
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecp"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
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
/// 		_default, err := ecp.GetZones(ctx, &ecp.GetZonesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetInstanceTypes, err := ecp.GetInstanceTypes(ctx, &ecp.GetInstanceTypesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultInteger, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Min: 10000,
/// 			Max: 99999,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultNetwork, err := vpc.NewNetwork(ctx, "default", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.Sprintf("%v-%v", name, defaultInteger.Result),
/// 			CidrBlock: pulumi.String("192.168.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSwitch, err := vpc.NewSwitch(ctx, "default", &vpc.SwitchArgs{
/// 			VswitchName: pulumi.Sprintf("%v-%v", name, defaultInteger.Result),
/// 			VpcId:       defaultNetwork.ID(),
/// 			CidrBlock:   pulumi.String("192.168.192.0/24"),
/// 			ZoneId:      pulumi.String(_default.Zones[0].ZoneId),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSecurityGroup, err := ecs.NewSecurityGroup(ctx, "default", &ecs.SecurityGroupArgs{
/// 			Name:  pulumi.Sprintf("%v-%v", name, defaultInteger.Result),
/// 			VpcId: defaultNetwork.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultKeyPair, err := ecp.NewKeyPair(ctx, "default", &ecp.KeyPairArgs{
/// 			KeyPairName:   pulumi.Sprintf("%v-%v", name, defaultInteger.Result),
/// 			PublicKeyBody: pulumi.String("ssh-rsa AAAAB3Nza12345678qwertyuudsfsg"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ecp.NewInstance(ctx, "default", &ecp.InstanceArgs{
/// 			InstanceType:    pulumi.String(defaultGetInstanceTypes.InstanceTypes[0].InstanceType),
/// 			ImageId:         pulumi.String("android-image-release5501072_a11_20240530.raw"),
/// 			VswitchId:       defaultSwitch.ID(),
/// 			SecurityGroupId: defaultSecurityGroup.ID(),
/// 			KeyPairName:     defaultKeyPair.KeyPairName,
/// 			VncPassword:     pulumi.String("Ecp123"),
/// 			PaymentType:     pulumi.String("PayAsYouGo"),
/// 			InstanceName:    pulumi.String(name),
/// 			Description:     pulumi.String(name),
/// 			Force:           pulumi.Bool(true),
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
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
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
///         final var config = ctx.config();
///         final var name = config.get("name").orElse("terraform-example");
///         final var default = EcpFunctions.getZones(GetZonesArgs.builder()
///             .build());
///
///         final var defaultGetInstanceTypes = EcpFunctions.getInstanceTypes(GetInstanceTypesArgs.builder()
///             .build());
///
///         var defaultInteger = new Integer("defaultInteger", IntegerArgs.builder()
///             .min(10000)
///             .max(99999)
///             .build());
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .vpcName(String.format("%s-%s", name,defaultInteger.result()))
///             .cidrBlock("192.168.0.0/16")
///             .build());
///
///         var defaultSwitch = new Switch("defaultSwitch", SwitchArgs.builder()
///             .vswitchName(String.format("%s-%s", name,defaultInteger.result()))
///             .vpcId(defaultNetwork.id())
///             .cidrBlock("192.168.192.0/24")
///             .zoneId(default_.zones()[0].zoneId())
///             .build());
///
///         var defaultSecurityGroup = new SecurityGroup("defaultSecurityGroup", SecurityGroupArgs.builder()
///             .name(String.format("%s-%s", name,defaultInteger.result()))
///             .vpcId(defaultNetwork.id())
///             .build());
///
///         var defaultKeyPair = new KeyPair("defaultKeyPair", KeyPairArgs.builder()
///             .keyPairName(String.format("%s-%s", name,defaultInteger.result()))
///             .publicKeyBody("ssh-rsa AAAAB3Nza12345678qwertyuudsfsg")
///             .build());
///
///         var defaultInstance = new Instance("defaultInstance", InstanceArgs.builder()
///             .instanceType(defaultGetInstanceTypes.instanceTypes()[0].instanceType())
///             .imageId("android-image-release5501072_a11_20240530.raw")
///             .vswitchId(defaultSwitch.id())
///             .securityGroupId(defaultSecurityGroup.id())
///             .keyPairName(defaultKeyPair.keyPairName())
///             .vncPassword("Ecp123")
///             .paymentType("PayAsYouGo")
///             .instanceName(name)
///             .description(name)
///             .force(true)
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
///   defaultInteger:
///     type: random:Integer
///     name: default
///     properties:
///       min: 10000
///       max: 99999
///   defaultNetwork:
///     type: alicloud:vpc:Network
///     name: default
///     properties:
///       vpcName: ${name}-${defaultInteger.result}
///       cidrBlock: 192.168.0.0/16
///   defaultSwitch:
///     type: alicloud:vpc:Switch
///     name: default
///     properties:
///       vswitchName: ${name}-${defaultInteger.result}
///       vpcId: ${defaultNetwork.id}
///       cidrBlock: 192.168.192.0/24
///       zoneId: ${default.zones[0].zoneId}
///   defaultSecurityGroup:
///     type: alicloud:ecs:SecurityGroup
///     name: default
///     properties:
///       name: ${name}-${defaultInteger.result}
///       vpcId: ${defaultNetwork.id}
///   defaultKeyPair:
///     type: alicloud:ecp:KeyPair
///     name: default
///     properties:
///       keyPairName: ${name}-${defaultInteger.result}
///       publicKeyBody: ssh-rsa AAAAB3Nza12345678qwertyuudsfsg
///   defaultInstance:
///     type: alicloud:ecp:Instance
///     name: default
///     properties:
///       instanceType: ${defaultGetInstanceTypes.instanceTypes[0].instanceType}
///       imageId: android-image-release5501072_a11_20240530.raw
///       vswitchId: ${defaultSwitch.id}
///       securityGroupId: ${defaultSecurityGroup.id}
///       keyPairName: ${defaultKeyPair.keyPairName}
///       vncPassword: Ecp123
///       paymentType: PayAsYouGo
///       instanceName: ${name}
///       description: ${name}
///       force: 'true'
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:ecp:getZones
///       arguments: {}
///   defaultGetInstanceTypes:
///     fn::invoke:
///       function: alicloud:ecp:getInstanceTypes
///       arguments: {}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Elastic Cloud Phone (ECP) Instance can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ecp/instance:Instance example <id>
/// ```
class Instance extends pulumi.CustomResource {
  /// Specifies whether to enable the auto-payment feature. Valid values:
  late final pulumi.Output<bool?> autoPay;

  /// Specifies whether to enable the auto-renewal feature. Valid values:
  late final pulumi.Output<bool?> autoRenew;

  /// The description of the ECP instance. The description must be `2` to `256` characters in length and cannot start with `http://` or `https://`.
  late final pulumi.Output<String?> description;

  /// The bandwidth of the elastic IP address (EIP). **NOTE:** From version 1.232.0, `eip_bandwidth` cannot be modified.
  late final pulumi.Output<int?> eipBandwidth;

  /// Specifies whether to forcefully stop and release the instance. Default value: `false`. Valid values:
  late final pulumi.Output<bool?> force;

  /// The ID of the image.
  late final pulumi.Output<String> imageId;

  /// The name of the ECP instance. The name must be `2` to `128` characters in length. It must start with a letter but cannot start with `http://` or `https://`. It can contain letters, digits, colons (:), underscores (_), periods (.), and hyphens (-).
  late final pulumi.Output<String> instanceName;

  /// The specifications of the ECP instance.
  late final pulumi.Output<String> instanceType;

  /// The name of the key pair that you want to use to connect to the instance.
  late final pulumi.Output<String?> keyPairName;

  /// The billing method of the ECP instance. Default value: `PayAsYouGo`. Valid values: `PayAsYouGo`,`Subscription`. **NOTE:** From version 1.232.0, `payment_type` cannot be modified.
  late final pulumi.Output<String> paymentType;

  /// The subscription duration. Default value: `1`. Valid values:
  /// - If `period_unit` is set to `Month`. Valid values: `1`, `2`, `3`, and `6`.
  /// - If `period_unit` is set to `Year`. Valid values: `1` to `5`.
  late final pulumi.Output<String?> period;

  /// The unit of the subscription duration. Default value: `Month`. Valid values: `Month`, `Year`.
  late final pulumi.Output<String?> periodUnit;

  /// The resolution that you want to select for the ECP instance. **NOTE:** From version 1.232.0, `resolution` can be modified.
  late final pulumi.Output<String> resolution;

  /// The ID of the security group.
  late final pulumi.Output<String> securityGroupId;

  /// The status of the Instance. Valid values: `Running`, `Stopped`.
  late final pulumi.Output<String> status;

  /// The VNC password of the instance. The password must be `6` characters in length and can contain only uppercase letters, lowercase letters, and digits.
  late final pulumi.Output<String?> vncPassword;

  /// The ID of the vSwitch.
  late final pulumi.Output<String> vswitchId;

  /// Creates a new [Instance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Instance]. {@macro pulumi_ecp_instance_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Instance(
    String name, {
    InstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:ecp/instance:Instance',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    autoPay = registerOutput<bool?>('autoPay');
    autoRenew = registerOutput<bool?>('autoRenew');
    description = registerOutput<String?>('description');
    eipBandwidth = registerOutput<int?>('eipBandwidth');
    force = registerOutput<bool?>('force');
    imageId = registerOutput<String>('imageId');
    instanceName = registerOutput<String>('instanceName');
    instanceType = registerOutput<String>('instanceType');
    keyPairName = registerOutput<String?>('keyPairName');
    paymentType = registerOutput<String>('paymentType');
    period = registerOutput<String?>('period');
    periodUnit = registerOutput<String?>('periodUnit');
    resolution = registerOutput<String>('resolution');
    securityGroupId = registerOutput<String>('securityGroupId');
    status = registerOutput<String>('status');
    vncPassword = registerOutput<String?>('vncPassword');
    vswitchId = registerOutput<String>('vswitchId');
  }

  /// Gets an existing [Instance] resource's state with the given [name] and [id].
  static Instance get(
    String name,
    pulumi.Input<String> id, {
    InstanceState? state,
  }) {
    return Instance._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Instance._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:ecp/instance:Instance',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    autoPay = registerOutput<bool?>('autoPay');
    autoRenew = registerOutput<bool?>('autoRenew');
    description = registerOutput<String?>('description');
    eipBandwidth = registerOutput<int?>('eipBandwidth');
    force = registerOutput<bool?>('force');
    imageId = registerOutput<String>('imageId');
    instanceName = registerOutput<String>('instanceName');
    instanceType = registerOutput<String>('instanceType');
    keyPairName = registerOutput<String?>('keyPairName');
    paymentType = registerOutput<String>('paymentType');
    period = registerOutput<String?>('period');
    periodUnit = registerOutput<String?>('periodUnit');
    resolution = registerOutput<String>('resolution');
    securityGroupId = registerOutput<String>('securityGroupId');
    status = registerOutput<String>('status');
    vncPassword = registerOutput<String?>('vncPassword');
    vswitchId = registerOutput<String>('vswitchId');
  }
}
