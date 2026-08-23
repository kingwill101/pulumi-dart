import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_namespace_args.dart';
import 'channel_namespace_handler_configs.dart';
import 'channel_namespace_state.dart';

/// Manages an [AWS AppSync Channel Namespace](https://docs.aws.amazon.com/appsync/latest/eventapi/event-api-concepts.html#namespace).
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
/// const example = new aws.appsync.ChannelNamespace("example", {
///     name: "example-channel-namespace",
///     apiId: exampleAwsAppsyncApi.apiId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.appsync.ChannelNamespace("example",
///     name="example-channel-namespace",
///     api_id=example_aws_appsync_api["apiId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.AppSync.ChannelNamespace("example", new()
///     {
///         Name = "example-channel-namespace",
///         ApiId = exampleAwsAppsyncApi.ApiId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/appsync"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := appsync.NewChannelNamespace(ctx, "example", &appsync.ChannelNamespaceArgs{
/// 			Name:  pulumi.String("example-channel-namespace"),
/// 			ApiId: pulumi.Any(exampleAwsAppsyncApi.ApiId),
/// 		})
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
/// resource "aws_appsync_channelnamespace" "example" {
///   name   = "example-channel-namespace"
///   api_id = exampleAwsAppsyncApi.apiId
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.appsync.ChannelNamespace;
/// import com.pulumi.aws.appsync.ChannelNamespaceArgs;
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
///         var example = new ChannelNamespace("example", ChannelNamespaceArgs.builder()
///             .name("example-channel-namespace")
///             .apiId(exampleAwsAppsyncApi.apiId())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:appsync:ChannelNamespace
///     properties:
///       name: example-channel-namespace
///       apiId: ${exampleAwsAppsyncApi.apiId}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import AppSync Channel Namespace using the `apiId` and `name` separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:appsync/channelNamespace:ChannelNamespace example example-api-id,example-channel-namespace
/// ```
class ChannelNamespace extends pulumi.CustomResource {
  /// Event API ID.
  late final pulumi.Output<String> apiId;
  /// ARN of the channel namespace.
  late final pulumi.Output<String> channelNamespaceArn;
  /// Event handler functions that run custom business logic to process published events and subscribe requests.
  late final pulumi.Output<String?> codeHandlers;
  /// Configuration for the `onPublish` and `onSubscribe` handlers. See `handlerConfigs` below.
  late final pulumi.Output<ChannelNamespaceHandlerConfigs?> handlerConfigs;
  /// Name of the channel namespace.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;
  /// Authorization modes to use for publishing messages on the channel namespace. This configuration overrides the default API authorization configuration. See `publishAuthMode` below.
  late final pulumi.Output<List<Map<String, dynamic>>?> publishAuthModes;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Authorization modes to use for subscribing to messages on the channel namespace. This configuration overrides the default API authorization configuration. See `subscribeAuthMode` below.
  late final pulumi.Output<List<Map<String, dynamic>>?> subscribeAuthModes;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [ChannelNamespace].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ChannelNamespace]. {@macro pulumi_appsync_channel_namespace_channel_namespace_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ChannelNamespace(
    String name, {
    ChannelNamespaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:appsync/channelNamespace:ChannelNamespace',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiId = registerOutput<String>('apiId');
    channelNamespaceArn = registerOutput<String>('channelNamespaceArn');
    codeHandlers = registerOutput<String?>('codeHandlers');
    handlerConfigs = registerOutput<ChannelNamespaceHandlerConfigs?>('handlerConfigs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ChannelNamespaceHandlerConfigs.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    publishAuthModes = registerOutput<List<Map<String, dynamic>>?>('publishAuthModes');
    region = registerOutput<String>('region');
    subscribeAuthModes = registerOutput<List<Map<String, dynamic>>?>('subscribeAuthModes');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [ChannelNamespace] resource's state with the given [name] and [id].
  static ChannelNamespace get(
    String name,
    pulumi.Input<String> id, {
    ChannelNamespaceState? state,
  }) {
    return ChannelNamespace._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ChannelNamespace._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:appsync/channelNamespace:ChannelNamespace',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiId = registerOutput<String>('apiId');
    channelNamespaceArn = registerOutput<String>('channelNamespaceArn');
    codeHandlers = registerOutput<String?>('codeHandlers');
    handlerConfigs = registerOutput<ChannelNamespaceHandlerConfigs?>('handlerConfigs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ChannelNamespaceHandlerConfigs.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    publishAuthModes = registerOutput<List<Map<String, dynamic>>?>('publishAuthModes');
    region = registerOutput<String>('region');
    subscribeAuthModes = registerOutput<List<Map<String, dynamic>>?>('subscribeAuthModes');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
