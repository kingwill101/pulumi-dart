import 'package:pulumi/pulumi.dart' as pulumi;
import 'ssh_key_args.dart';

/// Provides a Hetzner Cloud SSH Key resource to manage SSH Keys for server access.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as hcloud from "@pulumi/hcloud";
/// import * as std from "@pulumi/std";
///
/// const main = new hcloud.SshKey("main", {
///     name: "my-ssh-key",
///     publicKey: std.file({
///         input: "~/.ssh/id_ed25519.pub",
///     }).then(invoke => invoke.result),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_hcloud as hcloud
/// import pulumi_std as std
///
/// main = hcloud.SshKey("main",
///     name="my-ssh-key",
///     public_key=std.file(input="~/.ssh/id_ed25519.pub").result)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using HCloud = Pulumi.HCloud;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var main = new HCloud.SshKey("main", new()
///     {
///         Name = "my-ssh-key",
///         PublicKey = Std.File.Invoke(new()
///         {
///             Input = "~/.ssh/id_ed25519.pub",
///         }).Apply(invoke => invoke.Result),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-hcloud/sdk/go/hcloud"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		invokeFile, err := std.File(ctx, &std.FileArgs{
/// 			Input: "~/.ssh/id_ed25519.pub",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = hcloud.NewSshKey(ctx, "main", &hcloud.SshKeyArgs{
/// 			Name:      pulumi.String("my-ssh-key"),
/// 			PublicKey: pulumi.String(invokeFile.Result),
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
/// import com.pulumi.hcloud.SshKey;
/// import com.pulumi.hcloud.SshKeyArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
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
///         var main = new SshKey("main", SshKeyArgs.builder()
///             .name("my-ssh-key")
///             .publicKey(StdFunctions.file(FileArgs.builder()
///                 .input("~/.ssh/id_ed25519.pub")
///                 .build()).result())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   main:
///     type: hcloud:SshKey
///     properties:
///       name: my-ssh-key
///       publicKey:
///         fn::invoke:
///           function: std:file
///           arguments:
///             input: ~/.ssh/id_ed25519.pub
///           return: result
/// ```
///
///
/// ## Import
///
/// The `pulumi import` command can be used, for example:
///
/// ```sh
/// $ pulumi import hcloud:index/sshKey:SshKey example "$SSH_KEY_ID"
/// ```
class SshKey extends pulumi.CustomResource {
  /// Fingerprint of the SSH public key.
  late final pulumi.Output<String> fingerprint;
  /// User-defined [labels](https://docs.hetzner.cloud/reference/cloud#labels) (key-value pairs) for the resource.
  late final pulumi.Output<Map<String, String>> labels;
  /// Name of the SSH Key.
  late final pulumi.Output<String> name;
  /// Public key of the SSH Key pair. If this is a file, it can be read using the `file` interpolation function.
  late final pulumi.Output<String> publicKey;

  /// Creates a new [SshKey].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SshKey]. {@macro pulumi_index_ssh_key_ssh_key_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SshKey(
    String name, {
    SshKeyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'hcloud:index/sshKey:SshKey',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.fingerprint = registerOutput<String>('fingerprint');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.name = registerOutput<String>('name');
    this.publicKey = registerOutput<String>('publicKey');
  }
}
