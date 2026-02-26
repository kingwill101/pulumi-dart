import 'package:pulumi/pulumi.dart';
import '../anycast_ip_list_timeouts/anycast_ip_list_timeouts.dart';
import 'anycast_ip_list_args.dart';

/// Resource for managing a CloudFront Anycast IP List.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.cloudfront.AnycastIpList("example", {
/// name: "example-list",
/// ipCount: 21,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudfront.AnycastIpList("example",
/// name="example-list",
/// ip_count=21)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.CloudFront.AnycastIpList("example", new()
/// {
/// Name = "example-list",
/// IpCount = 21,
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
/// _, err := cloudfront.NewAnycastIpList(ctx, "example", &cloudfront.AnycastIpListArgs{
/// Name:    pulumi.String("example-list"),
/// IpCount: pulumi.Int(21),
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
/// import com.pulumi.aws.cloudfront.AnycastIpList;
/// import com.pulumi.aws.cloudfront.AnycastIpListArgs;
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
/// var example = new AnycastIpList("example", AnycastIpListArgs.builder()
/// .name("example-list")
/// .ipCount(21)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:cloudfront:AnycastIpList
/// properties:
/// name: example-list
/// ipCount: 21
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import CloudFront Anycast IP List using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:cloudfront/anycastIpList:AnycastIpList example abcd-1234
/// ```
class AnycastIpList extends CustomResource {
  /// The static IP addresses that are allocated to the Anycast IP list.
  late final Output<List<String>> anycastIps;

  /// The Anycast IP list ARN.
  late final Output<String> arn;

  /// The current version of the Anycast IP list.
  late final Output<String> etag;

  /// The number of static IP addresses that are allocated to the Anycast IP list. Valid values: <span pulumi-lang-nodejs="`3`" pulumi-lang-dotnet="`3`" pulumi-lang-go="`3`" pulumi-lang-python="`3`" pulumi-lang-yaml="`3`" pulumi-lang-java="`3`">`3`</span>, <span pulumi-lang-nodejs="`21`" pulumi-lang-dotnet="`21`" pulumi-lang-go="`21`" pulumi-lang-python="`21`" pulumi-lang-yaml="`21`" pulumi-lang-java="`21`">`21`</span>.
  late final Output<int> ipCount;

  /// Name of the Anycast IP list.
  ///
  /// The following arguments are optional:
  late final Output<String> name;

  /// Key-value tags for the place index. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;
  late final Output<AnycastIpListTimeouts?> timeouts;

  AnycastIpList(
    String name, {
    AnycastIpListArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:cloudfront/anycastIpList:AnycastIpList',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.anycastIps = registerOutput<List<String>>('anycastIps');
    this.arn = registerOutput<String>('arn');
    this.etag = registerOutput<String>('etag');
    this.ipCount = registerOutput<int>('ipCount');
    this.name = registerOutput<String>('name');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<AnycastIpListTimeouts?>('timeouts');
  }
}
