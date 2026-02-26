import 'package:pulumi/pulumi.dart';
import 'host_key_args.dart';

/// Manages a host key for a server. This is an [_additional server host key_](https://docs.aws.amazon.com/transfer/latest/userguide/server-host-key-add.html).
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.transfer.HostKey("example", {
/// serverId: exampleAwsTransferServer.id,
/// description: "example additional host key",
/// hostKeyBodyWo: "# Private key PEM.\n",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.transfer.HostKey("example",
/// server_id=example_aws_transfer_server["id"],
/// description="example additional host key",
/// host_key_body_wo="# Private key PEM.\n")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Transfer.HostKey("example", new()
/// {
/// ServerId = exampleAwsTransferServer.Id,
/// Description = "example additional host key",
/// HostKeyBodyWo = @"# Private key PEM.
/// ",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/transfer"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := transfer.NewHostKey(ctx, "example", &transfer.HostKeyArgs{
/// ServerId:      pulumi.Any(exampleAwsTransferServer.Id),
/// Description:   pulumi.String("example additional host key"),
/// HostKeyBodyWo: pulumi.String("# Private key PEM.\n"),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new HostKey("example", HostKeyArgs.builder()
/// .serverId(exampleAwsTransferServer.id())
/// .description("example additional host key")
/// .hostKeyBodyWo("""
/// # Private key PEM.
/// """)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:transfer:HostKey
/// properties:
/// serverId: ${exampleAwsTransferServer.id}
/// description: example additional host key
/// hostKeyBodyWo: |
/// # Private key PEM.
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import host keys using the <span pulumi-lang-nodejs="`serverId`" pulumi-lang-dotnet="`ServerId`" pulumi-lang-go="`serverId`" pulumi-lang-python="`server_id`" pulumi-lang-yaml="`serverId`" pulumi-lang-java="`serverId`">`server_id`</span> and <span pulumi-lang-nodejs="`hostKeyId`" pulumi-lang-dotnet="`HostKeyId`" pulumi-lang-go="`hostKeyId`" pulumi-lang-python="`host_key_id`" pulumi-lang-yaml="`hostKeyId`" pulumi-lang-java="`hostKeyId`">`host_key_id`</span> separated by `,`. For example:
///
/// ```sh
/// $ pulumi import aws:transfer/hostKey:HostKey example s-12345678,key-12345
/// ```
class HostKey extends CustomResource {
  /// Amazon Resource Name (ARN) of host key.
  late final Output<String> arn;

  /// Text description.
  late final Output<String?> description;

  /// Private key portion of an SSH key pair.
  late final Output<String?> hostKeyBody;

  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// Write-only private key portion of an SSH key pair, guaranteed not to be written to plan or state artifacts. One of <span pulumi-lang-nodejs="`hostKeyBody`" pulumi-lang-dotnet="`HostKeyBody`" pulumi-lang-go="`hostKeyBody`" pulumi-lang-python="`host_key_body`" pulumi-lang-yaml="`hostKeyBody`" pulumi-lang-java="`hostKeyBody`">`host_key_body`</span> or <span pulumi-lang-nodejs="`hostKeyBodyWo`" pulumi-lang-dotnet="`HostKeyBodyWo`" pulumi-lang-go="`hostKeyBodyWo`" pulumi-lang-python="`host_key_body_wo`" pulumi-lang-yaml="`hostKeyBodyWo`" pulumi-lang-java="`hostKeyBodyWo`">`host_key_body_wo`</span> must be configured.
  late final Output<String?> hostKeyBodyWo;

  /// Public key fingerprint.
  late final Output<String> hostKeyFingerprint;

  /// ID of the host key.
  late final Output<String> hostKeyId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Server ID.
  late final Output<String> serverId;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  HostKey(
    String name, {
    HostKeyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:transfer/hostKey:HostKey',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.description = Output.createUnknown<String?>();
    this.hostKeyBody = Output.createUnknown<String?>();
    this.hostKeyBodyWo = Output.createUnknown<String?>();
    this.hostKeyFingerprint = Output.createUnknown<String>();
    this.hostKeyId = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.serverId = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
  }
}
