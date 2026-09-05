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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_cloudfront_anycastiplist" "example" {
///   name     = "example-list"
///   ip_count = 21
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
  /// Key-value tags for the place index. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
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
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    anycastIps = registerOutput<List<String>>('anycastIps', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    arn = registerOutput<String>('arn');
    etag = registerOutput<String>('etag');
    ipCount = registerOutput<int>('ipCount');
    this.name = registerOutput<String>('name');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<AnycastIpListTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AnycastIpListTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [AnycastIpList] resource's state with the given [name] and [id].
  static AnycastIpList get(
    String name,
    pulumi.Input<String> id, {
    AnycastIpListState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AnycastIpList._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
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
    anycastIps = registerOutput<List<String>>('anycastIps', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    arn = registerOutput<String>('arn');
    etag = registerOutput<String>('etag');
    ipCount = registerOutput<int>('ipCount');
    this.name = registerOutput<String>('name');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<AnycastIpListTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AnycastIpListTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [AnycastIpList] resource.
  AnycastIpList.reference(String urn)
    : super(
        'aws:cloudfront/anycastIpList:AnycastIpList',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    anycastIps = registerOutput<List<String>>('anycastIps', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    arn = registerOutput<String>('arn');
    etag = registerOutput<String>('etag');
    ipCount = registerOutput<int>('ipCount');
    this.name = registerOutput<String>('name');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<AnycastIpListTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AnycastIpListTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
