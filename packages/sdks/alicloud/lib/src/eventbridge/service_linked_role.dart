import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_linked_role_args.dart';
import 'service_linked_role_state.dart';

/// Provides a Event Bridge Service Linked Role resource.
///
/// For information about Event Bridge Service Linked Role and how to use it, see [What is Service Linked Role](https://www.alibabacloud.com/help/en/eventbridge/developer-reference/api-eventbridge-2020-04-01-createservicelinkedroleforproduct).
///
/// &gt; **NOTE:** Available since v1.129.0.
///
/// &gt; **NOTE:** From version 1.142.0, the resource is renamed as `alicloud.eventbridge.ServiceLinkedRole`.
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
/// const _default = new alicloud.eventbridge.ServiceLinkedRole("default", {productName: "AliyunServiceRoleForEventBridgeSourceRocketMQ"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.eventbridge.ServiceLinkedRole("default", product_name="AliyunServiceRoleForEventBridgeSourceRocketMQ")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new AliCloud.EventBridge.ServiceLinkedRole("default", new()
///     {
///         ProductName = "AliyunServiceRoleForEventBridgeSourceRocketMQ",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/eventbridge"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := eventbridge.NewServiceLinkedRole(ctx, "default", &eventbridge.ServiceLinkedRoleArgs{
/// 			ProductName: pulumi.String("AliyunServiceRoleForEventBridgeSourceRocketMQ"),
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
/// import com.pulumi.alicloud.eventbridge.ServiceLinkedRole;
/// import com.pulumi.alicloud.eventbridge.ServiceLinkedRoleArgs;
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
///         var default_ = new ServiceLinkedRole("default", ServiceLinkedRoleArgs.builder()
///             .productName("AliyunServiceRoleForEventBridgeSourceRocketMQ")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: alicloud:eventbridge:ServiceLinkedRole
///     properties:
///       productName: AliyunServiceRoleForEventBridgeSourceRocketMQ
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Event Bridge Service Linked Role can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:eventbridge/serviceLinkedRole:ServiceLinkedRole example <product_name>
/// ```
class ServiceLinkedRole extends pulumi.CustomResource {
  /// The name of the cloud service or the name of the service-linked role with which the cloud service is associated. For more information, see [How to use it](https://www.alibabacloud.com/help/en/eventbridge/developer-reference/api-eventbridge-2020-04-01-createservicelinkedroleforproduct).
  late final pulumi.Output<String> productName;

  /// Creates a new [ServiceLinkedRole].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServiceLinkedRole]. {@macro pulumi_eventbridge_service_linked_role_service_linked_role_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServiceLinkedRole(
    String name, {
    ServiceLinkedRoleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:eventbridge/serviceLinkedRole:ServiceLinkedRole',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    productName = registerOutput<String>('productName');
  }

  /// Gets an existing [ServiceLinkedRole] resource's state with the given [name] and [id].
  static ServiceLinkedRole get(
    String name,
    pulumi.Input<String> id, {
    ServiceLinkedRoleState? state,
  }) {
    return ServiceLinkedRole._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ServiceLinkedRole._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:eventbridge/serviceLinkedRole:ServiceLinkedRole',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    productName = registerOutput<String>('productName');
  }
}
