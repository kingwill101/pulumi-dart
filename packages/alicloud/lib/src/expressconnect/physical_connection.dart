import 'package:pulumi/pulumi.dart' as pulumi;
import 'physical_connection_args.dart';

/// Provides a Express Connect Physical Connection resource.
///
/// For information about Express Connect Physical Connection and how to use it, see [What is Physical Connection](https://www.alibabacloud.com/help/en/express-connect/developer-reference/api-vpc-2016-04-28-createphysicalconnection-efficiency-channels).
///
/// > **NOTE:** Available since v1.132.0.
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
/// const domestic = new alicloud.expressconnect.PhysicalConnection("domestic", {
///     accessPointId: "ap-cn-hangzhou-yh-B",
///     lineOperator: "CT",
///     peerLocation: "example_value",
///     physicalConnectionName: "example_value",
///     type: "VPC",
///     description: "my domestic connection",
///     portType: "1000Base-LX",
///     bandwidth: "100",
/// });
/// const international = new alicloud.expressconnect.PhysicalConnection("international", {
///     accessPointId: "ap-sg-singpore-A",
///     lineOperator: "Other",
///     peerLocation: "example_value",
///     physicalConnectionName: "example_value",
///     type: "VPC",
///     description: "my domestic connection",
///     portType: "1000Base-LX",
///     bandwidth: "100",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// domestic = alicloud.expressconnect.PhysicalConnection("domestic",
///     access_point_id="ap-cn-hangzhou-yh-B",
///     line_operator="CT",
///     peer_location="example_value",
///     physical_connection_name="example_value",
///     type="VPC",
///     description="my domestic connection",
///     port_type="1000Base-LX",
///     bandwidth="100")
/// international = alicloud.expressconnect.PhysicalConnection("international",
///     access_point_id="ap-sg-singpore-A",
///     line_operator="Other",
///     peer_location="example_value",
///     physical_connection_name="example_value",
///     type="VPC",
///     description="my domestic connection",
///     port_type="1000Base-LX",
///     bandwidth="100")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var domestic = new AliCloud.ExpressConnect.PhysicalConnection("domestic", new()
///     {
///         AccessPointId = "ap-cn-hangzhou-yh-B",
///         LineOperator = "CT",
///         PeerLocation = "example_value",
///         PhysicalConnectionName = "example_value",
///         Type = "VPC",
///         Description = "my domestic connection",
///         PortType = "1000Base-LX",
///         Bandwidth = "100",
///     });
///
///     var international = new AliCloud.ExpressConnect.PhysicalConnection("international", new()
///     {
///         AccessPointId = "ap-sg-singpore-A",
///         LineOperator = "Other",
///         PeerLocation = "example_value",
///         PhysicalConnectionName = "example_value",
///         Type = "VPC",
///         Description = "my domestic connection",
///         PortType = "1000Base-LX",
///         Bandwidth = "100",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/expressconnect"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := expressconnect.NewPhysicalConnection(ctx, "domestic", &expressconnect.PhysicalConnectionArgs{
/// 			AccessPointId:          pulumi.String("ap-cn-hangzhou-yh-B"),
/// 			LineOperator:           pulumi.String("CT"),
/// 			PeerLocation:           pulumi.String("example_value"),
/// 			PhysicalConnectionName: pulumi.String("example_value"),
/// 			Type:                   pulumi.String("VPC"),
/// 			Description:            pulumi.String("my domestic connection"),
/// 			PortType:               pulumi.String("1000Base-LX"),
/// 			Bandwidth:              pulumi.String("100"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = expressconnect.NewPhysicalConnection(ctx, "international", &expressconnect.PhysicalConnectionArgs{
/// 			AccessPointId:          pulumi.String("ap-sg-singpore-A"),
/// 			LineOperator:           pulumi.String("Other"),
/// 			PeerLocation:           pulumi.String("example_value"),
/// 			PhysicalConnectionName: pulumi.String("example_value"),
/// 			Type:                   pulumi.String("VPC"),
/// 			Description:            pulumi.String("my domestic connection"),
/// 			PortType:               pulumi.String("1000Base-LX"),
/// 			Bandwidth:              pulumi.String("100"),
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
/// import com.pulumi.alicloud.expressconnect.PhysicalConnection;
/// import com.pulumi.alicloud.expressconnect.PhysicalConnectionArgs;
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
///         var domestic = new PhysicalConnection("domestic", PhysicalConnectionArgs.builder()
///             .accessPointId("ap-cn-hangzhou-yh-B")
///             .lineOperator("CT")
///             .peerLocation("example_value")
///             .physicalConnectionName("example_value")
///             .type("VPC")
///             .description("my domestic connection")
///             .portType("1000Base-LX")
///             .bandwidth("100")
///             .build());
///
///         var international = new PhysicalConnection("international", PhysicalConnectionArgs.builder()
///             .accessPointId("ap-sg-singpore-A")
///             .lineOperator("Other")
///             .peerLocation("example_value")
///             .physicalConnectionName("example_value")
///             .type("VPC")
///             .description("my domestic connection")
///             .portType("1000Base-LX")
///             .bandwidth("100")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   domestic:
///     type: alicloud:expressconnect:PhysicalConnection
///     properties:
///       accessPointId: ap-cn-hangzhou-yh-B
///       lineOperator: CT
///       peerLocation: example_value
///       physicalConnectionName: example_value
///       type: VPC
///       description: my domestic connection
///       portType: 1000Base-LX
///       bandwidth: 100
///   international:
///     type: alicloud:expressconnect:PhysicalConnection
///     properties:
///       accessPointId: ap-sg-singpore-A
///       lineOperator: Other
///       peerLocation: example_value
///       physicalConnectionName: example_value
///       type: VPC
///       description: my domestic connection
///       portType: 1000Base-LX
///       bandwidth: 100
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Express Connect Physical Connection can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:expressconnect/physicalConnection:PhysicalConnection example <id>
/// ```
class PhysicalConnection extends pulumi.CustomResource {
  /// The access point ID of the Express Connect circuit.
  late final pulumi.Output<String> accessPointId;
  /// The maximum bandwidth of the hosted connection.
  late final pulumi.Output<String> bandwidth;
  /// The circuit code of the Express Connect circuit.
  late final pulumi.Output<String?> circuitCode;
  /// The description of the Express Connect circuit.
  late final pulumi.Output<String?> description;
  /// The connectivity provider of the Express Connect circuit. Valid values:
  /// - `CT`: China Telecom.
  /// - `CU`: China Unicom.
  /// - `CM`: China Mobile.
  /// - `CO`: Other connectivity providers in the Chinese mainland.
  /// - `Equinix`: Equinix.
  /// - `Other`: Other connectivity providers outside the Chinese mainland.
  late final pulumi.Output<String> lineOperator;
  /// The ID of the order that is placed. **Note:** `order_id` takes effect only if `status` is set to `Enabled`.
  late final pulumi.Output<String> orderId;
  /// The geographical location of the data center.
  late final pulumi.Output<String> peerLocation;
  /// The subscription duration. Valid values:
  /// - If `pricing_cycle` is set to `Month`. Valid values: `1` to `9`.
  /// - If `pricing_cycle` is set to `Year`. Valid values: `1` to `5`.
  late final pulumi.Output<int?> period;
  /// The name of the Express Connect circuit.
  late final pulumi.Output<String?> physicalConnectionName;
  /// The port type of the Express Connect circuit. Valid values:
  /// - `100Base-T`: 100 Mbit/s copper Ethernet port.
  /// - `1000Base-T`: 1000 Mbit/s copper Ethernet port.
  /// - `1000Base-LX`: 1000 Mbit/s single-mode optical port (10 km).
  /// - `10GBase-T`: 10000 Mbit/s copper Ethernet port.
  /// - `10GBase-LR`: 10000 Mbit/s single-mode optical port (10 km).
  /// - `40GBase-LR`: 40000 Mbit/s single-mode optical port.
  /// - `100GBase-LR`: 100000 Mbit/s single-mode optical port.
  /// > **NOTE:** From version 1.185.0, `port_type` can be set to `40GBase-LR`, `100GBase-LR`. From version 1.230.1, `port_type` cannot be modified.
  late final pulumi.Output<String?> portType;
  /// The billing cycle of the subscription. Default value: `Month`. Valid values: `Month`, `Year`.
  /// > **NOTE:** `period` and `pricing_cycle` are valid only when `status` is set to `Enabled`.
  late final pulumi.Output<String?> pricingCycle;
  /// The ID of the redundant Express Connect circuit. **NOTE:** From version 1.230.1, `redundant_physical_connection_id` cannot be modified.
  late final pulumi.Output<String?> redundantPhysicalConnectionId;
  /// The status of the Express Connect circuit. Valid values: `Confirmed`, `Enabled`, `Canceled`, `Terminated`. **NOTE:** From version 1.230.1, `status` can be set to `Confirmed`. If you want to set `status` to `Enabled`, `period` must be set.
  late final pulumi.Output<String> status;
  /// The type of Express Connect circuit. Default value: `VPC`. Valid values: `VPC`.
  late final pulumi.Output<String> type;

  /// Creates a new [PhysicalConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PhysicalConnection]. {@macro pulumi_expressconnect_physical_connection_physical_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PhysicalConnection(
    String name, {
    PhysicalConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:expressconnect/physicalConnection:PhysicalConnection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accessPointId = registerOutput<String>('accessPointId');
    this.bandwidth = registerOutput<String>('bandwidth');
    this.circuitCode = registerOutput<String?>('circuitCode');
    this.description = registerOutput<String?>('description');
    this.lineOperator = registerOutput<String>('lineOperator');
    this.orderId = registerOutput<String>('orderId');
    this.peerLocation = registerOutput<String>('peerLocation');
    this.period = registerOutput<int?>('period');
    this.physicalConnectionName = registerOutput<String?>('physicalConnectionName');
    this.portType = registerOutput<String?>('portType');
    this.pricingCycle = registerOutput<String?>('pricingCycle');
    this.redundantPhysicalConnectionId = registerOutput<String?>('redundantPhysicalConnectionId');
    this.status = registerOutput<String>('status');
    this.type = registerOutput<String>('type');
  }
}
