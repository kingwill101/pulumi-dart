import 'package:pulumi/pulumi.dart' as pulumi;
import 'traffic_policy_args.dart';

/// Manages a Route53 Traffic Policy.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.route53.TrafficPolicy("example", {
///     name: "example",
///     comment: "example comment",
///     document: `{
///   \\"AWSPolicyFormatVersion\\": \\"2015-10-01\\",
///   \\"RecordType\\": \\"A\\",
///   \\"Endpoints\\": {
///     \\"endpoint-start-NkPh\\": {
///       \\"Type\\": \\"value\\",
///       \\"Value\\": \\"10.0.0.2\\"
///     }
///   },
///   \\"StartEndpoint\\": \\"endpoint-start-NkPh\\"
/// }
/// `,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.route53.TrafficPolicy("example",
///     name="example",
///     comment="example comment",
///     document="""{
///   \"AWSPolicyFormatVersion\": \"2015-10-01\",
///   \"RecordType\": \"A\",
///   \"Endpoints\": {
///     \"endpoint-start-NkPh\": {
///       \"Type\": \"value\",
///       \"Value\": \"10.0.0.2\"
///     }
///   },
///   \"StartEndpoint\": \"endpoint-start-NkPh\"
/// }
/// """)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Route53.TrafficPolicy("example", new()
///     {
///         Name = "example",
///         Comment = "example comment",
///         Document = @"{
///   \""AWSPolicyFormatVersion\"": \""2015-10-01\"",
///   \""RecordType\"": \""A\"",
///   \""Endpoints\"": {
///     \""endpoint-start-NkPh\"": {
///       \""Type\"": \""value\"",
///       \""Value\"": \""10.0.0.2\""
///     }
///   },
///   \""StartEndpoint\"": \""endpoint-start-NkPh\""
/// }
/// ",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/route53"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := route53.NewTrafficPolicy(ctx, "example", &route53.TrafficPolicyArgs{
/// 			Name:    pulumi.String("example"),
/// 			Comment: pulumi.String("example comment"),
/// 			Document: pulumi.String(`{
///   \"AWSPolicyFormatVersion\": \"2015-10-01\",
///   \"RecordType\": \"A\",
///   \"Endpoints\": {
///     \"endpoint-start-NkPh\": {
///       \"Type\": \"value\",
///       \"Value\": \"10.0.0.2\"
///     }
///   },
///   \"StartEndpoint\": \"endpoint-start-NkPh\"
/// }
/// `),
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
/// import com.pulumi.aws.route53.TrafficPolicy;
/// import com.pulumi.aws.route53.TrafficPolicyArgs;
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
///         var example = new TrafficPolicy("example", TrafficPolicyArgs.builder()
///             .name("example")
///             .comment("example comment")
///             .document("""
/// {
///   \"AWSPolicyFormatVersion\": \"2015-10-01\",
///   \"RecordType\": \"A\",
///   \"Endpoints\": {
///     \"endpoint-start-NkPh\": {
///       \"Type\": \"value\",
///       \"Value\": \"10.0.0.2\"
///     }
///   },
///   \"StartEndpoint\": \"endpoint-start-NkPh\"
/// }
///             """)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:route53:TrafficPolicy
///     properties:
///       name: example
///       comment: example comment
///       document: |
///         {
///           \"AWSPolicyFormatVersion\": \"2015-10-01\",
///           \"RecordType\": \"A\",
///           \"Endpoints\": {
///             \"endpoint-start-NkPh\": {
///               \"Type\": \"value\",
///               \"Value\": \"10.0.0.2\"
///             }
///           },
///           \"StartEndpoint\": \"endpoint-start-NkPh\"
///         }
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Route53 Traffic Policy using the `id` and `version`. For example:
///
/// ```sh
/// $ pulumi import aws:route53/trafficPolicy:TrafficPolicy example 01a52019-d16f-422a-ae72-c306d2b6df7e/1
/// ```
class TrafficPolicy extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) of the traffic policy.
  late final pulumi.Output<String> arn;

  /// Comment for the traffic policy.
  late final pulumi.Output<String?> comment;

  /// Policy document. This is a JSON formatted string. For more information about building Route53 traffic policy documents, see the [AWS Route53 Traffic Policy document format](https://docs.aws.amazon.com/Route53/latest/APIReference/api-policies-traffic-policy-document-format.html)
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> document;

  /// Name of the traffic policy.
  late final pulumi.Output<String> name;

  /// DNS type of the resource record sets that Amazon Route 53 creates when you use a traffic policy to create a traffic policy instance.
  late final pulumi.Output<String> type;

  /// Version number of the traffic policy. This value is automatically incremented by AWS after each update of this resource.
  late final pulumi.Output<int> version;

  /// Creates a new [TrafficPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TrafficPolicy]. {@macro pulumi_route53_traffic_policy_traffic_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TrafficPolicy(
    String name, {
    TrafficPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:route53/trafficPolicy:TrafficPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.comment = registerOutput<String?>('comment');
    this.document = registerOutput<String>('document');
    this.name = registerOutput<String>('name');
    this.type = registerOutput<String>('type');
    this.version = registerOutput<int>('version');
  }
}
