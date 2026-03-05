import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_args.dart';
import 'application_definition.dart';
import 'application_state.dart';
import 'application_timeouts.dart';

/// Resource for managing an [AWS Mainframe Modernization Application](https://docs.aws.amazon.com/m2/latest/userguide/applications-m2.html).
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
/// const example = new aws.m2.Application("example", {
///     name: "Example",
///     engineType: "bluage",
///     definition: {
///         content: `{
///   \"definition\": {
///     \"listeners\": [
///       {
///         \"port\": 8196,
///         \"type\": \"http\"
///       }
///     ],
///     \"ba-application\": {
///       \"app-location\": \"${s3_source}/PlanetsDemo-v1.zip\"
///     }
///   },
///   \"source-locations\": [
///     {
///       \"source-id\": \"s3-source\",
///       \"source-type\": \"s3\",
///       \"properties\": {
///         \"s3-bucket\": \"example-bucket\",
///         \"s3-key-prefix\": \"v1\"
///       }
///     }
///   ],
///   \"template-version\": \"2.0\"
/// }
///
/// `,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.m2.Application("example",
///     name="Example",
///     engine_type="bluage",
///     definition={
///         "content": f"""{{
///   \"definition\": {{
///     \"listeners\": [
///       {{
///         \"port\": 8196,
///         \"type\": \"http\"
///       }}
///     ],
///     \"ba-application\": {{
///       \"app-location\": \"{s3_source}/PlanetsDemo-v1.zip\"
///     }}
///   }},
///   \"source-locations\": [
///     {{
///       \"source-id\": \"s3-source\",
///       \"source-type\": \"s3\",
///       \"properties\": {{
///         \"s3-bucket\": \"example-bucket\",
///         \"s3-key-prefix\": \"v1\"
///       }}
///     }}
///   ],
///   \"template-version\": \"2.0\"
/// }}
///
/// """,
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
///     var example = new Aws.M2.Application("example", new()
///     {
///         Name = "Example",
///         EngineType = "bluage",
///         Definition = new Aws.M2.Inputs.ApplicationDefinitionArgs
///         {
///             Content = @$"{{
///   \""definition\"": {{
///     \""listeners\"": [
///       {{
///         \""port\"": 8196,
///         \""type\"": \""http\""
///       }}
///     ],
///     \""ba-application\"": {{
///       \""app-location\"": \""{s3_source}/PlanetsDemo-v1.zip\""
///     }}
///   }},
///   \""source-locations\"": [
///     {{
///       \""source-id\"": \""s3-source\"",
///       \""source-type\"": \""s3\"",
///       \""properties\"": {{
///         \""s3-bucket\"": \""example-bucket\"",
///         \""s3-key-prefix\"": \""v1\""
///       }}
///     }}
///   ],
///   \""template-version\"": \""2.0\""
/// }}
///
/// ",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/m2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := m2.NewApplication(ctx, "example", &m2.ApplicationArgs{
/// 			Name:       pulumi.String("Example"),
/// 			EngineType: pulumi.String("bluage"),
/// 			Definition: &m2.ApplicationDefinitionArgs{
/// 				Content: pulumi.Sprintf(`{
///   \"definition\": {
///     \"listeners\": [
///       {
///         \"port\": 8196,
///         \"type\": \"http\"
///       }
///     ],
///     \"ba-application\": {
///       \"app-location\": \"%v/PlanetsDemo-v1.zip\"
///     }
///   },
///   \"source-locations\": [
///     {
///       \"source-id\": \"s3-source\",
///       \"source-type\": \"s3\",
///       \"properties\": {
///         \"s3-bucket\": \"example-bucket\",
///         \"s3-key-prefix\": \"v1\"
///       }
///     }
///   ],
///   \"template-version\": \"2.0\"
/// }
///
/// `, s3_source),
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
/// import com.pulumi.aws.m2.Application;
/// import com.pulumi.aws.m2.ApplicationArgs;
/// import com.pulumi.aws.m2.inputs.ApplicationDefinitionArgs;
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
///         var example = new Application("example", ApplicationArgs.builder()
///             .name("Example")
///             .engineType("bluage")
///             .definition(ApplicationDefinitionArgs.builder()
///                 .content("""
/// {
///   \"definition\": {
///     \"listeners\": [
///       {
///         \"port\": 8196,
///         \"type\": \"http\"
///       }
///     ],
///     \"ba-application\": {
///       \"app-location\": \"%s/PlanetsDemo-v1.zip\"
///     }
///   },
///   \"source-locations\": [
///     {
///       \"source-id\": \"s3-source\",
///       \"source-type\": \"s3\",
///       \"properties\": {
///         \"s3-bucket\": \"example-bucket\",
///         \"s3-key-prefix\": \"v1\"
///       }
///     }
///   ],
///   \"template-version\": \"2.0\"
/// }
///
/// ", s3_source))
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:m2:Application
///     properties:
///       name: Example
///       engineType: bluage
///       definition:
///         content: |+
///           {
///             \"definition\": {
///               \"listeners\": [
///                 {
///                   \"port\": 8196,
///                   \"type\": \"http\"
///                 }
///               ],
///               \"ba-application\": {
///                 \"app-location\": \"${["s3-source"]}/PlanetsDemo-v1.zip\"
///               }
///             },
///             \"source-locations\": [
///               {
///                 \"source-id\": \"s3-source\",
///                 \"source-type\": \"s3\",
///                 \"properties\": {
///                   \"s3-bucket\": \"example-bucket\",
///                   \"s3-key-prefix\": \"v1\"
///                 }
///               }
///             ],
///             \"template-version\": \"2.0\"
///           }
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Mainframe Modernization Application using the `01234567890abcdef012345678`. For example:
///
/// ```sh
/// $ pulumi import aws:m2/application:Application example 01234567890abcdef012345678
/// ```
class Application extends pulumi.CustomResource {
  /// Id of the Application.
  late final pulumi.Output<String> applicationId;
  /// ARN of the Application.
  late final pulumi.Output<String> arn;
  /// Current version of the application deployed.
  late final pulumi.Output<int> currentVersion;
  /// The application definition for this application. You can specify either inline JSON or an S3 bucket location.
  late final pulumi.Output<ApplicationDefinition> definition;
  /// Description of the application.
  late final pulumi.Output<String?> description;
  /// Engine type must be `microfocus | bluage`.
  late final pulumi.Output<String> engineType;
  /// KMS Key to use for the Application.
  late final pulumi.Output<String?> kmsKeyId;
  /// Unique identifier of the application.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// ARN of role for application to use to access AWS resources.
  late final pulumi.Output<String?> roleArn;
  /// Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<ApplicationTimeouts?> timeouts;

