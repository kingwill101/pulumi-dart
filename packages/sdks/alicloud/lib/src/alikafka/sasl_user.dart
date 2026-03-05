import 'package:pulumi/pulumi.dart' as pulumi;
import 'sasl_user_args.dart';
import 'sasl_user_state.dart';

/// Provides an AliKafka Sasl User resource.
///
///
///
/// For information about AliKafka Sasl User and how to use it, see [What is Sasl User](https://www.alibabacloud.com/help/en/message-queue-for-apache-kafka/latest/api-alikafka-2019-09-16-createsasluser).
///
/// &gt; **NOTE:** Available since v1.66.0.
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
/// const _default = alicloud.getZones({
///     availableResourceCreation: "VSwitch",
/// });
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     vpcName: name,
///     cidrBlock: "10.4.0.0/16",
/// });
/// const defaultSwitch = new alicloud.vpc.Switch("default", {
///     vswitchName: name,
///     cidrBlock: "10.4.0.0/24",
///     vpcId: defaultNetwork.id,
///     zoneId: _default.then(_default => _default.zones?.[0]?.id),
/// });
/// const defaultSecurityGroup = new alicloud.ecs.SecurityGroup("default", {vpcId: defaultNetwork.id});
/// const defaultInteger = new random.index.Integer("default", {
///     min: 10000,
///     max: 99999,
/// });
/// const defaultInstance = new alicloud.alikafka.Instance("default", {
///     name: `${name}-${defaultInteger.result}`,
///     partitionNum: 50,
///     diskType: 1,
///     diskSize: 500,
///     deployType: 5,
///     ioMax: 20,
///     specType: "professional",
///     serviceVersion: "2.2.0",
///     vswitchId: defaultSwitch.id,
///     securityGroup: defaultSecurityGroup.id,
///     config: `  {
///     \\"enable.acl\\": \\"true\\"
///   }
/// `,
/// });
/// const defaultSaslUser = new alicloud.alikafka.SaslUser("default", {
///     instanceId: defaultInstance.id,
///     username: name,
///     password: "tf_example123",
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
/// default = alicloud.get_zones(available_resource_creation="VSwitch")
/// default_network = alicloud.vpc.Network("default",
///     vpc_name=name,
///     cidr_block="10.4.0.0/16")
/// default_switch = alicloud.vpc.Switch("default",
///     vswitch_name=name,
///     cidr_block="10.4.0.0/24",
///     vpc_id=default_network.id,
///     zone_id=default.zones[0].id)
/// default_security_group = alicloud.ecs.SecurityGroup("default", vpc_id=default_network.id)
/// default_integer = random.index.Integer("default",
///     min=10000,
///     max=99999)
/// default_instance = alicloud.alikafka.Instance("default",
///     name=f"{name}-{default_integer['result']}",
///     partition_num=50,
///     disk_type=1,
///     disk_size=500,
///     deploy_type=5,
///     io_max=20,
///     spec_type="professional",
///     service_version="2.2.0",
///     vswitch_id=default_switch.id,
///     security_group=default_security_group.id,
///     config="""  {
///     \"enable.acl\": \"true\"
///   }
/// """)
/// default_sasl_user = alicloud.alikafka.SaslUser("default",
///     instance_id=default_instance.id,
///     username=name,
///     password="tf_example123")
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
///     var @default = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableResourceCreation = "VSwitch",
///     });
///
///     var defaultNetwork = new AliCloud.Vpc.Network("default", new()
///     {
///         VpcName = name,
///         CidrBlock = "10.4.0.0/16",
///     });
///
///     var defaultSwitch = new AliCloud.Vpc.Switch("default", new()
///     {
///         VswitchName = name,
///         CidrBlock = "10.4.0.0/24",
///         VpcId = defaultNetwork.Id,
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///     });
///
///     var defaultSecurityGroup = new AliCloud.Ecs.SecurityGroup("default", new()
///     {
///         VpcId = defaultNetwork.Id,
///     });
///
///     var defaultInteger = new Random.Index.Integer("default", new()
///     {
///         Min = 10000,
///         Max = 99999,
///     });
///
///     var defaultInstance = new AliCloud.Alikafka.Instance("default", new()
///     {
///         Name = $"{name}-{defaultInteger.Result}",
///         PartitionNum = 50,
///         DiskType = 1,
///         DiskSize = 500,
///         DeployType = 5,
///         IoMax = 20,
///         SpecType = "professional",
///         ServiceVersion = "2.2.0",
///         VswitchId = defaultSwitch.Id,
///         SecurityGroup = defaultSecurityGroup.Id,
///         Config = @"  {
///     \""enable.acl\"": \""true\""
///   }
/// ",
///     });
///
///     var defaultSaslUser = new AliCloud.Alikafka.SaslUser("default", new()
///     {
///         InstanceId = defaultInstance.Id,
///         Username = name,
///         Password = "tf_example123",
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/alikafka"
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
/// 		_default, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{
/// 			AvailableResourceCreation: pulumi.StringRef("VSwitch"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultNetwork, err := vpc.NewNetwork(ctx, "default", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String(name),
/// 			CidrBlock: pulumi.String("10.4.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSwitch, err := vpc.NewSwitch(ctx, "default", &vpc.SwitchArgs{
/// 			VswitchName: pulumi.String(name),
/// 			CidrBlock:   pulumi.String("10.4.0.0/24"),
/// 			VpcId:       defaultNetwork.ID(),
/// 			ZoneId:      pulumi.String(_default.Zones[0].Id),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSecurityGroup, err := ecs.NewSecurityGroup(ctx, "default", &ecs.SecurityGroupArgs{
/// 			VpcId: defaultNetwork.ID(),
/// 		})
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
/// 		defaultInstance, err := alikafka.NewInstance(ctx, "default", &alikafka.InstanceArgs{
/// 			Name:           pulumi.Sprintf("%v-%v", name, defaultInteger.Result),
/// 			PartitionNum:   pulumi.Int(50),
/// 			DiskType:       pulumi.Int(1),
/// 			DiskSize:       pulumi.Int(500),
/// 			DeployType:     pulumi.Int(5),
/// 			IoMax:          pulumi.Int(20),
/// 			SpecType:       pulumi.String("professional"),
/// 			ServiceVersion: pulumi.String("2.2.0"),
/// 			VswitchId:      defaultSwitch.ID(),
/// 			SecurityGroup:  defaultSecurityGroup.ID(),
/// 			Config:         pulumi.String("  {\n    \\\"enable.acl\\\": \\\"true\\\"\n  }\n"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = alikafka.NewSaslUser(ctx, "default", &alikafka.SaslUserArgs{
/// 			InstanceId: defaultInstance.ID(),
/// 			Username:   pulumi.String(name),
/// 			Password:   pulumi.String("tf_example123"),
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
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.ecs.SecurityGroup;
/// import com.pulumi.alicloud.ecs.SecurityGroupArgs;
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.alikafka.Instance;
/// import com.pulumi.alicloud.alikafka.InstanceArgs;
/// import com.pulumi.alicloud.alikafka.SaslUser;
/// import com.pulumi.alicloud.alikafka.SaslUserArgs;
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
///         final var default = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .availableResourceCreation("VSwitch")
///             .build());
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .vpcName(name)
///             .cidrBlock("10.4.0.0/16")
///             .build());
///
///         var defaultSwitch = new Switch("defaultSwitch", SwitchArgs.builder()
///             .vswitchName(name)
///             .cidrBlock("10.4.0.0/24")
///             .vpcId(defaultNetwork.id())
///             .zoneId(default_.zones()[0].id())
///             .build());
///
///         var defaultSecurityGroup = new SecurityGroup("defaultSecurityGroup", SecurityGroupArgs.builder()
///             .vpcId(defaultNetwork.id())
///             .build());
///
///         var defaultInteger = new Integer("defaultInteger", IntegerArgs.builder()
///             .min(10000)
///             .max(99999)
///             .build());
///
///         var defaultInstance = new Instance("defaultInstance", InstanceArgs.builder()
///             .name(String.format("%s-%s", name,defaultInteger.result()))
///             .partitionNum(50)
///             .diskType(1)
///             .diskSize(500)
///             .deployType(5)
///             .ioMax(20)
///             .specType("professional")
///             .serviceVersion("2.2.0")
///             .vswitchId(defaultSwitch.id())
///             .securityGroup(defaultSecurityGroup.id())
///             .config("""
///   {
///     \"enable.acl\": \"true\"
///   }
///             """)
///             .build());
///
///         var defaultSaslUser = new SaslUser("defaultSaslUser", SaslUserArgs.builder()
///             .instanceId(defaultInstance.id())
///             .username(name)
///             .password("tf_example123")
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
///   defaultNetwork:
///     type: alicloud:vpc:Network
///     name: default
///     properties:
///       vpcName: ${name}
///       cidrBlock: 10.4.0.0/16
///   defaultSwitch:
///     type: alicloud:vpc:Switch
///     name: default
///     properties:
///       vswitchName: ${name}
///       cidrBlock: 10.4.0.0/24
///       vpcId: ${defaultNetwork.id}
///       zoneId: ${default.zones[0].id}
///   defaultSecurityGroup:
///     type: alicloud:ecs:SecurityGroup
///     name: default
///     properties:
///       vpcId: ${defaultNetwork.id}
///   defaultInteger:
///     type: random:Integer
///     name: default
///     properties:
///       min: 10000
///       max: 99999
///   defaultInstance:
///     type: alicloud:alikafka:Instance
///     name: default
///     properties:
///       name: ${name}-${defaultInteger.result}
///       partitionNum: 50
///       diskType: '1'
///       diskSize: '500'
///       deployType: '5'
///       ioMax: '20'
///       specType: professional
///       serviceVersion: 2.2.0
///       vswitchId: ${defaultSwitch.id}
///       securityGroup: ${defaultSecurityGroup.id}
///       config: |2
///           {
///             \"enable.acl\": \"true\"
///           }
///   defaultSaslUser:
///     type: alicloud:alikafka:SaslUser
///     name: default
///     properties:
///       instanceId: ${defaultInstance.id}
///       username: ${name}
///       password: tf_example123
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getZones
///       arguments:
///         availableResourceCreation: VSwitch
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// AliKafka Sasl User can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:alikafka/saslUser:SaslUser example <instance_id>:<username>
/// ```
class SaslUser extends pulumi.CustomResource {
  /// The instance ID.
  late final pulumi.Output<String> instanceId;
  /// An KMS encrypts password used to a db account. You have to specify one of `password` and `kms_encrypted_password` fields.
  late final pulumi.Output<String?> kmsEncryptedPassword;
  /// An KMS encryption context used to decrypt `kms_encrypted_password` before creating or updating a user with `kms_encrypted_password`. See [Encryption Context](https://www.alibabacloud.com/help/doc-detail/42975.htm). It is valid when `kms_encrypted_password` is set.
  late final pulumi.Output<Map<String, String>?> kmsEncryptionContext;
  /// The encryption method. Valid values:
  /// - SCRAM-SHA-512. This is the default value.
  /// - SCRAM-SHA-256
  /// &gt; **NOTE:**   This parameter is available only for serverless ApsaraMQ for Kafka instances.
  late final pulumi.Output<String> mechanism;
  /// The password of the SASL user. It may consist of letters, digits, or underlines, with a length of 1 to 64 characters. You have to specify one of `password` and `kms_encrypted_password` fields.
  late final pulumi.Output<String> password;
  /// The authentication mechanism. Default value: `plain`. Valid values:
  late final pulumi.Output<String> type;
  /// The name of the SASL user. The length should between `1` to `64` characters. The characters can only contain `a`-`z`, `A`-`Z`, `0`-`9`, `_` and `-`.
  late final pulumi.Output<String> username;

