import 'package:pulumi/pulumi.dart' as pulumi;
import 'permission_set_args.dart';
import 'permission_set_state.dart';

/// Provides a Single Sign-On (SSO) Permission Set resource
///
/// &gt; **NOTE:** Updating this resource will automatically [Provision the Permission Set](https://docs.aws.amazon.com/singlesignon/latest/APIReference/API_ProvisionPermissionSet.html) to apply the corresponding updates to all assigned accounts.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ssoadmin.getInstances({});
/// const examplePermissionSet = new aws.ssoadmin.PermissionSet("example", {
///     name: "Example",
///     description: "An example",
///     instanceArn: example.then(example => example.arns?.[0]),
///     relayState: "https://s3.console.aws.amazon.com/s3/home?region=us-east-1#",
///     sessionDuration: "PT2H",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ssoadmin.get_instances()
/// example_permission_set = aws.ssoadmin.PermissionSet("example",
///     name="Example",
///     description="An example",
///     instance_arn=example.arns[0],
///     relay_state="https://s3.console.aws.amazon.com/s3/home?region=us-east-1#",
///     session_duration="PT2H")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.SsoAdmin.GetInstances.Invoke();
///
///     var examplePermissionSet = new Aws.SsoAdmin.PermissionSet("example", new()
///     {
///         Name = "Example",
///         Description = "An example",
///         InstanceArn = example.Apply(getInstancesResult => getInstancesResult.Arns[0]),
///         RelayState = "https://s3.console.aws.amazon.com/s3/home?region=us-east-1#",
///         SessionDuration = "PT2H",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssoadmin"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := ssoadmin.GetInstances(ctx, &ssoadmin.GetInstancesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ssoadmin.NewPermissionSet(ctx, "example", &ssoadmin.PermissionSetArgs{
/// 			Name:            pulumi.String("Example"),
/// 			Description:     pulumi.String("An example"),
/// 			InstanceArn:     pulumi.String(example.Arns[0]),
/// 			RelayState:      pulumi.String("https://s3.console.aws.amazon.com/s3/home?region=us-east-1#"),
/// 			SessionDuration: pulumi.String("PT2H"),
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
/// import com.pulumi.aws.ssoadmin.SsoadminFunctions;
/// import com.pulumi.aws.ssoadmin.inputs.GetInstancesArgs;
/// import com.pulumi.aws.ssoadmin.PermissionSet;
/// import com.pulumi.aws.ssoadmin.PermissionSetArgs;
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
///         final var example = SsoadminFunctions.getInstances(GetInstancesArgs.builder()
///             .build());
///
///         var examplePermissionSet = new PermissionSet("examplePermissionSet", PermissionSetArgs.builder()
///             .name("Example")
///             .description("An example")
///             .instanceArn(example.arns()[0])
///             .relayState("https://s3.console.aws.amazon.com/s3/home?region=us-east-1#")
///             .sessionDuration("PT2H")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   examplePermissionSet:
///     type: aws:ssoadmin:PermissionSet
///     name: example
///     properties:
///       name: Example
///       description: An example
///       instanceArn: ${example.arns[0]}
///       relayState: https://s3.console.aws.amazon.com/s3/home?region=us-east-1#
///       sessionDuration: PT2H
/// variables:
///   example:
///     fn::invoke:
///       function: aws:ssoadmin:getInstances
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import SSO Permission Sets using the `arn` and `instance_arn` separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:ssoadmin/permissionSet:PermissionSet example arn:aws:sso:::permissionSet/ssoins-2938j0x8920sbj72/ps-80383020jr9302rk,arn:aws:sso:::instance/ssoins-2938j0x8920sbj72
/// ```
class PermissionSet extends pulumi.CustomResource {
  /// The Amazon Resource Name (ARN) of the Permission Set.
  late final pulumi.Output<String> arn;
  /// The date the Permission Set was created in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8).
  late final pulumi.Output<String> createdDate;
  /// The description of the Permission Set.
  late final pulumi.Output<String?> description;
  /// The Amazon Resource Name (ARN) of the SSO Instance under which the operation will be executed.
  late final pulumi.Output<String> instanceArn;
  /// The name of the Permission Set.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The relay state URL used to redirect users within the application during the federation authentication process.
  late final pulumi.Output<String?> relayState;
  /// The length of time that the application user sessions are valid in the ISO-8601 standard. Default: `PT1H`.
  late final pulumi.Output<String?> sessionDuration;
  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [PermissionSet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PermissionSet]. {@macro pulumi_ssoadmin_permission_set_permission_set_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PermissionSet(
    String name, {
    PermissionSetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ssoadmin/permissionSet:PermissionSet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    createdDate = registerOutput<String>('createdDate');
    description = registerOutput<String?>('description');
    instanceArn = registerOutput<String>('instanceArn');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    relayState = registerOutput<String?>('relayState');
    sessionDuration = registerOutput<String?>('sessionDuration');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [PermissionSet] resource's state with the given [name] and [id].
  static PermissionSet get(
    String name,
    pulumi.Input<String> id, {
    PermissionSetState? state,
  }) {
    return PermissionSet._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  PermissionSet._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ssoadmin/permissionSet:PermissionSet',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    createdDate = registerOutput<String>('createdDate');
    description = registerOutput<String?>('description');
    instanceArn = registerOutput<String>('instanceArn');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    relayState = registerOutput<String?>('relayState');
    sessionDuration = registerOutput<String?>('sessionDuration');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
