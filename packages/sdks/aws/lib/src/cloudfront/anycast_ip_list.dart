import 'package:pulumi/pulumi.dart' as pulumi;
import 'anycast_ip_list_args.dart';
import 'anycast_ip_list_state.dart';
import 'anycast_ip_list_timeouts.dart';

/// Resource for managing a CloudFront Anycast IP List.
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
/// const example = new aws.cloudfront.AnycastIpList("example", {
///     name: "example-list",
///     ipCount: 21,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudfront.AnycastIpList("example",
///     name="example-list",
///     ip_count=21)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.CloudFront.AnycastIpList("example", new()
///     {
///         Name = "example-list",
///         IpCount = 21,
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
/// 		_, err := cloudfront.NewAnycastIpList(ctx, "example", &cloudfront.AnycastIpListArgs{
/// 			Name:    pulumi.String("example-list"),
/// 			IpCount: pulumi.Int(21),
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new AnycastIpList("example", AnycastIpListArgs.builder()
///             .name("example-list")
///             .ipCount(21)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:cloudfront:AnycastIpList
///     properties:
///       name: example-list
///       ipCount: 21
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import CloudFront Anycast IP List using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:cloudfront/anycastIpList:AnycastIpList example abcd-1234
/// ```
class AnycastIpList extends pulumi.CustomResource {
  /// The static IP addresses that are allocated to the Anycast IP list.
  late final pulumi.Output<List<String>> anycastIps;
  /// The Anycast IP list ARN.
  late final pulumi.Output<String> arn;
  /// The current version of the Anycast IP list.
  late final pulumi.Output<String> etag;
  /// The number of static IP addresses that are allocated to the Anycast IP list. Valid values: `3`, `21`.
  late final pulumi.Output<int> ipCount;
  /// Name of the Anycast IP list.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;
  /// Key-value tags for the place index. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<AnycastIpListTimeouts?> timeouts;

  /// Creates a new [AnycastIpList].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AnycastIpList]. {@macro pulumi_cloudfront_anycast_ip_list_anycast_ip_list_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AnycastIpList(
    String name, {
    AnycastIpListArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudfront/anycastIpList:AnycastIpList',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
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

  /// Gets an existing [AnycastIpList] resource's state with the given [name] and [id].
  static AnycastIpList get(
    String name,
    pulumi.Input<String> id, {
    AnycastIpListState? state,
  }) {
    return AnycastIpList._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AnycastIpList._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudfront/anycastIpList:AnycastIpList',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
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