  /// Creates a new [Application].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Application]. {@macro pulumi_m2_application_application_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Application(
    String name, {
    ApplicationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:m2/application:Application',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    applicationId = registerOutput<String>('applicationId');
    arn = registerOutput<String>('arn');
    currentVersion = registerOutput<int>('currentVersion');
    definition = registerOutput<ApplicationDefinition>('definition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationDefinition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String?>('description');
    engineType = registerOutput<String>('engineType');
    kmsKeyId = registerOutput<String?>('kmsKeyId');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    roleArn = registerOutput<String?>('roleArn');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    timeouts = registerOutput<ApplicationTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [Application] resource's state with the given [name] and [id].
  static Application get(
    String name,
    pulumi.Input<String> id, {
    ApplicationState? state,
  }) {
    return Application._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Application._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:m2/application:Application',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    applicationId = registerOutput<String>('applicationId');
    arn = registerOutput<String>('arn');
    currentVersion = registerOutput<int>('currentVersion');
    definition = registerOutput<ApplicationDefinition>('definition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationDefinition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    description = registerOutput<String?>('description');
    engineType = registerOutput<String>('engineType');
    kmsKeyId = registerOutput<String?>('kmsKeyId');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    roleArn = registerOutput<String?>('roleArn');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    timeouts = registerOutput<ApplicationTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
