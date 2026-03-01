import 'package:pulumi/pulumi.dart' as pulumi;
import 'elasticity_assurance_args.dart';
import 'elasticity_assurance_state.dart';

/// Provides a ECS Elasticity Assurance resource.
///
///
///
/// For information about ECS Elasticity Assurance and how to use it, see [What is Elasticity Assurance](https://www.alibabacloud.com/help/en/elastic-compute-service/latest/createelasticityassurance).
///
/// > **NOTE:** Available since v1.196.0.
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
/// const _default = alicloud.resourcemanager.getResourceGroups({
///     status: "OK",
/// });
/// const defaultGetInstanceTypes = alicloud.ecs.getInstanceTypes({
///     instanceTypeFamily: "ecs.c6",
/// });
/// const defaultElasticityAssurance = new alicloud.ecs.ElasticityAssurance("default", {
///     instanceAmount: 1,
///     description: "before",
///     zoneIds: [defaultGetInstanceTypes.then(defaultGetInstanceTypes => defaultGetInstanceTypes.instanceTypes?.[0]?.availabilityZones?.[0])],
///     privatePoolOptionsName: name,
///     period: 1,
///     privatePoolOptionsMatchCriteria: "Open",
///     instanceType: defaultGetInstanceTypes.then(defaultGetInstanceTypes => defaultGetInstanceTypes.instanceTypes?.[0]?.id),
///     periodUnit: "Month",
///     assuranceTimes: "Unlimited",
///     resourceGroupId: _default.then(_default => _default.ids?.[0]),
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
/// default = alicloud.resourcemanager.get_resource_groups(status="OK")
/// default_get_instance_types = alicloud.ecs.get_instance_types(instance_type_family="ecs.c6")
/// default_elasticity_assurance = alicloud.ecs.ElasticityAssurance("default",
///     instance_amount=1,
///     description="before",
///     zone_ids=[default_get_instance_types.instance_types[0].availability_zones[0]],
///     private_pool_options_name=name,
///     period=1,
///     private_pool_options_match_criteria="Open",
///     instance_type=default_get_instance_types.instance_types[0].id,
///     period_unit="Month",
///     assurance_times="Unlimited",
///     resource_group_id=default.ids[0])
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
///     var @default = AliCloud.ResourceManager.GetResourceGroups.Invoke(new()
///     {
///         Status = "OK",
///     });
///
///     var defaultGetInstanceTypes = AliCloud.Ecs.GetInstanceTypes.Invoke(new()
///     {
///         InstanceTypeFamily = "ecs.c6",
///     });
///
///     var defaultElasticityAssurance = new AliCloud.Ecs.ElasticityAssurance("default", new()
///     {
///         InstanceAmount = 1,
///         Description = "before",
///         ZoneIds = new[]
///         {
///             defaultGetInstanceTypes.Apply(getInstanceTypesResult => getInstanceTypesResult.InstanceTypes[0]?.AvailabilityZones[0]),
///         },
///         PrivatePoolOptionsName = name,
///         Period = 1,
///         PrivatePoolOptionsMatchCriteria = "Open",
///         InstanceType = defaultGetInstanceTypes.Apply(getInstanceTypesResult => getInstanceTypesResult.InstanceTypes[0]?.Id),
///         PeriodUnit = "Month",
///         AssuranceTimes = "Unlimited",
///         ResourceGroupId = @default.Apply(@default => @default.Apply(getResourceGroupsResult => getResourceGroupsResult.Ids[0])),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
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
/// 		_default, err := resourcemanager.GetResourceGroups(ctx, &resourcemanager.GetResourceGroupsArgs{
/// 			Status: pulumi.StringRef("OK"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetInstanceTypes, err := ecs.GetInstanceTypes(ctx, &ecs.GetInstanceTypesArgs{
/// 			InstanceTypeFamily: pulumi.StringRef("ecs.c6"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ecs.NewElasticityAssurance(ctx, "default", &ecs.ElasticityAssuranceArgs{
/// 			InstanceAmount: pulumi.Int(1),
/// 			Description:    pulumi.String("before"),
/// 			ZoneIds: pulumi.StringArray{
/// 				pulumi.String(defaultGetInstanceTypes.InstanceTypes[0].AvailabilityZones[0]),
/// 			},
/// 			PrivatePoolOptionsName:          pulumi.String(name),
/// 			Period:                          pulumi.Int(1),
/// 			PrivatePoolOptionsMatchCriteria: pulumi.String("Open"),
/// 			InstanceType:                    pulumi.String(defaultGetInstanceTypes.InstanceTypes[0].Id),
/// 			PeriodUnit:                      pulumi.String("Month"),
/// 			AssuranceTimes:                  pulumi.String("Unlimited"),
/// 			ResourceGroupId:                 pulumi.String(_default.Ids[0]),
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
/// import com.pulumi.alicloud.resourcemanager.ResourcemanagerFunctions;
/// import com.pulumi.alicloud.resourcemanager.inputs.GetResourceGroupsArgs;
/// import com.pulumi.alicloud.ecs.EcsFunctions;
/// import com.pulumi.alicloud.ecs.inputs.GetInstanceTypesArgs;
/// import com.pulumi.alicloud.ecs.ElasticityAssurance;
/// import com.pulumi.alicloud.ecs.ElasticityAssuranceArgs;
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
///         final var default = ResourcemanagerFunctions.getResourceGroups(GetResourceGroupsArgs.builder()
///             .status("OK")
///             .build());
///
///         final var defaultGetInstanceTypes = EcsFunctions.getInstanceTypes(GetInstanceTypesArgs.builder()
///             .instanceTypeFamily("ecs.c6")
///             .build());
///
///         var defaultElasticityAssurance = new ElasticityAssurance("defaultElasticityAssurance", ElasticityAssuranceArgs.builder()
///             .instanceAmount(1)
///             .description("before")
///             .zoneIds(defaultGetInstanceTypes.instanceTypes()[0].availabilityZones()[0])
///             .privatePoolOptionsName(name)
///             .period(1)
///             .privatePoolOptionsMatchCriteria("Open")
///             .instanceType(defaultGetInstanceTypes.instanceTypes()[0].id())
///             .periodUnit("Month")
///             .assuranceTimes("Unlimited")
///             .resourceGroupId(default_.ids()[0])
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
///   defaultElasticityAssurance:
///     type: alicloud:ecs:ElasticityAssurance
///     name: default
///     properties:
///       instanceAmount: 1
///       description: before
///       zoneIds:
///         - ${defaultGetInstanceTypes.instanceTypes[0].availabilityZones[0]}
///       privatePoolOptionsName: ${name}
///       period: 1
///       privatePoolOptionsMatchCriteria: Open
///       instanceType: ${defaultGetInstanceTypes.instanceTypes[0].id}
///       periodUnit: Month
///       assuranceTimes: Unlimited
///       resourceGroupId: ${default.ids[0]}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:resourcemanager:getResourceGroups
///       arguments:
///         status: OK
///   defaultGetInstanceTypes:
///     fn::invoke:
///       function: alicloud:ecs:getInstanceTypes
///       arguments:
///         instanceTypeFamily: ecs.c6
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// ECS Elasticity Assurance can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ecs/elasticityAssurance:ElasticityAssurance example <id>
/// ```
class ElasticityAssurance extends pulumi.CustomResource {
  /// The total number of times that the elasticity assurance can be applied. Set the value to Unlimited. This value indicates that the elasticity assurance can be applied an unlimited number of times within its effective duration. Default value: Unlimited.
  late final pulumi.Output<String> assuranceTimes;
  /// Specifies whether to enable auto-renewal for the elasticity assurance. Valid values:
  /// - true
  /// - false
  ///
  /// Default value: `false`.
  late final pulumi.Output<bool?> autoRenew;
  /// The auto-renewal period. Unit: month. Valid values: 1, 2, 3, 6, 12, 24, and 36.
  /// - Default value when `PeriodUnit` is set to Month: 1.
  /// - Default value when `PeriodUnit` is set to Year: 12.
  ///
  /// > **NOTE:**  If you set `AutoRenew` to true, you must specify this parameter.
  late final pulumi.Output<int?> autoRenewPeriod;
  /// Unit of duration. Value range:
  /// - Month: Month
  /// - Year: Year
  ///
  /// Default value: Year
  late final pulumi.Output<String> autoRenewPeriodUnit;
  /// Description of flexible guarantee service.
  late final pulumi.Output<String?> description;
  /// The first ID of the resource
  late final pulumi.Output<String> elasticityAssuranceId;
  /// Flexible guarantee service failure time.
  late final pulumi.Output<String> endTime;
  /// The total number of instances for which to reserve the capacity of an instance type. Valid values: 1 to 1000. **NOTE:** From version 1.261.0, `instance_amount` can be modified.
  late final pulumi.Output<int> instanceAmount;
  /// The billing method of the instance. Possible value: PostPaid. Currently, only pay-as-you-go is supported.
  late final pulumi.Output<String> instanceChargeType;
  /// Instance type. Currently, only one instance type is supported.
  late final pulumi.Output<String> instanceType;
  /// Length of purchase. The unit of duration is determined by the 'period_unit' parameter. Default value: 1.
  /// - When the `period_unit` parameter is set to Month, the valid values are 1, 2, 3, 4, 5, 6, 7, 8, and 9.
  /// - When the `period_unit` parameter is set to Year, the valid values are 1, 2, 3, 4, and 5.
  late final pulumi.Output<int?> period;
  /// Duration unit. Value range:-Month: Month-Year: YearDefault value: Year
  late final pulumi.Output<String?> periodUnit;
  /// The matching mode of flexible guarantee service. Possible values:-Open: flexible guarantee service for Open mode.-Target: specifies the flexible guarantee service of the mode.
  late final pulumi.Output<String> privatePoolOptionsMatchCriteria;
  /// The name of the flexible protection service.
  late final pulumi.Output<String> privatePoolOptionsName;
  /// (Available since v1.261.0) The region ID of the elasticity assurance.
  late final pulumi.Output<String> regionId;
  /// The ID of the resource group.
  late final pulumi.Output<String> resourceGroupId;
  /// Flexible guarantee service effective time.
  late final pulumi.Output<String> startTime;
  /// Flexible guarantee effective way. Possible values:-Now: Effective immediately.-Later: the specified time takes effect.
  late final pulumi.Output<String> startTimeType;
  /// The status of flexible guarantee services. Possible values:-Preparing: in preparation.-Prepared: to take effect.-Active: in effect.-Released: Released.
  late final pulumi.Output<String> status;
  /// The tag key-value pair information bound by the elastic guarantee service.
  late final pulumi.Output<Map<String, String>?> tags;
  /// This parameter is not yet available.
  late final pulumi.Output<int> usedAssuranceTimes;
  /// The zone ID of the region to which the elastic Protection Service belongs. Currently, only the creation of flexible protection services in one available area is supported.
  late final pulumi.Output<List<String>> zoneIds;

