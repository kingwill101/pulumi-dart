import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_template_args.dart';
import 'app_template_state.dart';

/// Provides a Apsara Agile Live (IMP) App Template resource.
///
/// For information about Apsara Agile Live (IMP) App Template and how to use it, see [What is App Template](https://help.aliyun.com/document_detail/270121.html).
///
/// &gt; **NOTE:** Available in v1.137.0+.
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
/// const example = new alicloud.imp.AppTemplate("example", {
///     appTemplateName: "example_value",
///     componentLists: [
///         "component.live",
///         "component.liveRecord",
///     ],
///     integrationMode: "paasSDK",
///     scene: "business",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.imp.AppTemplate("example",
///     app_template_name="example_value",
///     component_lists=[
///         "component.live",
///         "component.liveRecord",
///     ],
///     integration_mode="paasSDK",
///     scene="business")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new AliCloud.Imp.AppTemplate("example", new()
///     {
///         AppTemplateName = "example_value",
///         ComponentLists = new[]
///         {
///             "component.live",
///             "component.liveRecord",
///         },
///         IntegrationMode = "paasSDK",
///         Scene = "business",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/imp"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := imp.NewAppTemplate(ctx, "example", &imp.AppTemplateArgs{
/// 			AppTemplateName: pulumi.String("example_value"),
/// 			ComponentLists: pulumi.StringArray{
/// 				pulumi.String("component.live"),
/// 				pulumi.String("component.liveRecord"),
/// 			},
/// 			IntegrationMode: pulumi.String("paasSDK"),
/// 			Scene:           pulumi.String("business"),
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
/// import com.pulumi.alicloud.imp.AppTemplate;
/// import com.pulumi.alicloud.imp.AppTemplateArgs;
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
///         var example = new AppTemplate("example", AppTemplateArgs.builder()
///             .appTemplateName("example_value")
///             .componentLists(
///                 "component.live",
///                 "component.liveRecord")
///             .integrationMode("paasSDK")
///             .scene("business")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: alicloud:imp:AppTemplate
///     properties:
///       appTemplateName: example_value
///       componentLists:
///         - component.live
///         - component.liveRecord
///       integrationMode: paasSDK
///       scene: business
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Apsara Agile Live (IMP) App Template can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:imp/appTemplate:AppTemplate example <id>
/// ```
class AppTemplate extends pulumi.CustomResource {
  /// The name of the resource.
  late final pulumi.Output<String> appTemplateName;

  /// List of components. Its element valid values: ["component.live","component.liveRecord","component.liveBeauty","component.rtc","component.rtcRecord","component.im","component.whiteboard","component.liveSecurity","component.chatSecurity"].
  late final pulumi.Output<List<String>> componentLists;

  /// Configuration list. It have several default configs after the resource is created. See the following `Block config_list`.
  late final pulumi.Output<List<Map<String, dynamic>>> configLists;

  /// Integration mode. Valid values:
  /// * paasSDK: Integrated SDK.
  /// * standardRoom: Model Room.
  late final pulumi.Output<String?> integrationMode;

  /// Application Template scenario. Valid values: ["business", "classroom"].
  late final pulumi.Output<String?> scene;

  /// Application template usage status.
  late final pulumi.Output<String> status;

  /// Creates a new [AppTemplate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AppTemplate]. {@macro pulumi_imp_app_template_app_template_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AppTemplate(
    String name, {
    AppTemplateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:imp/appTemplate:AppTemplate',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    appTemplateName = registerOutput<String>('appTemplateName');
    componentLists = registerOutput<List<String>>('componentLists');
    configLists = registerOutput<List<Map<String, dynamic>>>('configLists');
    integrationMode = registerOutput<String?>('integrationMode');
    scene = registerOutput<String?>('scene');
    status = registerOutput<String>('status');
  }

  /// Gets an existing [AppTemplate] resource's state with the given [name] and [id].
  static AppTemplate get(
    String name,
    pulumi.Input<String> id, {
    AppTemplateState? state,
  }) {
    return AppTemplate._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AppTemplate._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:imp/appTemplate:AppTemplate',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    appTemplateName = registerOutput<String>('appTemplateName');
    componentLists = registerOutput<List<String>>('componentLists');
    configLists = registerOutput<List<Map<String, dynamic>>>('configLists');
    integrationMode = registerOutput<String?>('integrationMode');
    scene = registerOutput<String?>('scene');
    status = registerOutput<String>('status');
  }
}
