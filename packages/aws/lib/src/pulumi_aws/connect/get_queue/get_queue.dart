import 'package:pulumi/pulumi.dart';
import 'get_queue_args.dart';
import 'get_queue_result.dart';

/// Provides details about a specific Amazon Connect Queue.
///
/// ## Example Usage
///
/// By <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.connect.getQueue({
/// instanceId: "aaaaaaaa-bbbb-cccc-dddd-111111111111",
/// name: "Example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.connect.get_queue(instance_id="aaaaaaaa-bbbb-cccc-dddd-111111111111",
/// name="Example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Connect.GetQueue.Invoke(new()
/// {
/// InstanceId = "aaaaaaaa-bbbb-cccc-dddd-111111111111",
/// Name = "Example",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/connect"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := connect.LookupQueue(ctx, &connect.LookupQueueArgs{
/// InstanceId: "aaaaaaaa-bbbb-cccc-dddd-111111111111",
/// Name:       pulumi.StringRef("Example"),
/// }, nil)
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
/// import com.pulumi.aws.connect.ConnectFunctions;
/// import com.pulumi.aws.connect.inputs.GetQueueArgs;
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
/// final var example = ConnectFunctions.getQueue(GetQueueArgs.builder()
/// .instanceId("aaaaaaaa-bbbb-cccc-dddd-111111111111")
/// .name("Example")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:connect:getQueue
/// arguments:
/// instanceId: aaaaaaaa-bbbb-cccc-dddd-111111111111
/// name: Example
/// ```
/// <!--End PulumiCodeChooser -->
///
/// By <span pulumi-lang-nodejs="`queueId`" pulumi-lang-dotnet="`QueueId`" pulumi-lang-go="`queueId`" pulumi-lang-python="`queue_id`" pulumi-lang-yaml="`queueId`" pulumi-lang-java="`queueId`">`queue_id`</span>
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.connect.getQueue({
/// instanceId: "aaaaaaaa-bbbb-cccc-dddd-111111111111",
/// queueId: "cccccccc-bbbb-cccc-dddd-111111111111",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.connect.get_queue(instance_id="aaaaaaaa-bbbb-cccc-dddd-111111111111",
/// queue_id="cccccccc-bbbb-cccc-dddd-111111111111")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Connect.GetQueue.Invoke(new()
/// {
/// InstanceId = "aaaaaaaa-bbbb-cccc-dddd-111111111111",
/// QueueId = "cccccccc-bbbb-cccc-dddd-111111111111",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/connect"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := connect.LookupQueue(ctx, &connect.LookupQueueArgs{
/// InstanceId: "aaaaaaaa-bbbb-cccc-dddd-111111111111",
/// QueueId:    pulumi.StringRef("cccccccc-bbbb-cccc-dddd-111111111111"),
/// }, nil)
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
/// import com.pulumi.aws.connect.ConnectFunctions;
/// import com.pulumi.aws.connect.inputs.GetQueueArgs;
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
/// final var example = ConnectFunctions.getQueue(GetQueueArgs.builder()
/// .instanceId("aaaaaaaa-bbbb-cccc-dddd-111111111111")
/// .queueId("cccccccc-bbbb-cccc-dddd-111111111111")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:connect:getQueue
/// arguments:
/// instanceId: aaaaaaaa-bbbb-cccc-dddd-111111111111
/// queueId: cccccccc-bbbb-cccc-dddd-111111111111
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetQueueResult> getQueue(
  GetQueueArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:connect/getQueue:getQueue',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetQueueResult.fromMap(result);
}
