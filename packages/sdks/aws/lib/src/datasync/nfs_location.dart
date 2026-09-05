import 'package:pulumi/pulumi.dart' as pulumi;
import 'nfs_location_args.dart';
import 'nfs_location_mount_options.dart';
import 'nfs_location_on_prem_config.dart';
import 'nfs_location_state.dart';

/// Manages an NFS Location within AWS DataSync.
///
/// &gt; **NOTE:** The DataSync Agents must be available before creating this resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.datasync.NfsLocation("example", {
///     onPremConfig: {
///         agentArns: [exampleAwsDatasyncAgent.arn],
///     },
///     serverHostname: "nfs.example.com",
///     subdirectory: "/exported/path",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.datasync.NfsLocation("example",
///     on_prem_config={
///         "agent_arns": [example_aws_datasync_agent["arn"]],
///     },
///     server_hostname="nfs.example.com",
///     subdirectory="/exported/path")
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
///         OnPremConfig = new Aws.DataSync.Inputs.NfsLocationOnPremConfigArgs
///         {
///             AgentArns = new[]
///             {
///                 exampleAwsDatasyncAgent.Arn,
///             },
///         },
///         ServerHostname = "nfs.example.com",
///         Subdirectory = "/exported/path",
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
/// 			OnPremConfig: &datasync.NfsLocationOnPremConfigArgs{
/// 				AgentArns: pulumi.StringArray{
/// 					exampleAwsDatasyncAgent.Arn,
/// 				},
/// 			},
/// 			ServerHostname: pulumi.String("nfs.example.com"),
/// 			Subdirectory:   pulumi.String("/exported/path"),
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
/// resource "aws_datasync_nfslocation" "example" {
///   on_prem_config = {
///     agent_arns = [exampleAwsDatasyncAgent.arn]
///   }
///   server_hostname = "nfs.example.com"
///   subdirectory    = "/exported/path"
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
///         var example = new NfsLocation("example", NfsLocationArgs.builder()
///             .onPremConfig(NfsLocationOnPremConfigArgs.builder()
///                 .agentArns(exampleAwsDatasyncAgent.arn())
///                 .build())
///             .serverHostname("nfs.example.com")
///             .subdirectory("/exported/path")
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
///       onPremConfig:
///         agentArns:
///           - ${exampleAwsDatasyncAgent.arn}
///       serverHostname: nfs.example.com
///       subdirectory: /exported/path
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) ARN of the DataSync NFS location.
///
///
/// Using `pulumi import`, import `aws.datasync.NfsLocation` using the DataSync Task ARN. For example:
///
/// ```sh
/// $ pulumi import aws:datasync/nfsLocation:NfsLocation example arn:aws:datasync:us-east-1:123456789012:location/loc-12345678901234567
/// ```
class NfsLocation extends pulumi.CustomResource {
  /// ARN of the DataSync Location.
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
  /// Key-value pairs of resource tags to assign to the DataSync Location. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
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
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    mountOptions = registerOutput<NfsLocationMountOptions?>('mountOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NfsLocationMountOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    onPremConfig = registerOutput<NfsLocationOnPremConfig>('onPremConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NfsLocationOnPremConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    serverHostname = registerOutput<String>('serverHostname');
    subdirectory = registerOutput<String>('subdirectory');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    uri = registerOutput<String>('uri');
  }

  /// Gets an existing [NfsLocation] resource's state with the given [name] and [id].
  static NfsLocation get(
    String name,
    pulumi.Input<String> id, {
    NfsLocationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return NfsLocation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  NfsLocation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:datasync/nfsLocation:NfsLocation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    mountOptions = registerOutput<NfsLocationMountOptions?>('mountOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NfsLocationMountOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    onPremConfig = registerOutput<NfsLocationOnPremConfig>('onPremConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NfsLocationOnPremConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    serverHostname = registerOutput<String>('serverHostname');
    subdirectory = registerOutput<String>('subdirectory');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    uri = registerOutput<String>('uri');
  }

  /// Creates a typed reference to an existing [NfsLocation] resource.
  NfsLocation.reference(String urn)
    : super(
        'aws:datasync/nfsLocation:NfsLocation',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    mountOptions = registerOutput<NfsLocationMountOptions?>('mountOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NfsLocationMountOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    onPremConfig = registerOutput<NfsLocationOnPremConfig>('onPremConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NfsLocationOnPremConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    serverHostname = registerOutput<String>('serverHostname');
    subdirectory = registerOutput<String>('subdirectory');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    uri = registerOutput<String>('uri');
  }
}
