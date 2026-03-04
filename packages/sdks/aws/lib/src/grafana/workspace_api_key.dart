import 'package:pulumi/pulumi.dart' as pulumi;
import 'workspace_api_key_args.dart';
import 'workspace_api_key_state.dart';

/// Provides an Amazon Managed Grafana workspace API Key resource.
///
/// ## Example Usage
///
/// ### Basic configuration
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const key = new aws.grafana.WorkspaceApiKey("key", {
///     keyName: "test-key",
///     keyRole: "VIEWER",
///     secondsToLive: 3600,
///     workspaceId: test.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// key = aws.grafana.WorkspaceApiKey("key",
///     key_name="test-key",
///     key_role="VIEWER",
///     seconds_to_live=3600,
///     workspace_id=test["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var key = new Aws.Grafana.WorkspaceApiKey("key", new()
///     {
///         KeyName = "test-key",
///         KeyRole = "VIEWER",
///         SecondsToLive = 3600,
///         WorkspaceId = test.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/grafana"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := grafana.NewWorkspaceApiKey(ctx, "key", &grafana.WorkspaceApiKeyArgs{
/// 			KeyName:       pulumi.String("test-key"),
/// 			KeyRole:       pulumi.String("VIEWER"),
/// 			SecondsToLive: pulumi.Int(3600),
/// 			WorkspaceId:   pulumi.Any(test.Id),
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
/// import com.pulumi.aws.grafana.WorkspaceApiKey;
/// import com.pulumi.aws.grafana.WorkspaceApiKeyArgs;
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
///         var key = new WorkspaceApiKey("key", WorkspaceApiKeyArgs.builder()
///             .keyName("test-key")
///             .keyRole("VIEWER")
///             .secondsToLive(3600)
///             .workspaceId(test.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   key:
///     type: aws:grafana:WorkspaceApiKey
///     properties:
///       keyName: test-key
///       keyRole: VIEWER
///       secondsToLive: 3600
///       workspaceId: ${test.id}
/// ```
class WorkspaceApiKey extends pulumi.CustomResource {
  /// The key token in JSON format. Use this value as a bearer token to authenticate HTTP requests to the workspace.
  late final pulumi.Output<String> key;

  /// Specifies the name of the API key. Key names must be unique to the workspace.
  late final pulumi.Output<String> keyName;

  /// Specifies the permission level of the API key. Valid values are `VIEWER`, `EDITOR`, or `ADMIN`.
  late final pulumi.Output<String> keyRole;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Specifies the time in seconds until the API key expires. Keys can be valid for up to 30 days.
  late final pulumi.Output<int> secondsToLive;

  /// The ID of the workspace that the API key is valid for.
  late final pulumi.Output<String> workspaceId;

  /// Creates a new [WorkspaceApiKey].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkspaceApiKey]. {@macro pulumi_grafana_workspace_api_key_workspace_api_key_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkspaceApiKey(
    String name, {
    WorkspaceApiKeyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:grafana/workspaceApiKey:WorkspaceApiKey',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    key = registerOutput<String>('key');
    keyName = registerOutput<String>('keyName');
    keyRole = registerOutput<String>('keyRole');
    region = registerOutput<String>('region');
    secondsToLive = registerOutput<int>('secondsToLive');
    workspaceId = registerOutput<String>('workspaceId');
  }

  /// Gets an existing [WorkspaceApiKey] resource's state with the given [name] and [id].
  static WorkspaceApiKey get(
    String name,
    pulumi.Input<String> id, {
    WorkspaceApiKeyState? state,
  }) {
    return WorkspaceApiKey._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  WorkspaceApiKey._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:grafana/workspaceApiKey:WorkspaceApiKey',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    key = registerOutput<String>('key');
    keyName = registerOutput<String>('keyName');
    keyRole = registerOutput<String>('keyRole');
    region = registerOutput<String>('region');
    secondsToLive = registerOutput<int>('secondsToLive');
    workspaceId = registerOutput<String>('workspaceId');
  }
}
