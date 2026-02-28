import 'package:pulumi/pulumi.dart' as pulumi;
import 'host_key_args.dart';

/// Manages a host key for a server. This is an [_additional server host key_](https://docs.aws.amazon.com/transfer/latest/userguide/server-host-key-add.html).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.transfer.HostKey("example", {
///     serverId: exampleAwsTransferServer.id,
///     description: "example additional host key",
///     hostKeyBodyWo: "# Private key PEM.\n",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.transfer.HostKey("example",
///     server_id=example_aws_transfer_server["id"],
///     description="example additional host key",
///     host_key_body_wo="# Private key PEM.\n")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Transfer.HostKey("example", new()
///     {
///         ServerId = exampleAwsTransferServer.Id,
///         Description = "example additional host key",
///         HostKeyBodyWo = @"# Private key PEM.
/// ",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/transfer"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := transfer.NewHostKey(ctx, "example", &transfer.HostKeyArgs{
/// 			ServerId:      pulumi.Any(exampleAwsTransferServer.Id),
/// 			Description:   pulumi.String("example additional host key"),
/// 			HostKeyBodyWo: pulumi.String("# Private key PEM.\n"),
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
/// import com.pulumi.aws.transfer.HostKey;
/// import com.pulumi.aws.transfer.HostKeyArgs;
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
///         var example = new HostKey("example", HostKeyArgs.builder()
///             .serverId(exampleAwsTransferServer.id())
///             .description("example additional host key")
///             .hostKeyBodyWo("""
/// # Private key PEM.
///             """)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:transfer:HostKey
///     properties:
///       serverId: ${exampleAwsTransferServer.id}
///       description: example additional host key
///       hostKeyBodyWo: |
///         # Private key PEM.
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import host keys using the `server_id` and `host_key_id` separated by `,`. For example:
///
/// ```sh
/// $ pulumi import aws:transfer/hostKey:HostKey example s-12345678,key-12345
/// ```
class HostKey extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) of host key.
  late final pulumi.Output<String> arn;
  /// Text description.
  late final pulumi.Output<String?> description;
  /// Private key portion of an SSH key pair.
  late final pulumi.Output<String?> hostKeyBody;
  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// Write-only private key portion of an SSH key pair, guaranteed not to be written to plan or state artifacts. One of `host_key_body` or `host_key_body_wo` must be configured.
  late final pulumi.Output<String?> hostKeyBodyWo;
  /// Public key fingerprint.
  late final pulumi.Output<String> hostKeyFingerprint;
  /// ID of the host key.
  late final pulumi.Output<String> hostKeyId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Server ID.
  late final pulumi.Output<String> serverId;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [HostKey].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HostKey]. {@macro pulumi_transfer_host_key_host_key_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HostKey(
    String name, {
    HostKeyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:transfer/hostKey:HostKey',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.hostKeyBody = registerOutput<String?>('hostKeyBody');
    this.hostKeyBodyWo = registerOutput<String?>('hostKeyBodyWo');
    this.hostKeyFingerprint = registerOutput<String>('hostKeyFingerprint');
    this.hostKeyId = registerOutput<String>('hostKeyId');
    this.region = registerOutput<String>('region');
    this.serverId = registerOutput<String>('serverId');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
