import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_groups_args.dart';
import 'get_groups_result.dart';
import 'get_instances_args.dart';
import 'get_instances_result.dart';
import 'get_service_args.dart';
import 'get_service_result.dart';
import 'get_topics_args.dart';
import 'get_topics_result.dart';

/// This data source provides a list of ONS Groups in an Alibaba Cloud account according to the specified filters.
///
/// > **NOTE:** Available in 1.53.0+
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "onsInstanceName";
/// const groupName = config.get("groupName") || "GID-onsGroupDatasourceName";
/// const _default = new alicloud.rocketmq.Instance("default", {
///     instanceName: name,
///     remark: "default_ons_instance_remark",
/// });
/// const defaultGroup = new alicloud.rocketmq.Group("default", {
///     groupName: groupName,
///     instanceId: _default.id,
///     remark: "dafault_ons_group_remark",
/// });
/// const groupsDs = defaultGroup.instanceId.apply(instanceId => alicloud.rocketmq.getGroupsOutput({
///     instanceId: instanceId,
///     nameRegex: groupId,
///     outputFile: "groups.txt",
/// }));
/// export const firstGroupName = groupsDs.apply(groupsDs => groupsDs.groups?.[0]?.groupName);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "onsInstanceName"
/// group_name = config.get("groupName")
/// if group_name is None:
///     group_name = "GID-onsGroupDatasourceName"
/// default = alicloud.rocketmq.Instance("default",
///     instance_name=name,
///     remark="default_ons_instance_remark")
/// default_group = alicloud.rocketmq.Group("default",
///     group_name=group_name,
///     instance_id=default.id,
///     remark="dafault_ons_group_remark")
/// groups_ds = default_group.instance_id.apply(lambda instance_id: alicloud.rocketmq.get_groups_output(instance_id=instance_id,
///     name_regex=group_id,
///     output_file="groups.txt"))
/// pulumi.export("firstGroupName", groups_ds.groups[0].group_name)
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
///     var name = config.Get("name") ?? "onsInstanceName";
///     var groupName = config.Get("groupName") ?? "GID-onsGroupDatasourceName";
///     var @default = new AliCloud.RocketMQ.Instance("default", new()
///     {
///         InstanceName = name,
///         Remark = "default_ons_instance_remark",
///     });
///
///     var defaultGroup = new AliCloud.RocketMQ.Group("default", new()
///     {
///         GroupName = groupName,
///         InstanceId = @default.Id,
///         Remark = "dafault_ons_group_remark",
///     });
///
///     var groupsDs = AliCloud.RocketMQ.GetGroups.Invoke(new()
///     {
///         InstanceId = defaultGroup.InstanceId,
///         NameRegex = groupId,
///         OutputFile = "groups.txt",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstGroupName"] = groupsDs.Apply(getGroupsResult => getGroupsResult.Groups[0]?.GroupName),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/rocketmq"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "onsInstanceName"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		groupName := "GID-onsGroupDatasourceName"
/// 		if param := cfg.Get("groupName"); param != "" {
/// 			groupName = param
/// 		}
/// 		_default, err := rocketmq.NewInstance(ctx, "default", &rocketmq.InstanceArgs{
/// 			InstanceName: pulumi.String(name),
/// 			Remark:       pulumi.String("default_ons_instance_remark"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGroup, err := rocketmq.NewGroup(ctx, "default", &rocketmq.GroupArgs{
/// 			GroupName:  pulumi.String(groupName),
/// 			InstanceId: _default.ID(),
/// 			Remark:     pulumi.String("dafault_ons_group_remark"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		groupsDs := defaultGroup.InstanceId.ApplyT(func(instanceId string) (rocketmq.GetGroupsResult, error) {
/// 			return rocketmq.GetGroupsResult(interface{}(rocketmq.GetGroups(ctx, &rocketmq.GetGroupsArgs{
/// 				InstanceId: instanceId,
/// 				NameRegex:  pulumi.StringRef(pulumi.StringRef(pulumi.String(groupId))),
/// 				OutputFile: pulumi.StringRef(pulumi.StringRef("groups.txt")),
/// 			}, nil))), nil
/// 		}).(rocketmq.GetGroupsResultOutput)
/// 		ctx.Export("firstGroupName", groupsDs.ApplyT(func(groupsDs rocketmq.GetGroupsResult) (*string, error) {
/// 			return &groupsDs.Groups[0].GroupName, nil
/// 		}).(pulumi.StringPtrOutput))
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
/// import com.pulumi.alicloud.rocketmq.Instance;
/// import com.pulumi.alicloud.rocketmq.InstanceArgs;
/// import com.pulumi.alicloud.rocketmq.Group;
/// import com.pulumi.alicloud.rocketmq.GroupArgs;
/// import com.pulumi.alicloud.rocketmq.RocketmqFunctions;
/// import com.pulumi.alicloud.rocketmq.inputs.GetGroupsArgs;
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
///         final var name = config.get("name").orElse("onsInstanceName");
///         final var groupName = config.get("groupName").orElse("GID-onsGroupDatasourceName");
///         var default_ = new Instance("default", InstanceArgs.builder()
///             .instanceName(name)
///             .remark("default_ons_instance_remark")
///             .build());
///
///         var defaultGroup = new Group("defaultGroup", GroupArgs.builder()
///             .groupName(groupName)
///             .instanceId(default_.id())
///             .remark("dafault_ons_group_remark")
///             .build());
///
///         final var groupsDs = defaultGroup.instanceId().applyValue(_instanceId -> RocketmqFunctions.getGroups(GetGroupsArgs.builder()
///             .instanceId(_instanceId)
///             .nameRegex(groupId)
///             .outputFile("groups.txt")
///             .build()));
///
///         ctx.export("firstGroupName", groupsDs.applyValue(_groupsDs -> _groupsDs.groups()[0].groupName()));
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: onsInstanceName
///   groupName:
///     type: string
///     default: GID-onsGroupDatasourceName
/// resources:
///   default:
///     type: alicloud:rocketmq:Instance
///     properties:
///       instanceName: ${name}
///       remark: default_ons_instance_remark
///   defaultGroup:
///     type: alicloud:rocketmq:Group
///     name: default
///     properties:
///       groupName: ${groupName}
///       instanceId: ${default.id}
///       remark: dafault_ons_group_remark
/// variables:
///   groupsDs:
///     fn::invoke:
///       function: alicloud:rocketmq:getGroups
///       arguments:
///         instanceId: ${defaultGroup.instanceId}
///         nameRegex: ${groupId}
///         outputFile: groups.txt
/// outputs:
///   firstGroupName: ${groupsDs.groups[0].groupName}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_rocketmq_get_groups_get_groups_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGroupsResult> getGroups(
  GetGroupsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:rocketmq/getGroups:getGroups',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGroupsResult.fromMap(result);
}

