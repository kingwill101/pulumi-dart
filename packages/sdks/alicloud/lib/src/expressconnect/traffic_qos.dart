import 'package:pulumi/pulumi.dart' as pulumi;
import 'traffic_qos_args.dart';
import 'traffic_qos_state.dart';

/// Provides a Express Connect Traffic Qos resource.
///
/// Express Connect Traffic QoS Policy.
///
/// For information about Express Connect Traffic Qos and how to use it, see [What is Traffic Qos](https://next.api.alibabacloud.com/document/Vpc/2016-04-28/CreateExpressConnectTrafficQos).
///
/// > **NOTE:** Available since v1.224.0.
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
/// const createQos = new alicloud.expressconnect.TrafficQos("createQos", {
///     qosName: name,
///     qosDescription: name,
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
/// create_qos = alicloud.expressconnect.TrafficQos("createQos",
///     qos_name=name,
///     qos_description=name)
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
///     var createQos = new AliCloud.ExpressConnect.TrafficQos("createQos", new()
///     {
///         QosName = name,
///         QosDescription = name,
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
/// 		_, err := expressconnect.NewTrafficQos(ctx, "createQos", &expressconnect.TrafficQosArgs{
/// 			QosName:        pulumi.String(name),
/// 			QosDescription: pulumi.String(name),
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
/// import com.pulumi.alicloud.expressconnect.TrafficQos;
/// import com.pulumi.alicloud.expressconnect.TrafficQosArgs;
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
///         var createQos = new TrafficQos("createQos", TrafficQosArgs.builder()
///             .qosName(name)
///             .qosDescription(name)
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
///   createQos:
///     type: alicloud:expressconnect:TrafficQos
///     properties:
///       qosName: ${name}
///       qosDescription: ${name}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Express Connect Traffic Qos can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:expressconnect/trafficQos:TrafficQos example <id>
/// ```
class TrafficQos extends pulumi.CustomResource {
  /// The description of the QoS policy.
  /// The length is `0` to `256` characters and cannot start with 'http:// 'or 'https.
  late final pulumi.Output<String?> qosDescription;
  /// The name of the QoS policy.
  /// The length is `0` to `128` characters and cannot start with 'http:// 'or 'https.
  late final pulumi.Output<String?> qosName;
  /// The ID of the resource group.
  late final pulumi.Output<String> resourceGroupId;
  /// The status of the QoS policy.
  late final pulumi.Output<String> status;
  /// The tag of the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [TrafficQos].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TrafficQos]. {@macro pulumi_expressconnect_traffic_qos_traffic_qos_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TrafficQos(
    String name, {
    TrafficQosArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:expressconnect/trafficQos:TrafficQos',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.qosDescription = registerOutput<String?>('qosDescription');
    this.qosName = registerOutput<String?>('qosName');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [TrafficQos] resource's state with the given [name] and [id].
  static TrafficQos get(
    String name,
    pulumi.Input<String> id, {
    TrafficQosState? state,
  }) {
    return TrafficQos._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  TrafficQos._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:expressconnect/trafficQos:TrafficQos',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.qosDescription = registerOutput<String?>('qosDescription');
    this.qosName = registerOutput<String?>('qosName');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }
}
