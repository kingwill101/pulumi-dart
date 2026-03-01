import 'package:pulumi/pulumi.dart' as pulumi;
import 'classifier_args.dart';
import 'classifier_csv_classifier.dart';
import 'classifier_grok_classifier.dart';
import 'classifier_json_classifier.dart';
import 'classifier_state.dart';
import 'classifier_xml_classifier.dart';

/// Provides a Glue Classifier resource.
///
/// > **NOTE:** It is only valid to create one type of classifier (CSV, grok, JSON, or XML). Changing classifier types will recreate the classifier.
///
/// ## Example Usage
///
/// ### CSV Classifier
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.glue.Classifier("example", {
///     name: "example",
///     csvClassifier: {
///         allowSingleColumn: false,
///         containsHeader: "PRESENT",
///         delimiter: ",",
///         disableValueTrimming: false,
///         headers: [
///             "example1",
///             "example2",
///         ],
///         quoteSymbol: "'",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.glue.Classifier("example",
///     name="example",
///     csv_classifier={
///         "allow_single_column": False,
///         "contains_header": "PRESENT",
///         "delimiter": ",",
///         "disable_value_trimming": False,
///         "headers": [
///             "example1",
///             "example2",
///         ],
///         "quote_symbol": "'",
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
///     var example = new Aws.Glue.Classifier("example", new()
///     {
///         Name = "example",
///         CsvClassifier = new Aws.Glue.Inputs.ClassifierCsvClassifierArgs
///         {
///             AllowSingleColumn = false,
///             ContainsHeader = "PRESENT",
///             Delimiter = ",",
///             DisableValueTrimming = false,
///             Headers = new[]
///             {
///                 "example1",
///                 "example2",
///             },
///             QuoteSymbol = "'",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/glue"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := glue.NewClassifier(ctx, "example", &glue.ClassifierArgs{
/// 			Name: pulumi.String("example"),
/// 			CsvClassifier: &glue.ClassifierCsvClassifierArgs{
/// 				AllowSingleColumn:    pulumi.Bool(false),
/// 				ContainsHeader:       pulumi.String("PRESENT"),
/// 				Delimiter:            pulumi.String(","),
/// 				DisableValueTrimming: pulumi.Bool(false),
/// 				Headers: pulumi.StringArray{
/// 					pulumi.String("example1"),
/// 					pulumi.String("example2"),
/// 				},
/// 				QuoteSymbol: pulumi.String("'"),
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
/// import com.pulumi.aws.glue.Classifier;
/// import com.pulumi.aws.glue.ClassifierArgs;
/// import com.pulumi.aws.glue.inputs.ClassifierCsvClassifierArgs;
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
///         var example = new Classifier("example", ClassifierArgs.builder()
///             .name("example")
///             .csvClassifier(ClassifierCsvClassifierArgs.builder()
///                 .allowSingleColumn(false)
///                 .containsHeader("PRESENT")
///                 .delimiter(",")
///                 .disableValueTrimming(false)
///                 .headers(
///                     "example1",
///                     "example2")
///                 .quoteSymbol("'")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:glue:Classifier
///     properties:
///       name: example
///       csvClassifier:
///         allowSingleColumn: false
///         containsHeader: PRESENT
///         delimiter: ','
///         disableValueTrimming: false
///         headers:
///           - example1
///           - example2
///         quoteSymbol: ''''
/// ```
///
///
/// ### Grok Classifier
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.glue.Classifier("example", {
///     name: "example",
///     grokClassifier: {
///         classification: "example",
///         grokPattern: "example",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.glue.Classifier("example",
///     name="example",
///     grok_classifier={
///         "classification": "example",
///         "grok_pattern": "example",
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
///     var example = new Aws.Glue.Classifier("example", new()
///     {
///         Name = "example",
///         GrokClassifier = new Aws.Glue.Inputs.ClassifierGrokClassifierArgs
///         {
///             Classification = "example",
///             GrokPattern = "example",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/glue"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := glue.NewClassifier(ctx, "example", &glue.ClassifierArgs{
/// 			Name: pulumi.String("example"),
/// 			GrokClassifier: &glue.ClassifierGrokClassifierArgs{
/// 				Classification: pulumi.String("example"),
/// 				GrokPattern:    pulumi.String("example"),
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
/// import com.pulumi.aws.glue.Classifier;
/// import com.pulumi.aws.glue.ClassifierArgs;
/// import com.pulumi.aws.glue.inputs.ClassifierGrokClassifierArgs;
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
///         var example = new Classifier("example", ClassifierArgs.builder()
///             .name("example")
///             .grokClassifier(ClassifierGrokClassifierArgs.builder()
///                 .classification("example")
///                 .grokPattern("example")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:glue:Classifier
///     properties:
///       name: example
///       grokClassifier:
///         classification: example
///         grokPattern: example
/// ```
///
///
/// ### JSON Classifier
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.glue.Classifier("example", {
///     name: "example",
///     jsonClassifier: {
///         jsonPath: "example",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.glue.Classifier("example",
///     name="example",
///     json_classifier={
///         "json_path": "example",
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
///     var example = new Aws.Glue.Classifier("example", new()
///     {
///         Name = "example",
///         JsonClassifier = new Aws.Glue.Inputs.ClassifierJsonClassifierArgs
///         {
///             JsonPath = "example",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/glue"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := glue.NewClassifier(ctx, "example", &glue.ClassifierArgs{
/// 			Name: pulumi.String("example"),
/// 			JsonClassifier: &glue.ClassifierJsonClassifierArgs{
/// 				JsonPath: pulumi.String("example"),
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
/// import com.pulumi.aws.glue.Classifier;
/// import com.pulumi.aws.glue.ClassifierArgs;
/// import com.pulumi.aws.glue.inputs.ClassifierJsonClassifierArgs;
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
///         var example = new Classifier("example", ClassifierArgs.builder()
///             .name("example")
///             .jsonClassifier(ClassifierJsonClassifierArgs.builder()
///                 .jsonPath("example")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:glue:Classifier
///     properties:
///       name: example
///       jsonClassifier:
///         jsonPath: example
/// ```
///
///
/// ### XML Classifier
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.glue.Classifier("example", {
///     name: "example",
///     xmlClassifier: {
///         classification: "example",
///         rowTag: "example",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.glue.Classifier("example",
///     name="example",
///     xml_classifier={
///         "classification": "example",
///         "row_tag": "example",
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
///     var example = new Aws.Glue.Classifier("example", new()
///     {
///         Name = "example",
///         XmlClassifier = new Aws.Glue.Inputs.ClassifierXmlClassifierArgs
///         {
///             Classification = "example",
///             RowTag = "example",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/glue"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := glue.NewClassifier(ctx, "example", &glue.ClassifierArgs{
/// 			Name: pulumi.String("example"),
/// 			XmlClassifier: &glue.ClassifierXmlClassifierArgs{
/// 				Classification: pulumi.String("example"),
/// 				RowTag:         pulumi.String("example"),
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
/// import com.pulumi.aws.glue.Classifier;
/// import com.pulumi.aws.glue.ClassifierArgs;
/// import com.pulumi.aws.glue.inputs.ClassifierXmlClassifierArgs;
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
///         var example = new Classifier("example", ClassifierArgs.builder()
///             .name("example")
///             .xmlClassifier(ClassifierXmlClassifierArgs.builder()
///                 .classification("example")
///                 .rowTag("example")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:glue:Classifier
///     properties:
///       name: example
///       xmlClassifier:
///         classification: example
///         rowTag: example
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Glue Classifiers using their name. For example:
///
/// ```sh
/// $ pulumi import aws:glue/classifier:Classifier MyClassifier MyClassifier
/// ```
class Classifier extends pulumi.CustomResource {
  /// A classifier for CSV content. Defined below.
  late final pulumi.Output<ClassifierCsvClassifier?> csvClassifier;
  /// A classifier that uses grok patterns. Defined below.
  late final pulumi.Output<ClassifierGrokClassifier?> grokClassifier;
  /// A classifier for JSON content. Defined below.
  late final pulumi.Output<ClassifierJsonClassifier?> jsonClassifier;
  /// The name of the classifier.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// A classifier for XML content. Defined below.
  late final pulumi.Output<ClassifierXmlClassifier?> xmlClassifier;

  /// Creates a new [Classifier].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Classifier]. {@macro pulumi_glue_classifier_classifier_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Classifier(
    String name, {
    ClassifierArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:glue/classifier:Classifier',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.csvClassifier = registerOutput<ClassifierCsvClassifier?>('csvClassifier');
    this.grokClassifier = registerOutput<ClassifierGrokClassifier?>('grokClassifier');
    this.jsonClassifier = registerOutput<ClassifierJsonClassifier?>('jsonClassifier');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.xmlClassifier = registerOutput<ClassifierXmlClassifier?>('xmlClassifier');
  }

  /// Gets an existing [Classifier] resource's state with the given [name] and [id].
  static Classifier get(
    String name,
    pulumi.Input<String> id, {
    ClassifierState? state,
  }) {
    return Classifier._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Classifier._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:glue/classifier:Classifier',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.csvClassifier = registerOutput<ClassifierCsvClassifier?>('csvClassifier');
    this.grokClassifier = registerOutput<ClassifierGrokClassifier?>('grokClassifier');
    this.jsonClassifier = registerOutput<ClassifierJsonClassifier?>('jsonClassifier');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.xmlClassifier = registerOutput<ClassifierXmlClassifier?>('xmlClassifier');
  }
}
