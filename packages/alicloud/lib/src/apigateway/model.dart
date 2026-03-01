import 'package:pulumi/pulumi.dart' as pulumi;
import 'model_args.dart';

/// Provides a Api Gateway Model resource.
///
/// For information about Api Gateway Model and how to use it, see [What is Model](https://www.alibabacloud.com/help/en/api-gateway/latest/api-cloudapi-2016-07-14-createmodel).
///
/// > **NOTE:** Available since v1.187.0.
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
/// const _default = new alicloud.apigateway.Group("default", {
///     name: "example_value",
///     description: "example_value",
/// });
/// const defaultModel = new alicloud.apigateway.Model("default", {
///     groupId: _default.id,
///     modelName: "example_value",
///     schema: "{\"type\":\"object\",\"properties\":{\"id\":{\"format\":\"int64\",\"maximum\":100,\"exclusiveMaximum\":true,\"type\":\"integer\"},\"name\":{\"maxLength\":10,\"type\":\"string\"}}}",
///     description: "example_value",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.apigateway.Group("default",
///     name="example_value",
///     description="example_value")
/// default_model = alicloud.apigateway.Model("default",
///     group_id=default.id,
///     model_name="example_value",
///     schema="{\"type\":\"object\",\"properties\":{\"id\":{\"format\":\"int64\",\"maximum\":100,\"exclusiveMaximum\":true,\"type\":\"integer\"},\"name\":{\"maxLength\":10,\"type\":\"string\"}}}",
///     description="example_value")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new AliCloud.ApiGateway.Group("default", new()
///     {
///         Name = "example_value",
///         Description = "example_value",
///     });
///
///     var defaultModel = new AliCloud.ApiGateway.Model("default", new()
///     {
///         GroupId = @default.Id,
///         ModelName = "example_value",
///         Schema = "{\"type\":\"object\",\"properties\":{\"id\":{\"format\":\"int64\",\"maximum\":100,\"exclusiveMaximum\":true,\"type\":\"integer\"},\"name\":{\"maxLength\":10,\"type\":\"string\"}}}",
///         Description = "example_value",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/apigateway"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := apigateway.NewGroup(ctx, "default", &apigateway.GroupArgs{
/// 			Name:        pulumi.String("example_value"),
/// 			Description: pulumi.String("example_value"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apigateway.NewModel(ctx, "default", &apigateway.ModelArgs{
/// 			GroupId:     _default.ID(),
/// 			ModelName:   pulumi.String("example_value"),
/// 			Schema:      pulumi.String("{\"type\":\"object\",\"properties\":{\"id\":{\"format\":\"int64\",\"maximum\":100,\"exclusiveMaximum\":true,\"type\":\"integer\"},\"name\":{\"maxLength\":10,\"type\":\"string\"}}}"),
/// 			Description: pulumi.String("example_value"),
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
/// import com.pulumi.alicloud.apigateway.Group;
/// import com.pulumi.alicloud.apigateway.GroupArgs;
/// import com.pulumi.alicloud.apigateway.Model;
/// import com.pulumi.alicloud.apigateway.ModelArgs;
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
///         var default_ = new Group("default", GroupArgs.builder()
///             .name("example_value")
///             .description("example_value")
///             .build());
///
///         var defaultModel = new Model("defaultModel", ModelArgs.builder()
///             .groupId(default_.id())
///             .modelName("example_value")
///             .schema("{\"type\":\"object\",\"properties\":{\"id\":{\"format\":\"int64\",\"maximum\":100,\"exclusiveMaximum\":true,\"type\":\"integer\"},\"name\":{\"maxLength\":10,\"type\":\"string\"}}}")
///             .description("example_value")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: alicloud:apigateway:Group
///     properties:
///       name: example_value
///       description: example_value
///   defaultModel:
///     type: alicloud:apigateway:Model
///     name: default
///     properties:
///       groupId: ${default.id}
///       modelName: example_value
///       schema: '{"type":"object","properties":{"id":{"format":"int64","maximum":100,"exclusiveMaximum":true,"type":"integer"},"name":{"maxLength":10,"type":"string"}}}'
///       description: example_value
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Api Gateway Model can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:apigateway/model:Model example <group_id>:<model_name>
/// ```
class Model extends pulumi.CustomResource {
  /// The description of the model.
  late final pulumi.Output<String?> description;
  /// The group of the model belongs to.
  late final pulumi.Output<String> groupId;
  /// The name of the model.
  late final pulumi.Output<String> modelName;
  /// The schema of the model.
  late final pulumi.Output<String> schema;

  /// Creates a new [Model].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Model]. {@macro pulumi_apigateway_model_model_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Model(
    String name, {
    ModelArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:apigateway/model:Model',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.groupId = registerOutput<String>('groupId');
    this.modelName = registerOutput<String>('modelName');
    this.schema = registerOutput<String>('schema');
  }
}
