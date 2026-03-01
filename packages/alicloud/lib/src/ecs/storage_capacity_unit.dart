import 'package:pulumi/pulumi.dart' as pulumi;
import 'storage_capacity_unit_args.dart';

/// Provides a ECS Storage Capacity Unit resource.
///
/// For information about ECS Storage Capacity Unit and how to use it, see [What is Storage Capacity Unit](https://www.alibabacloud.com/help/en/doc-detail/161157.html).
///
/// > **NOTE:** Available since v1.155.0.
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
/// const _default = new alicloud.ecs.StorageCapacityUnit("default", {
///     capacity: 20,
///     description: "tftestdescription",
///     storageCapacityUnitName: "tftestname",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.ecs.StorageCapacityUnit("default",
///     capacity=20,
///     description="tftestdescription",
///     storage_capacity_unit_name="tftestname")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new AliCloud.Ecs.StorageCapacityUnit("default", new()
///     {
///         Capacity = 20,
///         Description = "tftestdescription",
///         StorageCapacityUnitName = "tftestname",
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
/// 		_, err := ecs.NewStorageCapacityUnit(ctx, "default", &ecs.StorageCapacityUnitArgs{
/// 			Capacity:                pulumi.Int(20),
/// 			Description:             pulumi.String("tftestdescription"),
/// 			StorageCapacityUnitName: pulumi.String("tftestname"),
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
/// import com.pulumi.alicloud.ecs.StorageCapacityUnit;
/// import com.pulumi.alicloud.ecs.StorageCapacityUnitArgs;
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
///         var default_ = new StorageCapacityUnit("default", StorageCapacityUnitArgs.builder()
///             .capacity(20)
///             .description("tftestdescription")
///             .storageCapacityUnitName("tftestname")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: alicloud:ecs:StorageCapacityUnit
///     properties:
///       capacity: 20
///       description: tftestdescription
///       storageCapacityUnitName: tftestname
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// ECS Storage Capacity Unit can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ecs/storageCapacityUnit:StorageCapacityUnit example <id>
/// ```
class StorageCapacityUnit extends pulumi.CustomResource {
  /// The capacity of the Storage Capacity Unit. Unit: GiB. Valid values: `20`, `40`, `100`, `200`, `500`, `1024`, `2048`, `5120`, `10240`, `20480`, and `51200`.
  late final pulumi.Output<int> capacity;
  /// The description of the Storage Capacity Unit. The description must be 2 to 256 characters in length and cannot start with `http://` or `https://`.
  late final pulumi.Output<String?> description;
  /// The validity period of the Storage Capacity Unit. Default value: `1`.
  /// * When PeriodUnit is set to Month, Valid values: `1`, `2`, `3`, `6`.
  /// * When PeriodUnit is set to Year, Valid values: `1`, `3`, `5`.
  late final pulumi.Output<int> period;
  /// The unit of the validity period of the Storage Capacity Unit. Default value: `Month`. Valid values: `Month`, `Year`.
  late final pulumi.Output<String> periodUnit;
  /// The time when the Storage Capacity Unit takes effect. It cannot be earlier than or more than six months later than the time when the Storage Capacity Unit is created. Specify the time in the ISO 8601 standard in the `yyyy-MM-ddTHH:mm:ssZ` format. The time must be in UTC. **NOTE:** This parameter is empty by default. The Storage Capacity Unit immediately takes effect after it is created.
  late final pulumi.Output<String> startTime;
  /// The status of Storage Capacity Unit.
  late final pulumi.Output<String> status;
  /// The name of the Storage Capacity Unit.
  late final pulumi.Output<String> storageCapacityUnitName;

  /// Creates a new [StorageCapacityUnit].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [StorageCapacityUnit]. {@macro pulumi_ecs_storage_capacity_unit_storage_capacity_unit_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  StorageCapacityUnit(
    String name, {
    StorageCapacityUnitArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ecs/storageCapacityUnit:StorageCapacityUnit',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.capacity = registerOutput<int>('capacity');
    this.description = registerOutput<String?>('description');
    this.period = registerOutput<int>('period');
    this.periodUnit = registerOutput<String>('periodUnit');
    this.startTime = registerOutput<String>('startTime');
    this.status = registerOutput<String>('status');
    this.storageCapacityUnitName = registerOutput<String>('storageCapacityUnitName');
  }
}
