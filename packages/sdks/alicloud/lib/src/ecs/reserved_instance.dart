import 'package:pulumi/pulumi.dart' as pulumi;
import 'reserved_instance_args.dart';
import 'reserved_instance_operation_lock.dart';
import 'reserved_instance_state.dart';

/// Provides an Reserved Instance resource.
///
/// > **NOTE:** Available since v1.65.0.
///
/// ## Example Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = alicloud.ecs.getInstanceTypes({
///     instanceTypeFamily: "ecs.g6",
/// });
/// const defaultReservedInstance = new alicloud.ecs.ReservedInstance("default", {
///     instanceType: _default.then(_default => _default.instanceTypes?.[0]?.id),
///     instanceAmount: 1,
///     periodUnit: "Month",
///     offeringType: "All Upfront",
///     reservedInstanceName: "terraform-example",
///     description: "ReservedInstance",
///     zoneId: _default.then(_default => _default.instanceTypes?.[0]?.availabilityZones?.[0]),
///     scope: "Zone",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.ecs.get_instance_types(instance_type_family="ecs.g6")
/// default_reserved_instance = alicloud.ecs.ReservedInstance("default",
///     instance_type=default.instance_types[0].id,
///     instance_amount=1,
///     period_unit="Month",
///     offering_type="All Upfront",
///     reserved_instance_name="terraform-example",
///     description="ReservedInstance",
///     zone_id=default.instance_types[0].availability_zones[0],
///     scope="Zone")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.Ecs.GetInstanceTypes.Invoke(new()
///     {
///         InstanceTypeFamily = "ecs.g6",
///     });
///
///     var defaultReservedInstance = new AliCloud.Ecs.ReservedInstance("default", new()
///     {
///         InstanceType = @default.Apply(@default => @default.Apply(getInstanceTypesResult => getInstanceTypesResult.InstanceTypes[0]?.Id)),
///         InstanceAmount = 1,
///         PeriodUnit = "Month",
///         OfferingType = "All Upfront",
///         ReservedInstanceName = "terraform-example",
///         Description = "ReservedInstance",
///         ZoneId = @default.Apply(@default => @default.Apply(getInstanceTypesResult => getInstanceTypesResult.InstanceTypes[0]?.AvailabilityZones[0])),
///         Scope = "Zone",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := ecs.GetInstanceTypes(ctx, &ecs.GetInstanceTypesArgs{
/// 			InstanceTypeFamily: pulumi.StringRef("ecs.g6"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ecs.NewReservedInstance(ctx, "default", &ecs.ReservedInstanceArgs{
/// 			InstanceType:         pulumi.String(_default.InstanceTypes[0].Id),
/// 			InstanceAmount:       pulumi.Int(1),
/// 			PeriodUnit:           pulumi.String("Month"),
/// 			OfferingType:         pulumi.String("All Upfront"),
/// 			ReservedInstanceName: pulumi.String("terraform-example"),
/// 			Description:          pulumi.String("ReservedInstance"),
/// 			ZoneId:               pulumi.String(_default.InstanceTypes[0].AvailabilityZones[0]),
/// 			Scope:                pulumi.String("Zone"),
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
/// import com.pulumi.alicloud.ecs.EcsFunctions;
/// import com.pulumi.alicloud.ecs.inputs.GetInstanceTypesArgs;
/// import com.pulumi.alicloud.ecs.ReservedInstance;
/// import com.pulumi.alicloud.ecs.ReservedInstanceArgs;
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
///         final var default = EcsFunctions.getInstanceTypes(GetInstanceTypesArgs.builder()
///             .instanceTypeFamily("ecs.g6")
///             .build());
///
///         var defaultReservedInstance = new ReservedInstance("defaultReservedInstance", ReservedInstanceArgs.builder()
///             .instanceType(default_.instanceTypes()[0].id())
///             .instanceAmount(1)
///             .periodUnit("Month")
///             .offeringType("All Upfront")
///             .reservedInstanceName("terraform-example")
///             .description("ReservedInstance")
///             .zoneId(default_.instanceTypes()[0].availabilityZones()[0])
///             .scope("Zone")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   defaultReservedInstance:
///     type: alicloud:ecs:ReservedInstance
///     name: default
///     properties:
///       instanceType: ${default.instanceTypes[0].id}
///       instanceAmount: '1'
///       periodUnit: Month
///       offeringType: All Upfront
///       reservedInstanceName: terraform-example
///       description: ReservedInstance
///       zoneId: ${default.instanceTypes[0].availabilityZones[0]}
///       scope: Zone
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:ecs:getInstanceTypes
///       arguments:
///         instanceTypeFamily: ecs.g6
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// reservedInstance can be imported using id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ecs/reservedInstance:ReservedInstance default ecsri-uf6df4xm0h3licit****
/// ```
class ReservedInstance extends pulumi.CustomResource {
  /// Indicates the sharing status of the reserved instance when the AllocationType parameter is set to Shared. Valid values: `allocated`: The reserved instance is allocated to another account. `beAllocated`: The reserved instance is allocated by another account.
  late final pulumi.Output<String> allocationStatus;
  /// The auto-renewal term of the reserved instance. This parameter takes effect only when AutoRenew is set to true. Valid values: 1, 12, 36, and 60. Default value when `period_unit` is set to Month: 1 Default value when `period_unit` is set to Year: 12
  late final pulumi.Output<int> autoRenewPeriod;
  /// The time when the reserved instance was created.
  late final pulumi.Output<String> createTime;
  /// Description of the RI. 2 to 256 English or Chinese characters. It cannot start with `http://` or `https://`.
  late final pulumi.Output<String?> description;
  /// The time when the reserved instance expires.
  late final pulumi.Output<String> expiredTime;
  /// Number of instances allocated to an RI (An RI is a coupon that includes one or more allocated instances.).
  late final pulumi.Output<int> instanceAmount;
  /// Instance type of the RI. For more information, see [Instance type families](https://www.alibabacloud.com/help/doc-detail/25378.html).
  late final pulumi.Output<String> instanceType;
  /// Field `name` has been deprecated from provider version 1.194.0. New field `reserved_instance_name` instead.
  late final pulumi.Output<String> name;
  /// Payment type of the RI. Default value: `All Upfront`. Valid values:
  /// - `No Upfront`: No upfront payment.
  /// - `Partial Upfront`: A portion of upfront payment.
  /// - `All Upfront`: Full upfront payment.
  late final pulumi.Output<String> offeringType;
  /// Details about the lock status of the reserved instance.
  late final pulumi.Output<List<ReservedInstanceOperationLock>> operationLocks;
  /// The validity period of the reserved instance. Default value: `1`. **NOTE:** From version 1.183.0, `period` can be set to `5`, when `period_unit` is `Year`.
  /// - When `period_unit` is `Year`, Valid values: `1`, `3`, `5`.
  /// - When `period_unit` is `Month`, Valid values: `1`.
  late final pulumi.Output<int?> period;
  /// The unit of the validity period of the reserved instance. Valid value: `Month`, `Year`. Default value: `Year`. **NOTE:** From version 1.183.0, `period_unit` can be set to `Month`.
  late final pulumi.Output<String?> periodUnit;
  /// The operating system type of the image used by the instance. Optional values: `Windows`, `Linux`. Default is `Linux`.
  late final pulumi.Output<String> platform;
  /// Automatic renewal status. Valid values: `AutoRenewal`,`Normal`.
  late final pulumi.Output<String> renewalStatus;
  /// Name of the RI. The name must be a string of 2 to 128 characters in length and can contain letters, numbers, colons (:), underscores (_), and hyphens. It must start with a letter. It cannot start with http:// or https://.
  late final pulumi.Output<String> reservedInstanceName;
  /// Resource group ID.
  late final pulumi.Output<String> resourceGroupId;
  /// Scope of the RI. Optional values: `Region`: region-level, `Zone`: zone-level. Default is `Region`.
  late final pulumi.Output<String> scope;
  /// The time when the reserved instance took effect.
  late final pulumi.Output<String> startTime;
  /// The status of the reserved instance.
  late final pulumi.Output<String> status;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// ID of the zone to which the RI belongs. When Scope is set to Zone, this parameter is required. For information about the zone list, see [DescribeZones](https://www.alibabacloud.com/help/doc-detail/25610.html).
  late final pulumi.Output<String?> zoneId;

