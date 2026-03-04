import 'package:pulumi/pulumi.dart' as pulumi;
import 'stack_instance_args.dart';
import 'stack_instance_state.dart';

/// Provides a ROS Stack Instance resource.
///
/// For information about ROS Stack Instance and how to use it, see [What is Stack Instance](https://www.alibabacloud.com/help/en/doc-detail/151338.html).
///
/// &gt; **NOTE:** Available since v1.145.0.
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
/// const name = config.get("name") || "tf-example";
/// const _this = alicloud.getAccount({});
/// const _default = alicloud.ros.getRegions({});
/// const defaultStackGroup = new alicloud.ros.StackGroup("default", {
///     stackGroupName: name,
///     templateBody: "{\"ROSTemplateFormatVersion\":\"2015-09-01\", \"Parameters\": {\"VpcName\": {\"Type\": \"String\"},\"InstanceType\": {\"Type\": \"String\"}}}",
///     description: "test for stack groups",
///     parameters: [
///         {
///             parameterKey: "VpcName",
///             parameterValue: "VpcName",
///         },
///         {
///             parameterKey: "InstanceType",
///             parameterValue: "InstanceType",
///         },
///     ],
/// });
/// const example = new alicloud.ros.StackInstance("example", {
///     stackGroupName: defaultStackGroup.stackGroupName,
///     stackInstanceAccountId: _this.then(_this => _this.id),
///     stackInstanceRegionId: _default.then(_default => _default.regions?.[0]?.regionId),
///     operationPreferences: "{\"FailureToleranceCount\": 1, \"MaxConcurrentCount\": 2}",
///     timeoutInMinutes: "60",
///     operationDescription: "tf-example",
///     retainStacks: true,
///     parameterOverrides: [{
///         parameterValue: "VpcName",
///         parameterKey: "VpcName",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf-example"
/// this = alicloud.get_account()
/// default = alicloud.ros.get_regions()
/// default_stack_group = alicloud.ros.StackGroup("default",
///     stack_group_name=name,
///     template_body="{\"ROSTemplateFormatVersion\":\"2015-09-01\", \"Parameters\": {\"VpcName\": {\"Type\": \"String\"},\"InstanceType\": {\"Type\": \"String\"}}}",
///     description="test for stack groups",
///     parameters=[
///         {
///             "parameter_key": "VpcName",
///             "parameter_value": "VpcName",
///         },
///         {
///             "parameter_key": "InstanceType",
///             "parameter_value": "InstanceType",
///         },
///     ])
/// example = alicloud.ros.StackInstance("example",
///     stack_group_name=default_stack_group.stack_group_name,
///     stack_instance_account_id=this.id,
///     stack_instance_region_id=default.regions[0].region_id,
///     operation_preferences="{\"FailureToleranceCount\": 1, \"MaxConcurrentCount\": 2}",
///     timeout_in_minutes="60",
///     operation_description="tf-example",
///     retain_stacks=True,
///     parameter_overrides=[{
///         "parameter_value": "VpcName",
///         "parameter_key": "VpcName",
///     }])
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
///     var name = config.Get("name") ?? "tf-example";
///     var @this = AliCloud.GetAccount.Invoke();
///
///     var @default = AliCloud.Ros.GetRegions.Invoke();
///
///     var defaultStackGroup = new AliCloud.Ros.StackGroup("default", new()
///     {
///         StackGroupName = name,
///         TemplateBody = "{\"ROSTemplateFormatVersion\":\"2015-09-01\", \"Parameters\": {\"VpcName\": {\"Type\": \"String\"},\"InstanceType\": {\"Type\": \"String\"}}}",
///         Description = "test for stack groups",
///         Parameters = new[]
///         {
///             new AliCloud.Ros.Inputs.StackGroupParameterArgs
///             {
///                 ParameterKey = "VpcName",
///                 ParameterValue = "VpcName",
///             },
///             new AliCloud.Ros.Inputs.StackGroupParameterArgs
///             {
///                 ParameterKey = "InstanceType",
///                 ParameterValue = "InstanceType",
///             },
///         },
///     });
///
///     var example = new AliCloud.Ros.StackInstance("example", new()
///     {
///         StackGroupName = defaultStackGroup.StackGroupName,
///         StackInstanceAccountId = @this.Apply(@this => @this.Apply(getAccountResult => getAccountResult.Id)),
///         StackInstanceRegionId = @default.Apply(@default => @default.Apply(getRegionsResult => getRegionsResult.Regions[0]?.RegionId)),
///         OperationPreferences = "{\"FailureToleranceCount\": 1, \"MaxConcurrentCount\": 2}",
///         TimeoutInMinutes = "60",
///         OperationDescription = "tf-example",
///         RetainStacks = true,
///         ParameterOverrides = new[]
///         {
///             new AliCloud.Ros.Inputs.StackInstanceParameterOverrideArgs
///             {
///                 ParameterValue = "VpcName",
///                 ParameterKey = "VpcName",
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ros"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "tf-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		this, err := alicloud.GetAccount(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default, err := ros.GetRegions(ctx, &ros.GetRegionsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultStackGroup, err := ros.NewStackGroup(ctx, "default", &ros.StackGroupArgs{
/// 			StackGroupName: pulumi.String(name),
/// 			TemplateBody:   pulumi.String("{\"ROSTemplateFormatVersion\":\"2015-09-01\", \"Parameters\": {\"VpcName\": {\"Type\": \"String\"},\"InstanceType\": {\"Type\": \"String\"}}}"),
/// 			Description:    pulumi.String("test for stack groups"),
/// 			Parameters: ros.StackGroupParameterArray{
/// 				&ros.StackGroupParameterArgs{
/// 					ParameterKey:   pulumi.String("VpcName"),
/// 					ParameterValue: pulumi.String("VpcName"),
/// 				},
/// 				&ros.StackGroupParameterArgs{
/// 					ParameterKey:   pulumi.String("InstanceType"),
/// 					ParameterValue: pulumi.String("InstanceType"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ros.NewStackInstance(ctx, "example", &ros.StackInstanceArgs{
/// 			StackGroupName:         defaultStackGroup.StackGroupName,
/// 			StackInstanceAccountId: pulumi.String(this.Id),
/// 			StackInstanceRegionId:  pulumi.String(_default.Regions[0].RegionId),
/// 			OperationPreferences:   pulumi.String("{\"FailureToleranceCount\": 1, \"MaxConcurrentCount\": 2}"),
/// 			TimeoutInMinutes:       pulumi.String("60"),
/// 			OperationDescription:   pulumi.String("tf-example"),
/// 			RetainStacks:           pulumi.Bool(true),
/// 			ParameterOverrides: ros.StackInstanceParameterOverrideArray{
/// 				&ros.StackInstanceParameterOverrideArgs{
/// 					ParameterValue: pulumi.String("VpcName"),
/// 					ParameterKey:   pulumi.String("VpcName"),
/// 				},
/// 			},
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
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.ros.RosFunctions;
/// import com.pulumi.alicloud.ros.inputs.GetRegionsArgs;
/// import com.pulumi.alicloud.ros.StackGroup;
/// import com.pulumi.alicloud.ros.StackGroupArgs;
/// import com.pulumi.alicloud.ros.inputs.StackGroupParameterArgs;
/// import com.pulumi.alicloud.ros.StackInstance;
/// import com.pulumi.alicloud.ros.StackInstanceArgs;
/// import com.pulumi.alicloud.ros.inputs.StackInstanceParameterOverrideArgs;
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
///         final var name = config.get("name").orElse("tf-example");
///         final var this = AlicloudFunctions.getAccount(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         final var default = RosFunctions.getRegions(GetRegionsArgs.builder()
///             .build());
///
///         var defaultStackGroup = new StackGroup("defaultStackGroup", StackGroupArgs.builder()
///             .stackGroupName(name)
///             .templateBody("{\"ROSTemplateFormatVersion\":\"2015-09-01\", \"Parameters\": {\"VpcName\": {\"Type\": \"String\"},\"InstanceType\": {\"Type\": \"String\"}}}")
///             .description("test for stack groups")
///             .parameters(
///                 StackGroupParameterArgs.builder()
///                     .parameterKey("VpcName")
///                     .parameterValue("VpcName")
///                     .build(),
///                 StackGroupParameterArgs.builder()
///                     .parameterKey("InstanceType")
///                     .parameterValue("InstanceType")
///                     .build())
///             .build());
///
///         var example = new StackInstance("example", StackInstanceArgs.builder()
///             .stackGroupName(defaultStackGroup.stackGroupName())
///             .stackInstanceAccountId(this_.id())
///             .stackInstanceRegionId(default_.regions()[0].regionId())
///             .operationPreferences("{\"FailureToleranceCount\": 1, \"MaxConcurrentCount\": 2}")
///             .timeoutInMinutes("60")
///             .operationDescription("tf-example")
///             .retainStacks(true)
///             .parameterOverrides(StackInstanceParameterOverrideArgs.builder()
///                 .parameterValue("VpcName")
///                 .parameterKey("VpcName")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: tf-example
/// resources:
///   defaultStackGroup:
///     type: alicloud:ros:StackGroup
///     name: default
///     properties:
///       stackGroupName: ${name}
///       templateBody: '{"ROSTemplateFormatVersion":"2015-09-01", "Parameters": {"VpcName": {"Type": "String"},"InstanceType": {"Type": "String"}}}'
///       description: test for stack groups
///       parameters:
///         - parameterKey: VpcName
///           parameterValue: VpcName
///         - parameterKey: InstanceType
///           parameterValue: InstanceType
///   example:
///     type: alicloud:ros:StackInstance
///     properties:
///       stackGroupName: ${defaultStackGroup.stackGroupName}
///       stackInstanceAccountId: ${this.id}
///       stackInstanceRegionId: ${default.regions[0].regionId}
///       operationPreferences: '{"FailureToleranceCount": 1, "MaxConcurrentCount": 2}'
///       timeoutInMinutes: '60'
///       operationDescription: tf-example
///       retainStacks: 'true'
///       parameterOverrides:
///         - parameterValue: VpcName
///           parameterKey: VpcName
/// variables:
///   this:
///     fn::invoke:
///       function: alicloud:getAccount
///       arguments: {}
///   default:
///     fn::invoke:
///       function: alicloud:ros:getRegions
///       arguments: {}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// ROS Stack Instance can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ros/stackInstance:StackInstance example <stack_group_name>:<stack_instance_account_id>:<stack_instance_region_id>
/// ```
class StackInstance extends pulumi.CustomResource {
  /// The operation description.
  late final pulumi.Output<String?> operationDescription;

  /// The operation preferences. The operation settings. The following fields are supported:
  /// * `FailureToleranceCount` The maximum number of stack group operation failures that can occur. In a stack group operation, if the total number of failures does not exceed the FailureToleranceCount value, the operation succeeds. Otherwise, the operation fails. If the FailureToleranceCount parameter is not specified, the default value 0 is used. You cannot specify both FailureToleranceCount and FailureTolerancePercentage. Valid values: `0` to `20`.
  /// * `FailureTolerancePercentage`: The percentage of stack group operation failures that can occur. In a stack group operation, if the percentage of failures does not exceed the FailureTolerancePercentage value, the operation succeeds. Otherwise, the operation fails. You cannot specify both FailureToleranceCount and FailureTolerancePercentage. Valid values: `0` to `100`.
  /// * `MaxConcurrentCount`: The maximum number of accounts within which to perform this operation at one time. You cannot specify both MaxConcurrentCount and MaxConcurrentPercentage. Valid values: `1` to `20`.
  /// * `MaxConcurrentPercentage`: The maximum percentage of accounts within which to perform this operation at one time. You cannot specify both MaxConcurrentCount and MaxConcurrentPercentage. Valid values: `1` to `100`
  late final pulumi.Output<String?> operationPreferences;

  /// ParameterOverrides. See the following `Block parameter_overrides`.
  late final pulumi.Output<List<Map<String, dynamic>>?> parameterOverrides;

  /// Specifies whether to retain the stack corresponding to the stack instance.Default value `false`. **NOTE:** When `retain_stacks` is `true`, the stack is retained. If the stack is retained, the corresponding stack is not deleted when the stack instance is deleted from the stack group.
  late final pulumi.Output<bool?> retainStacks;

  /// The name of the stack group.
  late final pulumi.Output<String> stackGroupName;

  /// The account to which the stack instance belongs.
  late final pulumi.Output<String> stackInstanceAccountId;

  /// The region of the stack instance.
  late final pulumi.Output<String> stackInstanceRegionId;

  /// The status of the stack instance. Valid values: `CURRENT` or `OUTDATED`.
  /// * `CURRENT`: The stack corresponding to the stack instance is up to date with the stack group.
  /// * `OUTDATED`: The stack corresponding to the stack instance is not up to date with the stack group. The `OUTDATED` state has the following possible causes:
  /// * When the CreateStackInstances operation is called to create stack instances, the corresponding stacks fail to be created.
  /// * When the UpdateStackInstances or UpdateStackGroup operation is called to update stack instances, the corresponding stacks fail to be updated, or only some of the stack instances are updated.
  /// * The create or update operation is not complete.
  late final pulumi.Output<String> status;

  /// The timeout period that is specified for the stack creation request. Default value: `60`. Unit: `minutes`.
  late final pulumi.Output<String?> timeoutInMinutes;

  /// Creates a new [StackInstance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [StackInstance]. {@macro pulumi_ros_stack_instance_stack_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  StackInstance(
    String name, {
    StackInstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:ros/stackInstance:StackInstance',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    operationDescription = registerOutput<String?>('operationDescription');
    operationPreferences = registerOutput<String?>('operationPreferences');
    parameterOverrides = registerOutput<List<Map<String, dynamic>>?>(
      'parameterOverrides',
    );
    retainStacks = registerOutput<bool?>('retainStacks');
    stackGroupName = registerOutput<String>('stackGroupName');
    stackInstanceAccountId = registerOutput<String>('stackInstanceAccountId');
    stackInstanceRegionId = registerOutput<String>('stackInstanceRegionId');
    status = registerOutput<String>('status');
    timeoutInMinutes = registerOutput<String?>('timeoutInMinutes');
  }

  /// Gets an existing [StackInstance] resource's state with the given [name] and [id].
  static StackInstance get(
    String name,
    pulumi.Input<String> id, {
    StackInstanceState? state,
  }) {
    return StackInstance._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  StackInstance._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:ros/stackInstance:StackInstance',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    operationDescription = registerOutput<String?>('operationDescription');
    operationPreferences = registerOutput<String?>('operationPreferences');
    parameterOverrides = registerOutput<List<Map<String, dynamic>>?>(
      'parameterOverrides',
    );
    retainStacks = registerOutput<bool?>('retainStacks');
    stackGroupName = registerOutput<String>('stackGroupName');
    stackInstanceAccountId = registerOutput<String>('stackInstanceAccountId');
    stackInstanceRegionId = registerOutput<String>('stackInstanceRegionId');
    status = registerOutput<String>('status');
    timeoutInMinutes = registerOutput<String?>('timeoutInMinutes');
  }
}
