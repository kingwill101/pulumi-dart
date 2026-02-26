import 'package:pulumi/pulumi.dart';
import 'domain_name_args3.dart';

/// Provides an AppSync Domain Name.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.appsync.DomainName("example", {
/// domainName: "api.example.com",
/// certificateArn: exampleAwsAcmCertificate.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.appsync.DomainName("example",
/// domain_name="api.example.com",
/// certificate_arn=example_aws_acm_certificate["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.AppSync.DomainName("example", new()
/// {
/// Name = "api.example.com",
/// CertificateArn = exampleAwsAcmCertificate.Arn,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/appsync"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := appsync.NewDomainName(ctx, "example", &appsync.DomainNameArgs{
/// DomainName:     pulumi.String("api.example.com"),
/// CertificateArn: pulumi.Any(exampleAwsAcmCertificate.Arn),
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
/// import com.pulumi.aws.appsync.DomainName;
/// import com.pulumi.aws.appsync.DomainNameArgs;
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
/// var example = new DomainName("example", DomainNameArgs.builder()
/// .domainName("api.example.com")
/// .certificateArn(exampleAwsAcmCertificate.arn())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:appsync:DomainName
/// properties:
/// domainName: api.example.com
/// certificateArn: ${exampleAwsAcmCertificate.arn}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.appsync.DomainName`" pulumi-lang-dotnet="`aws.appsync.DomainName`" pulumi-lang-go="`appsync.DomainName`" pulumi-lang-python="`appsync.DomainName`" pulumi-lang-yaml="`aws.appsync.DomainName`" pulumi-lang-java="`aws.appsync.DomainName`">`aws.appsync.DomainName`</span> using the AppSync domain name. For example:
///
/// ```sh
/// $ pulumi import aws:appsync/domainName:DomainName example example.com
/// ```
class DomainName3 extends CustomResource {
  /// Domain name that AppSync provides.
  late final Output<String> appsyncDomainName;

  /// ARN of the certificate. This can be an Certificate Manager (ACM) certificate or an Identity and Access Management (IAM) server certificate. The certifiacte must reside in us-east-1.
  late final Output<String> certificateArn;

  /// A description of the Domain Name.
  late final Output<String?> description;

  /// Domain name.
  late final Output<String> domainName;

  /// ID of your Amazon Route 53 hosted zone.
  late final Output<String> hostedZoneId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  DomainName3(
    String name, {
    DomainNameArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:appsync/domainName:DomainName',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.appsyncDomainName = registerOutput<String>('appsyncDomainName');
    this.certificateArn = registerOutput<String>('certificateArn');
    this.description = registerOutput<String?>('description');
    this.domainName = registerOutput<String>('domainName');
    this.hostedZoneId = registerOutput<String>('hostedZoneId');
    this.region = registerOutput<String>('region');
  }
}