  /// Creates a new [ElasticityAssurance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ElasticityAssurance]. {@macro pulumi_ecs_elasticity_assurance_elasticity_assurance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ElasticityAssurance(
    String name, {
    ElasticityAssuranceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ecs/elasticityAssurance:ElasticityAssurance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.assuranceTimes = registerOutput<String>('assuranceTimes');
    this.autoRenew = registerOutput<bool?>('autoRenew');
    this.autoRenewPeriod = registerOutput<int?>('autoRenewPeriod');
    this.autoRenewPeriodUnit = registerOutput<String>('autoRenewPeriodUnit');
    this.description = registerOutput<String?>('description');
    this.elasticityAssuranceId = registerOutput<String>('elasticityAssuranceId');
    this.endTime = registerOutput<String>('endTime');
    this.instanceAmount = registerOutput<int>('instanceAmount');
    this.instanceChargeType = registerOutput<String>('instanceChargeType');
    this.instanceType = registerOutput<String>('instanceType');
    this.period = registerOutput<int?>('period');
    this.periodUnit = registerOutput<String?>('periodUnit');
    this.privatePoolOptionsMatchCriteria = registerOutput<String>('privatePoolOptionsMatchCriteria');
    this.privatePoolOptionsName = registerOutput<String>('privatePoolOptionsName');
    this.regionId = registerOutput<String>('regionId');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.startTime = registerOutput<String>('startTime');
    this.startTimeType = registerOutput<String>('startTimeType');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.usedAssuranceTimes = registerOutput<int>('usedAssuranceTimes');
    this.zoneIds = registerOutput<List<String>>('zoneIds');
  }

