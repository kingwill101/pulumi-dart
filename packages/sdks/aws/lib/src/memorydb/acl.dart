import 'package:pulumi/pulumi.dart' as pulumi;
import 'acl_args.dart';
import 'acl_state.dart';

/// Provides a MemoryDB ACL.
///
/// More information about users and ACL-s can be found in the [MemoryDB User Guide](https://docs.aws.amazon.com/memorydb/latest/devguide/clusters.acls.html).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.memorydb.Acl("example", {
///     name: "my-acl",
///     userNames: [
///         "my-user-1",
///         "my-user-2",
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.memorydb.Acl("example",
///     name="my-acl",
///     user_names=[
///         "my-user-1",
///         "my-user-2",
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.MemoryDb.Acl("example", new()
///     {
///         Name = "my-acl",
///         UserNames = new[]
///         {
///             "my-user-1",
///             "my-user-2",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/memorydb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := memorydb.NewAcl(ctx, "example", &memorydb.AclArgs{
/// 			Name: pulumi.String("my-acl"),
/// 			UserNames: pulumi.StringArray{
/// 				pulumi.String("my-user-1"),
/// 				pulumi.String("my-user-2"),
/// 			},
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
/// resource "aws_memorydb_acl" "example" {
///   name       = "my-acl"
///   user_names = ["my-user-1", "my-user-2"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.memorydb.Acl;
/// import com.pulumi.aws.memorydb.AclArgs;
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
///         var example = new Acl("example", AclArgs.builder()
///             .name("my-acl")
///             .userNames(
///                 "my-user-1",
///                 "my-user-2")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:memorydb:Acl
///     properties:
///       name: my-acl
///       userNames:
///         - my-user-1
///         - my-user-2
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import an ACL using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:memorydb/acl:Acl example my-acl
/// ```
class Acl extends pulumi.CustomResource {
  /// The ARN of the ACL.
  late final pulumi.Output<String> arn;
  /// The minimum engine version supported by the ACL.
  late final pulumi.Output<String> minimumEngineVersion;
  /// Name of the ACL. If omitted, the provider will assign a random, unique name. Conflicts with `namePrefix`.
  late final pulumi.Output<String> name;
  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  late final pulumi.Output<String> namePrefix;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Set of MemoryDB user names to be included in this ACL.
  late final pulumi.Output<List<String>?> userNames;

  /// Creates a new [Acl].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Acl]. {@macro pulumi_memorydb_acl_acl_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Acl(
    String name, {
    AclArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:memorydb/acl:Acl',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    minimumEngineVersion = registerOutput<String>('minimumEngineVersion');
    this.name = registerOutput<String>('name');
    namePrefix = registerOutput<String>('namePrefix');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    userNames = registerOutput<List<String>?>('userNames', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }

  /// Gets an existing [Acl] resource's state with the given [name] and [id].
  static Acl get(
    String name,
    pulumi.Input<String> id, {
    AclState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Acl._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Acl._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:memorydb/acl:Acl',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    minimumEngineVersion = registerOutput<String>('minimumEngineVersion');
    this.name = registerOutput<String>('name');
    namePrefix = registerOutput<String>('namePrefix');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    userNames = registerOutput<List<String>?>('userNames', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }

  /// Creates a typed reference to an existing [Acl] resource.
  Acl.reference(String urn)
    : super(
        'aws:memorydb/acl:Acl',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    minimumEngineVersion = registerOutput<String>('minimumEngineVersion');
    this.name = registerOutput<String>('name');
    namePrefix = registerOutput<String>('namePrefix');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    userNames = registerOutput<List<String>?>('userNames', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }
}
