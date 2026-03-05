import 'package:pulumi/pulumi.dart' as pulumi;
import 'alert_manager_definition_args.dart';
import 'alert_manager_definition_state.dart';

/// Manages an Amazon Managed Service for Prometheus (AMP) Alert Manager Definition
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const demo = new aws.amp.Workspace("demo", {});
/// const demoAlertManagerDefinition = new aws.amp.AlertManagerDefinition("demo", {
///     workspaceId: demo.id,
///     definition: `alertmanager_config: |
///   route:
///     receiver: 'default'
///   receivers:
///     - name: 'default'
/// `,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// demo = aws.amp.Workspace("demo")
/// demo_alert_manager_definition = aws.amp.AlertManagerDefinition("demo",
///     workspace_id=demo.id,
///     definition="""alertmanager_config: |
///   route:
///     receiver: 'default'
///   receivers:
///     - name: 'default'
/// """)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var demo = new Aws.Amp.Workspace("demo");
///
///     var demoAlertManagerDefinition = new Aws.Amp.AlertManagerDefinition("demo", new()
///     {
///         WorkspaceId = demo.Id,
///         Definition = @"alertmanager_config: |
///   route:
///     receiver: 'default'
///   receivers:
///     - name: 'default'
/// ",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/amp"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		demo, err := amp.NewWorkspace(ctx, "demo", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = amp.NewAlertManagerDefinition(ctx, "demo", &amp.AlertManagerDefinitionArgs{
/// 			WorkspaceId: demo.ID(),
/// 			Definition: pulumi.String(`alertmanager_config: |
///   route:
///     receiver: 'default'
///   receivers:
///     - name: 'default'
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
/// import com.pulumi.aws.amp.Workspace;
/// import com.pulumi.aws.amp.AlertManagerDefinition;
/// import com.pulumi.aws.amp.AlertManagerDefinitionArgs;
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
///         var demo = new Workspace("demo");
///
///         var demoAlertManagerDefinition = new AlertManagerDefinition("demoAlertManagerDefinition", AlertManagerDefinitionArgs.builder()
///             .workspaceId(demo.id())
///             .definition("""
/// alertmanager_config: |
///   route:
///     receiver: 'default'
///   receivers:
///     - name: 'default'
///             """)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   demo:
///     type: aws:amp:Workspace
///   demoAlertManagerDefinition:
///     type: aws:amp:AlertManagerDefinition
///     name: demo
///     properties:
///       workspaceId: ${demo.id}
///       definition: |
///         alertmanager_config: |
///           route:
///             receiver: 'default'
///           receivers:
///             - name: 'default'
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import the prometheus alert manager definition using the workspace identifier. For example:
///
/// ```sh
/// $ pulumi import aws:amp/alertManagerDefinition:AlertManagerDefinition demo ws-C6DCB907-F2D7-4D96-957B-66691F865D8B
/// ```
class AlertManagerDefinition extends pulumi.CustomResource {
  /// the alert manager definition that you want to be applied. See more [in AWS Docs](https://docs.aws.amazon.com/prometheus/latest/userguide/AMP-alert-manager.html).
  late final pulumi.Output<String> definition;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// ID of the prometheus workspace the alert manager definition should be linked to
  late final pulumi.Output<String> workspaceId;

  /// Creates a new [AlertManagerDefinition].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AlertManagerDefinition]. {@macro pulumi_amp_alert_manager_definition_alert_manager_definition_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AlertManagerDefinition(
    String name, {
    AlertManagerDefinitionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:amp/alertManagerDefinition:AlertManagerDefinition',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    definition = registerOutput<String>('definition');
    region = registerOutput<String>('region');
    workspaceId = registerOutput<String>('workspaceId');
  }

  /// Gets an existing [AlertManagerDefinition] resource's state with the given [name] and [id].
  static AlertManagerDefinition get(
    String name,
    pulumi.Input<String> id, {
    AlertManagerDefinitionState? state,
  }) {
    return AlertManagerDefinition._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AlertManagerDefinition._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:amp/alertManagerDefinition:AlertManagerDefinition',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    definition = registerOutput<String>('definition');
    region = registerOutput<String>('region');
    workspaceId = registerOutput<String>('workspaceId');
  }
}
