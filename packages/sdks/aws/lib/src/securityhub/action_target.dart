import 'package:pulumi/pulumi.dart' as pulumi;
import 'action_target_args.dart';
import 'action_target_state.dart';

/// Creates Security Hub custom action.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.securityhub.Account("example", {});
/// const exampleActionTarget = new aws.securityhub.ActionTarget("example", {
///     name: "Send notification to chat",
///     identifier: "SendToChat",
///     description: "This is custom action sends selected findings to chat",
/// }, {
///     dependsOn: [example],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.securityhub.Account("example")
/// example_action_target = aws.securityhub.ActionTarget("example",
///     name="Send notification to chat",
///     identifier="SendToChat",
///     description="This is custom action sends selected findings to chat",
///     opts = pulumi.ResourceOptions(depends_on=[example]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.SecurityHub.Account("example");
///
///     var exampleActionTarget = new Aws.SecurityHub.ActionTarget("example", new()
///     {
///         Name = "Send notification to chat",
///         Identifier = "SendToChat",
///         Description = "This is custom action sends selected findings to chat",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             example,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/securityhub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := securityhub.NewAccount(ctx, "example", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = securityhub.NewActionTarget(ctx, "example", &securityhub.ActionTargetArgs{
/// 			Name:        pulumi.String("Send notification to chat"),
/// 			Identifier:  pulumi.String("SendToChat"),
/// 			Description: pulumi.String("This is custom action sends selected findings to chat"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			example,
/// 		}))
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
/// resource "aws_securityhub_account" "example" {
/// }
/// resource "aws_securityhub_actiontarget" "example" {
///   depends_on  = [aws_securityhub_account.example]
///   name        = "Send notification to chat"
///   identifier  = "SendToChat"
///   description = "This is custom action sends selected findings to chat"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.securityhub.Account;
/// import com.pulumi.aws.securityhub.ActionTarget;
/// import com.pulumi.aws.securityhub.ActionTargetArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var example = new Account("example");
///
///         var exampleActionTarget = new ActionTarget("exampleActionTarget", ActionTargetArgs.builder()
///             .name("Send notification to chat")
///             .identifier("SendToChat")
///             .description("This is custom action sends selected findings to chat")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(example)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:securityhub:Account
///   exampleActionTarget:
///     type: aws:securityhub:ActionTarget
///     name: example
///     properties:
///       name: Send notification to chat
///       identifier: SendToChat
///       description: This is custom action sends selected findings to chat
///     options:
///       dependsOn:
///         - ${example}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Security Hub custom action ARN.
///
///
/// Using `pulumi import`, import Security Hub custom actions using `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:securityhub/actionTarget:ActionTarget example arn:aws:securityhub:eu-west-1:123456789012:action/custom/a
/// ```
class ActionTarget extends pulumi.CustomResource {
  /// ARN of the Security Hub custom action target.
  late final pulumi.Output<String> arn;
  /// The name of the custom action target.
  late final pulumi.Output<String> description;
  /// The ID for the custom action target.
  late final pulumi.Output<String> identifier;
  /// The description for the custom action target.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [ActionTarget].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ActionTarget]. {@macro pulumi_securityhub_action_target_action_target_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ActionTarget(
    String name, {
    ActionTargetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:securityhub/actionTarget:ActionTarget',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String>('description');
    identifier = registerOutput<String>('identifier');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
  }

  /// Gets an existing [ActionTarget] resource's state with the given [name] and [id].
  static ActionTarget get(
    String name,
    pulumi.Input<String> id, {
    ActionTargetState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ActionTarget._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ActionTarget._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:securityhub/actionTarget:ActionTarget',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String>('description');
    identifier = registerOutput<String>('identifier');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
  }

  /// Creates a typed reference to an existing [ActionTarget] resource.
  ActionTarget.reference(String urn)
    : super(
        'aws:securityhub/actionTarget:ActionTarget',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String>('description');
    identifier = registerOutput<String>('identifier');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
  }
}
