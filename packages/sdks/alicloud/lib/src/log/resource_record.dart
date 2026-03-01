import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_record_args.dart';
import 'resource_record_state.dart';

/// Log resource is a meta store service provided by log service, resource can be used to define meta store's table structure, record can be used for table's row data.
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
/// const exampleResourceRecord = new alicloud.log.ResourceRecord("example", {
///     resourceName: example.id,
///     recordId: "tf_user_example",
///     tag: "tf example",
///     value: `{
///   \\"user_name\\": \\"tf example\\",
///   \\"sms_enabled\\": true,
///   \\"phone\\": \\"18888888889\\",
///   \\"voice_enabled\\": false,
///   \\"email\\": [
///     \\"test@qq.com\\"
///   ],
///   \\"enabled\\": true,
///   \\"user_id\\": \\"tf_user\\",
///   \\"country_code\\": \\"86\\"
/// }
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
/// example_resource_record = alicloud.log.ResourceRecord("example",
///     resource_name_=example.id,
///     record_id="tf_user_example",
///     tag="tf example",
///     value="""{
///   \"user_name\": \"tf example\",
///   \"sms_enabled\": true,
///   \"phone\": \"18888888889\",
///   \"voice_enabled\": false,
///   \"email\": [
///     \"test@qq.com\"
///   ],
///   \"enabled\": true,
///   \"user_id\": \"tf_user\",
///   \"country_code\": \"86\"
/// }
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
///     var exampleResourceRecord = new AliCloud.Log.ResourceRecord("example", new()
///     {
///         ResourceName = example.Id,
///         RecordId = "tf_user_example",
///         Tag = "tf example",
///         Value = @"{
///   \""user_name\"": \""tf example\"",
///   \""sms_enabled\"": true,
///   \""phone\"": \""18888888889\"",
///   \""voice_enabled\"": false,
///   \""email\"": [
///     \""test@qq.com\""
///   ],
///   \""enabled\"": true,
///   \""user_id\"": \""tf_user\"",
///   \""country_code\"": \""86\""
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/log"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := log.NewResource(ctx, "example", &log.ResourceArgs{
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
/// 		_, err = log.NewResourceRecord(ctx, "example", &log.ResourceRecordArgs{
/// 			ResourceName: example.ID(),
/// 			RecordId:     pulumi.String("tf_user_example"),
/// 			Tag:          pulumi.String("tf example"),
/// 			Value: pulumi.String(`{
///   \"user_name\": \"tf example\",
///   \"sms_enabled\": true,
///   \"phone\": \"18888888889\",
///   \"voice_enabled\": false,
///   \"email\": [
///     \"test@qq.com\"
///   ],
///   \"enabled\": true,
///   \"user_id\": \"tf_user\",
///   \"country_code\": \"86\"
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
/// import com.pulumi.alicloud.log.Resource;
/// import com.pulumi.alicloud.log.ResourceArgs;
/// import com.pulumi.alicloud.log.ResourceRecord;
/// import com.pulumi.alicloud.log.ResourceRecordArgs;
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
///         var exampleResourceRecord = new ResourceRecord("exampleResourceRecord", ResourceRecordArgs.builder()
///             .resourceName(example.id())
///             .recordId("tf_user_example")
///             .tag("tf example")
///             .value("""
/// {
///   \"user_name\": \"tf example\",
///   \"sms_enabled\": true,
///   \"phone\": \"18888888889\",
///   \"voice_enabled\": false,
///   \"email\": [
///     \"test@qq.com\"
///   ],
///   \"enabled\": true,
///   \"user_id\": \"tf_user\",
///   \"country_code\": \"86\"
/// }
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
///   exampleResourceRecord:
///     type: alicloud:log:ResourceRecord
///     name: example
///     properties:
///       resourceName: ${example.id}
///       recordId: tf_user_example
///       tag: tf example
///       value: |
///         {
///           \"user_name\": \"tf example\",
///           \"sms_enabled\": true,
///           \"phone\": \"18888888889\",
///           \"voice_enabled\": false,
///           \"email\": [
///             \"test@qq.com\"
///           ],
///           \"enabled\": true,
///           \"user_id\": \"tf_user\",
///           \"country_code\": \"86\"
///         }
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Log resource record can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:log/resourceRecord:ResourceRecord example <resource_name>:<record_id>
/// ```
class ResourceRecord extends pulumi.CustomResource {
  /// The record's id, should be unique.
  late final pulumi.Output<String> recordId;
  /// The name defined in log_resource, log service have some internal resource, like sls.common.user, sls.common.user_group. More detail see [Resource Data Structure](https://www.alibabacloud.com/help/en/sls/developer-reference/data-structure-of-alert-resource-data).
  late final pulumi.Output<String> resourceName;
  /// The record's tag, can be used for search.
  late final pulumi.Output<String> tag;
  /// The json value of record. More detail see [Resource Data Structure](https://www.alibabacloud.com/help/en/sls/developer-reference/data-structure-of-alert-resource-data).
  late final pulumi.Output<String> value;

  /// Creates a new [ResourceRecord].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResourceRecord]. {@macro pulumi_log_resource_record_resource_record_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResourceRecord(
    String name, {
    ResourceRecordArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:log/resourceRecord:ResourceRecord',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.recordId = registerOutput<String>('recordId');
    this.resourceName = registerOutput<String>('resourceName');
    this.tag = registerOutput<String>('tag');
    this.value = registerOutput<String>('value');
  }

  /// Gets an existing [ResourceRecord] resource's state with the given [name] and [id].
  static ResourceRecord get(
    String name,
    pulumi.Input<String> id, {
    ResourceRecordState? state,
  }) {
    return ResourceRecord._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ResourceRecord._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:log/resourceRecord:ResourceRecord',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.recordId = registerOutput<String>('recordId');
    this.resourceName = registerOutput<String>('resourceName');
    this.tag = registerOutput<String>('tag');
    this.value = registerOutput<String>('value');
  }
}
