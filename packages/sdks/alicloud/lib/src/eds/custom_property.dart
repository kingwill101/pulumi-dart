import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_property_args.dart';
import 'custom_property_state.dart';

/// Provides a ECD Custom Property resource.
///
/// For information about ECD Custom Property and how to use it, see [What is Custom Property](https://www.alibabacloud.com/help/en/wuying-workspace/developer-reference/api-eds-user-2021-03-08-createproperty-desktop).
///
/// &gt; **NOTE:** Available since v1.176.0.
///
/// &gt; **NOTE:** Up to 10 different attributes can be created under an alibaba cloud account. Up to 50 different attribute values can be added under an attribute.
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
/// const example = new alicloud.eds.CustomProperty("example", {
///     propertyKey: "example_key",
///     propertyValues: [{
///         propertyValue: "example_value",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.eds.CustomProperty("example",
///     property_key="example_key",
///     property_values=[{
///         "property_value": "example_value",
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new AliCloud.Eds.CustomProperty("example", new()
///     {
///         PropertyKey = "example_key",
///         PropertyValues = new[]
///         {
///             new AliCloud.Eds.Inputs.CustomPropertyPropertyValueArgs
///             {
///                 PropertyValue = "example_value",
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/eds"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := eds.NewCustomProperty(ctx, "example", &eds.CustomPropertyArgs{
/// 			PropertyKey: pulumi.String("example_key"),
/// 			PropertyValues: eds.CustomPropertyPropertyValueArray{
/// 				&eds.CustomPropertyPropertyValueArgs{
/// 					PropertyValue: pulumi.String("example_value"),
/// 				},
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
/// import com.pulumi.alicloud.eds.CustomProperty;
/// import com.pulumi.alicloud.eds.CustomPropertyArgs;
/// import com.pulumi.alicloud.eds.inputs.CustomPropertyPropertyValueArgs;
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
///         var example = new CustomProperty("example", CustomPropertyArgs.builder()
///             .propertyKey("example_key")
///             .propertyValues(CustomPropertyPropertyValueArgs.builder()
///                 .propertyValue("example_value")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: alicloud:eds:CustomProperty
///     properties:
///       propertyKey: example_key
///       propertyValues:
///         - propertyValue: example_value
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// ECD Custom Property can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:eds/customProperty:CustomProperty example <id>
/// ```
class CustomProperty extends pulumi.CustomResource {
  /// The Custom attribute key.
  late final pulumi.Output<String> propertyKey;

  /// Custom attribute sets the value of. See `property_values` below.
  late final pulumi.Output<List<Map<String, dynamic>>?> propertyValues;

  /// Creates a new [CustomProperty].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CustomProperty]. {@macro pulumi_eds_custom_property_custom_property_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CustomProperty(
    String name, {
    CustomPropertyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:eds/customProperty:CustomProperty',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    propertyKey = registerOutput<String>('propertyKey');
    propertyValues = registerOutput<List<Map<String, dynamic>>?>(
      'propertyValues',
    );
  }

  /// Gets an existing [CustomProperty] resource's state with the given [name] and [id].
  static CustomProperty get(
    String name,
    pulumi.Input<String> id, {
    CustomPropertyState? state,
  }) {
    return CustomProperty._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  CustomProperty._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:eds/customProperty:CustomProperty',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    propertyKey = registerOutput<String>('propertyKey');
    propertyValues = registerOutput<List<Map<String, dynamic>>?>(
      'propertyValues',
    );
  }
}