/// This data source provides a list of ONS Instances in an Alibaba Cloud account according to the specified filters.
///
/// > **NOTE:** Available in 1.52.0+
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "onsInstanceDatasourceName";
/// const _default = new alicloud.rocketmq.Instance("default", {
///     name: name,
///     remark: "default_ons_instance_remark",
/// });
/// const instancesDs = alicloud.rocketmq.getInstancesOutput({
///     ids: [_default.id],
///     nameRegex: _default.name,
///     outputFile: "instances.txt",
/// });
/// export const firstInstanceId = instancesDs.apply(instancesDs => instancesDs.instances?.[0]?.instanceId);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "onsInstanceDatasourceName"
/// default = alicloud.rocketmq.Instance("default",
///     name=name,
///     remark="default_ons_instance_remark")
/// instances_ds = alicloud.rocketmq.get_instances_output(ids=[default.id],
///     name_regex=default.name,
///     output_file="instances.txt")
/// pulumi.export("firstInstanceId", instances_ds.instances[0].instance_id)
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
///     var name = config.Get("name") ?? "onsInstanceDatasourceName";
///     var @default = new AliCloud.RocketMQ.Instance("default", new()
///     {
///         Name = name,
///         Remark = "default_ons_instance_remark",
///     });
///
///     var instancesDs = AliCloud.RocketMQ.GetInstances.Invoke(new()
///     {
///         Ids = new[]
///         {
///             @default.Id,
///         },
///         NameRegex = @default.Name,
///         OutputFile = "instances.txt",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstInstanceId"] = instancesDs.Apply(getInstancesResult => getInstancesResult.Instances[0]?.InstanceId),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/rocketmq"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "onsInstanceDatasourceName"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := rocketmq.NewInstance(ctx, "default", &rocketmq.InstanceArgs{
/// 			Name:   pulumi.String(name),
/// 			Remark: pulumi.String("default_ons_instance_remark"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		instancesDs := rocketmq.GetInstancesOutput(ctx, rocketmq.GetInstancesOutputArgs{
/// 			Ids: pulumi.StringArray{
/// 				_default.ID(),
/// 			},
/// 			NameRegex:  _default.Name,
/// 			OutputFile: pulumi.String("instances.txt"),
/// 		}, nil)
/// 		ctx.Export("firstInstanceId", instancesDs.ApplyT(func(instancesDs rocketmq.GetInstancesResult) (*string, error) {
/// 			return &instancesDs.Instances[0].InstanceId, nil
/// 		}).(pulumi.StringPtrOutput))
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
/// import com.pulumi.alicloud.rocketmq.Instance;
/// import com.pulumi.alicloud.rocketmq.InstanceArgs;
/// import com.pulumi.alicloud.rocketmq.RocketmqFunctions;
/// import com.pulumi.alicloud.rocketmq.inputs.GetInstancesArgs;
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
///         final var name = config.get("name").orElse("onsInstanceDatasourceName");
///         var default_ = new Instance("default", InstanceArgs.builder()
///             .name(name)
///             .remark("default_ons_instance_remark")
///             .build());
///
///         final var instancesDs = RocketmqFunctions.getInstances(GetInstancesArgs.builder()
///             .ids(default_.id())
///             .nameRegex(default_.name())
///             .outputFile("instances.txt")
///             .build());
///
///         ctx.export("firstInstanceId", instancesDs.applyValue(_instancesDs -> _instancesDs.instances()[0].instanceId()));
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: onsInstanceDatasourceName
/// resources:
///   default:
///     type: alicloud:rocketmq:Instance
///     properties:
///       name: ${name}
///       remark: default_ons_instance_remark
/// variables:
///   instancesDs:
///     fn::invoke:
///       function: alicloud:rocketmq:getInstances
///       arguments:
///         ids:
///           - ${default.id}
///         nameRegex: ${default.name}
///         outputFile: instances.txt
/// outputs:
///   firstInstanceId: ${instancesDs.instances[0].instanceId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_rocketmq_get_instances_get_instances_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstancesResult> getInstances(
  GetInstancesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:rocketmq/getInstances:getInstances',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstancesResult.fromMap(result);
}

