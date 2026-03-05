import 'package:pulumi/pulumi.dart' as pulumi;
import 'delivery_channel_args.dart';
import 'delivery_channel_state.dart';

/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
/// import * as std from "@pulumi/std";
///
/// const example = new alicloud.mns.Topic("example", {name: "test-topic"});
/// // Example for create a MNS delivery channel
/// const exampleDeliveryChannel = new alicloud.cfg.DeliveryChannel("example", {
///     description: "channel_description",
///     deliveryChannelName: "channel_name",
///     deliveryChannelAssumeRoleArn: "acs:ram::11827252********:role/aliyunserviceroleforconfig",
///     deliveryChannelType: "MNS",
///     deliveryChannelTargetArn: std.format({
///         input: "acs:oss:cn-shanghai:11827252********:/topics/%s",
///         args: [example.name],
///     }).then(invoke => invoke.result),
///     deliveryChannelCondition: `  [
///       {
///           \\"filterType\\":\\"ResourceType\\",
///           \\"values\\":[
///               \\"ACS::CEN::CenInstance\\",
///               \\"ACS::CEN::Flowlog\\",
///           ],
///           \\"multiple\\":true
///       }
///   ]
/// `,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_std as std
///
/// example = alicloud.mns.Topic("example", name="test-topic")
/// # Example for create a MNS delivery channel
/// example_delivery_channel = alicloud.cfg.DeliveryChannel("example",
///     description="channel_description",
///     delivery_channel_name="channel_name",
///     delivery_channel_assume_role_arn="acs:ram::11827252********:role/aliyunserviceroleforconfig",
///     delivery_channel_type="MNS",
///     delivery_channel_target_arn=std.format(input="acs:oss:cn-shanghai:11827252********:/topics/%s",
///         args=[example.name]).result,
///     delivery_channel_condition="""  [
///       {
///           \"filterType\":\"ResourceType\",
///           \"values\":[
///               \"ACS::CEN::CenInstance\",
///               \"ACS::CEN::Flowlog\",
///           ],
///           \"multiple\":true
///       }
///   ]
/// """)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new AliCloud.Mns.Topic("example", new()
///     {
///         Name = "test-topic",
///     });
///
///     // Example for create a MNS delivery channel
///     var exampleDeliveryChannel = new AliCloud.Cfg.DeliveryChannel("example", new()
///     {
///         Description = "channel_description",
///         DeliveryChannelName = "channel_name",
///         DeliveryChannelAssumeRoleArn = "acs:ram::11827252********:role/aliyunserviceroleforconfig",
///         DeliveryChannelType = "MNS",
///         DeliveryChannelTargetArn = Std.Format.Invoke(new()
///         {
///             Input = "acs:oss:cn-shanghai:11827252********:/topics/%s",
///             Args = new[]
///             {
///                 example.Name,
///             },
///         }).Apply(invoke => invoke.Result),
///         DeliveryChannelCondition = @"  [
///       {
///           \""filterType\"":\""ResourceType\"",
///           \""values\"":[
///               \""ACS::CEN::CenInstance\"",
///               \""ACS::CEN::Flowlog\"",
///           ],
///           \""multiple\"":true
///       }
///   ]
/// ",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cfg"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/mns"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := mns.NewTopic(ctx, "example", &mns.TopicArgs{
/// 			Name: pulumi.String("test-topic"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFormat, err := std.Format(ctx, &std.FormatArgs{
/// 			Input: "acs:oss:cn-shanghai:11827252********:/topics/%s",
/// 			Args: pulumi.StringArray{
/// 				example.Name,
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Example for create a MNS delivery channel
/// 		_, err = cfg.NewDeliveryChannel(ctx, "example", &cfg.DeliveryChannelArgs{
/// 			Description:                  pulumi.String("channel_description"),
/// 			DeliveryChannelName:          pulumi.String("channel_name"),
/// 			DeliveryChannelAssumeRoleArn: pulumi.String("acs:ram::11827252********:role/aliyunserviceroleforconfig"),
/// 			DeliveryChannelType:          pulumi.String("MNS"),
/// 			DeliveryChannelTargetArn:     pulumi.String(invokeFormat.Result),
/// 			DeliveryChannelCondition: pulumi.String(`  [
///       {
///           \"filterType\":\"ResourceType\",
///           \"values\":[
///               \"ACS::CEN::CenInstance\",
///               \"ACS::CEN::Flowlog\",
///           ],
///           \"multiple\":true
///       }
///   ]
/// `),
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
/// import com.pulumi.alicloud.mns.Topic;
/// import com.pulumi.alicloud.mns.TopicArgs;
/// import com.pulumi.alicloud.cfg.DeliveryChannel;
/// import com.pulumi.alicloud.cfg.DeliveryChannelArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FormatArgs;
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
///         var example = new Topic("example", TopicArgs.builder()
///             .name("test-topic")
///             .build());
///
///         // Example for create a MNS delivery channel
///         var exampleDeliveryChannel = new DeliveryChannel("exampleDeliveryChannel", DeliveryChannelArgs.builder()
///             .description("channel_description")
///             .deliveryChannelName("channel_name")
///             .deliveryChannelAssumeRoleArn("acs:ram::11827252********:role/aliyunserviceroleforconfig")
///             .deliveryChannelType("MNS")
///             .deliveryChannelTargetArn(StdFunctions.format(FormatArgs.builder()
///                 .input("acs:oss:cn-shanghai:11827252********:/topics/%s")
///                 .args(example.name())
///                 .build()).result())
///             .deliveryChannelCondition("""
///   [
///       {
///           \"filterType\":\"ResourceType\",
///           \"values\":[
///               \"ACS::CEN::CenInstance\",
///               \"ACS::CEN::Flowlog\",
///           ],
///           \"multiple\":true
///       }
///   ]
///             """)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: alicloud:mns:Topic
///     properties:
///       name: test-topic
///   # Example for create a MNS delivery channel
///   exampleDeliveryChannel:
///     type: alicloud:cfg:DeliveryChannel
///     name: example
///     properties:
///       description: channel_description
///       deliveryChannelName: channel_name
///       deliveryChannelAssumeRoleArn: acs:ram::11827252********:role/aliyunserviceroleforconfig
///       deliveryChannelType: MNS
///       deliveryChannelTargetArn:
///         fn::invoke:
///           function: std:format
///           arguments:
///             input: acs:oss:cn-shanghai:11827252********:/topics/%s
///             args:
///               - ${example.name}
///           return: result
///       deliveryChannelCondition: |2
///           [
///               {
///                   \"filterType\":\"ResourceType\",
///                   \"values\":[
///                       \"ACS::CEN::CenInstance\",
///                       \"ACS::CEN::Flowlog\",
///                   ],
///                   \"multiple\":true
///               }
///           ]
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Alicloud Config Delivery Channel can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cfg/deliveryChannel:DeliveryChannel example cdc-49a2ad756057********
/// ```
class DeliveryChannel extends pulumi.CustomResource {
  /// The Alibaba Cloud Resource Name (ARN) of the role to be assumed by the delivery method.
  late final pulumi.Output<String> deliveryChannelAssumeRoleArn;
  /// The rule attached to the delivery method. This parameter is applicable only to delivery methods of the MNS type. Please refer to api [PutDeliveryChannel](https://www.alibabacloud.com/help/en/doc-detail/174253.htm) for example format.
  late final pulumi.Output<String> deliveryChannelCondition;
  /// The name of the delivery channel.
  late final pulumi.Output<String> deliveryChannelName;
  /// The ARN of the delivery destination. This parameter is required when you create a delivery method. The value must be in one of the following formats:
  /// - `acs:oss:{RegionId}:{Aliuid}:{bucketName}`: if your delivery destination is an Object Storage Service (OSS) bucket.
  /// - `acs:mns:{RegionId}:{Aliuid}:/topics/{topicName}`: if your delivery destination is a Message Service (MNS) topic.
  /// - `acs:log:{RegionId}:{Aliuid}:project/{projectName}/logstore/{logstoreName}`: if your delivery destination is a Log Service Logstore.
  late final pulumi.Output<String> deliveryChannelTargetArn;
  /// The type of the delivery method. This parameter is required when you create a delivery method. Valid values: `OSS`: Object Storage, `MNS`: Message Service, `SLS`: Log Service.
  late final pulumi.Output<String> deliveryChannelType;
  /// The description of the delivery method.
  late final pulumi.Output<String> description;
  /// The status of the delivery method. Valid values: `0`: The delivery method is disabled., `1`: The delivery destination is enabled. This is the default value.
  late final pulumi.Output<int> status;

