import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_alias_args.dart';
import 'connection_alias_state.dart';
import 'connection_alias_timeouts.dart';

/// Resource for managing an AWS WorkSpaces Connection Alias.
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
/// const example = new aws.workspaces.ConnectionAlias("example", {connectionString: "testdomain.test"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.workspaces.ConnectionAlias("example", connection_string="testdomain.test")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Workspaces.ConnectionAlias("example", new()
///     {
///         ConnectionString = "testdomain.test",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/workspaces"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := workspaces.NewConnectionAlias(ctx, "example", &workspaces.ConnectionAliasArgs{
/// 			ConnectionString: pulumi.String("testdomain.test"),
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
/// import com.pulumi.aws.workspaces.ConnectionAlias;
/// import com.pulumi.aws.workspaces.ConnectionAliasArgs;
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
///         var example = new ConnectionAlias("example", ConnectionAliasArgs.builder()
///             .connectionString("testdomain.test")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:workspaces:ConnectionAlias
///     properties:
///       connectionString: testdomain.test
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import WorkSpaces Connection Alias using the connection alias ID. For example:
///
/// ```sh
/// $ pulumi import aws:workspaces/connectionAlias:ConnectionAlias example rft-8012925589
/// ```
class ConnectionAlias extends pulumi.CustomResource {
  /// The connection string specified for the connection alias. The connection string must be in the form of a fully qualified domain name (FQDN), such as www.example.com.
  late final pulumi.Output<String> connectionString;
  /// The identifier of the Amazon Web Services account that owns the connection alias.
  late final pulumi.Output<String> ownerAccountId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The current state of the connection alias.
  late final pulumi.Output<String> state;
  /// A map of tags assigned to the WorkSpaces Connection Alias. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<ConnectionAliasTimeouts?> timeouts;

  /// Creates a new [ConnectionAlias].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ConnectionAlias]. {@macro pulumi_workspaces_connection_alias_connection_alias_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ConnectionAlias(
    String name, {
    ConnectionAliasArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:workspaces/connectionAlias:ConnectionAlias',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    connectionString = registerOutput<String>('connectionString');
    ownerAccountId = registerOutput<String>('ownerAccountId');
    region = registerOutput<String>('region');
    state = registerOutput<String>('state');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    timeouts = registerOutput<ConnectionAliasTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConnectionAliasTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [ConnectionAlias] resource's state with the given [name] and [id].
  static ConnectionAlias get(
    String name,
    pulumi.Input<String> id, {
    ConnectionAliasState? state,
  }) {
    return ConnectionAlias._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ConnectionAlias._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:workspaces/connectionAlias:ConnectionAlias',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    connectionString = registerOutput<String>('connectionString');
    ownerAccountId = registerOutput<String>('ownerAccountId');
    region = registerOutput<String>('region');
    this.state = registerOutput<String>('state');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    timeouts = registerOutput<ConnectionAliasTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConnectionAliasTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
