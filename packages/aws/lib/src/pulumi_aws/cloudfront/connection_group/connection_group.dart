import 'package:pulumi/pulumi.dart';
import '../connection_group_timeouts/connection_group_timeouts.dart';
import 'connection_group_args.dart';

/// Creates an Amazon CloudFront Connection Group.
///
/// For information about CloudFront Connection Groups, see the [AWS CloudFormation Documentation](https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-cloudfront-connectiongroup.html).
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.cloudfront.ConnectionGroup("example", {
/// name: "example",
/// enabled: true,
/// ipv6Enabled: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudfront.ConnectionGroup("example",
/// name="example",
/// enabled=True,
/// ipv6_enabled=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.CloudFront.ConnectionGroup("example", new()
/// {
/// Name = "example",
/// Enabled = true,
/// Ipv6Enabled = true,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudfront"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := cloudfront.NewConnectionGroup(ctx, "example", &cloudfront.ConnectionGroupArgs{
/// Name:        pulumi.String("example"),
/// Enabled:     pulumi.Bool(true),
/// Ipv6Enabled: pulumi.Bool(true),
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new ConnectionGroup("example", ConnectionGroupArgs.builder()
/// .name("example")
/// .enabled(true)
/// .ipv6Enabled(true)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:cloudfront:ConnectionGroup
/// properties:
/// name: example
/// enabled: true
/// ipv6Enabled: true
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import CloudFront Connection Groups using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:cloudfront/connectionGroup:ConnectionGroup example CGROUP123EXAMPLE
/// ```
///
/// [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/TemplateReference/aws-resource-cloudfront-connectiongroup.html
class ConnectionGroup extends CustomResource {
  /// ID of the associated Anycast IP List. <span pulumi-lang-nodejs="`ipv6Enabled`" pulumi-lang-dotnet="`Ipv6Enabled`" pulumi-lang-go="`ipv6Enabled`" pulumi-lang-python="`ipv6_enabled`" pulumi-lang-yaml="`ipv6Enabled`" pulumi-lang-java="`ipv6Enabled`">`ipv6_enabled`</span> must not be set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> in order to set this argument
  late final Output<String?> anycastIpListId;

  /// ARN of the connection group.
  late final Output<String> arn;

  /// Whether the connection group is enabled. Default is <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  late final Output<bool> enabled;

  /// Current version of the connection group.
  late final Output<String> etag;

  /// Whether IPv6 is enabled for the connection group. Default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  late final Output<bool> ipv6Enabled;

  /// Whether the connection group is the default connection group for the distribution tenants.
  late final Output<bool> isDefault;

  /// Date and time when the connection group was last modified.
  late final Output<String> lastModifiedTime;

  /// Name of the connection group.
  late final Output<String> name;

  /// The routing endpoint (also known as the DNS name) that is assigned to the connection group, such as d111111abcdef8.cloudfront.net.
  late final Output<String> routingEndpoint;

  /// Current status of the connection group.
  late final Output<String> status;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;
  late final Output<ConnectionGroupTimeouts?> timeouts;
  late final Output<bool> waitForDeployment;

  ConnectionGroup(
    String name, {
    ConnectionGroupArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:cloudfront/connectionGroup:ConnectionGroup',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
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
