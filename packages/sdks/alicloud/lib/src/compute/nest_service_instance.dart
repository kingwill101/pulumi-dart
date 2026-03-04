import 'package:pulumi/pulumi.dart' as pulumi;
import 'nest_service_instance_args.dart';
import 'nest_service_instance_commodity.dart';
import 'nest_service_instance_operation_metadata.dart';
import 'nest_service_instance_state.dart';

/// Provides a Compute Nest Service Instance resource.
///
/// For information about Compute Nest Service Instance and how to use it, see [What is Service Instance](https://www.alibabacloud.com/help/zh/compute-nest/developer-reference/api-computenest-2021-06-01-createserviceinstance).
///
/// &gt; **NOTE:** Available since v1.205.0.
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
/// const name = config.get("name") || "tfexample";
/// const _default = alicloud.resourcemanager.getResourceGroups({});
/// const defaultGetZones = alicloud.getZones({
///     availableDiskCategory: "cloud_efficiency",
///     availableResourceCreation: "VSwitch",
/// });
/// const defaultGetInstanceTypes = defaultGetZones.then(defaultGetZones => alicloud.ecs.getInstanceTypes({
///     availabilityZone: defaultGetZones.zones?.[0]?.id,
///     instanceTypeFamily: "ecs.sn1ne",
/// }));
/// const defaultGetImages = alicloud.ecs.getImages({
///     nameRegex: "^ubuntu_[0-9]+_[0-9]+_x64*",
///     owners: "system",
/// });
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     vpcName: name,
///     cidrBlock: "10.0.0.0/8",
/// });
/// const defaultSwitch = new alicloud.vpc.Switch("default", {
///     vswitchName: name,
///     cidrBlock: "10.1.0.0/16",
///     vpcId: defaultNetwork.id,
///     zoneId: defaultGetZones.then(defaultGetZones => defaultGetZones.zones?.[0]?.id),
/// });
/// const defaultSecurityGroup = new alicloud.ecs.SecurityGroup("default", {vpcId: defaultNetwork.id});
/// const defaultInstance = new alicloud.ecs.Instance("default", {
///     imageId: defaultGetImages.then(defaultGetImages => defaultGetImages.images?.[0]?.id),
///     instanceType: defaultGetInstanceTypes.then(defaultGetInstanceTypes => defaultGetInstanceTypes.instanceTypes?.[0]?.id),
///     securityGroups: [defaultSecurityGroup].map(__item => __item.id),
///     internetChargeType: "PayByTraffic",
///     internetMaxBandwidthOut: 10,
///     availabilityZone: defaultGetZones.then(defaultGetZones => defaultGetZones.zones?.[0]?.id),
///     instanceChargeType: "PostPaid",
///     systemDiskCategory: "cloud_efficiency",
///     vswitchId: defaultSwitch.id,
/// });
/// const defaultNestServiceInstance = new alicloud.compute.NestServiceInstance("default", {
///     serviceId: "service-dd475e6e468348799f0f",
///     serviceVersion: "1",
///     serviceInstanceName: name,
///     resourceGroupId: _default.then(_default => _default.groups?.[0]?.id),
///     paymentType: "Permanent",
///     operationMetadata: {
///         operationStartTime: "1681281179000",
///         operationEndTime: "1681367579000",
///         resources: pulumi.interpolate`    {
///       \"Type\": \"ResourceIds\",
///       \"RegionId\": \"cn-hangzhou\",
///       \"ResourceIds\": {
///       \"ALIYUN::ECS::INSTANCE\": [
///         \"${defaultInstance.id}\"
///         ]
///       }
///     }
/// `,
///     },
///     tags: {
///         Created: "TF",
///         For: "ServiceInstance",
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
///     name = "tfexample"
/// default = alicloud.resourcemanager.get_resource_groups()
/// default_get_zones = alicloud.get_zones(available_disk_category="cloud_efficiency",
///     available_resource_creation="VSwitch")
/// default_get_instance_types = alicloud.ecs.get_instance_types(availability_zone=default_get_zones.zones[0].id,
///     instance_type_family="ecs.sn1ne")
/// default_get_images = alicloud.ecs.get_images(name_regex="^ubuntu_[0-9]+_[0-9]+_x64*",
///     owners="system")
/// default_network = alicloud.vpc.Network("default",
///     vpc_name=name,
///     cidr_block="10.0.0.0/8")
/// default_switch = alicloud.vpc.Switch("default",
///     vswitch_name=name,
///     cidr_block="10.1.0.0/16",
///     vpc_id=default_network.id,
///     zone_id=default_get_zones.zones[0].id)
/// default_security_group = alicloud.ecs.SecurityGroup("default", vpc_id=default_network.id)
/// default_instance = alicloud.ecs.Instance("default",
///     image_id=default_get_images.images[0].id,
///     instance_type=default_get_instance_types.instance_types[0].id,
///     security_groups=[__item.id for __item in [default_security_group]],
///     internet_charge_type="PayByTraffic",
///     internet_max_bandwidth_out=10,
///     availability_zone=default_get_zones.zones[0].id,
///     instance_charge_type="PostPaid",
///     system_disk_category="cloud_efficiency",
///     vswitch_id=default_switch.id)
/// default_nest_service_instance = alicloud.compute.NestServiceInstance("default",
///     service_id="service-dd475e6e468348799f0f",
///     service_version="1",
///     service_instance_name=name,
///     resource_group_id=default.groups[0].id,
///     payment_type="Permanent",
///     operation_metadata={
///         "operation_start_time": "1681281179000",
///         "operation_end_time": "1681367579000",
///         "resources": default_instance.id.apply(lambda id: f"""    {{
///       \"Type\": \"ResourceIds\",
///       \"RegionId\": \"cn-hangzhou\",
///       \"ResourceIds\": {{
///       \"ALIYUN::ECS::INSTANCE\": [
///         \"{id}\"
///         ]
///       }}
///     }}
/// """),
///     },
///     tags={
///         "Created": "TF",
///         "For": "ServiceInstance",
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
///     var name = config.Get("name") ?? "tfexample";
///     var @default = AliCloud.ResourceManager.GetResourceGroups.Invoke();
///
///     var defaultGetZones = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableDiskCategory = "cloud_efficiency",
///         AvailableResourceCreation = "VSwitch",
///     });
///
///     var defaultGetInstanceTypes = AliCloud.Ecs.GetInstanceTypes.Invoke(new()
///     {
///         AvailabilityZone = defaultGetZones.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///         InstanceTypeFamily = "ecs.sn1ne",
///     });
///
///     var defaultGetImages = AliCloud.Ecs.GetImages.Invoke(new()
///     {
///         NameRegex = "^ubuntu_[0-9]+_[0-9]+_x64*",
///         Owners = "system",
///     });
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
///         ZoneId = defaultGetZones.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///     });
///
///     var defaultSecurityGroup = new AliCloud.Ecs.SecurityGroup("default", new()
///     {
///         VpcId = defaultNetwork.Id,
///     });
///
///     var defaultInstance = new AliCloud.Ecs.Instance("default", new()
///     {
///         ImageId = defaultGetImages.Apply(getImagesResult => getImagesResult.Images[0]?.Id),
///         InstanceType = defaultGetInstanceTypes.Apply(getInstanceTypesResult => getInstanceTypesResult.InstanceTypes[0]?.Id),
///         SecurityGroups = new[]
///         {
///             defaultSecurityGroup,
///         }.Select(__item => __item.Id).ToList(),
///         InternetChargeType = "PayByTraffic",
///         InternetMaxBandwidthOut = 10,
///         AvailabilityZone = defaultGetZones.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///         InstanceChargeType = "PostPaid",
///         SystemDiskCategory = "cloud_efficiency",
///         VswitchId = defaultSwitch.Id,
///     });
///
///     var defaultNestServiceInstance = new AliCloud.Compute.NestServiceInstance("default", new()
///     {
///         ServiceId = "service-dd475e6e468348799f0f",
///         ServiceVersion = "1",
///         ServiceInstanceName = name,
///         ResourceGroupId = @default.Apply(@default => @default.Apply(getResourceGroupsResult => getResourceGroupsResult.Groups[0]?.Id)),
///         PaymentType = "Permanent",
///         OperationMetadata = new AliCloud.Compute.Inputs.NestServiceInstanceOperationMetadataArgs
///         {
///             OperationStartTime = "1681281179000",
///             OperationEndTime = "1681367579000",
///             Resources = defaultInstance.Id.Apply(id => @$"    {{
///       \""Type\"": \""ResourceIds\"",
///       \""RegionId\"": \""cn-hangzhou\"",
///       \""ResourceIds\"": {{
///       \""ALIYUN::ECS::INSTANCE\"": [
///         \""{id}\""
///         ]
///       }}
///     }}
/// "),
///         },
///         Tags =
///         {
///             { "Created", "TF" },
///             { "For", "ServiceInstance" },
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/compute"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// cfg := config.New(ctx, "")
/// name := "tfexample";
/// if param := cfg.Get("name"); param != ""{
/// name = param
/// }
/// _default, err := resourcemanager.GetResourceGroups(ctx, &resourcemanager.GetResourceGroupsArgs{
/// }, nil);
/// if err != nil {
/// return err
/// }
/// defaultGetZones, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{
/// AvailableDiskCategory: pulumi.StringRef("cloud_efficiency"),
/// AvailableResourceCreation: pulumi.StringRef("VSwitch"),
/// }, nil);
/// if err != nil {
/// return err
/// }
/// defaultGetInstanceTypes, err := ecs.GetInstanceTypes(ctx, &ecs.GetInstanceTypesArgs{
/// AvailabilityZone: pulumi.StringRef(defaultGetZones.Zones[0].Id),
/// InstanceTypeFamily: pulumi.StringRef("ecs.sn1ne"),
/// }, nil);
/// if err != nil {
/// return err
/// }
/// defaultGetImages, err := ecs.GetImages(ctx, &ecs.GetImagesArgs{
/// NameRegex: pulumi.StringRef("^ubuntu_[0-9]+_[0-9]+_x64*"),
/// Owners: pulumi.StringRef("system"),
/// }, nil);
/// if err != nil {
/// return err
/// }
/// defaultNetwork, err := vpc.NewNetwork(ctx, "default", &vpc.NetworkArgs{
/// VpcName: pulumi.String(name),
/// CidrBlock: pulumi.String("10.0.0.0/8"),
/// })
/// if err != nil {
/// return err
/// }
/// defaultSwitch, err := vpc.NewSwitch(ctx, "default", &vpc.SwitchArgs{
/// VswitchName: pulumi.String(name),
/// CidrBlock: pulumi.String("10.1.0.0/16"),
/// VpcId: defaultNetwork.ID(),
/// ZoneId: pulumi.String(defaultGetZones.Zones[0].Id),
/// })
/// if err != nil {
/// return err
/// }
/// defaultSecurityGroup, err := ecs.NewSecurityGroup(ctx, "default", &ecs.SecurityGroupArgs{
/// VpcId: defaultNetwork.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// var splat0 pulumi.StringArray
/// for _, val0 := range %!v(PANIC=Format method: fatal: An assertion has failed: tok: ) {
/// splat0 = append(splat0, val0.ID())
/// }
/// defaultInstance, err := ecs.NewInstance(ctx, "default", &ecs.InstanceArgs{
/// ImageId: pulumi.String(defaultGetImages.Images[0].Id),
/// InstanceType: pulumi.String(defaultGetInstanceTypes.InstanceTypes[0].Id),
/// SecurityGroups: splat0,
/// InternetChargeType: pulumi.String("PayByTraffic"),
/// InternetMaxBandwidthOut: pulumi.Int(10),
/// AvailabilityZone: pulumi.String(defaultGetZones.Zones[0].Id),
/// InstanceChargeType: pulumi.String("PostPaid"),
/// SystemDiskCategory: pulumi.String("cloud_efficiency"),
/// VswitchId: defaultSwitch.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = compute.NewNestServiceInstance(ctx, "default", &compute.NestServiceInstanceArgs{
/// ServiceId: pulumi.String("service-dd475e6e468348799f0f"),
/// ServiceVersion: pulumi.String("1"),
/// ServiceInstanceName: pulumi.String(name),
/// ResourceGroupId: pulumi.String(_default.Groups[0].Id),
/// PaymentType: pulumi.String("Permanent"),
/// OperationMetadata: &compute.NestServiceInstanceOperationMetadataArgs{
/// OperationStartTime: pulumi.String("1681281179000"),
/// OperationEndTime: pulumi.String("1681367579000"),
/// Resources: defaultInstance.ID().ApplyT(func(id string) (string, error) {
/// return fmt.Sprintf(`    {
///       \"Type\": \"ResourceIds\",
///       \"RegionId\": \"cn-hangzhou\",
///       \"ResourceIds\": {
///       \"ALIYUN::ECS::INSTANCE\": [
///         \"%v\"
///         ]
///       }
///     }
/// `, id), nil
/// }).(pulumi.StringOutput),
/// },
/// Tags: pulumi.StringMap{
/// "Created": pulumi.String("TF"),
/// "For": pulumi.String("ServiceInstance"),
/// },
/// })
/// if err != nil {
/// return err
/// }
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
/// import com.pulumi.alicloud.resourcemanager.ResourcemanagerFunctions;
/// import com.pulumi.alicloud.resourcemanager.inputs.GetResourceGroupsArgs;
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.ecs.EcsFunctions;
/// import com.pulumi.alicloud.ecs.inputs.GetInstanceTypesArgs;
/// import com.pulumi.alicloud.ecs.inputs.GetImagesArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.ecs.SecurityGroup;
/// import com.pulumi.alicloud.ecs.SecurityGroupArgs;
/// import com.pulumi.alicloud.ecs.Instance;
/// import com.pulumi.alicloud.ecs.InstanceArgs;
/// import com.pulumi.alicloud.compute.NestServiceInstance;
/// import com.pulumi.alicloud.compute.NestServiceInstanceArgs;
/// import com.pulumi.alicloud.compute.inputs.NestServiceInstanceOperationMetadataArgs;
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
///         final var name = config.get("name").orElse("tfexample");
///         final var default = ResourcemanagerFunctions.getResourceGroups(GetResourceGroupsArgs.builder()
///             .build());
///
///         final var defaultGetZones = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .availableDiskCategory("cloud_efficiency")
///             .availableResourceCreation("VSwitch")
///             .build());
///
///         final var defaultGetInstanceTypes = EcsFunctions.getInstanceTypes(GetInstanceTypesArgs.builder()
///             .availabilityZone(defaultGetZones.zones()[0].id())
///             .instanceTypeFamily("ecs.sn1ne")
///             .build());
///
///         final var defaultGetImages = EcsFunctions.getImages(GetImagesArgs.builder()
///             .nameRegex("^ubuntu_[0-9]+_[0-9]+_x64*")
///             .owners("system")
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
///             .zoneId(defaultGetZones.zones()[0].id())
///             .build());
///
///         var defaultSecurityGroup = new SecurityGroup("defaultSecurityGroup", SecurityGroupArgs.builder()
///             .vpcId(defaultNetwork.id())
///             .build());
///
///         var defaultInstance = new Instance("defaultInstance", InstanceArgs.builder()
///             .imageId(defaultGetImages.images()[0].id())
///             .instanceType(defaultGetInstanceTypes.instanceTypes()[0].id())
///             .securityGroups(defaultSecurityGroup.stream().map(element -> element.id()).collect(toList()))
///             .internetChargeType("PayByTraffic")
///             .internetMaxBandwidthOut(10)
///             .availabilityZone(defaultGetZones.zones()[0].id())
///             .instanceChargeType("PostPaid")
///             .systemDiskCategory("cloud_efficiency")
///             .vswitchId(defaultSwitch.id())
///             .build());
///
///         var defaultNestServiceInstance = new NestServiceInstance("defaultNestServiceInstance", NestServiceInstanceArgs.builder()
///             .serviceId("service-dd475e6e468348799f0f")
///             .serviceVersion("1")
///             .serviceInstanceName(name)
///             .resourceGroupId(default_.groups()[0].id())
///             .paymentType("Permanent")
///             .operationMetadata(NestServiceInstanceOperationMetadataArgs.builder()
///                 .operationStartTime("1681281179000")
///                 .operationEndTime("1681367579000")
///                 .resources(defaultInstance.id().applyValue(_id -> """
///     {
///       \"Type\": \"ResourceIds\",
///       \"RegionId\": \"cn-hangzhou\",
///       \"ResourceIds\": {
///       \"ALIYUN::ECS::INSTANCE\": [
///         \"%s\"
///         ]
///       }
///     }
/// ", _id)))
///                 .build())
///             .tags(Map.ofEntries(
///                 Map.entry("Created", "TF"),
///                 Map.entry("For", "ServiceInstance")
///             ))
///             .build());
///
///     }
/// }
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Compute Nest Service Instance can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:compute/nestServiceInstance:NestServiceInstance example <id>
/// ```
class NestServiceInstance extends pulumi.CustomResource {
  /// The order information of cloud market. See `commodity` below.
  late final pulumi.Output<NestServiceInstanceCommodity?> commodity;

