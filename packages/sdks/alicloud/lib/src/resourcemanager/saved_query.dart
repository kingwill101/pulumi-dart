import 'package:pulumi/pulumi.dart' as pulumi;
import 'saved_query_args.dart';
import 'saved_query_state.dart';

/// Provides a Resource Manager Saved Query resource. ResourceCenter Saved Query.
///
/// For information about Resource Manager Saved Query and how to use it, see [What is Saved Query](https://www.alibabacloud.com/help/zh/resource-management/developer-reference/api-resourcecenter-2022-12-01-createsavedquery).
///
/// > **NOTE:** Available since v1.212.0.
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
/// const _default = new alicloud.resourcemanager.SavedQuery("default", {
///     description: name,
///     expression: "select * from resources limit 1;",
///     savedQueryName: name,
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
/// default = alicloud.resourcemanager.SavedQuery("default",
///     description=name,
///     expression="select * from resources limit 1;",
///     saved_query_name=name)
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
///     var @default = new AliCloud.ResourceManager.SavedQuery("default", new()
///     {
///         Description = name,
///         Expression = "select * from resources limit 1;",
///         SavedQueryName = name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
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
/// 		_, err := resourcemanager.NewSavedQuery(ctx, "default", &resourcemanager.SavedQueryArgs{
/// 			Description:    pulumi.String(name),
/// 			Expression:     pulumi.String("select * from resources limit 1;"),
/// 			SavedQueryName: pulumi.String(name),
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
/// import com.pulumi.alicloud.resourcemanager.SavedQuery;
/// import com.pulumi.alicloud.resourcemanager.SavedQueryArgs;
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
///         var default_ = new SavedQuery("default", SavedQueryArgs.builder()
///             .description(name)
///             .expression("select * from resources limit 1;")
///             .savedQueryName(name)
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
///     type: alicloud:resourcemanager:SavedQuery
///     properties:
///       description: ${name}
///       expression: select * from resources limit 1;
///       savedQueryName: ${name}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Resource Manager Saved Query can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:resourcemanager/savedQuery:SavedQuery example <id>
/// ```
class SavedQuery extends pulumi.CustomResource {
  /// The creation time of the resource.
  late final pulumi.Output<String> createTime;
  /// Query Description.
  late final pulumi.Output<String?> description;
  /// Query Expression.
  late final pulumi.Output<String> expression;
  /// The name of the resource.
  late final pulumi.Output<String> savedQueryName;

  /// Creates a new [SavedQuery].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SavedQuery]. {@macro pulumi_resourcemanager_saved_query_saved_query_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SavedQuery(
    String name, {
    SavedQueryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:resourcemanager/savedQuery:SavedQuery',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.expression = registerOutput<String>('expression');
    this.savedQueryName = registerOutput<String>('savedQueryName');
  }

  /// Gets an existing [SavedQuery] resource's state with the given [name] and [id].
  static SavedQuery get(
    String name,
    pulumi.Input<String> id, {
    SavedQueryState? state,
  }) {
    return SavedQuery._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SavedQuery._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:resourcemanager/savedQuery:SavedQuery',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.expression = registerOutput<String>('expression');
    this.savedQueryName = registerOutput<String>('savedQueryName');
  }
}
