import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_args.dart';
import 'project_ip_white_list.dart';
import 'project_properties.dart';
import 'project_security_properties.dart';
import 'project_state.dart';

/// Provides a Max Compute Project resource.
///
/// MaxCompute project .
///
/// For information about Max Compute Project and how to use it, see [What is Project](https://www.alibabacloud.com/help/en/maxcompute/user-guide/api-maxcompute-2022-01-04-createproject).
///
/// &gt; **NOTE:** Available since v1.77.0.
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
/// const name = config.get("name") || "tf_example";
/// const _default = new alicloud.maxcompute.Project("default", {
///     defaultQuota: "os_PayAsYouGoQuota",
///     projectName: name,
///     comment: name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf_example"
/// default = alicloud.maxcompute.Project("default",
///     default_quota="os_PayAsYouGoQuota",
///     project_name=name,
///     comment=name)
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
///     var name = config.Get("name") ?? "tf_example";
///     var @default = new AliCloud.MaxCompute.Project("default", new()
///     {
///         DefaultQuota = "os_PayAsYouGoQuota",
///         ProjectName = name,
///         Comment = name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/maxcompute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "tf_example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_, err := maxcompute.NewProject(ctx, "default", &maxcompute.ProjectArgs{
/// 			DefaultQuota: pulumi.String("os_PayAsYouGoQuota"),
/// 			ProjectName:  pulumi.String(name),
/// 			Comment:      pulumi.String(name),
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
/// import com.pulumi.alicloud.maxcompute.Project;
/// import com.pulumi.alicloud.maxcompute.ProjectArgs;
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
///         final var name = config.get("name").orElse("tf_example");
///         var default_ = new Project("default", ProjectArgs.builder()
///             .defaultQuota("os_PayAsYouGoQuota")
///             .projectName(name)
///             .comment(name)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: tf_example
/// resources:
///   default:
///     type: alicloud:maxcompute:Project
///     properties:
///       defaultQuota: os_PayAsYouGoQuota
///       projectName: ${name}
///       comment: ${name}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Max Compute Project can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:maxcompute/project:Project example <id>
/// ```
class Project extends pulumi.CustomResource {
  /// Project description information. The length is 1 to 256 English or Chinese characters. The default value is blank.
  late final pulumi.Output<String?> comment;

  /// Represents the creation time of the project
  late final pulumi.Output<String> createTime;

  /// Used to implement computing resource allocation. Valid values: subQuota Nickname
  /// If the calculation Quota is not specified, the default Quota resource will be consumed by jobs initiated by the project. For more information about computing resource usage, see [Computing Resource Usage](https://www.alibabacloud.com/help/en/maxcompute/user-guide/use-of-computing-resources).
  late final pulumi.Output<String?> defaultQuota;

  /// IP whitelist See `ip_white_list` below.
  late final pulumi.Output<ProjectIpWhiteList?> ipWhiteList;

  /// Whether to logically delete. Default value: true. Value: (ture/false),
  ///
  /// &gt; **NOTE:** -- ture: In this case, the project status will be changed to' deleting' and completely deleted after 14 days. -- false: delete immediately, that is, completely deleted and permanently irrecoverable.
  late final pulumi.Output<String?> isLogical;

  /// Project owner
  late final pulumi.Output<String> owner;
  late final pulumi.Output<String?> productType;

  /// The name begins with a letter, containing letters, digits, and underscores (_). It can be 3 to 28 characters in length and is globally unique.
  late final pulumi.Output<String> projectName;

  /// Project base attributes See `properties` below.
  late final pulumi.Output<ProjectProperties> properties;

  /// The region ID of the resource
  late final pulumi.Output<String> regionId;

  /// Security-related attributes See `security_properties` below.
  late final pulumi.Output<ProjectSecurityProperties> securityProperties;

  /// The project status. Default value: AVAILABLE. Value: (AVAILABLE/READONLY/FROZEN/DELETING)
  late final pulumi.Output<String> status;

  /// The tag of the resource
  late final pulumi.Output<Map<String, String>?> tags;

  /// Indicates whether data storage by schema is supported. Valid values:
  late final pulumi.Output<bool> threeTierModel;

  /// Project type
  late final pulumi.Output<String> type;

  /// Creates a new [Project].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Project]. {@macro pulumi_maxcompute_project_project_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Project(
    String name, {
    ProjectArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:maxcompute/project:Project',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    comment = registerOutput<String?>('comment');
    createTime = registerOutput<String>('createTime');
    defaultQuota = registerOutput<String?>('defaultQuota');
    ipWhiteList = registerOutput<ProjectIpWhiteList?>('ipWhiteList');
    isLogical = registerOutput<String?>('isLogical');
    owner = registerOutput<String>('owner');
    productType = registerOutput<String?>('productType');
    projectName = registerOutput<String>('projectName');
    properties = registerOutput<ProjectProperties>('properties');
    regionId = registerOutput<String>('regionId');
    securityProperties = registerOutput<ProjectSecurityProperties>(
      'securityProperties',
    );
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    threeTierModel = registerOutput<bool>('threeTierModel');
    type = registerOutput<String>('type');
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
         'alicloud:maxcompute/project:Project',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    comment = registerOutput<String?>('comment');
    createTime = registerOutput<String>('createTime');
    defaultQuota = registerOutput<String?>('defaultQuota');
    ipWhiteList = registerOutput<ProjectIpWhiteList?>('ipWhiteList');
    isLogical = registerOutput<String?>('isLogical');
    owner = registerOutput<String>('owner');
    productType = registerOutput<String?>('productType');
    projectName = registerOutput<String>('projectName');
    properties = registerOutput<ProjectProperties>('properties');
    regionId = registerOutput<String>('regionId');
    securityProperties = registerOutput<ProjectSecurityProperties>(
      'securityProperties',
    );
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    threeTierModel = registerOutput<bool>('threeTierModel');
    type = registerOutput<String>('type');
  }
}
