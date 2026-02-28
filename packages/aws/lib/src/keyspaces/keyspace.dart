import 'package:pulumi/pulumi.dart' as pulumi;
import 'keyspace_args.dart';
import 'keyspace_replication_specification.dart';

/// Provides a Keyspaces Keyspace.
///
/// More information about keyspaces can be found in the [Keyspaces User Guide](https://docs.aws.amazon.com/keyspaces/latest/devguide/what-is-keyspaces.html).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.keyspaces.Keyspace("example", {name: "my_keyspace"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.keyspaces.Keyspace("example", name="my_keyspace")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Keyspaces.Keyspace("example", new()
///     {
///         Name = "my_keyspace",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/keyspaces"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := keyspaces.NewKeyspace(ctx, "example", &keyspaces.KeyspaceArgs{
/// 			Name: pulumi.String("my_keyspace"),
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
/// import com.pulumi.aws.keyspaces.Keyspace;
/// import com.pulumi.aws.keyspaces.KeyspaceArgs;
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
///         var example = new Keyspace("example", KeyspaceArgs.builder()
///             .name("my_keyspace")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:keyspaces:Keyspace
///     properties:
///       name: my_keyspace
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import a keyspace using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:keyspaces/keyspace:Keyspace example my_keyspace
/// ```
class Keyspace extends pulumi.CustomResource {
  /// The ARN of the keyspace.
  late final pulumi.Output<String> arn;
  /// The name of the keyspace to be created.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The replication specification of the keyspace.
  late final pulumi.Output<KeyspaceReplicationSpecification> replicationSpecification;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [Keyspace].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Keyspace]. {@macro pulumi_keyspaces_keyspace_keyspace_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Keyspace(
    String name, {
    KeyspaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:keyspaces/keyspace:Keyspace',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.replicationSpecification = registerOutput<KeyspaceReplicationSpecification>('replicationSpecification');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
