import 'package:pulumi/pulumi.dart' as pulumi;
import 'nfs_location_args.dart';
import 'nfs_location_mount_options.dart';
import 'nfs_location_on_prem_config.dart';

/// Manages an NFS Location within AWS DataSync.
///
/// > **NOTE:** The DataSync Agents must be available before creating this resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.datasync.NfsLocation("example", {
///     serverHostname: "nfs.example.com",
///     subdirectory: "/exported/path",
///     onPremConfig: {
///         agentArns: [exampleAwsDatasyncAgent.arn],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.datasync.NfsLocation("example",
///     server_hostname="nfs.example.com",
///     subdirectory="/exported/path",
///     on_prem_config={
///         "agent_arns": [example_aws_datasync_agent["arn"]],
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
///     var example = new Aws.DataSync.NfsLocation("example", new()
///     {
///         ServerHostname = "nfs.example.com",
///         Subdirectory = "/exported/path",
///         OnPremConfig = new Aws.DataSync.Inputs.NfsLocationOnPremConfigArgs
///         {
///             AgentArns = new[]
///             {
///                 exampleAwsDatasyncAgent.Arn,
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/datasync"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := datasync.NewNfsLocation(ctx, "example", &datasync.NfsLocationArgs{
/// 			ServerHostname: pulumi.String("nfs.example.com"),
/// 			Subdirectory:   pulumi.String("/exported/path"),
/// 			OnPremConfig: &datasync.NfsLocationOnPremConfigArgs{
/// 				AgentArns: pulumi.StringArray{
/// 					exampleAwsDatasyncAgent.Arn,
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
/// import com.pulumi.aws.datasync.NfsLocation;
/// import com.pulumi.aws.datasync.NfsLocationArgs;
/// import com.pulumi.aws.datasync.inputs.NfsLocationOnPremConfigArgs;
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
///         var example = new NfsLocation("example", NfsLocationArgs.builder()
///             .serverHostname("nfs.example.com")
///             .subdirectory("/exported/path")
///             .onPremConfig(NfsLocationOnPremConfigArgs.builder()
///                 .agentArns(exampleAwsDatasyncAgent.arn())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:datasync:NfsLocation
///     properties:
///       serverHostname: nfs.example.com
///       subdirectory: /exported/path
///       onPremConfig:
///         agentArns:
///           - ${exampleAwsDatasyncAgent.arn}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the DataSync NFS location.
///
///
/// Using `pulumi import`, import `aws.datasync.NfsLocation` using the DataSync Task Amazon Resource Name (ARN). For example:
///
/// ```sh
/// $ pulumi import aws:datasync/nfsLocation:NfsLocation example arn:aws:datasync:us-east-1:123456789012:location/loc-12345678901234567
/// ```
class NfsLocation extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) of the DataSync Location.
  late final pulumi.Output<String> arn;

  /// Configuration block containing mount options used by DataSync to access the NFS Server.
  late final pulumi.Output<NfsLocationMountOptions?> mountOptions;

  /// Configuration block containing information for connecting to the NFS File System.
  late final pulumi.Output<NfsLocationOnPremConfig> onPremConfig;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Specifies the IP address or DNS name of the NFS server. The DataSync Agent(s) use this to mount the NFS server.
  late final pulumi.Output<String> serverHostname;

  /// Subdirectory to perform actions as source or destination. Should be exported by the NFS server.
  late final pulumi.Output<String> subdirectory;

  /// Key-value pairs of resource tags to assign to the DataSync Location. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<String> uri;

  /// Creates a new [NfsLocation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NfsLocation]. {@macro pulumi_datasync_nfs_location_nfs_location_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NfsLocation(
    String name, {
    NfsLocationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:datasync/nfsLocation:NfsLocation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.mountOptions =
        registerOutput<NfsLocationMountOptions?>('mountOptions');
    this.onPremConfig = registerOutput<NfsLocationOnPremConfig>('onPremConfig');
    this.region = registerOutput<String>('region');
    this.serverHostname = registerOutput<String>('serverHostname');
    this.subdirectory = registerOutput<String>('subdirectory');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.uri = registerOutput<String>('uri');
  }
}
