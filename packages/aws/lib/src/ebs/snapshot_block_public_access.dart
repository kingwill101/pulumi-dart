import 'package:pulumi/pulumi.dart' as pulumi;
import 'snapshot_block_public_access_args.dart';

/// Provides a resource to manage the state of the "Block public access for snapshots" setting on region level.
///
/// > **NOTE:** Removing this Terraform resource disables blocking.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ebs.SnapshotBlockPublicAccess("example", {state: "block-all-sharing"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ebs.SnapshotBlockPublicAccess("example", state="block-all-sharing")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Ebs.SnapshotBlockPublicAccess("example", new()
///     {
///         State = "block-all-sharing",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ebs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ebs.NewSnapshotBlockPublicAccess(ctx, "example", &ebs.SnapshotBlockPublicAccessArgs{
/// 			State: pulumi.String("block-all-sharing"),
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
/// import com.pulumi.aws.ebs.SnapshotBlockPublicAccess;
/// import com.pulumi.aws.ebs.SnapshotBlockPublicAccessArgs;
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
///         var example = new SnapshotBlockPublicAccess("example", SnapshotBlockPublicAccessArgs.builder()
///             .state("block-all-sharing")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ebs:SnapshotBlockPublicAccess
///     properties:
///       state: block-all-sharing
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import the state. For example:
///
/// ```sh
/// $ pulumi import aws:ebs/snapshotBlockPublicAccess:SnapshotBlockPublicAccess example default
/// ```
class SnapshotBlockPublicAccess extends pulumi.CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The mode in which to enable "Block public access for snapshots" for the region. Allowed values are `block-all-sharing`, `block-new-sharing`, `unblocked`.
  late final pulumi.Output<String> state;

  /// Creates a new [SnapshotBlockPublicAccess].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SnapshotBlockPublicAccess]. {@macro pulumi_ebs_snapshot_block_public_access_snapshot_block_public_access_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SnapshotBlockPublicAccess(
    String name, {
    SnapshotBlockPublicAccessArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ebs/snapshotBlockPublicAccess:SnapshotBlockPublicAccess',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.region = registerOutput<String>('region');
    this.state = registerOutput<String>('state');
  }
}
