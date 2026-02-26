import 'package:pulumi/pulumi.dart';
import 'workspace_api_key_args.dart';

/// Provides an Amazon Managed Grafana workspace API Key resource.
///
/// ## Example Usage
///
/// ### Basic configuration
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const key = new aws.grafana.WorkspaceApiKey("key", {
/// keyName: "test-key",
/// keyRole: "VIEWER",
/// secondsToLive: 3600,
/// workspaceId: test.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// key = aws.grafana.WorkspaceApiKey("key",
/// key_name="test-key",
/// key_role="VIEWER",
/// seconds_to_live=3600,
/// workspace_id=test["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var key = new Aws.Grafana.WorkspaceApiKey("key", new()
/// {
/// KeyName = "test-key",
/// KeyRole = "VIEWER",
/// SecondsToLive = 3600,
/// WorkspaceId = test.Id,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/grafana"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := grafana.NewWorkspaceApiKey(ctx, "key", &grafana.WorkspaceApiKeyArgs{
/// KeyName:       pulumi.String("test-key"),
/// KeyRole:       pulumi.String("VIEWER"),
/// SecondsToLive: pulumi.Int(3600),
/// WorkspaceId:   pulumi.Any(test.Id),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var key = new WorkspaceApiKey("key", WorkspaceApiKeyArgs.builder()
/// .keyName("test-key")
/// .keyRole("VIEWER")
/// .secondsToLive(3600)
/// .workspaceId(test.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// key:
/// type: aws:grafana:WorkspaceApiKey
/// properties:
/// keyName: test-key
/// keyRole: VIEWER
/// secondsToLive: 3600
/// workspaceId: ${test.id}
/// ```
/// <!--End PulumiCodeChooser -->
class WorkspaceApiKey extends CustomResource {
  /// The key token in JSON format. Use this value as a bearer token to authenticate HTTP requests to the workspace.
  late final Output<String> key;

  /// Specifies the name of the API key. Key names must be unique to the workspace.
  late final Output<String> keyName;

  /// Specifies the permission level of the API key. Valid values are `VIEWER`, `EDITOR`, or `ADMIN`.
  late final Output<String> keyRole;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Specifies the time in seconds until the API key expires. Keys can be valid for up to 30 days.
  late final Output<int> secondsToLive;

  /// The ID of the workspace that the API key is valid for.
  late final Output<String> workspaceId;

  WorkspaceApiKey(
    String name, {
    WorkspaceApiKeyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:grafana/workspaceApiKey:WorkspaceApiKey',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.key = Output.createUnknown<String>();
    this.keyName = Output.createUnknown<String>();
    this.keyRole = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.secondsToLive = Output.createUnknown<int>();
    this.workspaceId = Output.createUnknown<String>();
  }
}
