import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_notification_channel_args.dart';
import 'get_notification_channel_result.dart';
import 'get_resource_collection_args.dart';
import 'get_resource_collection_result.dart';

/// Data source for managing an AWS DevOps Guru Notification Channel.
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
/// const example = aws.devopsguru.getNotificationChannel({
///     id: "channel-1234",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.devopsguru.get_notification_channel(id="channel-1234")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.DevOpsGuru.GetNotificationChannel.Invoke(new()
///     {
///         Id = "channel-1234",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/devopsguru"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := devopsguru.LookupNotificationChannel(ctx, &devopsguru.LookupNotificationChannelArgs{
/// 			Id: "channel-1234",
/// 		}, nil)
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
/// data "aws_devopsguru_getnotificationchannel" "example" {
///   id = "channel-1234"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.devopsguru.DevopsguruFunctions;
/// import com.pulumi.aws.devopsguru.inputs.GetNotificationChannelArgs;
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
///         final var example = DevopsguruFunctions.getNotificationChannel(GetNotificationChannelArgs.builder()
///             .id("channel-1234")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:devopsguru:getNotificationChannel
///       arguments:
///         id: channel-1234
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_devopsguru_get_notification_channel_get_notification_channel_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNotificationChannelResult> getNotificationChannel(
  GetNotificationChannelArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:devopsguru/getNotificationChannel:getNotificationChannel',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNotificationChannelResult.fromMap(result);
}

/// Data source for managing an AWS DevOps Guru Resource Collection.
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
/// const example = aws.devopsguru.getResourceCollection({
///     type: "AWS_SERVICE",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.devopsguru.get_resource_collection(type="AWS_SERVICE")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.DevOpsGuru.GetResourceCollection.Invoke(new()
///     {
///         Type = "AWS_SERVICE",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/devopsguru"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := devopsguru.LookupResourceCollection(ctx, &devopsguru.LookupResourceCollectionArgs{
/// 			Type: "AWS_SERVICE",
/// 		}, nil)
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
/// data "aws_devopsguru_getresourcecollection" "example" {
///   type = "AWS_SERVICE"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.devopsguru.DevopsguruFunctions;
/// import com.pulumi.aws.devopsguru.inputs.GetResourceCollectionArgs;
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
///         final var example = DevopsguruFunctions.getResourceCollection(GetResourceCollectionArgs.builder()
///             .type("AWS_SERVICE")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:devopsguru:getResourceCollection
///       arguments:
///         type: AWS_SERVICE
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_devopsguru_get_resource_collection_get_resource_collection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetResourceCollectionResult> getResourceCollection(
  GetResourceCollectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:devopsguru/getResourceCollection:getResourceCollection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetResourceCollectionResult.fromMap(result);
}
