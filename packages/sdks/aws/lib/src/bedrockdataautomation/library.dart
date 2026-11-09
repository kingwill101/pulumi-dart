import 'package:pulumi/pulumi.dart' as pulumi;
import 'library_args.dart';
import 'library_encryption_configuration.dart';
import 'library_entity_type.dart';
import 'library_state.dart';
import 'library_timeouts.dart';

/// Manages an Amazon Bedrock Data Automation Library. A library holds entities, such as custom vocabulary, that a project uses when it processes files.
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
/// const example = new aws.bedrockdataautomation.Library("example", {
///     name: "example",
///     description: "Medical vocabulary",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.bedrockdataautomation.Library("example",
///     name="example",
///     description="Medical vocabulary")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.BedrockDataAutomation.Library("example", new()
///     {
///         Name = "example",
///         Description = "Medical vocabulary",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/bedrockdataautomation"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := bedrockdataautomation.NewLibrary(ctx, "example", &bedrockdataautomation.LibraryArgs{
/// 			Name:        pulumi.String("example"),
/// 			Description: pulumi.String("Medical vocabulary"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// terraform {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_bedrockdataautomation_library" "example" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name        = "example"
///   description = "Medical vocabulary"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.bedrockdataautomation.Library;
/// import com.pulumi.aws.bedrockdataautomation.LibraryArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var example = new Library("example", LibraryArgs.builder()
///             .name("example")
///             .description("Medical vocabulary")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:bedrockdataautomation:Library
///     properties:
///       name: example
///       description: Medical vocabulary
/// ```
///
///
/// ### Use With a Project
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.bedrockdataautomation.Library("example", {name: "example"});
/// const exampleProject = new aws.bedrockdataautomation.Project("example", {
///     dataAutomationLibraryConfiguration: {
///         library: {
///             libraryArn: example.arn,
///         },
///     },
///     name: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.bedrockdataautomation.Library("example", name="example")
/// example_project = aws.bedrockdataautomation.Project("example",
///     data_automation_library_configuration={
///         "library": {
///             "library_arn": example.arn,
///         },
///     },
///     name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.BedrockDataAutomation.Library("example", new()
///     {
///         Name = "example",
///     });
///
///     var exampleProject = new Aws.BedrockDataAutomation.Project("example", new()
///     {
///         DataAutomationLibraryConfiguration = new Aws.BedrockDataAutomation.Inputs.ProjectDataAutomationLibraryConfigurationArgs
///         {
///             Library = new Aws.BedrockDataAutomation.Inputs.ProjectDataAutomationLibraryConfigurationLibraryArgs
///             {
///                 LibraryArn = example.Arn,
///             },
///         },
///         Name = "example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/bedrockdataautomation"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := bedrockdataautomation.NewLibrary(ctx, "example", &bedrockdataautomation.LibraryArgs{
/// 			Name: pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bedrockdataautomation.NewProject(ctx, "example", &bedrockdataautomation.ProjectArgs{
/// 			DataAutomationLibraryConfiguration: &bedrockdataautomation.ProjectDataAutomationLibraryConfigurationArgs{
/// 				Library: &bedrockdataautomation.ProjectDataAutomationLibraryConfigurationLibraryArgs{
/// 					LibraryArn: example.Arn,
/// 				},
/// 			},
/// 			Name: pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// terraform {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_bedrockdataautomation_library" "example" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name = "example"
/// }
/// resource "aws_bedrockdataautomation_project" "example" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   data_automation_library_configuration {
///     library {
///       library_arn = aws_bedrockdataautomation_library.example.arn
///     }
///   }
///   name = "example"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.bedrockdataautomation.Library;
/// import com.pulumi.aws.bedrockdataautomation.LibraryArgs;
/// import com.pulumi.aws.bedrockdataautomation.Project;
/// import com.pulumi.aws.bedrockdataautomation.ProjectArgs;
/// import com.pulumi.aws.bedrockdataautomation.inputs.ProjectDataAutomationLibraryConfigurationArgs;
/// import com.pulumi.aws.bedrockdataautomation.inputs.ProjectDataAutomationLibraryConfigurationLibraryArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var example = new Library("example", LibraryArgs.builder()
///             .name("example")
///             .build());
///
///         var exampleProject = new Project("exampleProject", ProjectArgs.builder()
///             .dataAutomationLibraryConfiguration(ProjectDataAutomationLibraryConfigurationArgs.builder()
///                 .library(ProjectDataAutomationLibraryConfigurationLibraryArgs.builder()
///                     .libraryArn(example.arn())
///                     .build())
///                 .build())
///             .name("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:bedrockdataautomation:Library
///     properties:
///       name: example
///   exampleProject:
///     type: aws:bedrockdataautomation:Project
///     name: example
///     properties:
///       dataAutomationLibraryConfiguration:
///         library:
///           libraryArn: ${example.arn}
///       name: example
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `arn` (String) ARN of the library.
///
///
/// Using `pulumi import`, import Bedrock Data Automation Library using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:bedrockdataautomation/library:Library example arn:aws:bedrock:us-west-2:123456789012:data-automation-library/abcd1234efgh
/// ```
class Library extends pulumi.CustomResource {
  /// ARN of the library.
  late final pulumi.Output<String> arn;
  /// Time the library was created, in RFC3339 format.
  late final pulumi.Output<String> creationTime;
  /// Description of the library. Removing the description forces a new resource, because the service can't remove a description from an existing library.
  late final pulumi.Output<String?> description;
  /// Encryption settings for the library. Changing this block forces a new resource. See `encryptionConfiguration` Block below.
  late final pulumi.Output<LibraryEncryptionConfiguration?> encryptionConfiguration;
  /// Entity types in the library. See `entityTypes` Block below.
  late final pulumi.Output<List<LibraryEntityType>> entityTypes;
  /// Name of the library. Changing this value forces a new resource.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Status of the library.
  late final pulumi.Output<String> status;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<LibraryTimeouts?> timeouts;

