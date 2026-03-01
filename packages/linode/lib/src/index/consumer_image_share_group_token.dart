import 'package:pulumi/pulumi.dart' as pulumi;
import 'consumer_image_share_group_token_args.dart';

/// Manages a token for an Image Share Group.
/// For more information, see the [Linode APIv4 docs](https://techdocs.akamai.com/linode-api/reference/post-sharegroup-tokens). May not be currently available to all users even under v4beta.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as linode from "@pulumi/linode";
///
/// const example = new linode.ConsumerImageShareGroupToken("example", {
///     validForSharegroupUuid: "03fbb93e-c27d-4c4a-9180-67f6e0cd74ca",
///     label: "example-token",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_linode as linode
///
/// example = linode.ConsumerImageShareGroupToken("example",
///     valid_for_sharegroup_uuid="03fbb93e-c27d-4c4a-9180-67f6e0cd74ca",
///     label="example-token")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Linode = Pulumi.Linode;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Linode.ConsumerImageShareGroupToken("example", new()
///     {
///         ValidForSharegroupUuid = "03fbb93e-c27d-4c4a-9180-67f6e0cd74ca",
///         Label = "example-token",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-linode/sdk/v5/go/linode"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := linode.NewConsumerImageShareGroupToken(ctx, "example", &linode.ConsumerImageShareGroupTokenArgs{
/// 			ValidForSharegroupUuid: pulumi.String("03fbb93e-c27d-4c4a-9180-67f6e0cd74ca"),
/// 			Label:                  pulumi.String("example-token"),
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
/// import com.pulumi.linode.ConsumerImageShareGroupToken;
/// import com.pulumi.linode.ConsumerImageShareGroupTokenArgs;
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
///         var example = new ConsumerImageShareGroupToken("example", ConsumerImageShareGroupTokenArgs.builder()
///             .validForSharegroupUuid("03fbb93e-c27d-4c4a-9180-67f6e0cd74ca")
///             .label("example-token")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: linode:ConsumerImageShareGroupToken
///     properties:
///       validForSharegroupUuid: 03fbb93e-c27d-4c4a-9180-67f6e0cd74ca
///       label: example-token
/// ```
class ConsumerImageShareGroupToken extends pulumi.CustomResource {
  /// When the token was created.
  late final pulumi.Output<String> created;
  /// When the token will expire.
  late final pulumi.Output<String> expiry;
  /// A label for the token.
  late final pulumi.Output<String?> label;
  /// The label of the Image Share Group that the token is for.
  late final pulumi.Output<String> sharegroupLabel;
  /// The UUID of the Image Share Group that the token is for.
  late final pulumi.Output<String> sharegroupUuid;
  /// The status of the token.
  late final pulumi.Output<String> status;
  /// The one-time-use token to be provided to the Image Share Group Producer.
  late final pulumi.Output<String> token;
  /// The UUID of the token.
  late final pulumi.Output<String> tokenUuid;
  /// When the token was last updated.
  late final pulumi.Output<String> updated;
  /// The UUID of the Image Share Group for which to create a token.
  late final pulumi.Output<String> validForSharegroupUuid;

  /// Creates a new [ConsumerImageShareGroupToken].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ConsumerImageShareGroupToken]. {@macro pulumi_index_consumer_image_share_group_token_consumer_image_share_group_token_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ConsumerImageShareGroupToken(
    String name, {
    ConsumerImageShareGroupTokenArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'linode:index/consumerImageShareGroupToken:ConsumerImageShareGroupToken',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.created = registerOutput<String>('created');
    this.expiry = registerOutput<String>('expiry');
    this.label = registerOutput<String?>('label');
    this.sharegroupLabel = registerOutput<String>('sharegroupLabel');
    this.sharegroupUuid = registerOutput<String>('sharegroupUuid');
    this.status = registerOutput<String>('status');
    this.token = registerOutput<String>('token');
    this.tokenUuid = registerOutput<String>('tokenUuid');
    this.updated = registerOutput<String>('updated');
    this.validForSharegroupUuid = registerOutput<String>('validForSharegroupUuid');
  }
}
