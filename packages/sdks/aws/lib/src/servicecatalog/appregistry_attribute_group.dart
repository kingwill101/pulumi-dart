import 'package:pulumi/pulumi.dart' as pulumi;
import 'appregistry_attribute_group_args.dart';
import 'appregistry_attribute_group_state.dart';

/// Resource for managing an AWS Service Catalog AppRegistry Attribute Group.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.servicecatalog.AppregistryAttributeGroup("example", {
///     name: "example",
///     description: "example description",
///     attributes: JSON.stringify({
///         app: "exampleapp",
///         group: "examplegroup",
///     }),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example = aws.servicecatalog.AppregistryAttributeGroup("example",
///     name="example",
///     description="example description",
///     attributes=json.dumps({
///         "app": "exampleapp",
///         "group": "examplegroup",
///     }))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.ServiceCatalog.AppregistryAttributeGroup("example", new()
///     {
///         Name = "example",
///         Description = "example description",
///         Attributes = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["app"] = "exampleapp",
///             ["group"] = "examplegroup",
///         }),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/servicecatalog"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"app":   "exampleapp",
/// 			"group": "examplegroup",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = servicecatalog.NewAppregistryAttributeGroup(ctx, "example", &servicecatalog.AppregistryAttributeGroupArgs{
/// 			Name:        pulumi.String("example"),
/// 			Description: pulumi.String("example description"),
/// 			Attributes:  pulumi.String(json0),
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
/// import com.pulumi.aws.servicecatalog.AppregistryAttributeGroup;
/// import com.pulumi.aws.servicecatalog.AppregistryAttributeGroupArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         var example = new AppregistryAttributeGroup("example", AppregistryAttributeGroupArgs.builder()
///             .name("example")
///             .description("example description")
///             .attributes(serializeJson(
///                 jsonObject(
///                     jsonProperty("app", "exampleapp"),
///                     jsonProperty("group", "examplegroup")
///                 )))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:servicecatalog:AppregistryAttributeGroup
///     properties:
///       name: example
///       description: example description
///       attributes:
///         fn::toJSON:
///           app: exampleapp
///           group: examplegroup
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Service Catalog AppRegistry Attribute Group using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:servicecatalog/appregistryAttributeGroup:AppregistryAttributeGroup example 1234567890abcfedhijk09876s
/// ```
class AppregistryAttributeGroup extends pulumi.CustomResource {
  /// ARN of the Attribute Group.
  late final pulumi.Output<String> arn;

  /// A JSON string of nested key-value pairs that represents the attributes of the group.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> attributes;

  /// Description of the Attribute Group.
  late final pulumi.Output<String?> description;

  /// Name of the Attribute Group.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A map of tags assigned to the Attribute Group. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [AppregistryAttributeGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AppregistryAttributeGroup]. {@macro pulumi_servicecatalog_appregistry_attribute_group_appregistry_attribute_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AppregistryAttributeGroup(
    String name, {
    AppregistryAttributeGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:servicecatalog/appregistryAttributeGroup:AppregistryAttributeGroup',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    attributes = registerOutput<String>('attributes');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [AppregistryAttributeGroup] resource's state with the given [name] and [id].
  static AppregistryAttributeGroup get(
    String name,
    pulumi.Input<String> id, {
    AppregistryAttributeGroupState? state,
  }) {
    return AppregistryAttributeGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AppregistryAttributeGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:servicecatalog/appregistryAttributeGroup:AppregistryAttributeGroup',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    attributes = registerOutput<String>('attributes');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
