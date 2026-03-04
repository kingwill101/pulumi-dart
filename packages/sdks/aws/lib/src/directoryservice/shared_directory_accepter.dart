import 'package:pulumi/pulumi.dart' as pulumi;
import 'shared_directory_accepter_args.dart';
import 'shared_directory_accepter_state.dart';

/// Accepts a shared directory in a consumer account.
///
/// &gt; **NOTE:** Destroying this resource removes the shared directory from the consumer account only.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.directoryservice.SharedDirectory("example", {
///     directoryId: exampleAwsDirectoryServiceDirectory.id,
///     notes: "example",
///     target: {
///         id: receiver.accountId,
///     },
/// });
/// const exampleSharedDirectoryAccepter = new aws.directoryservice.SharedDirectoryAccepter("example", {sharedDirectoryId: example.sharedDirectoryId});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.directoryservice.SharedDirectory("example",
///     directory_id=example_aws_directory_service_directory["id"],
///     notes="example",
///     target={
///         "id": receiver["accountId"],
///     })
/// example_shared_directory_accepter = aws.directoryservice.SharedDirectoryAccepter("example", shared_directory_id=example.shared_directory_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.DirectoryService.SharedDirectory("example", new()
///     {
///         DirectoryId = exampleAwsDirectoryServiceDirectory.Id,
///         Notes = "example",
///         Target = new Aws.DirectoryService.Inputs.SharedDirectoryTargetArgs
///         {
///             Id = receiver.AccountId,
///         },
///     });
///
///     var exampleSharedDirectoryAccepter = new Aws.DirectoryService.SharedDirectoryAccepter("example", new()
///     {
///         SharedDirectoryId = example.SharedDirectoryId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/directoryservice"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := directoryservice.NewSharedDirectory(ctx, "example", &directoryservice.SharedDirectoryArgs{
/// 			DirectoryId: pulumi.Any(exampleAwsDirectoryServiceDirectory.Id),
/// 			Notes:       pulumi.String("example"),
/// 			Target: &directoryservice.SharedDirectoryTargetArgs{
/// 				Id: pulumi.Any(receiver.AccountId),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = directoryservice.NewSharedDirectoryAccepter(ctx, "example", &directoryservice.SharedDirectoryAccepterArgs{
/// 			SharedDirectoryId: example.SharedDirectoryId,
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
/// import com.pulumi.aws.directoryservice.SharedDirectory;
/// import com.pulumi.aws.directoryservice.SharedDirectoryArgs;
/// import com.pulumi.aws.directoryservice.inputs.SharedDirectoryTargetArgs;
/// import com.pulumi.aws.directoryservice.SharedDirectoryAccepter;
/// import com.pulumi.aws.directoryservice.SharedDirectoryAccepterArgs;
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
///         var example = new SharedDirectory("example", SharedDirectoryArgs.builder()
///             .directoryId(exampleAwsDirectoryServiceDirectory.id())
///             .notes("example")
///             .target(SharedDirectoryTargetArgs.builder()
///                 .id(receiver.accountId())
///                 .build())
///             .build());
///
///         var exampleSharedDirectoryAccepter = new SharedDirectoryAccepter("exampleSharedDirectoryAccepter", SharedDirectoryAccepterArgs.builder()
///             .sharedDirectoryId(example.sharedDirectoryId())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:directoryservice:SharedDirectory
///     properties:
///       directoryId: ${exampleAwsDirectoryServiceDirectory.id}
///       notes: example
///       target:
///         id: ${receiver.accountId}
///   exampleSharedDirectoryAccepter:
///     type: aws:directoryservice:SharedDirectoryAccepter
///     name: example
///     properties:
///       sharedDirectoryId: ${example.sharedDirectoryId}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Directory Service Shared Directories using the shared directory ID. For example:
///
/// ```sh
/// $ pulumi import aws:directoryservice/sharedDirectoryAccepter:SharedDirectoryAccepter example d-9267633ece
/// ```
class SharedDirectoryAccepter extends pulumi.CustomResource {
  /// Method used when sharing a directory (i.e., `ORGANIZATIONS` or `HANDSHAKE`).
  late final pulumi.Output<String> method;

  /// Message sent by the directory owner to the directory consumer to help the directory consumer administrator determine whether to approve or reject the share invitation.
  late final pulumi.Output<String> notes;

  /// Account identifier of the directory owner.
  late final pulumi.Output<String> ownerAccountId;

  /// Identifier of the Managed Microsoft AD directory from the perspective of the directory owner.
  late final pulumi.Output<String> ownerDirectoryId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Identifier of the directory that is stored in the directory consumer account that corresponds to the shared directory in the owner account.
  late final pulumi.Output<String> sharedDirectoryId;

  /// Creates a new [SharedDirectoryAccepter].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SharedDirectoryAccepter]. {@macro pulumi_directoryservice_shared_directory_accepter_shared_directory_accepter_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SharedDirectoryAccepter(
    String name, {
    SharedDirectoryAccepterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:directoryservice/sharedDirectoryAccepter:SharedDirectoryAccepter',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    method = registerOutput<String>('method');
    notes = registerOutput<String>('notes');
    ownerAccountId = registerOutput<String>('ownerAccountId');
    ownerDirectoryId = registerOutput<String>('ownerDirectoryId');
    region = registerOutput<String>('region');
    sharedDirectoryId = registerOutput<String>('sharedDirectoryId');
  }

  /// Gets an existing [SharedDirectoryAccepter] resource's state with the given [name] and [id].
  static SharedDirectoryAccepter get(
    String name,
    pulumi.Input<String> id, {
    SharedDirectoryAccepterState? state,
  }) {
    return SharedDirectoryAccepter._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SharedDirectoryAccepter._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:directoryservice/sharedDirectoryAccepter:SharedDirectoryAccepter',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    method = registerOutput<String>('method');
    notes = registerOutput<String>('notes');
    ownerAccountId = registerOutput<String>('ownerAccountId');
    ownerDirectoryId = registerOutput<String>('ownerDirectoryId');
    region = registerOutput<String>('region');
    sharedDirectoryId = registerOutput<String>('sharedDirectoryId');
  }
}
