import 'package:pulumi/pulumi.dart' as pulumi;
import 'parameter_args.dart';

/// Provides a OOS Parameter resource.
///
/// For information about OOS Parameter and how to use it, see [What is Parameter](https://www.alibabacloud.com/help/en/doc-detail/183408.html).
///
/// > **NOTE:** Available in v1.147.0+.
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
/// const _default = alicloud.resourcemanager.getResourceGroups({});
/// const example = new alicloud.oos.Parameter("example", {
///     parameterName: "my-Parameter",
///     type: "String",
///     value: "example_value",
///     description: "example_value",
///     tags: {
///         Created: "TF",
///         For: "OosParameter",
///     },
///     resourceGroupId: _default.then(_default => _default.groups?.[0]?.id),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.resourcemanager.get_resource_groups()
/// example = alicloud.oos.Parameter("example",
///     parameter_name="my-Parameter",
///     type="String",
///     value="example_value",
///     description="example_value",
///     tags={
///         "Created": "TF",
///         "For": "OosParameter",
///     },
///     resource_group_id=default.groups[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.ResourceManager.GetResourceGroups.Invoke();
///
///     var example = new AliCloud.Oos.Parameter("example", new()
///     {
///         ParameterName = "my-Parameter",
///         Type = "String",
///         Value = "example_value",
///         Description = "example_value",
///         Tags =
///         {
///             { "Created", "TF" },
///             { "For", "OosParameter" },
///         },
///         ResourceGroupId = @default.Apply(@default => @default.Apply(getResourceGroupsResult => getResourceGroupsResult.Groups[0]?.Id)),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/oos"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := resourcemanager.GetResourceGroups(ctx, &resourcemanager.GetResourceGroupsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = oos.NewParameter(ctx, "example", &oos.ParameterArgs{
/// 			ParameterName: pulumi.String("my-Parameter"),
/// 			Type:          pulumi.String("String"),
/// 			Value:         pulumi.String("example_value"),
/// 			Description:   pulumi.String("example_value"),
/// 			Tags: pulumi.StringMap{
/// 				"Created": pulumi.String("TF"),
/// 				"For":     pulumi.String("OosParameter"),
/// 			},
/// 			ResourceGroupId: pulumi.String(_default.Groups[0].Id),
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
/// import com.pulumi.alicloud.oos.Parameter;
/// import com.pulumi.alicloud.oos.ParameterArgs;
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
///         final var default = ResourcemanagerFunctions.getResourceGroups(GetResourceGroupsArgs.builder()
///             .build());
///
///         var example = new Parameter("example", ParameterArgs.builder()
///             .parameterName("my-Parameter")
///             .type("String")
///             .value("example_value")
///             .description("example_value")
///             .tags(Map.ofEntries(
///                 Map.entry("Created", "TF"),
///                 Map.entry("For", "OosParameter")
///             ))
///             .resourceGroupId(default_.groups()[0].id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: alicloud:oos:Parameter
///     properties:
///       parameterName: my-Parameter
///       type: String
///       value: example_value
///       description: example_value
///       tags:
///         Created: TF
///         For: OosParameter
///       resourceGroupId: ${default.groups[0].id}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:resourcemanager:getResourceGroups
///       arguments: {}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// OOS Parameter can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:oos/parameter:Parameter example <parameter_name>
/// ```
class Parameter extends pulumi.CustomResource {
  /// The constraints of the common parameter. This value follows the json format. By default, this parameter is null. Valid values:
  /// * `AllowedValues`: The value that is allowed for the common parameter. It must be an array string.
  /// * `AllowedPattern`: The pattern that is allowed for the common parameter. It must be a regular expression.
  /// * `MinLength`: The minimum length of the common parameter.
  /// * `MaxLength`: The maximum length of the common parameter.
  late final pulumi.Output<String?> constraints;
  /// The description of the common parameter. The description must be `1` to `200` characters in length.
  late final pulumi.Output<String> description;
  /// The name of the common parameter. The name must be `2` to `180` characters in length, and can contain letters, digits, hyphens (-), forward slashes (/) and underscores (_). It cannot start with `ALIYUN`, `ACS`, `ALIBABA`, `ALICLOUD`, or `OOS`.
  late final pulumi.Output<String> parameterName;
  /// The ID of the Resource Group.
  late final pulumi.Output<String> resourceGroupId;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The data type of the common parameter. Valid values: `String` and `StringList`.
  late final pulumi.Output<String> type;
  /// The value of the common parameter. The value must be `1` to `4096` characters in length.
  late final pulumi.Output<String> value;

  /// Creates a new [Parameter].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Parameter]. {@macro pulumi_oos_parameter_parameter_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Parameter(
    String name, {
    ParameterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:oos/parameter:Parameter',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.constraints = registerOutput<String?>('constraints');
    this.description = registerOutput<String>('description');
    this.parameterName = registerOutput<String>('parameterName');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
    this.value = registerOutput<String>('value');
  }
}
