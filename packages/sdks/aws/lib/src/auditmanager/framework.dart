import 'package:pulumi/pulumi.dart' as pulumi;
import 'framework_args.dart';
import 'framework_control_set.dart';
import 'framework_state.dart';

/// Resource for managing an AWS Audit Manager Framework.
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
/// const test = new aws.auditmanager.Framework("test", {
///     controlSets: [{
///         controls: [
///             {
///                 id: test1.id,
///             },
///             {
///                 id: test2.id,
///             },
///         ],
///         name: "example",
///     }],
///     name: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.auditmanager.Framework("test",
///     control_sets=[{
///         "controls": [
///             {
///                 "id": test1["id"],
///             },
///             {
///                 "id": test2["id"],
///             },
///         ],
///         "name": "example",
///     }],
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
///     var test = new Aws.Auditmanager.Framework("test", new()
///     {
///         ControlSets = new[]
///         {
///             new Aws.Auditmanager.Inputs.FrameworkControlSetArgs
///             {
///                 Controls = new[]
///                 {
///                     new Aws.Auditmanager.Inputs.FrameworkControlSetControlArgs
///                     {
///                         Id = test1.Id,
///                     },
///                     new Aws.Auditmanager.Inputs.FrameworkControlSetControlArgs
///                     {
///                         Id = test2.Id,
///                     },
///                 },
///                 Name = "example",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/auditmanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := auditmanager.NewFramework(ctx, "test", &auditmanager.FrameworkArgs{
/// 			ControlSets: auditmanager.FrameworkControlSetArray{
/// 				&auditmanager.FrameworkControlSetArgs{
/// 					Controls: auditmanager.FrameworkControlSetControlArray{
/// 						&auditmanager.FrameworkControlSetControlArgs{
/// 							Id: pulumi.Any(test1.Id),
/// 						},
/// 						&auditmanager.FrameworkControlSetControlArgs{
/// 							Id: pulumi.Any(test2.Id),
/// 						},
/// 					},
/// 					Name: pulumi.String("example"),
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
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_auditmanager_framework" "test" {
///   control_sets {
///     controls {
///       id = test1.id
///     }
///     controls {
///       id = test2.id
///     }
///     name = "example"
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
/// import com.pulumi.aws.auditmanager.Framework;
/// import com.pulumi.aws.auditmanager.FrameworkArgs;
/// import com.pulumi.aws.auditmanager.inputs.FrameworkControlSetArgs;
/// import com.pulumi.aws.auditmanager.inputs.FrameworkControlSetControlArgs;
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
///         var test = new Framework("test", FrameworkArgs.builder()
///             .controlSets(FrameworkControlSetArgs.builder()
///                 .controls(
///                     FrameworkControlSetControlArgs.builder()
///                         .id(test1.id())
///                         .build(),
///                     FrameworkControlSetControlArgs.builder()
///                         .id(test2.id())
///                         .build())
///                 .name("example")
///                 .build())
///             .name("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:auditmanager:Framework
///     properties:
///       controlSets:
///         - controls:
///             - id: ${test1.id}
///             - id: ${test2.id}
///           name: example
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
/// * `id` (String) Unique identifier for the framework.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import Audit Manager Framework using the framework `id`. For example:
///
/// ```sh
/// $ pulumi import aws:auditmanager/framework:Framework example abc123-de45
/// ```
class Framework extends pulumi.CustomResource {
  /// ARN of the framework.
  /// * `control_sets[*].id` - Unique identifier for the framework control set.
  late final pulumi.Output<String> arn;
  /// Compliance type that the new custom framework supports, such as `CIS` or `HIPAA`.
  late final pulumi.Output<String?> complianceType;
  /// Configuration block(s) for the control sets that are associated with the framework. See `controlSets` Block below for details.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<List<FrameworkControlSet>?> controlSets;
  /// Description of the framework.
  late final pulumi.Output<String?> description;
  /// Framework type, such as a custom framework or a standard framework.
  late final pulumi.Output<String> frameworkType;
  /// Name of the framework.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// A map of tags to assign to the framework. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [Framework].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Framework]. {@macro pulumi_auditmanager_framework_framework_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Framework(
    String name, {
    FrameworkArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:auditmanager/framework:Framework',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    complianceType = registerOutput<String?>('complianceType');
    controlSets = registerOutput<List<FrameworkControlSet>?>('controlSets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FrameworkControlSet>(guardedValue, (value) => FrameworkControlSet.fromMap((value as Map).cast<String, dynamic>())); });
    description = registerOutput<String?>('description');
    frameworkType = registerOutput<String>('frameworkType');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [Framework] resource's state with the given [name] and [id].
  static Framework get(
    String name,
    pulumi.Input<String> id, {
    FrameworkState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Framework._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Framework._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:auditmanager/framework:Framework',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    complianceType = registerOutput<String?>('complianceType');
    controlSets = registerOutput<List<FrameworkControlSet>?>('controlSets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FrameworkControlSet>(guardedValue, (value) => FrameworkControlSet.fromMap((value as Map).cast<String, dynamic>())); });
    description = registerOutput<String?>('description');
    frameworkType = registerOutput<String>('frameworkType');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [Framework] resource.
  Framework.reference(String urn)
    : super(
        'aws:auditmanager/framework:Framework',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    complianceType = registerOutput<String?>('complianceType');
    controlSets = registerOutput<List<FrameworkControlSet>?>('controlSets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FrameworkControlSet>(guardedValue, (value) => FrameworkControlSet.fromMap((value as Map).cast<String, dynamic>())); });
    description = registerOutput<String?>('description');
    frameworkType = registerOutput<String>('frameworkType');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