  /// Creates a new [DeliveryChannel].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DeliveryChannel]. {@macro pulumi_cfg_delivery_channel_delivery_channel_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DeliveryChannel(
    String name, {
    DeliveryChannelArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cfg/deliveryChannel:DeliveryChannel',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    deliveryChannelAssumeRoleArn = registerOutput<String>('deliveryChannelAssumeRoleArn');
    deliveryChannelCondition = registerOutput<String>('deliveryChannelCondition');
    deliveryChannelName = registerOutput<String>('deliveryChannelName');
    deliveryChannelTargetArn = registerOutput<String>('deliveryChannelTargetArn');
    deliveryChannelType = registerOutput<String>('deliveryChannelType');
    description = registerOutput<String>('description');
    status = registerOutput<int>('status');
  }

  /// Gets an existing [DeliveryChannel] resource's state with the given [name] and [id].
  static DeliveryChannel get(
    String name,
    pulumi.Input<String> id, {
    DeliveryChannelState? state,
  }) {
    return DeliveryChannel._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DeliveryChannel._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cfg/deliveryChannel:DeliveryChannel',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    deliveryChannelAssumeRoleArn = registerOutput<String>('deliveryChannelAssumeRoleArn');
    deliveryChannelCondition = registerOutput<String>('deliveryChannelCondition');
    deliveryChannelName = registerOutput<String>('deliveryChannelName');
    deliveryChannelTargetArn = registerOutput<String>('deliveryChannelTargetArn');
    deliveryChannelType = registerOutput<String>('deliveryChannelType');
    description = registerOutput<String>('description');
    status = registerOutput<int>('status');
  }
}
