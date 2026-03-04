import 'package:pulumi/pulumi.dart' as pulumi;
import 'advanced_query_template_args.dart';
import 'advanced_query_template_state.dart';

/// Provides a Actiontrail Advanced Query Template resource.
///
/// sql template of advanced query.
///
/// For information about Actiontrail Advanced Query Template and how to use it, see [What is Advanced Query Template](https://next.api.alibabacloud.com/document/Actiontrail/2020-07-06/CreateAdvancedQueryTemplate).
///
/// &gt; **NOTE:** Available since v1.255.0.
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
/// const name = config.get("name") || "terraform-example";
/// const _default = new alicloud.actiontrail.AdvancedQueryTemplate("default", {
///     simpleQuery: true,
///     templateName: "exampleTemplateName",
///     templateSql: "*",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = alicloud.actiontrail.AdvancedQueryTemplate("default",
///     simple_query=True,
///     template_name="exampleTemplateName",
///     template_sql="*")
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
///     var name = config.Get("name") ?? "terraform-example";
///     var @default = new AliCloud.ActionTrail.AdvancedQueryTemplate("default", new()
///     {
///         SimpleQuery = true,
///         TemplateName = "exampleTemplateName",
///         TemplateSql = "*",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/actiontrail"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "terraform-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_, err := actiontrail.NewAdvancedQueryTemplate(ctx, "default", &actiontrail.AdvancedQueryTemplateArgs{
/// 			SimpleQuery:  pulumi.Bool(true),
/// 			TemplateName: pulumi.String("exampleTemplateName"),
/// 			TemplateSql:  pulumi.String("*"),
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
/// import com.pulumi.alicloud.actiontrail.AdvancedQueryTemplate;
/// import com.pulumi.alicloud.actiontrail.AdvancedQueryTemplateArgs;
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
///         final var name = config.get("name").orElse("terraform-example");
///         var default_ = new AdvancedQueryTemplate("default", AdvancedQueryTemplateArgs.builder()
///             .simpleQuery(true)
///             .templateName("exampleTemplateName")
///             .templateSql("*")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform-example
/// resources:
///   default:
///     type: alicloud:actiontrail:AdvancedQueryTemplate
///     properties:
///       simpleQuery: true
///       templateName: exampleTemplateName
///       templateSql: '*'
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Actiontrail Advanced Query Template can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:actiontrail/advancedQueryTemplate:AdvancedQueryTemplate example <id>
/// ```
class AdvancedQueryTemplate extends pulumi.CustomResource {
  /// Distinguish whether the current template is a simple query
  late final pulumi.Output<bool> simpleQuery;

  /// The name of the resource
  late final pulumi.Output<String?> templateName;

  /// SQL content saved on behalf of the current template
  late final pulumi.Output<String> templateSql;

  /// Creates a new [AdvancedQueryTemplate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AdvancedQueryTemplate]. {@macro pulumi_actiontrail_advanced_query_template_advanced_query_template_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AdvancedQueryTemplate(
    String name, {
    AdvancedQueryTemplateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:actiontrail/advancedQueryTemplate:AdvancedQueryTemplate',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    simpleQuery = registerOutput<bool>('simpleQuery');
    templateName = registerOutput<String?>('templateName');
    templateSql = registerOutput<String>('templateSql');
  }

  /// Gets an existing [AdvancedQueryTemplate] resource's state with the given [name] and [id].
  static AdvancedQueryTemplate get(
    String name,
    pulumi.Input<String> id, {
    AdvancedQueryTemplateState? state,
  }) {
    return AdvancedQueryTemplate._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AdvancedQueryTemplate._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:actiontrail/advancedQueryTemplate:AdvancedQueryTemplate',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    simpleQuery = registerOutput<bool>('simpleQuery');
    templateName = registerOutput<String?>('templateName');
    templateSql = registerOutput<String>('templateSql');
  }
}
