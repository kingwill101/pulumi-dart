import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_args.dart';
import 'application_identity_source.dart';
import 'application_state.dart';
import 'application_timeouts.dart';

/// Manages an AWS Account Access Application. An Application binds Account Access to an IAM Identity Center instance and serves as the parent container for entitlements that grant principals access to roles in target accounts.
///
/// &gt; **Note:** Only one Application may exist per IAM Identity Center instance. Attempting to create a second Application for the same instance produces an error directing you to import the existing resource.
///
/// &gt; **Note:** Granting access to roles in target accounts is done with `aws.accountaccess.Entitlement`. Each target role must trust the Account Access service in its `assumeRolePolicy` — see that resource's documentation for the required trust policy.
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
/// const exampleApplication = new aws.accountaccess.Application("example", {identitySource: {
///     identityCenter: {
///         instanceArn: example.then(example => example.arns?.[0]),
///     },
/// }});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ssoadmin.get_instances()
/// example_application = aws.accountaccess.Application("example", identity_source={
///     "identity_center": {
///         "instance_arn": example.arns[0],
///     },
/// })
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
///     var exampleApplication = new Aws.AccountAccess.Application("example", new()
///     {
///         IdentitySource = new Aws.AccountAccess.Inputs.ApplicationIdentitySourceArgs
///         {
///             IdentityCenter = new Aws.AccountAccess.Inputs.ApplicationIdentitySourceIdentityCenterArgs
///             {
///                 InstanceArn = example.Apply(getInstancesResult => getInstancesResult.Arns[0]),
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/accountaccess"
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
/// 		_, err = accountaccess.NewApplication(ctx, "example", &accountaccess.ApplicationArgs{
/// 			IdentitySource: &accountaccess.ApplicationIdentitySourceArgs{
/// 				IdentityCenter: &accountaccess.ApplicationIdentitySourceIdentityCenterArgs{
/// 					InstanceArn: pulumi.String(example.Arns[0]),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_ssoadmin_getinstances" "example" {
/// }
///
/// resource "aws_accountaccess_application" "example" {
///   identity_source = {
///     identity_center = {
///       instance_arn = data.aws_ssoadmin_getinstances.example.arns[0]
///     }
///   }
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
/// import com.pulumi.aws.accountaccess.Application;
/// import com.pulumi.aws.accountaccess.ApplicationArgs;
/// import com.pulumi.aws.accountaccess.inputs.ApplicationIdentitySourceArgs;
/// import com.pulumi.aws.accountaccess.inputs.ApplicationIdentitySourceIdentityCenterArgs;
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
///         final var example = SsoadminFunctions.getInstances(GetInstancesArgs.builder()
///             .build());
///
///         var exampleApplication = new Application("exampleApplication", ApplicationArgs.builder()
///             .identitySource(ApplicationIdentitySourceArgs.builder()
///                 .identityCenter(ApplicationIdentitySourceIdentityCenterArgs.builder()
///                     .instanceArn(example.arns()[0])
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
///     type: aws:accountaccess:Application
///     name: example
///     properties:
///       identitySource:
///         identityCenter:
///           instanceArn: ${example.arns[0]}
/// variables:
///   example:
///     fn::invoke:
///       function: aws:ssoadmin:getInstances
///       arguments: {}
/// ```
///
///
/// ### With Tags
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.accountaccess.Application("example", {
///     identitySource: {
///         identityCenter: {
///             instanceArn: exampleAwsSsoadminInstances.arns[0],
///         },
///     },
///     tags: {
///         Environment: "production",
///         ManagedBy: "terraform",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.accountaccess.Application("example",
///     identity_source={
///         "identity_center": {
///             "instance_arn": example_aws_ssoadmin_instances["arns"][0],
///         },
///     },
///     tags={
///         "Environment": "production",
///         "ManagedBy": "terraform",
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
///     var example = new Aws.AccountAccess.Application("example", new()
///     {
///         IdentitySource = new Aws.AccountAccess.Inputs.ApplicationIdentitySourceArgs
///         {
///             IdentityCenter = new Aws.AccountAccess.Inputs.ApplicationIdentitySourceIdentityCenterArgs
///             {
///                 InstanceArn = exampleAwsSsoadminInstances.Arns[0],
///             },
///         },
///         Tags =
///         {
///             { "Environment", "production" },
///             { "ManagedBy", "terraform" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/accountaccess"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := accountaccess.NewApplication(ctx, "example", &accountaccess.ApplicationArgs{
/// 			IdentitySource: &accountaccess.ApplicationIdentitySourceArgs{
/// 				IdentityCenter: &accountaccess.ApplicationIdentitySourceIdentityCenterArgs{
/// 					InstanceArn: pulumi.Any(exampleAwsSsoadminInstances.Arns[0]),
/// 				},
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Environment": pulumi.String("production"),
/// 				"ManagedBy":   pulumi.String("terraform"),
/// 			},
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
/// resource "aws_accountaccess_application" "example" {
///   identity_source = {
///     identity_center = {
///       instance_arn = exampleAwsSsoadminInstances.arns[0]
///     }
///   }
///   tags = {
///     "Environment" = "production"
///     "ManagedBy"   = "terraform"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.accountaccess.Application;
/// import com.pulumi.aws.accountaccess.ApplicationArgs;
/// import com.pulumi.aws.accountaccess.inputs.ApplicationIdentitySourceArgs;
/// import com.pulumi.aws.accountaccess.inputs.ApplicationIdentitySourceIdentityCenterArgs;
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
///         var example = new Application("example", ApplicationArgs.builder()
///             .identitySource(ApplicationIdentitySourceArgs.builder()
///                 .identityCenter(ApplicationIdentitySourceIdentityCenterArgs.builder()
///                     .instanceArn(exampleAwsSsoadminInstances.arns()[0])
///                     .build())
///                 .build())
///             .tags(Map.ofEntries(
///                 Map.entry("Environment", "production"),
///                 Map.entry("ManagedBy", "terraform")
///             ))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:accountaccess:Application
///     properties:
///       identitySource:
///         identityCenter:
///           instanceArn: ${exampleAwsSsoadminInstances.arns[0]}
///       tags:
///         Environment: production
///         ManagedBy: terraform
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `arn` (String) ARN of the Account Access Application.
///
///
/// Using `pulumi import`, import Account Access Applications using the Application ARN. For example:
///
/// ```sh
/// $ pulumi import aws:accountaccess/application:Application example arn:aws:account-access:us-east-1:123456789012:application/aam-0123456789abcdef
/// ```
class Application extends pulumi.CustomResource {
  /// ARN of the Application. Used as the resource ID.
  late final pulumi.Output<String> arn;
  /// Identity source for the application. Forces replacement when changed. See `identitySource` Block below.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<ApplicationIdentitySource> identitySource;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Map of tags to assign to the Application. If configured with a provider `defaultTags` configuration block, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the Application, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Internal tenant identifier returned by the service.
  late final pulumi.Output<String> tenantId;
  late final pulumi.Output<ApplicationTimeouts?> timeouts;

  /// Creates a new [Application].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Application]. {@macro pulumi_accountaccess_application_application_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Application(
    String name, {
    ApplicationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:accountaccess/application:Application',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.47.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    identitySource = registerOutput<ApplicationIdentitySource>('identitySource', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationIdentitySource.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tenantId = registerOutput<String>('tenantId');
    timeouts = registerOutput<ApplicationTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [Application] resource's state with the given [name] and [id].
  static Application get(
    String name,
    pulumi.Input<String> id, {
    ApplicationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Application._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Application._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:accountaccess/application:Application',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    identitySource = registerOutput<ApplicationIdentitySource>('identitySource', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationIdentitySource.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tenantId = registerOutput<String>('tenantId');
    timeouts = registerOutput<ApplicationTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [Application] resource.
  Application.reference(String urn)
    : super(
        'aws:accountaccess/application:Application',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    identitySource = registerOutput<ApplicationIdentitySource>('identitySource', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationIdentitySource.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tenantId = registerOutput<String>('tenantId');
    timeouts = registerOutput<ApplicationTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApplicationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
