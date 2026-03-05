import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_action_args.dart';
import 'service_action_definition.dart';
import 'service_action_state.dart';

/// Manages a Service Catalog self-service action.
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
/// const example = new aws.servicecatalog.ServiceAction("example", {
///     description: "Motor generator unit",
///     name: "MGU",
///     definition: {
///         name: "AWS-RestartEC2Instance",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.servicecatalog.ServiceAction("example",
///     description="Motor generator unit",
///     name="MGU",
///     definition={
///         "name": "AWS-RestartEC2Instance",
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
///     var example = new Aws.ServiceCatalog.ServiceAction("example", new()
///     {
///         Description = "Motor generator unit",
///         Name = "MGU",
///         Definition = new Aws.ServiceCatalog.Inputs.ServiceActionDefinitionArgs
///         {
///             Name = "AWS-RestartEC2Instance",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/servicecatalog"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := servicecatalog.NewServiceAction(ctx, "example", &servicecatalog.ServiceActionArgs{
/// 			Description: pulumi.String("Motor generator unit"),
/// 			Name:        pulumi.String("MGU"),
/// 			Definition: &servicecatalog.ServiceActionDefinitionArgs{
/// 				Name: pulumi.String("AWS-RestartEC2Instance"),
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
/// import com.pulumi.aws.servicecatalog.ServiceAction;
/// import com.pulumi.aws.servicecatalog.ServiceActionArgs;
/// import com.pulumi.aws.servicecatalog.inputs.ServiceActionDefinitionArgs;
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
///         var example = new ServiceAction("example", ServiceActionArgs.builder()
///             .description("Motor generator unit")
///             .name("MGU")
///             .definition(ServiceActionDefinitionArgs.builder()
///                 .name("AWS-RestartEC2Instance")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:servicecatalog:ServiceAction
///     properties:
///       description: Motor generator unit
///       name: MGU
///       definition:
///         name: AWS-RestartEC2Instance
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.servicecatalog.ServiceAction` using the service action ID. For example:
///
/// ```sh
/// $ pulumi import aws:servicecatalog/serviceAction:ServiceAction example act-f1w12eperfslh
/// ```
class ServiceAction extends pulumi.CustomResource {
  /// Language code. Valid values are `en` (English), `jp` (Japanese), and `zh` (Chinese). Default is `en`.
  late final pulumi.Output<String?> acceptLanguage;

  /// Self-service action definition configuration block. Detailed below.
  late final pulumi.Output<ServiceActionDefinition> definition;

  /// Self-service action description.
  late final pulumi.Output<String> description;

  /// Self-service action name.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [ServiceAction].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServiceAction]. {@macro pulumi_servicecatalog_service_action_service_action_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServiceAction(
    String name, {
    ServiceActionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:servicecatalog/serviceAction:ServiceAction',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    acceptLanguage = registerOutput<String?>('acceptLanguage');
    definition = registerOutput<ServiceActionDefinition>(
      'definition',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ServiceActionDefinition.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    description = registerOutput<String>('description');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
  }

  /// Gets an existing [ServiceAction] resource's state with the given [name] and [id].
  static ServiceAction get(
    String name,
    pulumi.Input<String> id, {
    ServiceActionState? state,
  }) {
    return ServiceAction._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ServiceAction._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:servicecatalog/serviceAction:ServiceAction',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    acceptLanguage = registerOutput<String?>('acceptLanguage');
    definition = registerOutput<ServiceActionDefinition>(
      'definition',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ServiceActionDefinition.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    description = registerOutput<String>('description');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
  }
}
