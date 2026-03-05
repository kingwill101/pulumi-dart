import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_args.dart';
import 'instance_client_node_configuration.dart';
import 'instance_data_node_configuration.dart';
import 'instance_kibana_configuration.dart';
import 'instance_master_configuration.dart';
import 'instance_state.dart';
import 'instance_warm_node_configuration.dart';

/// Provides a Elasticsearch Instance resource.
///
///
///
/// For information about Elasticsearch Instance and how to use it, see [What is Instance](https://next.api.alibabacloud.com/document/elasticsearch/2017-06-13/createInstance).
///
/// &gt; **NOTE:** Available since v1.30.0.
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
/// const _default = alicloud.elasticsearch.getZones({});
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     vpcName: name,
///     cidrBlock: "10.0.0.0/8",
/// });
/// const defaultSwitch = new alicloud.vpc.Switch("default", {
///     vswitchName: name,
///     cidrBlock: "10.1.0.0/16",
///     vpcId: defaultNetwork.id,
///     zoneId: _default.then(_default => _default.zones?.[0]?.id),
/// });
/// const defaultInstance = new alicloud.elasticsearch.Instance("default", {
///     description: name,
///     vswitchId: defaultSwitch.id,
///     password: "Examplw1234",
///     version: "7.10_with_X-Pack",
///     instanceChargeType: "PostPaid",
///     dataNodeAmount: 2,
///     dataNodeSpec: "elasticsearch.sn2ne.large",
///     dataNodeDiskSize: 20,
///     dataNodeDiskType: "cloud_ssd",
///     kibanaNodeSpec: "elasticsearch.sn2ne.large",
///     dataNodeDiskPerformanceLevel: "PL1",
///     tags: {
///         Created: "TF",
///         For: "example",
///     },
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
/// default = alicloud.elasticsearch.get_zones()
/// default_network = alicloud.vpc.Network("default",
///     vpc_name=name,
///     cidr_block="10.0.0.0/8")
/// default_switch = alicloud.vpc.Switch("default",
///     vswitch_name=name,
///     cidr_block="10.1.0.0/16",
///     vpc_id=default_network.id,
///     zone_id=default.zones[0].id)
/// default_instance = alicloud.elasticsearch.Instance("default",
///     description=name,
///     vswitch_id=default_switch.id,
///     password="Examplw1234",
///     version="7.10_with_X-Pack",
///     instance_charge_type="PostPaid",
///     data_node_amount=2,
///     data_node_spec="elasticsearch.sn2ne.large",
///     data_node_disk_size=20,
///     data_node_disk_type="cloud_ssd",
///     kibana_node_spec="elasticsearch.sn2ne.large",
///     data_node_disk_performance_level="PL1",
///     tags={
///         "Created": "TF",
///         "For": "example",
///     })
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
///     var @default = AliCloud.ElasticSearch.GetZones.Invoke();
///
///     var defaultNetwork = new AliCloud.Vpc.Network("default", new()
///     {
///         VpcName = name,
///         CidrBlock = "10.0.0.0/8",
///     });
///
///     var defaultSwitch = new AliCloud.Vpc.Switch("default", new()
///     {
///         VswitchName = name,
///         CidrBlock = "10.1.0.0/16",
///         VpcId = defaultNetwork.Id,
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///     });
///
///     var defaultInstance = new AliCloud.ElasticSearch.Instance("default", new()
///     {
///         Description = name,
///         VswitchId = defaultSwitch.Id,
///         Password = "Examplw1234",
///         Version = "7.10_with_X-Pack",
///         InstanceChargeType = "PostPaid",
///         DataNodeAmount = 2,
///         DataNodeSpec = "elasticsearch.sn2ne.large",
///         DataNodeDiskSize = 20,
///         DataNodeDiskType = "cloud_ssd",
///         KibanaNodeSpec = "elasticsearch.sn2ne.large",
///         DataNodeDiskPerformanceLevel = "PL1",
///         Tags =
///         {
///             { "Created", "TF" },
///             { "For", "example" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/elasticsearch"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
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
/// 		_default, err := elasticsearch.GetZones(ctx, &elasticsearch.GetZonesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultNetwork, err := vpc.NewNetwork(ctx, "default", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String(name),
/// 			CidrBlock: pulumi.String("10.0.0.0/8"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSwitch, err := vpc.NewSwitch(ctx, "default", &vpc.SwitchArgs{
/// 			VswitchName: pulumi.String(name),
/// 			CidrBlock:   pulumi.String("10.1.0.0/16"),
/// 			VpcId:       defaultNetwork.ID(),
/// 			ZoneId:      pulumi.String(_default.Zones[0].Id),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = elasticsearch.NewInstance(ctx, "default", &elasticsearch.InstanceArgs{
/// 			Description:                  pulumi.String(name),
/// 			VswitchId:                    defaultSwitch.ID(),
/// 			Password:                     pulumi.String("Examplw1234"),
/// 			Version:                      pulumi.String("7.10_with_X-Pack"),
/// 			InstanceChargeType:           pulumi.String("PostPaid"),
/// 			DataNodeAmount:               pulumi.Int(2),
/// 			DataNodeSpec:                 pulumi.String("elasticsearch.sn2ne.large"),
/// 			DataNodeDiskSize:             pulumi.Int(20),
/// 			DataNodeDiskType:             pulumi.String("cloud_ssd"),
/// 			KibanaNodeSpec:               pulumi.String("elasticsearch.sn2ne.large"),
/// 			DataNodeDiskPerformanceLevel: pulumi.String("PL1"),
/// 			Tags: pulumi.StringMap{
/// 				"Created": pulumi.String("TF"),
/// 				"For":     pulumi.String("example"),
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
/// import com.pulumi.alicloud.elasticsearch.ElasticsearchFunctions;
/// import com.pulumi.alicloud.elasticsearch.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.elasticsearch.Instance;
/// import com.pulumi.alicloud.elasticsearch.InstanceArgs;
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
///         final var default = ElasticsearchFunctions.getZones(GetZonesArgs.builder()
///             .build());
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .vpcName(name)
///             .cidrBlock("10.0.0.0/8")
///             .build());
///
///         var defaultSwitch = new Switch("defaultSwitch", SwitchArgs.builder()
///             .vswitchName(name)
///             .cidrBlock("10.1.0.0/16")
///             .vpcId(defaultNetwork.id())
///             .zoneId(default_.zones()[0].id())
///             .build());
///
///         var defaultInstance = new Instance("defaultInstance", InstanceArgs.builder()
///             .description(name)
///             .vswitchId(defaultSwitch.id())
///             .password("Examplw1234")
///             .version("7.10_with_X-Pack")
///             .instanceChargeType("PostPaid")
///             .dataNodeAmount(2)
///             .dataNodeSpec("elasticsearch.sn2ne.large")
///             .dataNodeDiskSize(20)
///             .dataNodeDiskType("cloud_ssd")
///             .kibanaNodeSpec("elasticsearch.sn2ne.large")
///             .dataNodeDiskPerformanceLevel("PL1")
///             .tags(Map.ofEntries(
///                 Map.entry("Created", "TF"),
///                 Map.entry("For", "example")
///             ))
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
///   defaultNetwork:
///     type: alicloud:vpc:Network
///     name: default
///     properties:
///       vpcName: ${name}
///       cidrBlock: 10.0.0.0/8
///   defaultSwitch:
///     type: alicloud:vpc:Switch
///     name: default
///     properties:
///       vswitchName: ${name}
///       cidrBlock: 10.1.0.0/16
///       vpcId: ${defaultNetwork.id}
///       zoneId: ${default.zones[0].id}
///   defaultInstance:
///     type: alicloud:elasticsearch:Instance
///     name: default
///     properties:
///       description: ${name}
///       vswitchId: ${defaultSwitch.id}
///       password: Examplw1234
///       version: 7.10_with_X-Pack
///       instanceChargeType: PostPaid
///       dataNodeAmount: '2'
///       dataNodeSpec: elasticsearch.sn2ne.large
///       dataNodeDiskSize: '20'
///       dataNodeDiskType: cloud_ssd
///       kibanaNodeSpec: elasticsearch.sn2ne.large
///       dataNodeDiskPerformanceLevel: PL1
///       tags:
///         Created: TF
///         For: example
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:elasticsearch:getZones
///       arguments: {}
/// ```
///
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Elasticsearch Instance can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:elasticsearch/instance:Instance example <instance_id>
/// ```
class Instance extends pulumi.CustomResource {
  /// Schema Type:.
  late final pulumi.Output<String> archType;
  /// Renewal Period
  late final pulumi.Output<int?> autoRenewDuration;
  /// The Elasticsearch cluster's client node quantity, between 2 and 25.
  late final pulumi.Output<int> clientNodeAmount;
  /// Elasticsearch cluster coordination node configuration See `client_node_configuration` below.
  late final pulumi.Output<InstanceClientNodeConfiguration> clientNodeConfiguration;
  /// The client node spec. If specified, client node will be created.
  late final pulumi.Output<String> clientNodeSpec;
  /// Instance creation time.
  late final pulumi.Output<String> createTime;
  /// The Elasticsearch cluster's data node quantity, between 2 and 50.
  late final pulumi.Output<int> dataNodeAmount;
  /// Elasticsearch data node information See `data_node_configuration` below.
  late final pulumi.Output<InstanceDataNodeConfiguration> dataNodeConfiguration;
  /// If encrypt the data node disk. Valid values are `true`, `false`. Default to `false`.
  late final pulumi.Output<bool> dataNodeDiskEncrypted;
  /// Cloud disk performance level. Valid values are `PL0`, `PL1`, `PL2`, `PL3`. The `data_node_disk_type` muse be `cloud_essd`.
  late final pulumi.Output<String> dataNodeDiskPerformanceLevel;
  /// The single data node storage space.
  late final pulumi.Output<int> dataNodeDiskSize;
  /// The data node disk type. Supported values: cloud_ssd, cloud_efficiency.
  late final pulumi.Output<String> dataNodeDiskType;
  /// The data node specifications of the Elasticsearch instance.
  late final pulumi.Output<String> dataNodeSpec;
  /// Instance name
  late final pulumi.Output<String> description;
  /// Elasticsearch cluster private domain name.
  late final pulumi.Output<String> domain;
  /// Whether to enable Kibana private network access.
  ///
  /// The meaning of the value is as follows:
  /// - true: On.
  /// - false: does not open.
  late final pulumi.Output<bool> enableKibanaPrivateNetwork;
  /// Does Kibana enable public access
  late final pulumi.Output<bool> enableKibanaPublicNetwork;
  /// Whether to enable Kibana public network access.
  ///
  /// The meaning of the value is as follows:
  /// - true: On.
  /// - false: does not open.
  late final pulumi.Output<bool> enablePublic;
  late final pulumi.Output<bool?> force;
  /// Version type.
  late final pulumi.Output<String> instanceCategory;
  /// Valid values are `PrePaid`, `PostPaid`. Default to `PostPaid`. From version 1.69.0, the Elasticsearch cluster allows you to update your instance_charge_ype from `PostPaid` to `PrePaid`, the following attributes are required: `period`.
  late final pulumi.Output<String> instanceChargeType;
  /// Elasticsearch Kibana node settings See `kibana_configuration` below.
  late final pulumi.Output<InstanceKibanaConfiguration> kibanaConfiguration;
  /// Kibana address.
  late final pulumi.Output<String> kibanaDomain;
  /// The kibana node specifications of the Elasticsearch instance. Default is `elasticsearch.n4.small`.
  late final pulumi.Output<String> kibanaNodeSpec;
  /// The port assigned by the Kibana node.
  late final pulumi.Output<int> kibanaPort;
  /// Kibana private network security group ID
  late final pulumi.Output<String?> kibanaPrivateSecurityGroupId;
  /// Cluster Kibana node private network access whitelist
  late final pulumi.Output<List<String>> kibanaPrivateWhitelists;
  /// Kibana private network access whitelist
  late final pulumi.Output<List<String>> kibanaWhitelists;
  /// An KMS encrypts password used to an instance. If the `password` is filled in, this field will be ignored, but you have to specify one of `password` and `kms_encrypted_password` fields.
  late final pulumi.Output<String?> kmsEncryptedPassword;
  /// An KMS encryption context used to decrypt `kms_encrypted_password` before creating or updating instance with `kms_encrypted_password`. See [Encryption Context](https://www.alibabacloud.com/help/doc-detail/42975.htm). It is valid when `kms_encrypted_password` is set.
  late final pulumi.Output<Map<String, String>?> kmsEncryptionContext;
  /// Elasticsearch proprietary master node configuration information See `master_configuration` below.
  late final pulumi.Output<InstanceMasterConfiguration> masterConfiguration;
  /// The single master node storage space. Valid values are `PrePaid`, `PostPaid`.
  late final pulumi.Output<String> masterNodeDiskType;
  /// The dedicated master node spec. If specified, dedicated master node will be created.
  late final pulumi.Output<String> masterNodeSpec;
  late final pulumi.Output<String?> orderActionType;
  /// The access password of the instance.
  late final pulumi.Output<String?> password;
  /// The payment method of the instance. Optional values: `prepaid` (subscription) and `postpaid` (pay-as-you-go)
  late final pulumi.Output<String> paymentType;
  /// The duration that you will buy Elasticsearch instance (in month). It is valid when PaymentType is `Subscription`. Valid values: [1~9], 12, 24, 36. Default to 1. From version 1.69.2, when to modify this value, the resource can renewal a `PrePaid` instance.
  late final pulumi.Output<int> period;
  /// Instance connection port.
  late final pulumi.Output<int> port;
  /// Elasticsearch private network whitelist. (Same as EsIpWhitelist)
  late final pulumi.Output<List<String>> privateWhitelists;
  /// Access protocol. Optional values: `HTTP` and **HTTPS * *.
  late final pulumi.Output<String> protocol;
  /// The public network address of the current instance.
  late final pulumi.Output<String> publicDomain;
  /// Elasticsearch cluster public network access port
  late final pulumi.Output<int> publicPort;
  /// Elasticseach public network access whitelist IP list
  late final pulumi.Output<List<String>> publicWhitelists;
  /// Renewal Status
  late final pulumi.Output<String> renewStatus;
  /// Renewal Period Unit
  late final pulumi.Output<String> renewalDurationUnit;
  /// Resource group to which the instance belongs
  late final pulumi.Output<String> resourceGroupId;
  /// Configuration information
  late final pulumi.Output<Map<String, String>> settingConfig;
  /// Instance change status
  late final pulumi.Output<String> status;
  /// Collection of tag key-value pairs
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<String?> updateStrategy;
  /// Instance version
  late final pulumi.Output<String> version;
  /// The ID of VSwitch.
  late final pulumi.Output<String> vswitchId;
  /// The Elasticsearch cluster's warm node quantity, between 3 and 50.
  late final pulumi.Output<int> warmNodeAmount;
  /// Elasticsearch cluster cold data node configuration See `warm_node_configuration` below.
  late final pulumi.Output<InstanceWarmNodeConfiguration> warmNodeConfiguration;
  /// If encrypt the warm node disk. Valid values are `true`, `false`. Default to `false`.
  late final pulumi.Output<bool> warmNodeDiskEncrypted;
  /// The single warm node storage space, should between 500 and 20480
  late final pulumi.Output<int> warmNodeDiskSize;
  /// The warm node disk type. Supported values:  cloud_efficiency.
  late final pulumi.Output<String> warmNodeDiskType;
  /// The warm node specifications of the Elasticsearch instance.
  late final pulumi.Output<String> warmNodeSpec;
  /// The number of zones in the Elasticsearch instance.
  ///
  /// The following arguments will be discarded. Please use new fields as soon as possible:
  late final pulumi.Output<int> zoneCount;

