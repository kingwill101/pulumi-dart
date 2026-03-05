import 'package:pulumi/pulumi.dart' as pulumi;
import 'host_args.dart';
import 'host_state.dart';
import 'host_vpc_configuration.dart';

/// Provides a CodeStar Host.
///
/// &gt; **NOTE:** The `aws.codestarconnections.Host` resource is created in the state `PENDING`. Authentication with the host provider must be completed in the AWS Console. For more information visit [Set up a pending host](https://docs.aws.amazon.com/dtconsole/latest/userguide/connections-host-setup.html).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.codestarconnections.Host("example", {
///     name: "example-host",
///     providerEndpoint: "https://example.com",
///     providerType: "GitHubEnterpriseServer",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.codestarconnections.Host("example",
///     name="example-host",
///     provider_endpoint="https://example.com",
///     provider_type="GitHubEnterpriseServer")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.CodeStarConnections.Host("example", new()
///     {
///         Name = "example-host",
///         ProviderEndpoint = "https://example.com",
///         ProviderType = "GitHubEnterpriseServer",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/codestarconnections"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := codestarconnections.NewHost(ctx, "example", &codestarconnections.HostArgs{
/// 			Name:             pulumi.String("example-host"),
/// 			ProviderEndpoint: pulumi.String("https://example.com"),
/// 			ProviderType:     pulumi.String("GitHubEnterpriseServer"),
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
/// import com.pulumi.aws.codestarconnections.Host;
/// import com.pulumi.aws.codestarconnections.HostArgs;
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
///         var example = new Host("example", HostArgs.builder()
///             .name("example-host")
///             .providerEndpoint("https://example.com")
///             .providerType("GitHubEnterpriseServer")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:codestarconnections:Host
///     properties:
///       name: example-host
///       providerEndpoint: https://example.com
///       providerType: GitHubEnterpriseServer
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the CodeStar connections host.
///
///
/// Using `pulumi import`, import CodeStar Host using the ARN. For example:
///
/// ```sh
/// $ pulumi import aws:codestarconnections/host:Host example-host arn:aws:codestar-connections:us-west-1:0123456789:host/79d4d357-a2ee-41e4-b350-2fe39ae59448
/// ```
class Host extends pulumi.CustomResource {
  /// The CodeStar Host ARN.
  late final pulumi.Output<String> arn;

  /// The name of the host to be created. The name must be unique in the calling AWS account.
  late final pulumi.Output<String> name;

  /// The endpoint of the infrastructure to be represented by the host after it is created.
  late final pulumi.Output<String> providerEndpoint;

  /// The name of the external provider where your third-party code repository is configured.
  late final pulumi.Output<String> providerType;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The CodeStar Host status. Possible values are `PENDING`, `AVAILABLE`, `VPC_CONFIG_DELETING`, `VPC_CONFIG_INITIALIZING`, and `VPC_CONFIG_FAILED_INITIALIZATION`.
  late final pulumi.Output<String> status;

  /// The VPC configuration to be provisioned for the host. A VPC must be configured, and the infrastructure to be represented by the host must already be connected to the VPC.
  late final pulumi.Output<HostVpcConfiguration?> vpcConfiguration;

  /// Creates a new [Host].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Host]. {@macro pulumi_codestarconnections_host_host_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Host(String name, {HostArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'aws:codestarconnections/host:Host',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    arn = registerOutput<String>('arn');
    this.name = registerOutput<String>('name');
    providerEndpoint = registerOutput<String>('providerEndpoint');
    providerType = registerOutput<String>('providerType');
    region = registerOutput<String>('region');
    status = registerOutput<String>('status');
    vpcConfiguration = registerOutput<HostVpcConfiguration?>(
      'vpcConfiguration',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return HostVpcConfiguration.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
  }

  /// Gets an existing [Host] resource's state with the given [name] and [id].
  static Host get(String name, pulumi.Input<String> id, {HostState? state}) {
    return Host._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Host._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:codestarconnections/host:Host',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    this.name = registerOutput<String>('name');
    providerEndpoint = registerOutput<String>('providerEndpoint');
    providerType = registerOutput<String>('providerType');
    region = registerOutput<String>('region');
    status = registerOutput<String>('status');
    vpcConfiguration = registerOutput<HostVpcConfiguration?>(
      'vpcConfiguration',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return HostVpcConfiguration.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
  }
}
