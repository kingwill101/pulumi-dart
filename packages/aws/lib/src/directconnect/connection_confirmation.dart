import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_confirmation_args.dart';

/// Provides a confirmation of the creation of the specified hosted connection on an interconnect.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const confirmation = new aws.directconnect.ConnectionConfirmation("confirmation", {connectionId: "dxcon-ffabc123"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// confirmation = aws.directconnect.ConnectionConfirmation("confirmation", connection_id="dxcon-ffabc123")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var confirmation = new Aws.DirectConnect.ConnectionConfirmation("confirmation", new()
///     {
///         ConnectionId = "dxcon-ffabc123",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/directconnect"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := directconnect.NewConnectionConfirmation(ctx, "confirmation", &directconnect.ConnectionConfirmationArgs{
/// 			ConnectionId: pulumi.String("dxcon-ffabc123"),
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
/// import com.pulumi.aws.directconnect.ConnectionConfirmation;
/// import com.pulumi.aws.directconnect.ConnectionConfirmationArgs;
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
///         var confirmation = new ConnectionConfirmation("confirmation", ConnectionConfirmationArgs.builder()
///             .connectionId("dxcon-ffabc123")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   confirmation:
///     type: aws:directconnect:ConnectionConfirmation
///     properties:
///       connectionId: dxcon-ffabc123
/// ```
class ConnectionConfirmation extends pulumi.CustomResource {
  /// The ID of the hosted connection.
  late final pulumi.Output<String> connectionId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [ConnectionConfirmation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ConnectionConfirmation]. {@macro pulumi_directconnect_connection_confirmation_connection_confirmation_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ConnectionConfirmation(
    String name, {
    ConnectionConfirmationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:directconnect/connectionConfirmation:ConnectionConfirmation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.connectionId = registerOutput<String>('connectionId');
    this.region = registerOutput<String>('region');
  }
}
