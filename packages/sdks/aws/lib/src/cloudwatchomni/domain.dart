import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_args.dart';
import 'domain_identity_provider_configuration.dart';
import 'domain_state.dart';

/// Manages an Amazon CloudWatch Omni domain.
///
/// A domain is the top-level container for CloudWatch Omni. It configures how users sign in and contains the spaces that hold telemetry. An account can have one domain.
///
/// &gt; **NOTE:** A domain cannot be deleted while it contains spaces.
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
/// const example = new aws.cloudwatchomni.Domain("example", {
///     name: "example",
///     identityProviders: ["IAM"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudwatchomni.Domain("example",
///     name="example",
///     identity_providers=["IAM"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.CloudWatchOmni.Domain("example", new()
///     {
///         Name = "example",
///         IdentityProviders = new[]
///         {
///             "IAM",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatchomni"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudwatchomni.NewDomain(ctx, "example", &cloudwatchomni.DomainArgs{
/// 			Name: pulumi.String("example"),
/// 			IdentityProviders: pulumi.StringArray{
/// 				pulumi.String("IAM"),
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
/// resource "aws_cloudwatchomni_domain" "example" {
///   name               = "example"
///   identity_providers = ["IAM"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.cloudwatchomni.Domain;
/// import com.pulumi.aws.cloudwatchomni.DomainArgs;
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
///         var example = new Domain("example", DomainArgs.builder()
///             .name("example")
///             .identityProviders("IAM")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:cloudwatchomni:Domain
///     properties:
///       name: example
///       identityProviders:
///         - IAM
/// ```
///
///
/// ### With IAM Identity Center
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ssoadmin.getInstances({});
/// const exampleDomain = new aws.cloudwatchomni.Domain("example", {
///     identityProviderConfiguration: {
///         identityCenterConfiguration: {
///             identityCenterInstanceArn: example.then(example => example.arns?.[0]),
///         },
///     },
///     name: "example",
///     identityProviders: [
///         "IAM",
///         "IDC",
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ssoadmin.get_instances()
/// example_domain = aws.cloudwatchomni.Domain("example",
///     identity_provider_configuration={
///         "identity_center_configuration": {
///             "identity_center_instance_arn": example.arns[0],
///         },
///     },
///     name="example",
///     identity_providers=[
///         "IAM",
///         "IDC",
///     ])
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
///     var exampleDomain = new Aws.CloudWatchOmni.Domain("example", new()
///     {
///         IdentityProviderConfiguration = new Aws.CloudWatchOmni.Inputs.DomainIdentityProviderConfigurationArgs
///         {
///             IdentityCenterConfiguration = new Aws.CloudWatchOmni.Inputs.DomainIdentityProviderConfigurationIdentityCenterConfigurationArgs
///             {
///                 IdentityCenterInstanceArn = example.Apply(getInstancesResult => getInstancesResult.Arns[0]),
///             },
///         },
///         Name = "example",
///         IdentityProviders = new[]
///         {
///             "IAM",
///             "IDC",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatchomni"
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
/// 		_, err = cloudwatchomni.NewDomain(ctx, "example", &cloudwatchomni.DomainArgs{
/// 			IdentityProviderConfiguration: &cloudwatchomni.DomainIdentityProviderConfigurationArgs{
/// 				IdentityCenterConfiguration: &cloudwatchomni.DomainIdentityProviderConfigurationIdentityCenterConfigurationArgs{
/// 					IdentityCenterInstanceArn: pulumi.String(example.Arns[0]),
/// 				},
/// 			},
/// 			Name: pulumi.String("example"),
/// 			IdentityProviders: pulumi.StringArray{
/// 				pulumi.String("IAM"),
/// 				pulumi.String("IDC"),
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
/// resource "aws_cloudwatchomni_domain" "example" {
///   identity_provider_configuration = {
///     identity_center_configuration = {
///       identity_center_instance_arn = data.aws_ssoadmin_getinstances.example.arns[0]
///     }
///   }
///   name               = "example"
///   identity_providers = ["IAM", "IDC"]
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
/// import com.pulumi.aws.cloudwatchomni.Domain;
/// import com.pulumi.aws.cloudwatchomni.DomainArgs;
/// import com.pulumi.aws.cloudwatchomni.inputs.DomainIdentityProviderConfigurationArgs;
/// import com.pulumi.aws.cloudwatchomni.inputs.DomainIdentityProviderConfigurationIdentityCenterConfigurationArgs;
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
///         var exampleDomain = new Domain("exampleDomain", DomainArgs.builder()
///             .identityProviderConfiguration(DomainIdentityProviderConfigurationArgs.builder()
///                 .identityCenterConfiguration(DomainIdentityProviderConfigurationIdentityCenterConfigurationArgs.builder()
///                     .identityCenterInstanceArn(example.arns()[0])
///                     .build())
///                 .build())
///             .name("example")
///             .identityProviders(
///                 "IAM",
///                 "IDC")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleDomain:
///     type: aws:cloudwatchomni:Domain
///     name: example
///     properties:
///       identityProviderConfiguration:
///         identityCenterConfiguration:
///           identityCenterInstanceArn: ${example.arns[0]}
///       name: example
///       identityProviders:
///         - IAM
///         - IDC
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
/// * `domainId` (String) Domain ID.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import a CloudWatch Omni Domain by domain ID. For example:
///
/// ```sh
/// $ pulumi import aws:cloudwatchomni/domain:Domain example d-0123456789abcdefghijklmno
/// ```
class Domain extends pulumi.CustomResource {
  /// ARN of the domain.
  late final pulumi.Output<String> arn;
  /// Additional endpoint URLs derived from the domain name.
  late final pulumi.Output<List<String>> customEndpointUrls;
  /// HTTPS endpoint URL for accessing the domain.
  late final pulumi.Output<String> domainEndpointUrl;
  /// Unique identifier of the domain.
  late final pulumi.Output<String> domainId;
  /// ARN of the IAM Identity Center application. Only set when `identityProviders` includes `IDC`.
  late final pulumi.Output<String> identityCenterApplicationArn;
  /// Identity provider configuration. Required when `identityProviders` includes `IDC`. See below.
  late final pulumi.Output<DomainIdentityProviderConfiguration?> identityProviderConfiguration;
  /// Set of identity providers that users can sign in with. Valid values: `IAM`, `IDC`.
  late final pulumi.Output<List<String>> identityProviders;
  /// Name of the domain. Must be 3-63 characters, contain only lowercase letters, numbers, and hyphens, begin and end with a letter or number, and not contain consecutive hyphens. Changing the name changes the domain's custom endpoint URLs.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [Domain].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Domain]. {@macro pulumi_cloudwatchomni_domain_domain_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Domain(
    String name, {
    DomainArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatchomni/domain:Domain',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.51.1').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    customEndpointUrls = registerOutput<List<String>>('customEndpointUrls', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    domainEndpointUrl = registerOutput<String>('domainEndpointUrl');
    domainId = registerOutput<String>('domainId');
    identityCenterApplicationArn = registerOutput<String>('identityCenterApplicationArn');
    identityProviderConfiguration = registerOutput<DomainIdentityProviderConfiguration?>('identityProviderConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainIdentityProviderConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    identityProviders = registerOutput<List<String>>('identityProviders', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
  }

  /// Gets an existing [Domain] resource's state with the given [name] and [id].
  static Domain get(
    String name,
    pulumi.Input<String> id, {
    DomainState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Domain._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Domain._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatchomni/domain:Domain',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    customEndpointUrls = registerOutput<List<String>>('customEndpointUrls', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    domainEndpointUrl = registerOutput<String>('domainEndpointUrl');
    domainId = registerOutput<String>('domainId');
    identityCenterApplicationArn = registerOutput<String>('identityCenterApplicationArn');
    identityProviderConfiguration = registerOutput<DomainIdentityProviderConfiguration?>('identityProviderConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainIdentityProviderConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    identityProviders = registerOutput<List<String>>('identityProviders', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
  }

  /// Creates a typed reference to an existing [Domain] resource.
  Domain.reference(String urn)
    : super(
        'aws:cloudwatchomni/domain:Domain',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    customEndpointUrls = registerOutput<List<String>>('customEndpointUrls', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    domainEndpointUrl = registerOutput<String>('domainEndpointUrl');
    domainId = registerOutput<String>('domainId');
    identityCenterApplicationArn = registerOutput<String>('identityCenterApplicationArn');
    identityProviderConfiguration = registerOutput<DomainIdentityProviderConfiguration?>('identityProviderConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainIdentityProviderConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    identityProviders = registerOutput<List<String>>('identityProviders', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
  }
}
