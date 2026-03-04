import 'package:pulumi/pulumi.dart' as pulumi;
import 'sampling_rule_args.dart';
import 'sampling_rule_state.dart';

/// Creates and manages an AWS XRay Sampling Rule.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.xray.SamplingRule("example", {
///     ruleName: "example",
///     priority: 9999,
///     version: 1,
///     reservoirSize: 1,
///     fixedRate: 0.05,
///     urlPath: "*",
///     host: "*",
///     httpMethod: "*",
///     serviceType: "*",
///     serviceName: "*",
///     resourceArn: "*",
///     attributes: {
///         Hello: "Tris",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.xray.SamplingRule("example",
///     rule_name="example",
///     priority=9999,
///     version=1,
///     reservoir_size=1,
///     fixed_rate=0.05,
///     url_path="*",
///     host="*",
///     http_method="*",
///     service_type="*",
///     service_name="*",
///     resource_arn="*",
///     attributes={
///         "Hello": "Tris",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Xray.SamplingRule("example", new()
///     {
///         RuleName = "example",
///         Priority = 9999,
///         Version = 1,
///         ReservoirSize = 1,
///         FixedRate = 0.05,
///         UrlPath = "*",
///         Host = "*",
///         HttpMethod = "*",
///         ServiceType = "*",
///         ServiceName = "*",
///         ResourceArn = "*",
///         Attributes =
///         {
///             { "Hello", "Tris" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/xray"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := xray.NewSamplingRule(ctx, "example", &xray.SamplingRuleArgs{
/// 			RuleName:      pulumi.String("example"),
/// 			Priority:      pulumi.Int(9999),
/// 			Version:       pulumi.Int(1),
/// 			ReservoirSize: pulumi.Int(1),
/// 			FixedRate:     pulumi.Float64(0.05),
/// 			UrlPath:       pulumi.String("*"),
/// 			Host:          pulumi.String("*"),
/// 			HttpMethod:    pulumi.String("*"),
/// 			ServiceType:   pulumi.String("*"),
/// 			ServiceName:   pulumi.String("*"),
/// 			ResourceArn:   pulumi.String("*"),
/// 			Attributes: pulumi.StringMap{
/// 				"Hello": pulumi.String("Tris"),
/// 			},
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
/// import com.pulumi.aws.xray.SamplingRule;
/// import com.pulumi.aws.xray.SamplingRuleArgs;
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
///         var example = new SamplingRule("example", SamplingRuleArgs.builder()
///             .ruleName("example")
///             .priority(9999)
///             .version(1)
///             .reservoirSize(1)
///             .fixedRate(0.05)
///             .urlPath("*")
///             .host("*")
///             .httpMethod("*")
///             .serviceType("*")
///             .serviceName("*")
///             .resourceArn("*")
///             .attributes(Map.of("Hello", "Tris"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:xray:SamplingRule
///     properties:
///       ruleName: example
///       priority: 9999
///       version: 1
///       reservoirSize: 1
///       fixedRate: 0.05
///       urlPath: '*'
///       host: '*'
///       httpMethod: '*'
///       serviceType: '*'
///       serviceName: '*'
///       resourceArn: '*'
///       attributes:
///         Hello: Tris
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import XRay Sampling Rules using the name. For example:
///
/// ```sh
/// $ pulumi import aws:xray/samplingRule:SamplingRule example example
/// ```
class SamplingRule extends pulumi.CustomResource {
  /// The ARN of the sampling rule.
  late final pulumi.Output<String> arn;

  /// Matches attributes derived from the request.
  late final pulumi.Output<Map<String, String>?> attributes;

  /// The percentage of matching requests to instrument, after the reservoir is exhausted.
  late final pulumi.Output<double> fixedRate;

  /// Matches the hostname from a request URL.
  late final pulumi.Output<String> host;

  /// Matches the HTTP method of a request.
  late final pulumi.Output<String> httpMethod;

  /// The priority of the sampling rule.
  late final pulumi.Output<int> priority;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A fixed number of matching requests to instrument per second, prior to applying the fixed rate. The reservoir is not used directly by services, but applies to all services using the rule collectively.
  late final pulumi.Output<int> reservoirSize;

  /// Matches the ARN of the AWS resource on which the service runs.
  late final pulumi.Output<String> resourceArn;

  /// The name of the sampling rule.
  late final pulumi.Output<String?> ruleName;

  /// Matches the `name` that the service uses to identify itself in segments.
  late final pulumi.Output<String> serviceName;

  /// Matches the `origin` that the service uses to identify its type in segments.
  late final pulumi.Output<String> serviceType;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Matches the path from a request URL.
  late final pulumi.Output<String> urlPath;

  /// The version of the sampling rule format (`1` )
  late final pulumi.Output<int> version;

  /// Creates a new [SamplingRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SamplingRule]. {@macro pulumi_xray_sampling_rule_sampling_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SamplingRule(
    String name, {
    SamplingRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:xray/samplingRule:SamplingRule',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    attributes = registerOutput<Map<String, String>?>('attributes');
    fixedRate = registerOutput<double>('fixedRate');
    host = registerOutput<String>('host');
    httpMethod = registerOutput<String>('httpMethod');
    priority = registerOutput<int>('priority');
    region = registerOutput<String>('region');
    reservoirSize = registerOutput<int>('reservoirSize');
    resourceArn = registerOutput<String>('resourceArn');
    ruleName = registerOutput<String?>('ruleName');
    serviceName = registerOutput<String>('serviceName');
    serviceType = registerOutput<String>('serviceType');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    urlPath = registerOutput<String>('urlPath');
    version = registerOutput<int>('version');
  }

  /// Gets an existing [SamplingRule] resource's state with the given [name] and [id].
  static SamplingRule get(
    String name,
    pulumi.Input<String> id, {
    SamplingRuleState? state,
  }) {
    return SamplingRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SamplingRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:xray/samplingRule:SamplingRule',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    attributes = registerOutput<Map<String, String>?>('attributes');
    fixedRate = registerOutput<double>('fixedRate');
    host = registerOutput<String>('host');
    httpMethod = registerOutput<String>('httpMethod');
    priority = registerOutput<int>('priority');
    region = registerOutput<String>('region');
    reservoirSize = registerOutput<int>('reservoirSize');
    resourceArn = registerOutput<String>('resourceArn');
    ruleName = registerOutput<String?>('ruleName');
    serviceName = registerOutput<String>('serviceName');
    serviceType = registerOutput<String>('serviceType');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    urlPath = registerOutput<String>('urlPath');
    version = registerOutput<int>('version');
  }
}
