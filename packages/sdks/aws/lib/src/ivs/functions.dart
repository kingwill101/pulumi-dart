import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_stream_key_args.dart';
import 'get_stream_key_result.dart';

/// Data source for managing an AWS IVS (Interactive Video) Stream Key.
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
/// const example = aws.ivs.getStreamKey({
///     channelArn: "arn:aws:ivs:us-west-2:326937407773:channel/0Y1lcs4U7jk5",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ivs.get_stream_key(channel_arn="arn:aws:ivs:us-west-2:326937407773:channel/0Y1lcs4U7jk5")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Ivs.GetStreamKey.Invoke(new()
///     {
///         ChannelArn = "arn:aws:ivs:us-west-2:326937407773:channel/0Y1lcs4U7jk5",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ivs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ivs.GetStreamKey(ctx, &ivs.GetStreamKeyArgs{
/// 			ChannelArn: "arn:aws:ivs:us-west-2:326937407773:channel/0Y1lcs4U7jk5",
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
/// data "aws_ivs_getstreamkey" "example" {
///   channel_arn = "arn:aws:ivs:us-west-2:326937407773:channel/0Y1lcs4U7jk5"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ivs.IvsFunctions;
/// import com.pulumi.aws.ivs.inputs.GetStreamKeyArgs;
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
///         final var example = IvsFunctions.getStreamKey(GetStreamKeyArgs.builder()
///             .channelArn("arn:aws:ivs:us-west-2:326937407773:channel/0Y1lcs4U7jk5")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:ivs:getStreamKey
///       arguments:
///         channelArn: arn:aws:ivs:us-west-2:326937407773:channel/0Y1lcs4U7jk5
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ivs_get_stream_key_get_stream_key_args_doc}
/// [options] Invoke options controlling this call.
Future<GetStreamKeyResult> getStreamKey(
  GetStreamKeyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ivs/getStreamKey:getStreamKey',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetStreamKeyResult.fromMap(result);
}
