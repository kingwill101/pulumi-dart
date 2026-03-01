import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_args.dart';

/// Log resource is a meta store service provided by log service, resource can be used to define meta store's table structure.
///
/// For information about SLS Resource and how to use it, see [Resource management](https://www.alibabacloud.com/help/en/doc-detail/207732.html)
///
/// > **NOTE:** Available since v1.162.0. log resource region should be set a main region: cn-heyuan.
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
/// const example = new alicloud.log.Resource("example", {
///     type: "userdefine",
///     name: "user.tf.resource",
///     description: "user tf resource desc",
///     extInfo: "{}",
///     schema: `    {
///       \\"schema\\": [
///         {
///           \\"column\\": \\"col1\\",
///           \\"desc\\": \\"col1   desc\\",
///           \\"ext_info\\": {
///           },
///           \\"required\\": true,
///           \\"type\\": \\"string\\"
///         },
///         {
///           \\"column\\": \\"col2\\",
///           \\"desc\\": \\"col2   desc\\",
///           \\"ext_info\\": \\"optional\\",
///           \\"required\\": true,
///           \\"type\\": \\"string\\"
///         }
///       ]
///     }
/// `,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.log.Resource("example",
///     type="userdefine",
///     name="user.tf.resource",
///     description="user tf resource desc",
///     ext_info="{}",
///     schema="""    {
///       \"schema\": [
///         {
///           \"column\": \"col1\",
///           \"desc\": \"col1   desc\",
///           \"ext_info\": {
///           },
///           \"required\": true,
///           \"type\": \"string\"
///         },
///         {
///           \"column\": \"col2\",
///           \"desc\": \"col2   desc\",
///           \"ext_info\": \"optional\",
///           \"required\": true,
///           \"type\": \"string\"
///         }
///       ]
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
///     var example = new AliCloud.Log.Resource("example", new()
///     {
///         Type = "userdefine",
///         Name = "user.tf.resource",
///         Description = "user tf resource desc",
///         ExtInfo = "{}",
///         Schema = @"    {
///       \""schema\"": [
///         {
///           \""column\"": \""col1\"",
///           \""desc\"": \""col1   desc\"",
///           \""ext_info\"": {
///           },
///           \""required\"": true,
///           \""type\"": \""string\""
///         },
///         {
///           \""column\"": \""col2\"",
///           \""desc\"": \""col2   desc\"",
///           \""ext_info\"": \""optional\"",
///           \""required\"": true,
///           \""type\"": \""string\""
///         }
///       ]
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/log"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := log.NewResource(ctx, "example", &log.ResourceArgs{
/// 			Type:        pulumi.String("userdefine"),
/// 			Name:        pulumi.String("user.tf.resource"),
/// 			Description: pulumi.String("user tf resource desc"),
/// 			ExtInfo:     pulumi.String("{}"),
/// 			Schema: pulumi.String(`    {
///       \"schema\": [
///         {
///           \"column\": \"col1\",
///           \"desc\": \"col1   desc\",
///           \"ext_info\": {
///           },
///           \"required\": true,
///           \"type\": \"string\"
///         },
///         {
///           \"column\": \"col2\",
///           \"desc\": \"col2   desc\",
///           \"ext_info\": \"optional\",
///           \"required\": true,
///           \"type\": \"string\"
///         }
///       ]
///     }
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
/// import com.pulumi.alicloud.log.Resource;
/// import com.pulumi.alicloud.log.ResourceArgs;
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
///         var example = new Resource("example", ResourceArgs.builder()
///             .type("userdefine")
///             .name("user.tf.resource")
///             .description("user tf resource desc")
///             .extInfo("{}")
///             .schema("""
///     {
///       \"schema\": [
///         {
///           \"column\": \"col1\",
///           \"desc\": \"col1   desc\",
///           \"ext_info\": {
///           },
///           \"required\": true,
///           \"type\": \"string\"
///         },
///         {
///           \"column\": \"col2\",
///           \"desc\": \"col2   desc\",
///           \"ext_info\": \"optional\",
///           \"required\": true,
///           \"type\": \"string\"
///         }
///       ]
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
///     type: alicloud:log:Resource
///     properties:
///       type: userdefine
///       name: user.tf.resource
///       description: user tf resource desc
///       extInfo: '{}'
///       schema: |2
///             {
///               \"schema\": [
///                 {
///                   \"column\": \"col1\",
///                   \"desc\": \"col1   desc\",
///                   \"ext_info\": {
///                   },
///                   \"required\": true,
///                   \"type\": \"string\"
///                 },
///                 {
///                   \"column\": \"col2\",
///                   \"desc\": \"col2   desc\",
///                   \"ext_info\": \"optional\",
///                   \"required\": true,
///                   \"type\": \"string\"
///                 }
///               ]
///             }
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Log resource can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:log/resource:Resource example <id>
/// ```
class ResourceType extends pulumi.CustomResource {
  /// The meta store's description.
  late final pulumi.Output<String?> description;
  /// The ext info of meta store.
  late final pulumi.Output<String?> extInfo;
  /// The meta store's name, can be used as table name.
  late final pulumi.Output<String> name;
  /// The meta store's schema info, which is json string format, used to define table's fields.
  late final pulumi.Output<String> schema;
  /// The meta store's type, userdefine e.g.
  late final pulumi.Output<String> type;

  /// Creates a new [ResourceType].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResourceType]. {@macro pulumi_log_resource_resource_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResourceType(
    String name, {
    ResourceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:log/resource:Resource',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.extInfo = registerOutput<String?>('extInfo');
    this.name = registerOutput<String>('name');
    this.schema = registerOutput<String>('schema');
    this.type = registerOutput<String>('type');
  }
}
