import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_args.dart';
import 'project_state.dart';

/// Provides a SLS Project resource.
///
/// For information about SLS Project and how to use it, see [What is Project](https://www.alibabacloud.com/help/en/sls/developer-reference/api-createproject).
///
/// &gt; **NOTE:** Available since v1.9.5.
///
/// ## Example Usage
///
/// Basic Usage
///
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
/// import * as random from "@pulumi/random";
///
/// const _default = new random.index.Integer("default", {
///     max: 99999,
///     min: 10000,
/// });
/// const example = new alicloud.log.Project("example", {
///     projectName: `terraform-example-${_default.result}`,
///     description: "terraform-example",
///     tags: {
///         Created: "TF",
///         For: "example",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// default = random.index.Integer("default",
///     max=99999,
///     min=10000)
/// example = alicloud.log.Project("example",
///     project_name=f"terraform-example-{default['result']}",
///     description="terraform-example",
///     tags={
///         "Created": "TF",
///         "For": "example",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Random = Pulumi.Random;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Random.Index.Integer("default", new()
///     {
///         Max = 99999,
///         Min = 10000,
///     });
///
///     var example = new AliCloud.Log.Project("example", new()
///     {
///         ProjectName = $"terraform-example-{@default.Result}",
///         Description = "terraform-example",
///         Tags =
///         {
///             { "Created", "TF" },
///             { "For", "example" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/log"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Max: 99999,
/// 			Min: 10000,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = log.NewProject(ctx, "example", &log.ProjectArgs{
/// 			ProjectName: pulumi.Sprintf("terraform-example-%v", _default.Result),
/// 			Description: pulumi.String("terraform-example"),
/// 			Tags: pulumi.StringMap{
/// 				"Created": pulumi.String("TF"),
/// 				"For":     pulumi.String("example"),
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
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.log.Project;
/// import com.pulumi.alicloud.log.ProjectArgs;
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
///         var default_ = new Integer("default", IntegerArgs.builder()
///             .max(99999)
///             .min(10000)
///             .build());
///
///         var example = new Project("example", ProjectArgs.builder()
///             .projectName(String.format("terraform-example-%s", default_.result()))
///             .description("terraform-example")
///             .tags(Map.ofEntries(
///                 Map.entry("Created", "TF"),
///                 Map.entry("For", "example")
///             ))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: random:Integer
///     properties:
///       max: 99999
///       min: 10000
///   example:
///     type: alicloud:log:Project
///     properties:
///       projectName: terraform-example-${default.result}
///       description: terraform-example
///       tags:
///         Created: TF
///         For: example
/// ```
///
///
/// Project With Policy Usage
///
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
/// import * as random from "@pulumi/random";
///
/// const _default = new random.index.Integer("default", {
///     max: 99999,
///     min: 10000,
/// });
/// const examplePolicy = new alicloud.log.Project("example_policy", {
///     projectName: `terraform-example-${_default.result}`,
///     description: "terraform-example",
///     policy: `{
///   \\"Statement\\": [
///     {
///       \\"Action\\": [
///         \\"log:PostLogStoreLogs\\"
///       ],
///       \\"Condition\\": {
///         \\"StringNotLike\\": {
///           \\"acs:SourceVpc\\": [
///             \\"vpc-*\\"
///           ]
///         }
///       },
///       \\"Effect\\": \\"Deny\\",
///       \\"Resource\\": \\"acs:log:*:*:project/tf-log/*\\"
///     }
///   ],
///   \\"Version\\": \\"1\\"
/// }
/// `,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// default = random.index.Integer("default",
///     max=99999,
///     min=10000)
/// example_policy = alicloud.log.Project("example_policy",
///     project_name=f"terraform-example-{default['result']}",
///     description="terraform-example",
///     policy="""{
///   \"Statement\": [
///     {
///       \"Action\": [
///         \"log:PostLogStoreLogs\"
///       ],
///       \"Condition\": {
///         \"StringNotLike\": {
///           \"acs:SourceVpc\": [
///             \"vpc-*\"
///           ]
///         }
///       },
///       \"Effect\": \"Deny\",
///       \"Resource\": \"acs:log:*:*:project/tf-log/*\"
///     }
///   ],
///   \"Version\": \"1\"
/// }
/// """)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Random = Pulumi.Random;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Random.Index.Integer("default", new()
///     {
///         Max = 99999,
///         Min = 10000,
///     });
///
///     var examplePolicy = new AliCloud.Log.Project("example_policy", new()
///     {
///         ProjectName = $"terraform-example-{@default.Result}",
///         Description = "terraform-example",
///         Policy = @"{
///   \""Statement\"": [
///     {
///       \""Action\"": [
///         \""log:PostLogStoreLogs\""
///       ],
///       \""Condition\"": {
///         \""StringNotLike\"": {
///           \""acs:SourceVpc\"": [
///             \""vpc-*\""
///           ]
///         }
///       },
///       \""Effect\"": \""Deny\"",
///       \""Resource\"": \""acs:log:*:*:project/tf-log/*\""
///     }
///   ],
///   \""Version\"": \""1\""
/// }
/// ",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/log"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Max: 99999,
/// 			Min: 10000,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = log.NewProject(ctx, "example_policy", &log.ProjectArgs{
/// 			ProjectName: pulumi.Sprintf("terraform-example-%v", _default.Result),
/// 			Description: pulumi.String("terraform-example"),
/// 			Policy: pulumi.String(`{
///   \"Statement\": [
///     {
///       \"Action\": [
///         \"log:PostLogStoreLogs\"
///       ],
///       \"Condition\": {
///         \"StringNotLike\": {
///           \"acs:SourceVpc\": [
///             \"vpc-*\"
///           ]
///         }
///       },
///       \"Effect\": \"Deny\",
///       \"Resource\": \"acs:log:*:*:project/tf-log/*\"
///     }
///   ],
///   \"Version\": \"1\"
/// }
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
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.log.Project;
/// import com.pulumi.alicloud.log.ProjectArgs;
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
///         var default_ = new Integer("default", IntegerArgs.builder()
///             .max(99999)
///             .min(10000)
///             .build());
///
///         var examplePolicy = new Project("examplePolicy", ProjectArgs.builder()
///             .projectName(String.format("terraform-example-%s", default_.result()))
///             .description("terraform-example")
///             .policy("""
/// {
///   \"Statement\": [
///     {
///       \"Action\": [
///         \"log:PostLogStoreLogs\"
///       ],
///       \"Condition\": {
///         \"StringNotLike\": {
///           \"acs:SourceVpc\": [
///             \"vpc-*\"
///           ]
///         }
///       },
///       \"Effect\": \"Deny\",
///       \"Resource\": \"acs:log:*:*:project/tf-log/*\"
///     }
///   ],
///   \"Version\": \"1\"
/// }
///             """)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: random:Integer
///     properties:
///       max: 99999
///       min: 10000
///   examplePolicy:
///     type: alicloud:log:Project
///     name: example_policy
///     properties:
///       projectName: terraform-example-${default.result}
///       description: terraform-example
///       policy: |
///         {
///           \"Statement\": [
///             {
///               \"Action\": [
///                 \"log:PostLogStoreLogs\"
///               ],
///               \"Condition\": {
///                 \"StringNotLike\": {
///                   \"acs:SourceVpc\": [
///                     \"vpc-*\"
///                   ]
///                 }
///               },
///               \"Effect\": \"Deny\",
///               \"Resource\": \"acs:log:*:*:project/tf-log/*\"
///             }
///           ],
///           \"Version\": \"1\"
///         }
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Module Support
///
/// You can use the existing sls module
/// to create SLS project, store and store index one-click, like ECS instances.
///
/// ## Import
///
/// SLS Project can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:log/project:Project example <id>
/// ```
class Project extends pulumi.CustomResource {
  /// CreateTime.
  late final pulumi.Output<String> createTime;
  /// Description.
  late final pulumi.Output<String?> description;
  /// . Field 'name' has been deprecated from provider version 1.223.0. New field 'project_name' instead.
  late final pulumi.Output<String> name;
  /// Log project policy, used to set a policy for a project.
  late final pulumi.Output<String?> policy;
  /// The name of the log project. It is the only in one Alicloud account. The project name is globally unique in Alibaba Cloud and cannot be modified after it is created. The naming rules are as follows:
  /// - The project name must be globally unique.
  /// - The name can contain only lowercase letters, digits, and hyphens (-).
  /// - It must start and end with a lowercase letter or number.
  /// - The value contains 3 to 63 characters.
  late final pulumi.Output<String> projectName;
  /// The ID of the resource group.
  late final pulumi.Output<String> resourceGroupId;
  /// The status of the resource.
  late final pulumi.Output<String> status;
  /// Tag.
  ///
  /// The following arguments will be discarded. Please use new fields as soon as possible:
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [Project].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Project]. {@macro pulumi_log_project_project_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Project(
    String name, {
    ProjectArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:log/project:Project',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    policy = registerOutput<String?>('policy');
    projectName = registerOutput<String>('projectName');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [Project] resource's state with the given [name] and [id].
  static Project get(
    String name,
    pulumi.Input<String> id, {
    ProjectState? state,
  }) {
    return Project._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Project._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:log/project:Project',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    policy = registerOutput<String?>('policy');
    projectName = registerOutput<String>('projectName');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
