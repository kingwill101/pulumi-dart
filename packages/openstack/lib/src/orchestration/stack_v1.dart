import 'package:pulumi/pulumi.dart' as pulumi;
import 'stack_v1_args.dart';
import 'stack_v1_stack_output.dart';

/// Manages a V1 stack resource within OpenStack.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const stack1 = new openstack.orchestration.StackV1("stack_1", {
///     name: "stack_1",
///     parameters: {
///         length: "4",
///     },
///     templateOpts: {
///         Bin: `heat_template_version: 2013-05-23
/// parameters:
///   length:
///     type: number
/// resources:
///   test_res:
///     type: OS::Heat::TestResource
///   random:
///     type: OS::Heat::RandomString
///     properties:
///       length: {get_param: length}
/// `,
///     },
///     environmentOpts: {
///         Bin: "\n",
///     },
///     disableRollback: true,
///     timeout: 30,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// stack1 = openstack.orchestration.StackV1("stack_1",
///     name="stack_1",
///     parameters={
///         "length": "4",
///     },
///     template_opts={
///         "Bin": """heat_template_version: 2013-05-23
/// parameters:
///   length:
///     type: number
/// resources:
///   test_res:
///     type: OS::Heat::TestResource
///   random:
///     type: OS::Heat::RandomString
///     properties:
///       length: {get_param: length}
/// """,
///     },
///     environment_opts={
///         "Bin": "\n",
///     },
///     disable_rollback=True,
///     timeout=30)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var stack1 = new OpenStack.Orchestration.StackV1("stack_1", new()
///     {
///         Name = "stack_1",
///         Parameters =
///         {
///             { "length", "4" },
///         },
///         TemplateOpts =
///         {
///             { "Bin", @"heat_template_version: 2013-05-23
/// parameters:
///   length:
///     type: number
/// resources:
///   test_res:
///     type: OS::Heat::TestResource
///   random:
///     type: OS::Heat::RandomString
///     properties:
///       length: {get_param: length}
/// " },
///         },
///         EnvironmentOpts =
///         {
///             { "Bin", @"
/// " },
///         },
///         DisableRollback = true,
///         Timeout = 30,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/orchestration"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := orchestration.NewStackV1(ctx, "stack_1", &orchestration.StackV1Args{
/// 			Name: pulumi.String("stack_1"),
/// 			Parameters: pulumi.StringMap{
/// 				"length": pulumi.String("4"),
/// 			},
/// 			TemplateOpts: pulumi.StringMap{
/// 				"Bin": pulumi.String(`heat_template_version: 2013-05-23
/// parameters:
///   length:
///     type: number
/// resources:
///   test_res:
///     type: OS::Heat::TestResource
///   random:
///     type: OS::Heat::RandomString
///     properties:
///       length: {get_param: length}
/// `),
/// 			},
/// 			EnvironmentOpts: pulumi.StringMap{
/// 				"Bin": pulumi.String("\n"),
/// 			},
/// 			DisableRollback: pulumi.Bool(true),
/// 			Timeout:         pulumi.Int(30),
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
/// import com.pulumi.openstack.orchestration.StackV1;
/// import com.pulumi.openstack.orchestration.StackV1Args;
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
///         var stack1 = new StackV1("stack1", StackV1Args.builder()
///             .name("stack_1")
///             .parameters(Map.of("length", "4"))
///             .templateOpts(Map.of("Bin", """
/// heat_template_version: 2013-05-23
/// parameters:
///   length:
///     type: number
/// resources:
///   test_res:
///     type: OS::Heat::TestResource
///   random:
///     type: OS::Heat::RandomString
///     properties:
///       length: {get_param: length}
///             """))
///             .environmentOpts(Map.of("Bin", """
///
///             """))
///             .disableRollback(true)
///             .timeout(30)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   stack1:
///     type: openstack:orchestration:StackV1
///     name: stack_1
///     properties:
///       name: stack_1
///       parameters:
///         length: 4
///       templateOpts:
///         Bin: |
///           heat_template_version: 2013-05-23
///           parameters:
///             length:
///               type: number
///           resources:
///             test_res:
///               type: OS::Heat::TestResource
///             random:
///               type: OS::Heat::RandomString
///               properties:
///                 length: {get_param: length}
///       environmentOpts:
///         Bin: |2+
///       disableRollback: true
///       timeout: 30
/// ```
///
///
/// ## Import
///
/// stacks can be imported using the `id`, e.g.
///
/// ```sh
/// $ pulumi import openstack:orchestration/stackV1:StackV1 stack_1 ea257959-eeb1-4c10-8d33-26f0409a755d
/// ```
class StackV1 extends pulumi.CustomResource {
  /// A list of stack outputs.
  late final pulumi.Output<List<StackV1StackOutput>> stackOutputs;
  /// List of stack capabilities for stack.
  late final pulumi.Output<List<String>> capabilities;
  /// The date and time when the resource was created. The date
  /// and time stamp format is ISO 8601: CCYY-MM-DDThh:mm:ss±hh:mm
  /// For example, 2015-08-27T09:49:58-05:00. The ±hh:mm value, if included,
  /// is the time zone as an offset from UTC.
  late final pulumi.Output<String> creationTime;
  /// The description of the stack resource.
  late final pulumi.Output<String> description;
  /// Enables or disables deletion of all stack
  /// resources when a stack creation fails. Default is true, meaning all
  /// resources are not deleted when stack creation fails.
  late final pulumi.Output<bool> disableRollback;
  /// Environment key/value pairs to associate with
  /// the stack which contains details for the environment of the stack.
  /// Allowed keys: Bin, URL, Files. Changing this updates the existing stack
  /// Environment Opts.
  late final pulumi.Output<Map<String, String>?> environmentOpts;
  /// A unique name for the stack. It must start with an
  /// alphabetic character. Changing this updates the stack's name.
  late final pulumi.Output<String> name;
  /// List of notification topics for stack.
  late final pulumi.Output<List<String>> notificationTopics;
  /// User-defined key/value pairs as parameters to pass
  /// to the template. Changing this updates the existing stack parameters.
  late final pulumi.Output<Map<String, String>?> parameters;
  /// The region in which to create the stack. If
  /// omitted, the `region` argument of the provider is used. Changing this
  /// creates a new stack.
  late final pulumi.Output<String> region;
  /// The status of the stack.
  late final pulumi.Output<String> status;
  /// The reason for the current status of the stack.
  late final pulumi.Output<String> statusReason;
  /// A list of tags to assosciate with the Stack
  late final pulumi.Output<List<String>> tags;
  /// The description of the stack template.
  late final pulumi.Output<String> templateDescription;
  /// Template key/value pairs to associate with the
  /// stack which contains either the template file or url.
  /// Allowed keys: Bin, URL, Files. Changing this updates the existing stack
  /// Template Opts.
  late final pulumi.Output<Map<String, String>> templateOpts;
  /// The timeout for stack action in minutes.
  late final pulumi.Output<int> timeout;
  /// The date and time when the resource was updated. The date
  /// and time stamp format is ISO 8601: CCYY-MM-DDThh:mm:ss±hh:mm
  /// For example, 2015-08-27T09:49:58-05:00. The ±hh:mm value, if included,
  /// is the time zone as an offset from UTC.
  late final pulumi.Output<String> updatedTime;

  /// Creates a new [StackV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [StackV1]. {@macro pulumi_orchestration_stack_v1_stack_v1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  StackV1(
    String name, {
    StackV1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:orchestration/stackV1:StackV1',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.stackOutputs = registerOutput<List<StackV1StackOutput>>('StackOutputs');
    this.capabilities = registerOutput<List<String>>('capabilities');
    this.creationTime = registerOutput<String>('creationTime');
    this.description = registerOutput<String>('description');
    this.disableRollback = registerOutput<bool>('disableRollback');
    this.environmentOpts = registerOutput<Map<String, String>?>('environmentOpts');
    this.name = registerOutput<String>('name');
    this.notificationTopics = registerOutput<List<String>>('notificationTopics');
    this.parameters = registerOutput<Map<String, String>?>('parameters');
    this.region = registerOutput<String>('region');
    this.status = registerOutput<String>('status');
    this.statusReason = registerOutput<String>('statusReason');
    this.tags = registerOutput<List<String>>('tags');
    this.templateDescription = registerOutput<String>('templateDescription');
    this.templateOpts = registerOutput<Map<String, String>>('templateOpts');
    this.timeout = registerOutput<int>('timeout');
    this.updatedTime = registerOutput<String>('updatedTime');
  }
}