  /// Creates a new [Instance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Instance]. {@macro pulumi_elasticsearch_instance_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Instance(
    String name, {
    InstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:elasticsearch/instance:Instance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    archType = registerOutput<String>('archType');
    autoRenewDuration = registerOutput<int?>('autoRenewDuration');
    clientNodeAmount = registerOutput<int>('clientNodeAmount');
    clientNodeConfiguration = registerOutput<InstanceClientNodeConfiguration>('clientNodeConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceClientNodeConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    clientNodeSpec = registerOutput<String>('clientNodeSpec');
    createTime = registerOutput<String>('createTime');
    dataNodeAmount = registerOutput<int>('dataNodeAmount');
    dataNodeConfiguration = registerOutput<InstanceDataNodeConfiguration>('dataNodeConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceDataNodeConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dataNodeDiskEncrypted = registerOutput<bool>('dataNodeDiskEncrypted');
    dataNodeDiskPerformanceLevel = registerOutput<String>('dataNodeDiskPerformanceLevel');
    dataNodeDiskSize = registerOutput<int>('dataNodeDiskSize');
    dataNodeDiskType = registerOutput<String>('dataNodeDiskType');
    dataNodeSpec = registerOutput<String>('dataNodeSpec');
    description = registerOutput<String>('description');
    domain = registerOutput<String>('domain');
    enableKibanaPrivateNetwork = registerOutput<bool>('enableKibanaPrivateNetwork');
    enableKibanaPublicNetwork = registerOutput<bool>('enableKibanaPublicNetwork');
    enablePublic = registerOutput<bool>('enablePublic');
    force = registerOutput<bool?>('force');
    instanceCategory = registerOutput<String>('instanceCategory');
    instanceChargeType = registerOutput<String>('instanceChargeType');
    kibanaConfiguration = registerOutput<InstanceKibanaConfiguration>('kibanaConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceKibanaConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kibanaDomain = registerOutput<String>('kibanaDomain');
    kibanaNodeSpec = registerOutput<String>('kibanaNodeSpec');
    kibanaPort = registerOutput<int>('kibanaPort');
    kibanaPrivateSecurityGroupId = registerOutput<String?>('kibanaPrivateSecurityGroupId');
    kibanaPrivateWhitelists = registerOutput<List<String>>('kibanaPrivateWhitelists');
    kibanaWhitelists = registerOutput<List<String>>('kibanaWhitelists');
    kmsEncryptedPassword = registerOutput<String?>('kmsEncryptedPassword');
    kmsEncryptionContext = registerOutput<Map<String, String>?>('kmsEncryptionContext');
    masterConfiguration = registerOutput<InstanceMasterConfiguration>('masterConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceMasterConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    masterNodeDiskType = registerOutput<String>('masterNodeDiskType');
    masterNodeSpec = registerOutput<String>('masterNodeSpec');
    orderActionType = registerOutput<String?>('orderActionType');
    password = registerOutput<String?>('password');
    paymentType = registerOutput<String>('paymentType');
    period = registerOutput<int>('period');
    port = registerOutput<int>('port');
    privateWhitelists = registerOutput<List<String>>('privateWhitelists');
    protocol = registerOutput<String>('protocol');
    publicDomain = registerOutput<String>('publicDomain');
    publicPort = registerOutput<int>('publicPort');
    publicWhitelists = registerOutput<List<String>>('publicWhitelists');
    renewStatus = registerOutput<String>('renewStatus');
    renewalDurationUnit = registerOutput<String>('renewalDurationUnit');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    settingConfig = registerOutput<Map<String, String>>('settingConfig');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    updateStrategy = registerOutput<String?>('updateStrategy');
    version = registerOutput<String>('version');
    vswitchId = registerOutput<String>('vswitchId');
    warmNodeAmount = registerOutput<int>('warmNodeAmount');
    warmNodeConfiguration = registerOutput<InstanceWarmNodeConfiguration>('warmNodeConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceWarmNodeConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    warmNodeDiskEncrypted = registerOutput<bool>('warmNodeDiskEncrypted');
    warmNodeDiskSize = registerOutput<int>('warmNodeDiskSize');
    warmNodeDiskType = registerOutput<String>('warmNodeDiskType');
    warmNodeSpec = registerOutput<String>('warmNodeSpec');
    zoneCount = registerOutput<int>('zoneCount');
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
          'alicloud:elasticsearch/instance:Instance',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    archType = registerOutput<String>('archType');
    autoRenewDuration = registerOutput<int?>('autoRenewDuration');
    clientNodeAmount = registerOutput<int>('clientNodeAmount');
    clientNodeConfiguration = registerOutput<InstanceClientNodeConfiguration>('clientNodeConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceClientNodeConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    clientNodeSpec = registerOutput<String>('clientNodeSpec');
    createTime = registerOutput<String>('createTime');
    dataNodeAmount = registerOutput<int>('dataNodeAmount');
    dataNodeConfiguration = registerOutput<InstanceDataNodeConfiguration>('dataNodeConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceDataNodeConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dataNodeDiskEncrypted = registerOutput<bool>('dataNodeDiskEncrypted');
    dataNodeDiskPerformanceLevel = registerOutput<String>('dataNodeDiskPerformanceLevel');
    dataNodeDiskSize = registerOutput<int>('dataNodeDiskSize');
    dataNodeDiskType = registerOutput<String>('dataNodeDiskType');
    dataNodeSpec = registerOutput<String>('dataNodeSpec');
    description = registerOutput<String>('description');
    domain = registerOutput<String>('domain');
    enableKibanaPrivateNetwork = registerOutput<bool>('enableKibanaPrivateNetwork');
    enableKibanaPublicNetwork = registerOutput<bool>('enableKibanaPublicNetwork');
    enablePublic = registerOutput<bool>('enablePublic');
    force = registerOutput<bool?>('force');
    instanceCategory = registerOutput<String>('instanceCategory');
    instanceChargeType = registerOutput<String>('instanceChargeType');
    kibanaConfiguration = registerOutput<InstanceKibanaConfiguration>('kibanaConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceKibanaConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    kibanaDomain = registerOutput<String>('kibanaDomain');
    kibanaNodeSpec = registerOutput<String>('kibanaNodeSpec');
    kibanaPort = registerOutput<int>('kibanaPort');
    kibanaPrivateSecurityGroupId = registerOutput<String?>('kibanaPrivateSecurityGroupId');
    kibanaPrivateWhitelists = registerOutput<List<String>>('kibanaPrivateWhitelists');
    kibanaWhitelists = registerOutput<List<String>>('kibanaWhitelists');
    kmsEncryptedPassword = registerOutput<String?>('kmsEncryptedPassword');
    kmsEncryptionContext = registerOutput<Map<String, String>?>('kmsEncryptionContext');
    masterConfiguration = registerOutput<InstanceMasterConfiguration>('masterConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceMasterConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    masterNodeDiskType = registerOutput<String>('masterNodeDiskType');
    masterNodeSpec = registerOutput<String>('masterNodeSpec');
    orderActionType = registerOutput<String?>('orderActionType');
    password = registerOutput<String?>('password');
    paymentType = registerOutput<String>('paymentType');
    period = registerOutput<int>('period');
    port = registerOutput<int>('port');
    privateWhitelists = registerOutput<List<String>>('privateWhitelists');
    protocol = registerOutput<String>('protocol');
    publicDomain = registerOutput<String>('publicDomain');
    publicPort = registerOutput<int>('publicPort');
    publicWhitelists = registerOutput<List<String>>('publicWhitelists');
    renewStatus = registerOutput<String>('renewStatus');
    renewalDurationUnit = registerOutput<String>('renewalDurationUnit');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    settingConfig = registerOutput<Map<String, String>>('settingConfig');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    updateStrategy = registerOutput<String?>('updateStrategy');
    version = registerOutput<String>('version');
    vswitchId = registerOutput<String>('vswitchId');
    warmNodeAmount = registerOutput<int>('warmNodeAmount');
    warmNodeConfiguration = registerOutput<InstanceWarmNodeConfiguration>('warmNodeConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InstanceWarmNodeConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    warmNodeDiskEncrypted = registerOutput<bool>('warmNodeDiskEncrypted');
    warmNodeDiskSize = registerOutput<int>('warmNodeDiskSize');
    warmNodeDiskType = registerOutput<String>('warmNodeDiskType');
    warmNodeSpec = registerOutput<String>('warmNodeSpec');
    zoneCount = registerOutput<int>('zoneCount');
  }
}
