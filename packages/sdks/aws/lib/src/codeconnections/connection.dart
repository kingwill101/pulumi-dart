import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_args.dart';
import 'connection_state.dart';
import 'connection_timeouts.dart';

/// Resource for managing an AWS CodeConnections Connection.
///
/// > **NOTE:** The `aws.codeconnections.Connection` resource is created in the state `PENDING`. Authentication with the connection provider must be completed in the AWS Console. See the [AWS documentation](https://docs.aws.amazon.com/dtconsole/latest/userguide/connections-update.html) for details.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.codeconnections.Connection("example", {
///     name: "example-connection",
///     providerType: "Bitbucket",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.codeconnections.Connection("example",
///     name="example-connection",
///     provider_type="Bitbucket")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.CodeConnections.Connection("example", new()
///     {
///         Name = "example-connection",
///         ProviderType = "Bitbucket",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/codeconnections"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := codeconnections.NewConnection(ctx, "example", &codeconnections.ConnectionArgs{
/// 			Name:         pulumi.String("example-connection"),
/// 			ProviderType: pulumi.String("Bitbucket"),
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
/// import com.pulumi.aws.codeconnections.Connection;
/// import com.pulumi.aws.codeconnections.ConnectionArgs;
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
///         var example = new Connection("example", ConnectionArgs.builder()
///             .name("example-connection")
///             .providerType("Bitbucket")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:codeconnections:Connection
///     properties:
///       name: example-connection
///       providerType: Bitbucket
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the CodeConnections connection.
///
///
/// Using `pulumi import`, import CodeConnections connection using the ARN. For example:
///
/// ```sh
/// $ pulumi import aws:codeconnections/connection:Connection test-connection arn:aws:codeconnections:us-west-1:0123456789:connection/79d4d357-a2ee-41e4-b350-2fe39ae59448
/// ```
class Connection extends pulumi.CustomResource {
  /// The codeconnections connection ARN.
  late final pulumi.Output<String> arn;
  /// The codeconnections connection status. Possible values are `PENDING`, `AVAILABLE` and `ERROR`.
  late final pulumi.Output<String> connectionStatus;
  /// The Amazon Resource Name (ARN) of the host associated with the connection. Conflicts with `provider_type`
  late final pulumi.Output<String?> hostArn;
  /// The name of the connection to be created. The name must be unique in the calling AWS account. Changing `name` will create a new resource.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> ownerAccountId;
  /// The name of the external provider where your third-party code repository is configured. Changing `provider_type` will create a new resource. Conflicts with `host_arn`.
  late final pulumi.Output<String> providerType;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Map of key-value resource tags to associate with the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<ConnectionTimeouts?> timeouts;

  /// Creates a new [Connection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Connection]. {@macro pulumi_codeconnections_connection_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Connection(
    String name, {
    ConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:codeconnections/connection:Connection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.connectionStatus = registerOutput<String>('connectionStatus');
    this.hostArn = registerOutput<String?>('hostArn');
    this.name = registerOutput<String>('name');
    this.ownerAccountId = registerOutput<String>('ownerAccountId');
    this.providerType = registerOutput<String>('providerType');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<ConnectionTimeouts?>('timeouts');
  }

  /// Gets an existing [Connection] resource's state with the given [name] and [id].
  static Connection get(
    String name,
    pulumi.Input<String> id, {
    ConnectionState? state,
  }) {
    return Connection._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Connection._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:codeconnections/connection:Connection',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.connectionStatus = registerOutput<String>('connectionStatus');
    this.hostArn = registerOutput<String?>('hostArn');
    this.name = registerOutput<String>('name');
    this.ownerAccountId = registerOutput<String>('ownerAccountId');
    this.providerType = registerOutput<String>('providerType');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<ConnectionTimeouts?>('timeouts');
  }
}