/// Using this data source can open ONS service automatically. If the service has been opened, it will return opened.
///
/// For information about ONS and how to use it, see [What is ONS](https://help.aliyun.com/product/29530.html).
///
/// > **NOTE:** Available in v1.111.0+
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const open = alicloud.rocketmq.getService({
///     enable: "On",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// open = alicloud.rocketmq.get_service(enable="On")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var open = AliCloud.RocketMQ.GetService.Invoke(new()
///     {
///         Enable = "On",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/rocketmq"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := rocketmq.GetService(ctx, &rocketmq.GetServiceArgs{
/// 			Enable: pulumi.StringRef("On"),
/// 		}, nil)
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
/// import com.pulumi.alicloud.rocketmq.RocketmqFunctions;
/// import com.pulumi.alicloud.rocketmq.inputs.GetServiceArgs;
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
///         final var open = RocketmqFunctions.getService(GetServiceArgs.builder()
///             .enable("On")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   open:
///     fn::invoke:
///       function: alicloud:rocketmq:getService
///       arguments:
///         enable: On
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_rocketmq_get_service_get_service_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceResult> getService(
  GetServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:rocketmq/getService:getService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceResult.fromMap(result);
}

/// This data source provides a list of ONS Topics in an Alibaba Cloud account according to the specified filters.
///
/// > **NOTE:** Available in 1.53.0+
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "onsInstanceName";
/// const topic = config.get("topic") || "onsTopicDatasourceName";
/// const _default = new alicloud.rocketmq.Instance("default", {
///     instanceName: name,
///     remark: "default_ons_instance_remark",
/// });
/// const defaultTopic = new alicloud.rocketmq.Topic("default", {
///     topicName: topic,
///     instanceId: _default.id,
///     messageType: 0,
///     remark: "dafault_ons_topic_remark",
/// });
/// const topicsDs = alicloud.rocketmq.getTopicsOutput({
///     instanceId: defaultTopic.instanceId,
///     nameRegex: topic,
///     outputFile: "topics.txt",
/// });
/// export const firstTopicName = topicsDs.apply(topicsDs => topicsDs.topics?.[0]?.topicName);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "onsInstanceName"
/// topic = config.get("topic")
/// if topic is None:
///     topic = "onsTopicDatasourceName"
/// default = alicloud.rocketmq.Instance("default",
///     instance_name=name,
///     remark="default_ons_instance_remark")
/// default_topic = alicloud.rocketmq.Topic("default",
///     topic_name=topic,
///     instance_id=default.id,
///     message_type=0,
///     remark="dafault_ons_topic_remark")
/// topics_ds = alicloud.rocketmq.get_topics_output(instance_id=default_topic.instance_id,
///     name_regex=topic,
///     output_file="topics.txt")
/// pulumi.export("firstTopicName", topics_ds.topics[0].topic_name)
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
///     var name = config.Get("name") ?? "onsInstanceName";
///     var topic = config.Get("topic") ?? "onsTopicDatasourceName";
///     var @default = new AliCloud.RocketMQ.Instance("default", new()
///     {
///         InstanceName = name,
///         Remark = "default_ons_instance_remark",
///     });
///
///     var defaultTopic = new AliCloud.RocketMQ.Topic("default", new()
///     {
///         TopicName = topic,
///         InstanceId = @default.Id,
///         MessageType = 0,
///         Remark = "dafault_ons_topic_remark",
///     });
///
///     var topicsDs = AliCloud.RocketMQ.GetTopics.Invoke(new()
///     {
///         InstanceId = defaultTopic.InstanceId,
///         NameRegex = topic,
///         OutputFile = "topics.txt",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstTopicName"] = topicsDs.Apply(getTopicsResult => getTopicsResult.Topics[0]?.TopicName),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/rocketmq"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "onsInstanceName"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		topic := "onsTopicDatasourceName"
/// 		if param := cfg.Get("topic"); param != "" {
/// 			topic = param
/// 		}
/// 		_default, err := rocketmq.NewInstance(ctx, "default", &rocketmq.InstanceArgs{
/// 			InstanceName: pulumi.String(name),
/// 			Remark:       pulumi.String("default_ons_instance_remark"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultTopic, err := rocketmq.NewTopic(ctx, "default", &rocketmq.TopicArgs{
/// 			TopicName:   pulumi.String(topic),
/// 			InstanceId:  _default.ID(),
/// 			MessageType: pulumi.Int(0),
/// 			Remark:      pulumi.String("dafault_ons_topic_remark"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		topicsDs := rocketmq.GetTopicsOutput(ctx, rocketmq.GetTopicsOutputArgs{
/// 			InstanceId: defaultTopic.InstanceId,
/// 			NameRegex:  pulumi.String(topic),
/// 			OutputFile: pulumi.String("topics.txt"),
/// 		}, nil)
/// 		ctx.Export("firstTopicName", topicsDs.ApplyT(func(topicsDs rocketmq.GetTopicsResult) (*string, error) {
/// 			return &topicsDs.Topics[0].TopicName, nil
/// 		}).(pulumi.StringPtrOutput))
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
/// import com.pulumi.alicloud.rocketmq.Instance;
/// import com.pulumi.alicloud.rocketmq.InstanceArgs;
/// import com.pulumi.alicloud.rocketmq.Topic;
/// import com.pulumi.alicloud.rocketmq.TopicArgs;
/// import com.pulumi.alicloud.rocketmq.RocketmqFunctions;
/// import com.pulumi.alicloud.rocketmq.inputs.GetTopicsArgs;
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
///         final var name = config.get("name").orElse("onsInstanceName");
///         final var topic = config.get("topic").orElse("onsTopicDatasourceName");
///         var default_ = new Instance("default", InstanceArgs.builder()
///             .instanceName(name)
///             .remark("default_ons_instance_remark")
///             .build());
///
///         var defaultTopic = new Topic("defaultTopic", TopicArgs.builder()
///             .topicName(topic)
///             .instanceId(default_.id())
///             .messageType(0)
///             .remark("dafault_ons_topic_remark")
///             .build());
///
///         final var topicsDs = RocketmqFunctions.getTopics(GetTopicsArgs.builder()
///             .instanceId(defaultTopic.instanceId())
///             .nameRegex(topic)
///             .outputFile("topics.txt")
///             .build());
///
///         ctx.export("firstTopicName", topicsDs.applyValue(_topicsDs -> _topicsDs.topics()[0].topicName()));
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: onsInstanceName
///   topic:
///     type: string
///     default: onsTopicDatasourceName
/// resources:
///   default:
///     type: alicloud:rocketmq:Instance
///     properties:
///       instanceName: ${name}
///       remark: default_ons_instance_remark
///   defaultTopic:
///     type: alicloud:rocketmq:Topic
///     name: default
///     properties:
///       topicName: ${topic}
///       instanceId: ${default.id}
///       messageType: 0
///       remark: dafault_ons_topic_remark
/// variables:
///   topicsDs:
///     fn::invoke:
///       function: alicloud:rocketmq:getTopics
///       arguments:
///         instanceId: ${defaultTopic.instanceId}
///         nameRegex: ${topic}
///         outputFile: topics.txt
/// outputs:
///   firstTopicName: ${topicsDs.topics[0].topicName}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_rocketmq_get_topics_get_topics_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTopicsResult> getTopics(
  GetTopicsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:rocketmq/getTopics:getTopics',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTopicsResult.fromMap(result);
}
