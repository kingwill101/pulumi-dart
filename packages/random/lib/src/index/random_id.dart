import 'package:pulumi/pulumi.dart' as pulumi;
import 'random_id_args.dart';

/// The resource `random.RandomId` generates random numbers that are intended to be
/// used as unique identifiers for other resources. If the output is considered
/// sensitive, and should not be displayed in the CLI, use `random.RandomBytes`
/// instead.
///
/// This resource *does* use a cryptographic random number generator in order
/// to minimize the chance of collisions, making the results of this resource
/// when a 16-byte identifier is requested of equivalent uniqueness to a
/// type-4 UUID.
///
/// This resource can be used in conjunction with resources that have
/// the `create_before_destroy` lifecycle flag set to avoid conflicts with
/// unique names during the brief period where both the old and new resources
/// exist concurrently.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as random from "@pulumi/random";
///
/// // The following example shows how to generate a unique name for an AWS EC2
/// // instance that changes each time a new AMI id is selected.
/// const server = new random.RandomId("server", {
///     keepers: {
///         ami_id: amiId,
///     },
///     byteLength: 8,
/// });
/// const serverInstance = new aws.index.Instance("server", {
///     tags: {
///         name: `web-server ${server.hex}`,
///     },
///     ami: server.keepers?.amiId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_random as random
///
/// # The following example shows how to generate a unique name for an AWS EC2
/// # instance that changes each time a new AMI id is selected.
/// server = random.RandomId("server",
///     keepers={
///         "ami_id": ami_id,
///     },
///     byte_length=8)
/// server_instance = aws.index.Instance("server",
///     tags={
///         name: fweb-server {server.hex},
///     },
///     ami=server.keepers.ami_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
/// using Random = Pulumi.Random;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // The following example shows how to generate a unique name for an AWS EC2
///     // instance that changes each time a new AMI id is selected.
///     var server = new Random.RandomId("server", new()
///     {
///         Keepers =
///         {
///             { "ami_id", amiId },
///         },
///         ByteLength = 8,
///     });
///
///     var serverInstance = new Aws.Index.Instance("server", new()
///     {
///         Tags =
///         {
///             { "name", $"web-server {server.Hex}" },
///         },
///         Ami = server.Keepers?.AmiId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// The following example shows how to generate a unique name for an AWS EC2
/// 		// instance that changes each time a new AMI id is selected.
/// 		server, err := random.NewRandomId(ctx, "server", &random.RandomIdArgs{
/// 			Keepers: pulumi.StringMap{
/// 				"ami_id": pulumi.Any(amiId),
/// 			},
/// 			ByteLength: pulumi.Int(8),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = aws.NewInstance(ctx, "server", &aws.InstanceArgs{
/// 			Tags: map[string]interface{}{
/// 				"name": pulumi.Sprintf("web-server %v", server.Hex),
/// 			},
/// 			Ami: server.Keepers.AmiId,
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
/// import com.pulumi.random.RandomId;
/// import com.pulumi.random.RandomIdArgs;
/// import com.pulumi.aws.Instance;
/// import com.pulumi.aws.InstanceArgs;
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
///         // The following example shows how to generate a unique name for an AWS EC2
///         // instance that changes each time a new AMI id is selected.
///         var server = new RandomId("server", RandomIdArgs.builder()
///             .keepers(Map.of("ami_id", amiId))
///             .byteLength(8)
///             .build());
///
///         var serverInstance = new Instance("serverInstance", InstanceArgs.builder()
///             .tags(Map.of("name", String.format("web-server %s", server.hex())))
///             .ami(server.keepers().amiId())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # The following example shows how to generate a unique name for an AWS EC2
///   # instance that changes each time a new AMI id is selected.
///   server:
///     type: random:RandomId
///     properties:
///       keepers:
///         ami_id: ${amiId}
///       byteLength: 8
///   serverInstance:
///     type: aws:Instance
///     name: server
///     properties:
///       tags:
///         name: web-server ${server.hex}
///       ami: ${server.keepers.amiId}
/// ```
///
///
/// ## Import
///
/// The `pulumi import` command can be used, for example:
///
/// Random IDs can be imported using the b64_url with an optional prefix. This
///
/// can be used to replace a config value with a value interpolated from the
///
/// random provider without experiencing diffs.
///
/// Example with no prefix:
///
/// ```sh
/// $ pulumi import random:index/randomId:RandomId server p-9hUg
/// ```
///
/// Example with prefix (prefix is separated by a ,):
///
/// ```sh
/// $ pulumi import random:index/randomId:RandomId server my-prefix-,p-9hUg
/// ```
class RandomId extends pulumi.CustomResource {
  /// The generated id presented in base64 without additional transformations.
  late final pulumi.Output<String> b64Std;
  /// The generated id presented in base64, using the URL-friendly character set: case-sensitive letters, digits and the characters `_` and `-`.
  late final pulumi.Output<String> b64Url;
  /// The number of random bytes to produce. The minimum value is 1, which produces eight bits of randomness.
  late final pulumi.Output<int> byteLength;
  /// The generated id presented in non-padded decimal digits.
  late final pulumi.Output<String> dec;
  /// The generated id presented in padded hexadecimal digits. This result will always be twice as long as the requested byte length.
  late final pulumi.Output<String> hex;
  /// Arbitrary map of values that, when changed, will trigger recreation of resource. See the main provider documentation for more information.
  late final pulumi.Output<Map<String, String>?> keepers;
  /// Arbitrary string to prefix the output value with. This string is supplied as-is, meaning it is not guaranteed to be URL-safe or base64 encoded.
  late final pulumi.Output<String?> prefix;

  /// Creates a new [RandomId].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RandomId]. {@macro pulumi_index_random_id_random_id_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RandomId(
    String name, {
    RandomIdArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'random:index/randomId:RandomId',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.b64Std = registerOutput<String>('b64Std');
    this.b64Url = registerOutput<String>('b64Url');
    this.byteLength = registerOutput<int>('byteLength');
    this.dec = registerOutput<String>('dec');
    this.hex = registerOutput<String>('hex');
    this.keepers = registerOutput<Map<String, String>?>('keepers');
    this.prefix = registerOutput<String?>('prefix');
  }
}
