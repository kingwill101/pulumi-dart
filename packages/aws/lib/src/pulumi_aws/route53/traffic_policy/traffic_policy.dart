import 'package:pulumi/pulumi.dart';
import 'traffic_policy_args.dart';

/// Manages a Route53 Traffic Policy.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.route53.TrafficPolicy("example", {
/// name: "example",
/// comment: "example comment",
/// document: `{
/// \\"AWSPolicyFormatVersion\\": \\"2015-10-01\\",
/// \\"RecordType\\": \\"A\\",
/// \\"Endpoints\\": {
/// \\"endpoint-start-NkPh\\": {
/// \\"Type\\": \\"value\\",
/// \\"Value\\": \\"10.0.0.2\\"
/// }
/// },
/// \\"StartEndpoint\\": \\"endpoint-start-NkPh\\"
/// }
/// `,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.route53.TrafficPolicy("example",
/// name="example",
/// comment="example comment",
/// document="""{
/// \"AWSPolicyFormatVersion\": \"2015-10-01\",
/// \"RecordType\": \"A\",
/// \"Endpoints\": {
/// \"endpoint-start-NkPh\": {
/// \"Type\": \"value\",
/// \"Value\": \"10.0.0.2\"
/// }
/// },
/// \"StartEndpoint\": \"endpoint-start-NkPh\"
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
/// var example = new Aws.Route53.TrafficPolicy("example", new()
/// {
/// Name = "example",
/// Comment = "example comment",
/// Document = @"{
/// \""AWSPolicyFormatVersion\"": \""2015-10-01\"",
/// \""RecordType\"": \""A\"",
/// \""Endpoints\"": {
/// \""endpoint-start-NkPh\"": {
/// \""Type\"": \""value\"",
/// \""Value\"": \""10.0.0.2\""
/// }
/// },
/// \""StartEndpoint\"": \""endpoint-start-NkPh\""
/// }
/// ",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/route53"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := route53.NewTrafficPolicy(ctx, "example", &route53.TrafficPolicyArgs{
/// Name:    pulumi.String("example"),
/// Comment: pulumi.String("example comment"),
/// Document: pulumi.String(`{
/// \"AWSPolicyFormatVersion\": \"2015-10-01\",
/// \"RecordType\": \"A\",
/// \"Endpoints\": {
/// \"endpoint-start-NkPh\": {
/// \"Type\": \"value\",
/// \"Value\": \"10.0.0.2\"
/// }
/// },
/// \"StartEndpoint\": \"endpoint-start-NkPh\"
/// }
/// `),
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new TrafficPolicy("example", TrafficPolicyArgs.builder()
/// .name("example")
/// .comment("example comment")
/// .document("""
/// {
/// \"AWSPolicyFormatVersion\": \"2015-10-01\",
/// \"RecordType\": \"A\",
/// \"Endpoints\": {
/// \"endpoint-start-NkPh\": {
/// \"Type\": \"value\",
/// \"Value\": \"10.0.0.2\"
/// }
/// },
/// \"StartEndpoint\": \"endpoint-start-NkPh\"
/// }
/// """)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:route53:TrafficPolicy
/// properties:
/// name: example
/// comment: example comment
/// document: |
/// {
/// \"AWSPolicyFormatVersion\": \"2015-10-01\",
/// \"RecordType\": \"A\",
/// \"Endpoints\": {
/// \"endpoint-start-NkPh\": {
/// \"Type\": \"value\",
/// \"Value\": \"10.0.0.2\"
/// }
/// },
/// \"StartEndpoint\": \"endpoint-start-NkPh\"
/// }
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Route53 Traffic Policy using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span> and <span pulumi-lang-nodejs="`version`" pulumi-lang-dotnet="`Version`" pulumi-lang-go="`version`" pulumi-lang-python="`version`" pulumi-lang-yaml="`version`" pulumi-lang-java="`version`">`version`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:route53/trafficPolicy:TrafficPolicy example 01a52019-d16f-422a-ae72-c306d2b6df7e/1
/// ```
class TrafficPolicy extends CustomResource {
  /// Amazon Resource Name (ARN) of the traffic policy.
  late final Output<String> arn;

  /// Comment for the traffic policy.
  late final Output<String?> comment;

  /// Policy document. This is a JSON formatted string. For more information about building Route53 traffic policy documents, see the [AWS Route53 Traffic Policy document format](https://docs.aws.amazon.com/Route53/latest/APIReference/api-policies-traffic-policy-document-format.html)
  ///
  /// The following arguments are optional:
  late final Output<String> document;

  /// Name of the traffic policy.
  late final Output<String> name;

  /// DNS type of the resource record sets that Amazon Route 53 creates when you use a traffic policy to create a traffic policy instance.
  late final Output<String> type;

  /// Version number of the traffic policy. This value is automatically incremented by AWS after each update of this resource.
  late final Output<int> version;

  TrafficPolicy(
    String name, {
    TrafficPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:route53/trafficPolicy:TrafficPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.comment = Output.createUnknown<String?>();
    this.document = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.type = Output.createUnknown<String>();
    this.version = Output.createUnknown<int>();
  }
}
