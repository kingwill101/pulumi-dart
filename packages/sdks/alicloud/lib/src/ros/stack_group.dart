import 'package:pulumi/pulumi.dart' as pulumi;
import 'stack_group_args.dart';
import 'stack_group_auto_deployment.dart';
import 'stack_group_state.dart';

/// Provides a ROS Stack Group resource.
///
/// Resource stack Group.
///
/// For information about ROS Stack Group and how to use it, see [What is Stack Group](https://www.alibabacloud.com/help/en/doc-detail/151333.htm).
///
/// &gt; **NOTE:** Available since v1.107.0.
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
/// const example = new alicloud.ros.StackGroup("example", {
///     stackGroupName: "example_value",
///     templateBody: `    {
///     \\t\\"ROSTemplateFormatVersion\\": \\"2015-09-01\\"
///     }
/// `,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.ros.StackGroup("example",
///     stack_group_name="example_value",
///     template_body="""    {
///     \t\"ROSTemplateFormatVersion\": \"2015-09-01\"
///     }
/// """)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new AliCloud.Ros.StackGroup("example", new()
///     {
///         StackGroupName = "example_value",
///         TemplateBody = @"    {
///     \t\""ROSTemplateFormatVersion\"": \""2015-09-01\""
///     }
/// ",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ros"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ros.NewStackGroup(ctx, "example", &ros.StackGroupArgs{
/// 			StackGroupName: pulumi.String("example_value"),
/// 			TemplateBody:   pulumi.String("    {\n    \\t\\\"ROSTemplateFormatVersion\\\": \\\"2015-09-01\\\"\n    }\n"),
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
/// import com.pulumi.alicloud.ros.StackGroup;
/// import com.pulumi.alicloud.ros.StackGroupArgs;
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
///         var example = new StackGroup("example", StackGroupArgs.builder()
///             .stackGroupName("example_value")
///             .templateBody("""
///     {
///     \t\"ROSTemplateFormatVersion\": \"2015-09-01\"
///     }
///             """)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: alicloud:ros:StackGroup
///     properties:
///       stackGroupName: example_value
///       templateBody: |2
///             {
///             \t\"ROSTemplateFormatVersion\": \"2015-09-01\"
///             }
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// ROS Stack Group can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ros/stackGroup:StackGroup example <id>
/// ```
class StackGroup extends pulumi.CustomResource {
  /// The name of the RAM role that you specify for the administrator account in ROS when you create the self-managed stack group. If you do not specify this parameter, the default value AliyunROSStackGroupAdministrationRole is used. You can use the administrator role in ROS to assume the execution role AliyunROSStackGroupExecutionRole to perform operations on the stacks that correspond to stack instances in the stack group.
  late final pulumi.Output<String> administrationRoleName;

  /// Automatic deployment setting information. Description
  /// This parameter is required only if the PermissionModel is SERVICE_MANAGED. See `auto_deployment` below.
  late final pulumi.Output<StackGroupAutoDeployment?> autoDeployment;

  /// The list of resource stack group options. The maximum length is 1.
  late final pulumi.Output<List<String>?> capabilities;

  /// The description of the stack group.
  late final pulumi.Output<String?> description;

  /// The name of the RAM role that you specify for the execution account when you create the self-managed stack group. You can use the administrator role AliyunROSStackGroupAdministrationRole to assume the execution role. If you do not specify this parameter, the default value AliyunROSStackGroupExecutionRole is used. You can use this role in ROS to perform operations on the stacks that correspond to stack instances in the stack group.
  late final pulumi.Output<String> executionRoleName;

  /// Parameters See `parameters` below.
  late final pulumi.Output<List<Map<String, dynamic>>?> parameters;

  /// The permission model.
  late final pulumi.Output<String> permissionModel;

  /// The ID of the resource group.
  late final pulumi.Output<String> resourceGroupId;

  /// The ID of stack group.
  late final pulumi.Output<String> stackGroupId;

  /// StackGroupName
  late final pulumi.Output<String> stackGroupName;

  /// The status of the stack group.
  late final pulumi.Output<String> status;

  /// The label of the resource stack group.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The template body.
  late final pulumi.Output<String> templateBody;

  /// The ID of the template.
  late final pulumi.Output<String?> templateId;

  /// The location of the file that contains the template body. The URL must point to the template (1 to 524,288 bytes) located in the HTTP Web server (HTTP or HTTPS) or Alibaba Cloud OSS bucket. The URL of the OSS bucket, such as oss:// ros/template/demo or oss:// ros/template/demo? RegionId = cn-hangzhou. If the OSS region is not specified, the RegionId of the interface is the same by default.
  ///
  /// &gt; **NOTE:** You must and can specify only one of the parameters of TemplateBody, TemplateURL, or TemplateId.
  late final pulumi.Output<String?> templateUrl;

  /// The version of the template.
  late final pulumi.Output<String?> templateVersion;

  /// Creates a new [StackGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [StackGroup]. {@macro pulumi_ros_stack_group_stack_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  StackGroup(
    String name, {
    StackGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:ros/stackGroup:StackGroup',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    administrationRoleName = registerOutput<String>('administrationRoleName');
    autoDeployment = registerOutput<StackGroupAutoDeployment?>(
      'autoDeployment',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return StackGroupAutoDeployment.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    capabilities = registerOutput<List<String>?>('capabilities');
    description = registerOutput<String?>('description');
    executionRoleName = registerOutput<String>('executionRoleName');
    parameters = registerOutput<List<Map<String, dynamic>>?>('parameters');
    permissionModel = registerOutput<String>('permissionModel');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    stackGroupId = registerOutput<String>('stackGroupId');
    stackGroupName = registerOutput<String>('stackGroupName');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    templateBody = registerOutput<String>('templateBody');
    templateId = registerOutput<String?>('templateId');
    templateUrl = registerOutput<String?>('templateUrl');
    templateVersion = registerOutput<String?>('templateVersion');
  }

  /// Gets an existing [StackGroup] resource's state with the given [name] and [id].
  static StackGroup get(
    String name,
    pulumi.Input<String> id, {
    StackGroupState? state,
  }) {
    return StackGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  StackGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:ros/stackGroup:StackGroup',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    administrationRoleName = registerOutput<String>('administrationRoleName');
    autoDeployment = registerOutput<StackGroupAutoDeployment?>(
      'autoDeployment',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return StackGroupAutoDeployment.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    capabilities = registerOutput<List<String>?>('capabilities');
    description = registerOutput<String?>('description');
    executionRoleName = registerOutput<String>('executionRoleName');
    parameters = registerOutput<List<Map<String, dynamic>>?>('parameters');
    permissionModel = registerOutput<String>('permissionModel');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    stackGroupId = registerOutput<String>('stackGroupId');
    stackGroupName = registerOutput<String>('stackGroupName');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    templateBody = registerOutput<String>('templateBody');
    templateId = registerOutput<String?>('templateId');
    templateUrl = registerOutput<String?>('templateUrl');
    templateVersion = registerOutput<String?>('templateVersion');
  }
}
