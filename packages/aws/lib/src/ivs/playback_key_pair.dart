import 'package:pulumi/pulumi.dart' as pulumi;
import 'playback_key_pair_args.dart';

/// Resource for managing an AWS IVS (Interactive Video) Playback Key Pair.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// const example = new aws.ivs.PlaybackKeyPair("example", {publicKey: std.file({
///     input: "./public-key.pem",
/// }).then(invoke => invoke.result)});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// example = aws.ivs.PlaybackKeyPair("example", public_key=std.file(input="./public-key.pem").result)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Ivs.PlaybackKeyPair("example", new()
///     {
///         PublicKey = Std.File.Invoke(new()
///         {
///             Input = "./public-key.pem",
///         }).Apply(invoke => invoke.Result),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ivs"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		invokeFile, err := std.File(ctx, &std.FileArgs{
/// 			Input: "./public-key.pem",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ivs.NewPlaybackKeyPair(ctx, "example", &ivs.PlaybackKeyPairArgs{
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
/// import com.pulumi.aws.ivs.PlaybackKeyPair;
/// import com.pulumi.aws.ivs.PlaybackKeyPairArgs;
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
///         var example = new PlaybackKeyPair("example", PlaybackKeyPairArgs.builder()
///             .publicKey(StdFunctions.file(FileArgs.builder()
///                 .input("./public-key.pem")
///                 .build()).result())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ivs:PlaybackKeyPair
///     properties:
///       publicKey:
///         fn::invoke:
///           function: std:file
///           arguments:
///             input: ./public-key.pem
///           return: result
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the IVS playback key pair.
///
///
/// Using `pulumi import`, import IVS (Interactive Video) Playback Key Pair using the ARN. For example:
///
/// ```sh
/// $ pulumi import aws:ivs/playbackKeyPair:PlaybackKeyPair example arn:aws:ivs:us-west-2:326937407773:playback-key/KDJRJNQhiQzA
/// ```
class PlaybackKeyPair extends pulumi.CustomResource {
  /// ARN of the Playback Key Pair.
  late final pulumi.Output<String> arn;

  /// Key-pair identifier.
  late final pulumi.Output<String> fingerprint;

  /// Playback Key Pair name.
  late final pulumi.Output<String> name;

  /// Public portion of a customer-generated key pair. Must be an ECDSA public key in PEM format.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> publicKey;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [PlaybackKeyPair].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PlaybackKeyPair]. {@macro pulumi_ivs_playback_key_pair_playback_key_pair_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PlaybackKeyPair(
    String name, {
    PlaybackKeyPairArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ivs/playbackKeyPair:PlaybackKeyPair',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.fingerprint = registerOutput<String>('fingerprint');
    this.name = registerOutput<String>('name');
    this.publicKey = registerOutput<String>('publicKey');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