  /// Creates a new [Library].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Library]. {@macro pulumi_bedrockdataautomation_library_library_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Library(
    String name, {
    LibraryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:bedrockdataautomation/library:Library',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.54.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    creationTime = registerOutput<String>('creationTime');
    description = registerOutput<String?>('description');
    encryptionConfiguration = registerOutput<LibraryEncryptionConfiguration?>('encryptionConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LibraryEncryptionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    entityTypes = registerOutput<List<LibraryEntityType>>('entityTypes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<LibraryEntityType>(guardedValue, (value) => LibraryEntityType.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<LibraryTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LibraryTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [Library] resource's state with the given [name] and [id].
  static Library get(
    String name,
    pulumi.Input<String> id, {
    LibraryState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Library._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Library._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:bedrockdataautomation/library:Library',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    creationTime = registerOutput<String>('creationTime');
    description = registerOutput<String?>('description');
    encryptionConfiguration = registerOutput<LibraryEncryptionConfiguration?>('encryptionConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LibraryEncryptionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    entityTypes = registerOutput<List<LibraryEntityType>>('entityTypes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<LibraryEntityType>(guardedValue, (value) => LibraryEntityType.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<LibraryTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LibraryTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [Library] resource.
  Library.reference(String urn)
    : super(
        'aws:bedrockdataautomation/library:Library',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    creationTime = registerOutput<String>('creationTime');
    description = registerOutput<String?>('description');
    encryptionConfiguration = registerOutput<LibraryEncryptionConfiguration?>('encryptionConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LibraryEncryptionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    entityTypes = registerOutput<List<LibraryEntityType>>('entityTypes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<LibraryEntityType>(guardedValue, (value) => LibraryEntityType.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<LibraryTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LibraryTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
