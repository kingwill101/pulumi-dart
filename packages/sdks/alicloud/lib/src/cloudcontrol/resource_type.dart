import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_args.dart';
import 'resource_state.dart';

/// Provides a Cloud Control Resource resource.
///
///
///
/// For information about Cloud Control Resource and how to use it, see [What is Resource](https://next.api.aliyun.com/document/cloudcontrol/2022-08-30/GetResourceType).
///
/// > **NOTE:** Available since v1.241.0.
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
/// const mqInstance = new alicloud.cloudcontrol.Resource("mq_instance", {
///     desireAttributes: JSON.stringify({
///         InstanceName: "terraform-example-ons-instance",
///     }),
///     product: "Ons",
///     resourceCode: "Instance",
/// });
/// const _default = new alicloud.cloudcontrol.Resource("default", {
///     product: "Ons",
///     resourceCode: "Instance::Topic",
///     resourceId: mqInstance.resourceId,
///     desireAttributes: pulumi.jsonStringify({
///         InstanceId: mqInstance.resourceId,
///         TopicName: "terraform-example-ons-topic",
///         MessageType: "1",
///     }),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// mq_instance = alicloud.cloudcontrol.Resource("mq_instance",
///     desire_attributes=json.dumps({
///         "InstanceName": "terraform-example-ons-instance",
///     }),
///     product="Ons",
///     resource_code="Instance")
/// default = alicloud.cloudcontrol.Resource("default",
///     product="Ons",
///     resource_code="Instance::Topic",
///     resource_id=mq_instance.resource_id,
///     desire_attributes=pulumi.Output.json_dumps({
///         "InstanceId": mq_instance.resource_id,
///         "TopicName": "terraform-example-ons-topic",
///         "MessageType": "1",
///     }))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform-example";
///     var mqInstance = new AliCloud.CloudControl.Resource("mq_instance", new()
///     {
///         DesireAttributes = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["InstanceName"] = "terraform-example-ons-instance",
///         }),
///         Product = "Ons",
///         ResourceCode = "Instance",
///     });
///
///     var @default = new AliCloud.CloudControl.Resource("default", new()
///     {
///         Product = "Ons",
///         ResourceCode = "Instance::Topic",
///         ResourceId = mqInstance.ResourceId,
///         DesireAttributes = Output.JsonSerialize(Output.Create(new Dictionary<string, object?>
///         {
///             ["InstanceId"] = mqInstance.ResourceId,
///             ["TopicName"] = "terraform-example-ons-topic",
///             ["MessageType"] = "1",
///         })),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cloudcontrol"
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
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"InstanceName": "terraform-example-ons-instance",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		mqInstance, err := cloudcontrol.NewResource(ctx, "mq_instance", &cloudcontrol.ResourceArgs{
/// 			DesireAttributes: pulumi.String(json0),
/// 			Product:          pulumi.String("Ons"),
/// 			ResourceCode:     pulumi.String("Instance"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudcontrol.NewResource(ctx, "default", &cloudcontrol.ResourceArgs{
/// 			Product:      pulumi.String("Ons"),
/// 			ResourceCode: pulumi.String("Instance::Topic"),
/// 			ResourceId:   mqInstance.ResourceId,
/// 			DesireAttributes: mqInstance.ResourceId.ApplyT(func(resourceId string) (pulumi.String, error) {
/// 				var _zero pulumi.String
/// 				tmpJSON1, err := json.Marshal(map[string]interface{}{
/// 					"InstanceId":  resourceId,
/// 					"TopicName":   "terraform-example-ons-topic",
/// 					"MessageType": "1",
/// 				})
/// 				if err != nil {
/// 					return _zero, err
/// 				}
/// 				json1 := string(tmpJSON1)
/// 				return pulumi.String(json1), nil
/// 			}).(pulumi.StringOutput),
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
/// import com.pulumi.alicloud.cloudcontrol.Resource;
/// import com.pulumi.alicloud.cloudcontrol.ResourceArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         var mqInstance = new Resource("mqInstance", ResourceArgs.builder()
///             .desireAttributes(serializeJson(
///                 jsonObject(
///                     jsonProperty("InstanceName", "terraform-example-ons-instance")
///                 )))
///             .product("Ons")
///             .resourceCode("Instance")
///             .build());
///
///         var default_ = new Resource("default", ResourceArgs.builder()
///             .product("Ons")
///             .resourceCode("Instance::Topic")
///             .resourceId(mqInstance.resourceId())
///             .desireAttributes(mqInstance.resourceId().applyValue(_resourceId -> serializeJson(
///                 jsonObject(
///                     jsonProperty("InstanceId", _resourceId),
///                     jsonProperty("TopicName", "terraform-example-ons-topic"),
///                     jsonProperty("MessageType", "1")
///                 ))))
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
///   mqInstance:
///     type: alicloud:cloudcontrol:Resource
///     name: mq_instance
///     properties:
///       desireAttributes:
///         fn::toJSON:
///           InstanceName: terraform-example-ons-instance
///       product: Ons
///       resourceCode: Instance
///   default:
///     type: alicloud:cloudcontrol:Resource
///     properties:
///       product: Ons
///       resourceCode: Instance::Topic
///       resourceId: ${mqInstance.resourceId}
///       desireAttributes:
///         fn::toJSON:
///           InstanceId: ${mqInstance.resourceId}
///           TopicName: terraform-example-ons-topic
///           MessageType: '1'
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Cloud Control Resource can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cloudcontrol/resource:Resource example <provider>:<product>:<resource_code>:<resource_id>
/// ```
class ResourceType extends pulumi.CustomResource {
  /// Resource attributes specified when a user creates or updates a resource.
  late final pulumi.Output<String?> desireAttributes;
  /// The product Code represents the product to be operated. Currently supported products and resources can be queried at the following link: [supported-services-and-resource-types](https://help.aliyun.com/zh/cloud-control-api/product-overview/supported-services-and-resource-types).
  late final pulumi.Output<String> product;
  /// The collection of properties for the resource.
  late final pulumi.Output<String> resourceAttributes;
  /// Resource Code, if there is a parent resource, split with `::`, such as VPC::VSwitch. The supported resource Code can be obtained from the following link: [supported-services-and-resource-types](https://help.aliyun.com/zh/cloud-control-api/product-overview/supported-services-and-resource-types).
  late final pulumi.Output<String> resourceCode;
  /// If there is a parent resource, you need to enter the id of the parent resource, for example, in the VPC::VSwtich resource, you need to enter the id of the VPC: vpc-dexadfe3r4ad. If there are more than one level of parent resources, you need to use `:` to split.
  late final pulumi.Output<String> resourceId;

  /// Creates a new [ResourceType].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResourceType]. {@macro pulumi_cloudcontrol_resource_resource_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResourceType(
    String name, {
    ResourceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cloudcontrol/resource:Resource',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.desireAttributes = registerOutput<String?>('desireAttributes');
    this.product = registerOutput<String>('product');
    this.resourceAttributes = registerOutput<String>('resourceAttributes');
    this.resourceCode = registerOutput<String>('resourceCode');
    this.resourceId = registerOutput<String>('resourceId');
  }

  /// Gets an existing [ResourceType] resource's state with the given [name] and [id].
  static ResourceType get(
    String name,
    pulumi.Input<String> id, {
    ResourceState? state,
  }) {
    return ResourceType._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ResourceType._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cloudcontrol/resource:Resource',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.desireAttributes = registerOutput<String?>('desireAttributes');
    this.product = registerOutput<String>('product');
    this.resourceAttributes = registerOutput<String>('resourceAttributes');
    this.resourceCode = registerOutput<String>('resourceCode');
    this.resourceId = registerOutput<String>('resourceId');
  }
}