  /// Whether the service instance has the O&M function. Default value: `false`. Valid values:
  late final pulumi.Output<bool> enableInstanceOps;

  /// Whether Prometheus monitoring is enabled. Default value: `false`. Valid values:
  late final pulumi.Output<bool> enableUserPrometheus;

  /// The configuration of O&M. See `operation_metadata` below.
  late final pulumi.Output<NestServiceInstanceOperationMetadata>
  operationMetadata;

  /// The parameters entered by the deployment service instance.
  late final pulumi.Output<String?> parameters;

  /// The type of payment. Valid values: `Permanent`, `Subscription`, `PayAsYouGo`, `CustomFixTime`.
  late final pulumi.Output<String> paymentType;

  /// The ID of the resource group.
  late final pulumi.Output<String> resourceGroupId;

  /// The ID of the service.
  late final pulumi.Output<String> serviceId;

  /// The name of the Service Instance.
  late final pulumi.Output<String> serviceInstanceName;

  /// The version of the service.
  late final pulumi.Output<String> serviceVersion;

  /// The name of the specification.
  late final pulumi.Output<String?> specificationName;

  /// The status of the Service Instance.
  late final pulumi.Output<String> status;

  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The name of the template.
  late final pulumi.Output<String> templateName;

  /// Creates a new [NestServiceInstance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NestServiceInstance]. {@macro pulumi_compute_nest_service_instance_nest_service_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NestServiceInstance(
    String name, {
    NestServiceInstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:compute/nestServiceInstance:NestServiceInstance',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    commodity = registerOutput<NestServiceInstanceCommodity?>('commodity');
    enableInstanceOps = registerOutput<bool>('enableInstanceOps');
    enableUserPrometheus = registerOutput<bool>('enableUserPrometheus');
    operationMetadata = registerOutput<NestServiceInstanceOperationMetadata>(
      'operationMetadata',
    );
    parameters = registerOutput<String?>('parameters');
    paymentType = registerOutput<String>('paymentType');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    serviceId = registerOutput<String>('serviceId');
    serviceInstanceName = registerOutput<String>('serviceInstanceName');
    serviceVersion = registerOutput<String>('serviceVersion');
    specificationName = registerOutput<String?>('specificationName');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    templateName = registerOutput<String>('templateName');
  }

  /// Gets an existing [NestServiceInstance] resource's state with the given [name] and [id].
  static NestServiceInstance get(
    String name,
    pulumi.Input<String> id, {
    NestServiceInstanceState? state,
  }) {
    return NestServiceInstance._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  NestServiceInstance._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:compute/nestServiceInstance:NestServiceInstance',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    commodity = registerOutput<NestServiceInstanceCommodity?>('commodity');
    enableInstanceOps = registerOutput<bool>('enableInstanceOps');
    enableUserPrometheus = registerOutput<bool>('enableUserPrometheus');
    operationMetadata = registerOutput<NestServiceInstanceOperationMetadata>(
      'operationMetadata',
    );
    parameters = registerOutput<String?>('parameters');
    paymentType = registerOutput<String>('paymentType');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    serviceId = registerOutput<String>('serviceId');
    serviceInstanceName = registerOutput<String>('serviceInstanceName');
    serviceVersion = registerOutput<String>('serviceVersion');
    specificationName = registerOutput<String?>('specificationName');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    templateName = registerOutput<String>('templateName');
  }
}
