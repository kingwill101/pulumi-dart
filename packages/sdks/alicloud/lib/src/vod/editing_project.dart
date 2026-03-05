import 'package:pulumi/pulumi.dart' as pulumi;
import 'editing_project_args.dart';
import 'editing_project_state.dart';

/// Provides a VOD Editing Project resource.
///
/// For information about VOD Editing Project and how to use it, see [What is Editing Project](https://www.alibabacloud.com/help/en/apsaravideo-for-vod/latest/addeditingproject#doc-api-vod-AddEditingProject).
///
/// &gt; **NOTE:** Available since v1.187.0.
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
/// const name = config.get("name") || "tfexample";
/// const _default = alicloud.getRegions({
///     current: true,
/// });
/// const example = new alicloud.vod.EditingProject("example", {
///     editingProjectName: name,
///     title: name,
///     timeline: `  {
///     \\"VideoTracks\\":[
///       {
///         \\"VideoTrackClips\\":[
///           {
///           \\"MediaId\\":\\"0c60e6f02dae71edbfaa472190a90102\\",
///           \\"In\\":2811
///           }
///         ]
///       }
///     ]
///   }
/// `,
///     coverUrl: "https://demo.aliyundoc.com/6AB4D0E1E1C74468883516C2349D1FC2-6-2.png",
///     division: _default.then(_default => _default.regions?.[0]?.id),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tfexample"
/// default = alicloud.get_regions(current=True)
/// example = alicloud.vod.EditingProject("example",
///     editing_project_name=name,
///     title=name,
///     timeline="""  {
///     \"VideoTracks\":[
///       {
///         \"VideoTrackClips\":[
///           {
///           \"MediaId\":\"0c60e6f02dae71edbfaa472190a90102\",
///           \"In\":2811
///           }
///         ]
///       }
///     ]
///   }
/// """,
///     cover_url="https://demo.aliyundoc.com/6AB4D0E1E1C74468883516C2349D1FC2-6-2.png",
///     division=default.regions[0].id)
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
///     var name = config.Get("name") ?? "tfexample";
///     var @default = AliCloud.GetRegions.Invoke(new()
///     {
///         Current = true,
///     });
///
///     var example = new AliCloud.Vod.EditingProject("example", new()
///     {
///         EditingProjectName = name,
///         Title = name,
///         Timeline = @"  {
///     \""VideoTracks\"":[
///       {
///         \""VideoTrackClips\"":[
///           {
///           \""MediaId\"":\""0c60e6f02dae71edbfaa472190a90102\"",
///           \""In\"":2811
///           }
///         ]
///       }
///     ]
///   }
/// ",
///         CoverUrl = "https://demo.aliyundoc.com/6AB4D0E1E1C74468883516C2349D1FC2-6-2.png",
///         Division = @default.Apply(@default => @default.Apply(getRegionsResult => getRegionsResult.Regions[0]?.Id)),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vod"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "tfexample"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := alicloud.GetRegions(ctx, &alicloud.GetRegionsArgs{
/// 			Current: pulumi.BoolRef(true),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vod.NewEditingProject(ctx, "example", &vod.EditingProjectArgs{
/// 			EditingProjectName: pulumi.String(name),
/// 			Title:              pulumi.String(name),
/// 			Timeline: pulumi.String(`  {
///     \"VideoTracks\":[
///       {
///         \"VideoTrackClips\":[
///           {
///           \"MediaId\":\"0c60e6f02dae71edbfaa472190a90102\",
///           \"In\":2811
///           }
///         ]
///       }
///     ]
///   }
/// `),
/// 			CoverUrl: pulumi.String("https://demo.aliyundoc.com/6AB4D0E1E1C74468883516C2349D1FC2-6-2.png"),
/// 			Division: pulumi.String(_default.Regions[0].Id),
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
/// import com.pulumi.alicloud.inputs.GetRegionsArgs;
/// import com.pulumi.alicloud.vod.EditingProject;
/// import com.pulumi.alicloud.vod.EditingProjectArgs;
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
///         final var name = config.get("name").orElse("tfexample");
///         final var default = AlicloudFunctions.getRegions(GetRegionsArgs.builder()
///             .current(true)
///             .build());
///
///         var example = new EditingProject("example", EditingProjectArgs.builder()
///             .editingProjectName(name)
///             .title(name)
///             .timeline("""
///   {
///     \"VideoTracks\":[
///       {
///         \"VideoTrackClips\":[
///           {
///           \"MediaId\":\"0c60e6f02dae71edbfaa472190a90102\",
///           \"In\":2811
///           }
///         ]
///       }
///     ]
///   }
///             """)
///             .coverUrl("https://demo.aliyundoc.com/6AB4D0E1E1C74468883516C2349D1FC2-6-2.png")
///             .division(default_.regions()[0].id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: tfexample
/// resources:
///   example:
///     type: alicloud:vod:EditingProject
///     properties:
///       editingProjectName: ${name}
///       title: ${name}
///       timeline: |2
///           {
///             \"VideoTracks\":[
///               {
///                 \"VideoTrackClips\":[
///                   {
///                   \"MediaId\":\"0c60e6f02dae71edbfaa472190a90102\",
///                   \"In\":2811
///                   }
///                 ]
///               }
///             ]
///           }
///       coverUrl: https://demo.aliyundoc.com/6AB4D0E1E1C74468883516C2349D1FC2-6-2.png
///       division: ${default.regions[0].id}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getRegions
///       arguments:
///         current: true
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// VOD Editing Project can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:vod/editingProject:EditingProject example <id>
/// ```
class EditingProject extends pulumi.CustomResource {
  /// The thumbnail URL of the online editing project. If you do not specify this parameter and the video track in the timeline has mezzanine files, the thumbnail of the first mezzanine file in the timeline is used.
  late final pulumi.Output<String?> coverUrl;
  /// The region where you want to create the online editing project.
  late final pulumi.Output<String?> division;
  /// The description of the online editing project.
  late final pulumi.Output<String> editingProjectName;
  /// The Status of the resource.
  late final pulumi.Output<String> status;
  /// The timeline of the online editing project, in JSON format. For more information about the structure, see [Timeline](https://www.alibabacloud.com/help/en/apsaravideo-for-vod/latest/basic-structures). If you do not specify this parameter, an empty timeline is created and the duration of the online editing project is zero.
  late final pulumi.Output<String> timeline;
  /// The title of the online editing project.
  late final pulumi.Output<String> title;

  /// Creates a new [EditingProject].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EditingProject]. {@macro pulumi_vod_editing_project_editing_project_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EditingProject(
    String name, {
    EditingProjectArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:vod/editingProject:EditingProject',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    coverUrl = registerOutput<String?>('coverUrl');
    division = registerOutput<String?>('division');
    editingProjectName = registerOutput<String>('editingProjectName');
    status = registerOutput<String>('status');
    timeline = registerOutput<String>('timeline');
    title = registerOutput<String>('title');
  }

  /// Gets an existing [EditingProject] resource's state with the given [name] and [id].
  static EditingProject get(
    String name,
    pulumi.Input<String> id, {
    EditingProjectState? state,
  }) {
    return EditingProject._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  EditingProject._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:vod/editingProject:EditingProject',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    coverUrl = registerOutput<String?>('coverUrl');
    division = registerOutput<String?>('division');
    editingProjectName = registerOutput<String>('editingProjectName');
    status = registerOutput<String>('status');
    timeline = registerOutput<String>('timeline');
    title = registerOutput<String>('title');
  }
}
