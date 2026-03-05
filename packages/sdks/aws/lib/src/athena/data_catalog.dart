import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_catalog_args.dart';
import 'data_catalog_state.dart';

/// Provides an Athena data catalog.
///
/// More information about Athena and Athena data catalogs can be found in the [Athena User Guide](https://docs.aws.amazon.com/athena/latest/ug/what-is.html).
///
/// &gt; **Tip:** for a more detailed explanation on the usage of `parameters`, see the [DataCatalog API documentation](https://docs.aws.amazon.com/athena/latest/APIReference/API_DataCatalog.html)
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.athena.DataCatalog("example", {
///     name: "athena-data-catalog",
///     description: "Example Athena data catalog",
///     type: "LAMBDA",
///     parameters: {
///         "function": "arn:aws:lambda:eu-central-1:123456789012:function:not-important-lambda-function",
///     },
///     tags: {
///         Name: "example-athena-data-catalog",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.athena.DataCatalog("example",
///     name="athena-data-catalog",
///     description="Example Athena data catalog",
///     type="LAMBDA",
///     parameters={
///         "function": "arn:aws:lambda:eu-central-1:123456789012:function:not-important-lambda-function",
///     },
///     tags={
///         "Name": "example-athena-data-catalog",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Athena.DataCatalog("example", new()
///     {
///         Name = "athena-data-catalog",
///         Description = "Example Athena data catalog",
///         Type = "LAMBDA",
///         Parameters =
///         {
///             { "function", "arn:aws:lambda:eu-central-1:123456789012:function:not-important-lambda-function" },
///         },
///         Tags =
///         {
///             { "Name", "example-athena-data-catalog" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/athena"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := athena.NewDataCatalog(ctx, "example", &athena.DataCatalogArgs{
/// 			Name:        pulumi.String("athena-data-catalog"),
/// 			Description: pulumi.String("Example Athena data catalog"),
/// 			Type:        pulumi.String("LAMBDA"),
/// 			Parameters: pulumi.StringMap{
/// 				"function": pulumi.String("arn:aws:lambda:eu-central-1:123456789012:function:not-important-lambda-function"),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("example-athena-data-catalog"),
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
/// import com.pulumi.aws.athena.DataCatalog;
/// import com.pulumi.aws.athena.DataCatalogArgs;
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
///         var example = new DataCatalog("example", DataCatalogArgs.builder()
///             .name("athena-data-catalog")
///             .description("Example Athena data catalog")
///             .type("LAMBDA")
///             .parameters(Map.of("function", "arn:aws:lambda:eu-central-1:123456789012:function:not-important-lambda-function"))
///             .tags(Map.of("Name", "example-athena-data-catalog"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:athena:DataCatalog
///     properties:
///       name: athena-data-catalog
///       description: Example Athena data catalog
///       type: LAMBDA
///       parameters:
///         function: arn:aws:lambda:eu-central-1:123456789012:function:not-important-lambda-function
///       tags:
///         Name: example-athena-data-catalog
/// ```
///
///
/// ### Hive based Data Catalog
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.athena.DataCatalog("example", {
///     name: "hive-data-catalog",
///     description: "Hive based Data Catalog",
///     type: "HIVE",
///     parameters: {
///         "metadata-function": "arn:aws:lambda:eu-central-1:123456789012:function:not-important-lambda-function",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.athena.DataCatalog("example",
///     name="hive-data-catalog",
///     description="Hive based Data Catalog",
///     type="HIVE",
///     parameters={
///         "metadata-function": "arn:aws:lambda:eu-central-1:123456789012:function:not-important-lambda-function",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Athena.DataCatalog("example", new()
///     {
///         Name = "hive-data-catalog",
///         Description = "Hive based Data Catalog",
///         Type = "HIVE",
///         Parameters =
///         {
///             { "metadata-function", "arn:aws:lambda:eu-central-1:123456789012:function:not-important-lambda-function" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/athena"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := athena.NewDataCatalog(ctx, "example", &athena.DataCatalogArgs{
/// 			Name:        pulumi.String("hive-data-catalog"),
/// 			Description: pulumi.String("Hive based Data Catalog"),
/// 			Type:        pulumi.String("HIVE"),
/// 			Parameters: pulumi.StringMap{
/// 				"metadata-function": pulumi.String("arn:aws:lambda:eu-central-1:123456789012:function:not-important-lambda-function"),
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
/// import com.pulumi.aws.athena.DataCatalog;
/// import com.pulumi.aws.athena.DataCatalogArgs;
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
///         var example = new DataCatalog("example", DataCatalogArgs.builder()
///             .name("hive-data-catalog")
///             .description("Hive based Data Catalog")
///             .type("HIVE")
///             .parameters(Map.of("metadata-function", "arn:aws:lambda:eu-central-1:123456789012:function:not-important-lambda-function"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:athena:DataCatalog
///     properties:
///       name: hive-data-catalog
///       description: Hive based Data Catalog
///       type: HIVE
///       parameters:
///         metadata-function: arn:aws:lambda:eu-central-1:123456789012:function:not-important-lambda-function
/// ```
///
///
/// ### Glue based Data Catalog
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.athena.DataCatalog("example", {
///     name: "glue-data-catalog",
///     description: "Glue based Data Catalog",
///     type: "GLUE",
///     parameters: {
///         "catalog-id": "123456789012",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.athena.DataCatalog("example",
///     name="glue-data-catalog",
///     description="Glue based Data Catalog",
///     type="GLUE",
///     parameters={
///         "catalog-id": "123456789012",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Athena.DataCatalog("example", new()
///     {
///         Name = "glue-data-catalog",
///         Description = "Glue based Data Catalog",
///         Type = "GLUE",
///         Parameters =
///         {
///             { "catalog-id", "123456789012" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/athena"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := athena.NewDataCatalog(ctx, "example", &athena.DataCatalogArgs{
/// 			Name:        pulumi.String("glue-data-catalog"),
/// 			Description: pulumi.String("Glue based Data Catalog"),
/// 			Type:        pulumi.String("GLUE"),
/// 			Parameters: pulumi.StringMap{
/// 				"catalog-id": pulumi.String("123456789012"),
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
/// import com.pulumi.aws.athena.DataCatalog;
/// import com.pulumi.aws.athena.DataCatalogArgs;
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
///         var example = new DataCatalog("example", DataCatalogArgs.builder()
///             .name("glue-data-catalog")
///             .description("Glue based Data Catalog")
///             .type("GLUE")
///             .parameters(Map.of("catalog-id", "123456789012"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:athena:DataCatalog
///     properties:
///       name: glue-data-catalog
///       description: Glue based Data Catalog
///       type: GLUE
///       parameters:
///         catalog-id: '123456789012'
/// ```
///
///
/// ### Lambda based Data Catalog
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.athena.DataCatalog("example", {
///     name: "lambda-data-catalog",
///     description: "Lambda based Data Catalog",
///     type: "LAMBDA",
///     parameters: {
///         "metadata-function": "arn:aws:lambda:eu-central-1:123456789012:function:not-important-lambda-function-1",
///         "record-function": "arn:aws:lambda:eu-central-1:123456789012:function:not-important-lambda-function-2",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.athena.DataCatalog("example",
///     name="lambda-data-catalog",
///     description="Lambda based Data Catalog",
///     type="LAMBDA",
///     parameters={
///         "metadata-function": "arn:aws:lambda:eu-central-1:123456789012:function:not-important-lambda-function-1",
///         "record-function": "arn:aws:lambda:eu-central-1:123456789012:function:not-important-lambda-function-2",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Athena.DataCatalog("example", new()
///     {
///         Name = "lambda-data-catalog",
///         Description = "Lambda based Data Catalog",
///         Type = "LAMBDA",
///         Parameters =
///         {
///             { "metadata-function", "arn:aws:lambda:eu-central-1:123456789012:function:not-important-lambda-function-1" },
///             { "record-function", "arn:aws:lambda:eu-central-1:123456789012:function:not-important-lambda-function-2" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/athena"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := athena.NewDataCatalog(ctx, "example", &athena.DataCatalogArgs{
/// 			Name:        pulumi.String("lambda-data-catalog"),
/// 			Description: pulumi.String("Lambda based Data Catalog"),
/// 			Type:        pulumi.String("LAMBDA"),
/// 			Parameters: pulumi.StringMap{
/// 				"metadata-function": pulumi.String("arn:aws:lambda:eu-central-1:123456789012:function:not-important-lambda-function-1"),
/// 				"record-function":   pulumi.String("arn:aws:lambda:eu-central-1:123456789012:function:not-important-lambda-function-2"),
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
/// import com.pulumi.aws.athena.DataCatalog;
/// import com.pulumi.aws.athena.DataCatalogArgs;
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
///         var example = new DataCatalog("example", DataCatalogArgs.builder()
///             .name("lambda-data-catalog")
///             .description("Lambda based Data Catalog")
///             .type("LAMBDA")
///             .parameters(Map.ofEntries(
///                 Map.entry("metadata-function", "arn:aws:lambda:eu-central-1:123456789012:function:not-important-lambda-function-1"),
///                 Map.entry("record-function", "arn:aws:lambda:eu-central-1:123456789012:function:not-important-lambda-function-2")
///             ))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:athena:DataCatalog
///     properties:
///       name: lambda-data-catalog
///       description: Lambda based Data Catalog
///       type: LAMBDA
///       parameters:
///         metadata-function: arn:aws:lambda:eu-central-1:123456789012:function:not-important-lambda-function-1
///         record-function: arn:aws:lambda:eu-central-1:123456789012:function:not-important-lambda-function-2
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import data catalogs using their `name`. For example:
///
/// ```sh
/// $ pulumi import aws:athena/dataCatalog:DataCatalog example example-data-catalog
/// ```
class DataCatalog extends pulumi.CustomResource {
  /// ARN of the data catalog.
  late final pulumi.Output<String> arn;
  /// Description of the data catalog.
  late final pulumi.Output<String> description;
  /// Name of the data catalog. The catalog name must be unique for the AWS account and can use a maximum of 128 alphanumeric, underscore, at sign, or hyphen characters.
  late final pulumi.Output<String> name;
  /// Key value pairs that specifies the Lambda function or functions to use for the data catalog. The mapping used depends on the catalog type.
  late final pulumi.Output<Map<String, String>> parameters;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Type of data catalog: `LAMBDA` for a federated catalog, `GLUE` for AWS Glue Catalog, or `HIVE` for an external hive metastore.
  late final pulumi.Output<String> type;

  /// Creates a new [DataCatalog].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DataCatalog]. {@macro pulumi_athena_data_catalog_data_catalog_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DataCatalog(
    String name, {
    DataCatalogArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:athena/dataCatalog:DataCatalog',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String>('description');
    this.name = registerOutput<String>('name');
    parameters = registerOutput<Map<String, String>>('parameters');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    type = registerOutput<String>('type');
  }

  /// Gets an existing [DataCatalog] resource's state with the given [name] and [id].
  static DataCatalog get(
    String name,
    pulumi.Input<String> id, {
    DataCatalogState? state,
  }) {
    return DataCatalog._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DataCatalog._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:athena/dataCatalog:DataCatalog',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String>('description');
    this.name = registerOutput<String>('name');
    parameters = registerOutput<Map<String, String>>('parameters');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    type = registerOutput<String>('type');
  }
}
