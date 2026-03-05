import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_args.dart';
import 'application_portal_options.dart';
import 'application_state.dart';

/// Resource for managing an AWS SSO Admin Application.
///
/// &gt; The `CreateApplication` API only supports custom OAuth 2.0 applications.
/// Creation of 3rd party SAML or OAuth 2.0 applications require setup to be done through the associated app service or AWS console.
/// See this issue for additional context.
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
/// const example = aws.ssoadmin.getInstances({});
/// const exampleApplication = new aws.ssoadmin.Application("example", {
///     name: "example",
///     applicationProviderArn: "arn:aws:sso::aws:applicationProvider/custom",
///     instanceArn: example.then(example => example.arns?.[0]),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ssoadmin.get_instances()
/// example_application = aws.ssoadmin.Application("example",
///     name="example",
///     application_provider_arn="arn:aws:sso::aws:applicationProvider/custom",
///     instance_arn=example.arns[0])
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
///     var exampleApplication = new Aws.SsoAdmin.Application("example", new()
///     {
///         Name = "example",
///         ApplicationProviderArn = "arn:aws:sso::aws:applicationProvider/custom",
///         InstanceArn = example.Apply(getInstancesResult => getInstancesResult.Arns[0]),
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
/// 		_, err = ssoadmin.NewApplication(ctx, "example", &ssoadmin.ApplicationArgs{
/// 			Name:                   pulumi.String("example"),
/// 			ApplicationProviderArn: pulumi.String("arn:aws:sso::aws:applicationProvider/custom"),
/// 			InstanceArn:            pulumi.String(example.Arns[0]),
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
/// import com.pulumi.aws.ssoadmin.Application;
/// import com.pulumi.aws.ssoadmin.ApplicationArgs;
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
///         var exampleApplication = new Application("exampleApplication", ApplicationArgs.builder()
///             .name("example")
///             .applicationProviderArn("arn:aws:sso::aws:applicationProvider/custom")
///             .instanceArn(example.arns()[0])
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleApplication:
///     type: aws:ssoadmin:Application
///     name: example
///     properties:
///       name: example
///       applicationProviderArn: arn:aws:sso::aws:applicationProvider/custom
///       instanceArn: ${example.arns[0]}
/// variables:
///   example:
///     fn::invoke:
///       function: aws:ssoadmin:getInstances
///       arguments: {}
/// ```
///
///
/// ### With Portal Options
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ssoadmin.getInstances({});
/// const exampleApplication = new aws.ssoadmin.Application("example", {
///     name: "example",
///     applicationProviderArn: "arn:aws:sso::aws:applicationProvider/custom",
///     instanceArn: example.then(example => example.arns?.[0]),
///     portalOptions: {
///         visibility: "ENABLED",
///         signInOptions: {
///             applicationUrl: "http://example.com",
///             origin: "APPLICATION",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ssoadmin.get_instances()
/// example_application = aws.ssoadmin.Application("example",
///     name="example",
///     application_provider_arn="arn:aws:sso::aws:applicationProvider/custom",
///     instance_arn=example.arns[0],
///     portal_options={
///         "visibility": "ENABLED",
///         "sign_in_options": {
///             "application_url": "http://example.com",
///             "origin": "APPLICATION",
///         },
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
///     var example = Aws.SsoAdmin.GetInstances.Invoke();
///
///     var exampleApplication = new Aws.SsoAdmin.Application("example", new()
///     {
///         Name = "example",
///         ApplicationProviderArn = "arn:aws:sso::aws:applicationProvider/custom",
///         InstanceArn = example.Apply(getInstancesResult => getInstancesResult.Arns[0]),
///         PortalOptions = new Aws.SsoAdmin.Inputs.ApplicationPortalOptionsArgs
///         {
///             Visibility = "ENABLED",
///             SignInOptions = new Aws.SsoAdmin.Inputs.ApplicationPortalOptionsSignInOptionsArgs
///             {
///                 ApplicationUrl = "http://example.com",
///                 Origin = "APPLICATION",
///             },
///         },
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
/// 		_, err = ssoadmin.NewApplication(ctx, "example", &ssoadmin.ApplicationArgs{
/// 			Name:                   pulumi.String("example"),
/// 			ApplicationProviderArn: pulumi.String("arn:aws:sso::aws:applicationProvider/custom"),
/// 			InstanceArn:            pulumi.String(example.Arns[0]),
/// 			PortalOptions: &ssoadmin.ApplicationPortalOptionsArgs{
/// 				Visibility: pulumi.String("ENABLED"),
/// 				SignInOptions: &ssoadmin.ApplicationPortalOptionsSignInOptionsArgs{
/// 					ApplicationUrl: pulumi.String("http://example.com"),
/// 					Origin:         pulumi.String("APPLICATION"),
/// 				},
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
/// import com.pulumi.aws.ssoadmin.SsoadminFunctions;
/// import com.pulumi.aws.ssoadmin.inputs.GetInstancesArgs;
/// import com.pulumi.aws.ssoadmin.Application;
/// import com.pulumi.aws.ssoadmin.ApplicationArgs;
/// import com.pulumi.aws.ssoadmin.inputs.ApplicationPortalOptionsArgs;
/// import com.pulumi.aws.ssoadmin.inputs.ApplicationPortalOptionsSignInOptionsArgs;
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
///         var exampleApplication = new Application("exampleApplication", ApplicationArgs.builder()
///             .name("example")
///             .applicationProviderArn("arn:aws:sso::aws:applicationProvider/custom")
///             .instanceArn(example.arns()[0])
///             .portalOptions(ApplicationPortalOptionsArgs.builder()
///                 .visibility("ENABLED")
///                 .signInOptions(ApplicationPortalOptionsSignInOptionsArgs.builder()
///                     .applicationUrl("http://example.com")
///                     .origin("APPLICATION")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleApplication:
///     type: aws:ssoadmin:Application
///     name: example
///     properties:
///       name: example
///       applicationProviderArn: arn:aws:sso::aws:applicationProvider/custom
///       instanceArn: ${example.arns[0]}
///       portalOptions:
///         visibility: ENABLED
///         signInOptions:
///           applicationUrl: http://example.com
///           origin: APPLICATION
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
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the SSO application.
///
///
/// Using `pulumi import`, import SSO Admin Application using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:ssoadmin/application:Application example arn:aws:sso::123456789012:application/id-12345678
/// ```
class Application extends pulumi.CustomResource {
  /// AWS account ID.
  late final pulumi.Output<String> applicationAccount;
  /// (**Deprecated** Reference `arn` instead) ARN of the application.
  late final pulumi.Output<String> applicationArn;
  /// ARN of the application provider.
  late final pulumi.Output<String> applicationProviderArn;
  /// ARN of the application.
  late final pulumi.Output<String> arn;
  /// A unique, case-sensitive ID that you provide to ensure the idempotency of the request. AWS generates a random value when not provided.
  late final pulumi.Output<String?> clientToken;
  /// Description of the application.
  late final pulumi.Output<String?> description;
  /// ARN of the instance of IAM Identity Center.
  late final pulumi.Output<String> instanceArn;
  /// Name of the application.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;
  /// Options for the portal associated with an application. See `portal_options` below.
  late final pulumi.Output<ApplicationPortalOptions?> portalOptions;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Status of the application. Valid values are `ENABLED` and `DISABLED`.
  late final pulumi.Output<String> status;
  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [Application].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Application]. {@macro pulumi_ssoadmin_application_application_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Application(
    String name, {
    ApplicationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ssoadmin/application:Application',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    applicationAccount = registerOutput<String>('applicationAccount');
    applicationArn = registerOutput<String>('applicationArn');
    applicationProviderArn = registerOutput<String>('applicationProviderArn');
    arn = registerOutput<String>('arn');
    clientToken = registerOutput<String?>('clientToken');
    description = registerOutput<String?>('description');
    instanceArn = registerOutput<String>('instanceArn');
    this.name = registerOutput<String>('name');
    portalOptions = registerOutput<ApplicationPortalOptions?>('portalOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationPortalOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
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
          'aws:ssoadmin/application:Application',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    applicationAccount = registerOutput<String>('applicationAccount');
    applicationArn = registerOutput<String>('applicationArn');
    applicationProviderArn = registerOutput<String>('applicationProviderArn');
    arn = registerOutput<String>('arn');
    clientToken = registerOutput<String?>('clientToken');
    description = registerOutput<String?>('description');
    instanceArn = registerOutput<String>('instanceArn');
    this.name = registerOutput<String>('name');
    portalOptions = registerOutput<ApplicationPortalOptions?>('portalOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationPortalOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
