import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_args.dart';

/// `f5bigip.ssl.Key` This resource will import SSL certificate key on BIG-IP LTM.
/// Certificate key can be imported from certificate key files on the local disk, in PEM format
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as f5bigip from "@pulumi/f5bigip";
/// import * as std from "@pulumi/std";
///
/// const test_key = new f5bigip.ssl.Key("test-key", {
///     name: "serverkey.key",
///     content: std.file({
///         input: "serverkey.key",
///     }).then(invoke => invoke.result),
///     partition: "Common",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_f5bigip as f5bigip
/// import pulumi_std as std
///
/// test_key = f5bigip.ssl.Key("test-key",
///     name="serverkey.key",
///     content=std.file(input="serverkey.key").result,
///     partition="Common")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using F5BigIP = Pulumi.F5BigIP;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test_key = new F5BigIP.Ssl.Key("test-key", new()
///     {
///         Name = "serverkey.key",
///         Content = Std.File.Invoke(new()
///         {
///             Input = "serverkey.key",
///         }).Apply(invoke => invoke.Result),
///         Partition = "Common",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-f5bigip/sdk/v3/go/f5bigip/ssl"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		invokeFile, err := std.File(ctx, &std.FileArgs{
/// 			Input: "serverkey.key",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ssl.NewKey(ctx, "test-key", &ssl.KeyArgs{
/// 			Name:      pulumi.String("serverkey.key"),
/// 			Content:   pulumi.String(invokeFile.Result),
/// 			Partition: pulumi.String("Common"),
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
/// import com.pulumi.f5bigip.ssl.Key;
/// import com.pulumi.f5bigip.ssl.KeyArgs;
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
///         var test_key = new Key("test-key", KeyArgs.builder()
///             .name("serverkey.key")
///             .content(StdFunctions.file(FileArgs.builder()
///                 .input("serverkey.key")
///                 .build()).result())
///             .partition("Common")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test-key:
///     type: f5bigip:ssl:Key
///     properties:
///       name: serverkey.key
///       content:
///         fn::invoke:
///           function: std:file
///           arguments:
///             input: serverkey.key
///           return: result
///       partition: Common
/// ```
class Key extends pulumi.CustomResource {
  /// Content of SSL certificate key present on local Disk
  late final pulumi.Output<String> content;
  /// Full Path Name of ssl key
  late final pulumi.Output<String> fullPath;
  /// Name of the SSL Certificate key to be Imported on to BIGIP
  late final pulumi.Output<String> name;
  /// Partition of ssl certificate key
  late final pulumi.Output<String?> partition;
  /// Passphrase on key.
  late final pulumi.Output<String?> passphrase;

  /// Creates a new [Key].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Key]. {@macro pulumi_ssl_key_key_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Key(
    String name, {
    KeyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'f5bigip:ssl/key:Key',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.content = registerOutput<String>('content');
    this.fullPath = registerOutput<String>('fullPath');
    this.name = registerOutput<String>('name');
    this.partition = registerOutput<String?>('partition');
    this.passphrase = registerOutput<String?>('passphrase');
  }
}