  /// Creates a new [ReservedInstance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ReservedInstance]. {@macro pulumi_ecs_reserved_instance_reserved_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ReservedInstance(
    String name, {
    ReservedInstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ecs/reservedInstance:ReservedInstance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.allocationStatus = registerOutput<String>('allocationStatus');
    this.autoRenewPeriod = registerOutput<int>('autoRenewPeriod');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.expiredTime = registerOutput<String>('expiredTime');
    this.instanceAmount = registerOutput<int>('instanceAmount');
    this.instanceType = registerOutput<String>('instanceType');
    this.name = registerOutput<String>('name');
    this.offeringType = registerOutput<String>('offeringType');
    this.operationLocks = registerOutput<List<ReservedInstanceOperationLock>>('operationLocks');
    this.period = registerOutput<int?>('period');
    this.periodUnit = registerOutput<String?>('periodUnit');
    this.platform = registerOutput<String>('platform');
    this.renewalStatus = registerOutput<String>('renewalStatus');
    this.reservedInstanceName = registerOutput<String>('reservedInstanceName');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.scope = registerOutput<String>('scope');
    this.startTime = registerOutput<String>('startTime');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.zoneId = registerOutput<String?>('zoneId');
  }

  /// Gets an existing [ReservedInstance] resource's state with the given [name] and [id].
  static ReservedInstance get(
    String name,
    pulumi.Input<String> id, {
    ReservedInstanceState? state,
  }) {
    return ReservedInstance._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ReservedInstance._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ecs/reservedInstance:ReservedInstance',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.allocationStatus = registerOutput<String>('allocationStatus');
    this.autoRenewPeriod = registerOutput<int>('autoRenewPeriod');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.expiredTime = registerOutput<String>('expiredTime');
    this.instanceAmount = registerOutput<int>('instanceAmount');
    this.instanceType = registerOutput<String>('instanceType');
    this.name = registerOutput<String>('name');
    this.offeringType = registerOutput<String>('offeringType');
    this.operationLocks = registerOutput<List<ReservedInstanceOperationLock>>('operationLocks');
    this.period = registerOutput<int?>('period');
    this.periodUnit = registerOutput<String?>('periodUnit');
    this.platform = registerOutput<String>('platform');
    this.renewalStatus = registerOutput<String>('renewalStatus');
    this.reservedInstanceName = registerOutput<String>('reservedInstanceName');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.scope = registerOutput<String>('scope');
    this.startTime = registerOutput<String>('startTime');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.zoneId = registerOutput<String?>('zoneId');
  }
}