  /// Gets an existing [ElasticityAssurance] resource's state with the given [name] and [id].
  static ElasticityAssurance get(
    String name,
    pulumi.Input<String> id, {
    ElasticityAssuranceState? state,
  }) {
    return ElasticityAssurance._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ElasticityAssurance._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ecs/elasticityAssurance:ElasticityAssurance',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.assuranceTimes = registerOutput<String>('assuranceTimes');
    this.autoRenew = registerOutput<bool?>('autoRenew');
    this.autoRenewPeriod = registerOutput<int?>('autoRenewPeriod');
    this.autoRenewPeriodUnit = registerOutput<String>('autoRenewPeriodUnit');
    this.description = registerOutput<String?>('description');
    this.elasticityAssuranceId = registerOutput<String>('elasticityAssuranceId');
    this.endTime = registerOutput<String>('endTime');
    this.instanceAmount = registerOutput<int>('instanceAmount');
    this.instanceChargeType = registerOutput<String>('instanceChargeType');
    this.instanceType = registerOutput<String>('instanceType');
    this.period = registerOutput<int?>('period');
    this.periodUnit = registerOutput<String?>('periodUnit');
    this.privatePoolOptionsMatchCriteria = registerOutput<String>('privatePoolOptionsMatchCriteria');
    this.privatePoolOptionsName = registerOutput<String>('privatePoolOptionsName');
    this.regionId = registerOutput<String>('regionId');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.startTime = registerOutput<String>('startTime');
    this.startTimeType = registerOutput<String>('startTimeType');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.usedAssuranceTimes = registerOutput<int>('usedAssuranceTimes');
    this.zoneIds = registerOutput<List<String>>('zoneIds');
  }
}
