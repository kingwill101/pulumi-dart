import 'package:pulumi/pulumi.dart' as pulumi;
import 'monitor_group_args.dart';
import 'monitor_group_state.dart';

/// Provides a Cloud Monitor Service Monitor Group resource.
///
/// For information about Cloud Monitor Service Monitor Group and how to use it, see [What is Monitor Group](https://www.alibabacloud.com/help/en/cloudmonitor/latest/createmonitorgroup).
///
/// > **NOTE:** Available since v1.113.0.
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
/// const example = new alicloud.cms.MonitorGroup("example", {monitorGroupName: "tf-example-accmonitorgroup"});
/// const default2 = new alicloud.cms.MonitorGroup("default2", {
///     contactGroups: ["your_contact_groups"],
///     resourceGroupId: "your_resource_group_id",
///     resourceGroupName: "resource_group_name",
///     tags: {
///         Created: "TF",
///         For: "Acceptance-example",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.cms.MonitorGroup("example", monitor_group_name="tf-example-accmonitorgroup")
/// default2 = alicloud.cms.MonitorGroup("default2",
///     contact_groups=["your_contact_groups"],
///     resource_group_id="your_resource_group_id",
///     resource_group_name="resource_group_name",
///     tags={
///         "Created": "TF",
///         "For": "Acceptance-example",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new AliCloud.Cms.MonitorGroup("example", new()
///     {
///         MonitorGroupName = "tf-example-accmonitorgroup",
///     });
///
///     var default2 = new AliCloud.Cms.MonitorGroup("default2", new()
///     {
///         ContactGroups = new[]
///         {
///             "your_contact_groups",
///         },
///         ResourceGroupId = "your_resource_group_id",
///         ResourceGroupName = "resource_group_name",
///         Tags =
///         {
///             { "Created", "TF" },
///             { "For", "Acceptance-example" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cms"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cms.NewMonitorGroup(ctx, "example", &cms.MonitorGroupArgs{
/// 			MonitorGroupName: pulumi.String("tf-example-accmonitorgroup"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cms.NewMonitorGroup(ctx, "default2", &cms.MonitorGroupArgs{
/// 			ContactGroups: pulumi.StringArray{
/// 				pulumi.String("your_contact_groups"),
/// 			},
/// 			ResourceGroupId:   pulumi.String("your_resource_group_id"),
/// 			ResourceGroupName: pulumi.String("resource_group_name"),
/// 			Tags: pulumi.StringMap{
/// 				"Created": pulumi.String("TF"),
/// 				"For":     pulumi.String("Acceptance-example"),
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
/// import com.pulumi.alicloud.cms.MonitorGroup;
/// import com.pulumi.alicloud.cms.MonitorGroupArgs;
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
///         var example = new MonitorGroup("example", MonitorGroupArgs.builder()
///             .monitorGroupName("tf-example-accmonitorgroup")
///             .build());
///
///         var default2 = new MonitorGroup("default2", MonitorGroupArgs.builder()
///             .contactGroups("your_contact_groups")
///             .resourceGroupId("your_resource_group_id")
///             .resourceGroupName("resource_group_name")
///             .tags(Map.ofEntries(
///                 Map.entry("Created", "TF"),
///                 Map.entry("For", "Acceptance-example")
///             ))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: alicloud:cms:MonitorGroup
///     properties:
///       monitorGroupName: tf-example-accmonitorgroup
///   default2:
///     type: alicloud:cms:MonitorGroup
///     properties:
///       contactGroups:
///         - your_contact_groups
///       resourceGroupId: your_resource_group_id
///       resourceGroupName: resource_group_name
///       tags:
///         Created: TF
///         For: Acceptance-example
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Cloud Monitor Service Monitor Group can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cms/monitorGroup:MonitorGroup example <id>
/// ```
class MonitorGroup extends pulumi.CustomResource {
  /// The alert group to which alert notifications will be sent.
  late final pulumi.Output<List<String>?> contactGroups;
  /// The name of the application group.
  late final pulumi.Output<String> monitorGroupName;
  /// The ID of the resource group.
  late final pulumi.Output<String?> resourceGroupId;
  /// The name of the resource group.
  late final pulumi.Output<String?> resourceGroupName;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [MonitorGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MonitorGroup]. {@macro pulumi_cms_monitor_group_monitor_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MonitorGroup(
    String name, {
    MonitorGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cms/monitorGroup:MonitorGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.contactGroups = registerOutput<List<String>?>('contactGroups');
    this.monitorGroupName = registerOutput<String>('monitorGroupName');
    this.resourceGroupId = registerOutput<String?>('resourceGroupId');
    this.resourceGroupName = registerOutput<String?>('resourceGroupName');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [MonitorGroup] resource's state with the given [name] and [id].
  static MonitorGroup get(
    String name,
    pulumi.Input<String> id, {
    MonitorGroupState? state,
  }) {
    return MonitorGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  MonitorGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cms/monitorGroup:MonitorGroup',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.contactGroups = registerOutput<List<String>?>('contactGroups');
    this.monitorGroupName = registerOutput<String>('monitorGroupName');
    this.resourceGroupId = registerOutput<String?>('resourceGroupId');
    this.resourceGroupName = registerOutput<String?>('resourceGroupName');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }
}
