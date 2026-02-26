import 'package:pulumi/pulumi.dart';
import '../service_dns_entry/service_dns_entry.dart';
import 'service_args4.dart';

/// Resource for managing an AWS VPC Lattice Service.
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
/// const example = new aws.vpclattice.Service("example", {
/// name: "example",
/// authType: "AWS_IAM",
/// customDomainName: "example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.vpclattice.Service("example",
/// name="example",
/// auth_type="AWS_IAM",
/// custom_domain_name="example.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.VpcLattice.Service("example", new()
/// {
/// Name = "example",
/// AuthType = "AWS_IAM",
/// CustomDomainName = "example.com",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/vpclattice"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := vpclattice.NewService(ctx, "example", &vpclattice.ServiceArgs{
/// Name:             pulumi.String("example"),
/// AuthType:         pulumi.String("AWS_IAM"),
/// CustomDomainName: pulumi.String("example.com"),
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
/// import com.pulumi.aws.vpclattice.Service;
/// import com.pulumi.aws.vpclattice.ServiceArgs;
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
/// var example = new Service("example", ServiceArgs.builder()
/// .name("example")
/// .authType("AWS_IAM")
/// .customDomainName("example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:vpclattice:Service
/// properties:
/// name: example
/// authType: AWS_IAM
/// customDomainName: example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import VPC Lattice Service using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:vpclattice/service:Service example svc-06728e2357ea55f8a
/// ```
class Service4 extends CustomResource {
  /// ARN of the service.
  late final Output<String> arn;

  /// Type of IAM policy. Either `NONE` or `AWS_IAM`.
  late final Output<String> authType;

  /// Amazon Resource Name (ARN) of the certificate.
  late final Output<String?> certificateArn;

  /// Custom domain name of the service.
  late final Output<String?> customDomainName;

  /// DNS name of the service.
  late final Output<List<ServiceDnsEntry>> dnsEntries;

  /// Name of the service. The name must be unique within the account. The valid characters are a-z, 0-9, and hyphens (-). You can't use a hyphen as the first or last character, or immediately after another hyphen.Must be between 3 and 40 characters in length.
  ///
  /// The following arguments are optional:
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Status of the service.
  late final Output<String> status;

  /// Key-value mapping of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  Service4(
    String name, {
    ServiceArgs4? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:vpclattice/service:Service',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.authType = registerOutput<String>('authType');
    this.certificateArn = registerOutput<String?>('certificateArn');
    this.customDomainName = registerOutput<String?>('customDomainName');
    this.dnsEntries = registerOutput<List<ServiceDnsEntry>>('dnsEntries');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