  /// Creates a new [SaslUser].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SaslUser]. {@macro pulumi_alikafka_sasl_user_sasl_user_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SaslUser(
    String name, {
    SaslUserArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:alikafka/saslUser:SaslUser',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    instanceId = registerOutput<String>('instanceId');
    kmsEncryptedPassword = registerOutput<String?>('kmsEncryptedPassword');
    kmsEncryptionContext = registerOutput<Map<String, String>?>('kmsEncryptionContext');
    mechanism = registerOutput<String>('mechanism');
    password = registerOutput<String>('password');
    type = registerOutput<String>('type');
    username = registerOutput<String>('username');
  }

  /// Gets an existing [SaslUser] resource's state with the given [name] and [id].
  static SaslUser get(
    String name,
    pulumi.Input<String> id, {
    SaslUserState? state,
  }) {
    return SaslUser._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SaslUser._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:alikafka/saslUser:SaslUser',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    instanceId = registerOutput<String>('instanceId');
    kmsEncryptedPassword = registerOutput<String?>('kmsEncryptedPassword');
    kmsEncryptionContext = registerOutput<Map<String, String>?>('kmsEncryptionContext');
    mechanism = registerOutput<String>('mechanism');
    password = registerOutput<String>('password');
    type = registerOutput<String>('type');
    username = registerOutput<String>('username');
  }
}
