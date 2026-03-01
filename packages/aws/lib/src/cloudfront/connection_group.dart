import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_group_args.dart';
import 'connection_group_timeouts.dart';

/// Creates an Amazon CloudFront Connection Group.
///
/// For information about CloudFront Connection Groups, see the [AWS CloudFormation Documentation](https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-cloudfront-connectiongroup.html).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.cloudfront.ConnectionGroup("example", {
///     name: "example",
///     enabled: true,
///     ipv6Enabled: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudfront.ConnectionGroup("example",
///     name="example",
///     enabled=True,
///     ipv6_enabled=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.CloudFront.ConnectionGroup("example", new()
///     {
///         Name = "example",
///         Enabled = true,
///         Ipv6Enabled = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudfront"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudfront.NewConnectionGroup(ctx, "example", &cloudfront.ConnectionGroupArgs{
/// 			Name:        pulumi.String("example"),
/// 			Enabled:     pulumi.Bool(true),
/// 			Ipv6Enabled: pulumi.Bool(true),
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
/// import com.pulumi.aws.cloudfront.ConnectionGroup;
/// import com.pulumi.aws.cloudfront.ConnectionGroupArgs;
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
///         var example = new ConnectionGroup("example", ConnectionGroupArgs.builder()
///             .name("example")
///             .enabled(true)
///             .ipv6Enabled(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:cloudfront:ConnectionGroup
///     properties:
///       name: example
///       enabled: true
///       ipv6Enabled: true
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import CloudFront Connection Groups using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:cloudfront/connectionGroup:ConnectionGroup example CGROUP123EXAMPLE
/// ```
///
/// [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-cloudfront-connectiongroup.html
class ConnectionGroup extends pulumi.CustomResource {
  /// ID of the associated Anycast IP List. `ipv6_enabled` must not be set to `true` in order to set this argument
  late final pulumi.Output<String?> anycastIpListId;

  /// ARN of the connection group.
  late final pulumi.Output<String> arn;

  /// Whether the connection group is enabled. Default is `true`.
  late final pulumi.Output<bool> enabled;

  /// Current version of the connection group.
  late final pulumi.Output<String> etag;

  /// Whether IPv6 is enabled for the connection group. Default is `false`.
  late final pulumi.Output<bool> ipv6Enabled;

  /// Whether the connection group is the default connection group for the distribution tenants.
  late final pulumi.Output<bool> isDefault;

  /// Date and time when the connection group was last modified.
  late final pulumi.Output<String> lastModifiedTime;

  /// Name of the connection group.
  late final pulumi.Output<String> name;

  /// The routing endpoint (also known as the DNS name) that is assigned to the connection group, such as d111111abcdef8.cloudfront.net.
  late final pulumi.Output<String> routingEndpoint;

  /// Current status of the connection group.
  late final pulumi.Output<String> status;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<ConnectionGroupTimeouts?> timeouts;
  late final pulumi.Output<bool> waitForDeployment;

  /// Creates a new [ConnectionGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ConnectionGroup]. {@macro pulumi_cloudfront_connection_group_connection_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ConnectionGroup(
    String name, {
    ConnectionGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:cloudfront/connectionGroup:ConnectionGroup',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.anycastIpListId = registerOutput<String?>('anycastIpListId');
    this.arn = registerOutput<String>('arn');
    this.enabled = registerOutput<bool>('enabled');
    this.etag = registerOutput<String>('etag');
    this.ipv6Enabled = registerOutput<bool>('ipv6Enabled');
    this.isDefault = registerOutput<bool>('isDefault');
    this.lastModifiedTime = registerOutput<String>('lastModifiedTime');
    this.name = registerOutput<String>('name');
    this.routingEndpoint = registerOutput<String>('routingEndpoint');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<ConnectionGroupTimeouts?>('timeouts');
    this.waitForDeployment = registerOutput<bool>('waitForDeployment');
  }
}
