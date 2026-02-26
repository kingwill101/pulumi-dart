import 'package:pulumi/pulumi.dart';
import 'domain_identity_args.dart';

/// Provides an SES domain identity resource
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
/// const example = new aws.ses.DomainIdentity("example", {domain: "example.com"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ses.DomainIdentity("example", domain="example.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Ses.DomainIdentity("example", new()
/// {
/// Domain = "example.com",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ses"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ses.NewDomainIdentity(ctx, "example", &ses.DomainIdentityArgs{
/// Domain: pulumi.String("example.com"),
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
/// import com.pulumi.aws.ses.DomainIdentity;
/// import com.pulumi.aws.ses.DomainIdentityArgs;
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
/// var example = new DomainIdentity("example", DomainIdentityArgs.builder()
/// .domain("example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:ses:DomainIdentity
/// properties:
/// domain: example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### With Route53 Record
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ses.DomainIdentity("example", {domain: "example.com"});
/// const exampleAmazonsesVerificationRecord = new aws.route53.Record("example_amazonses_verification_record", {
/// zoneId: "ABCDEFGHIJ123",
/// name: "_amazonses.example.com",
/// type: aws.route53.RecordType.TXT,
/// ttl: 600,
/// records: [example.verificationToken],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ses.DomainIdentity("example", domain="example.com")
/// example_amazonses_verification_record = aws.route53.Record("example_amazonses_verification_record",
/// zone_id="ABCDEFGHIJ123",
/// name="_amazonses.example.com",
/// type=aws.route53.RecordType.TXT,
/// ttl=600,
/// records=[example.verification_token])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Ses.DomainIdentity("example", new()
/// {
/// Domain = "example.com",
/// });
///
/// var exampleAmazonsesVerificationRecord = new Aws.Route53.Record("example_amazonses_verification_record", new()
/// {
/// ZoneId = "ABCDEFGHIJ123",
/// Name = "_amazonses.example.com",
/// Type = Aws.Route53.RecordType.TXT,
/// Ttl = 600,
/// Records = new[]
/// {
/// example.VerificationToken,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/route53"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ses"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := ses.NewDomainIdentity(ctx, "example", &ses.DomainIdentityArgs{
/// Domain: pulumi.String("example.com"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = route53.NewRecord(ctx, "example_amazonses_verification_record", &route53.RecordArgs{
/// ZoneId: pulumi.String("ABCDEFGHIJ123"),
/// Name:   pulumi.String("_amazonses.example.com"),
/// Type:   pulumi.String(route53.RecordTypeTXT),
/// Ttl:    pulumi.Int(600),
/// Records: pulumi.StringArray{
/// example.VerificationToken,
/// },
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
/// import com.pulumi.aws.ses.DomainIdentity;
/// import com.pulumi.aws.ses.DomainIdentityArgs;
/// import com.pulumi.aws.route53.Record;
/// import com.pulumi.aws.route53.RecordArgs;
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
/// var example = new DomainIdentity("example", DomainIdentityArgs.builder()
/// .domain("example.com")
/// .build());
///
/// var exampleAmazonsesVerificationRecord = new Record("exampleAmazonsesVerificationRecord", RecordArgs.builder()
/// .zoneId("ABCDEFGHIJ123")
/// .name("_amazonses.example.com")
/// .type("TXT")
/// .ttl(600)
/// .records(example.verificationToken())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:ses:DomainIdentity
/// properties:
/// domain: example.com
/// exampleAmazonsesVerificationRecord:
/// type: aws:route53:Record
/// name: example_amazonses_verification_record
/// properties:
/// zoneId: ABCDEFGHIJ123
/// name: _amazonses.example.com
/// type: TXT
/// ttl: '600'
/// records:
/// - ${example.verificationToken}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import SES domain identities using the domain name. For example:
///
/// ```sh
/// $ pulumi import aws:ses/domainIdentity:DomainIdentity example example.com
/// ```
class DomainIdentity extends CustomResource {
  /// The ARN of the domain identity.
  late final Output<String> arn;

  /// The domain name to assign to SES
  late final Output<String> domain;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A code which when added to the domain as a TXT record will signal to SES that the owner of the domain has authorized SES to act on their behalf. The domain identity will be in state "verification pending" until this is done. See the With Route53 Record example for how this might be achieved when the domain is hosted in Route 53 and managed by this provider.  Find out more about verifying domains in Amazon SES in the [AWS SES docs](http://docs.aws.amazon.com/ses/latest/DeveloperGuide/verify-domains.html).
  late final Output<String> verificationToken;

  DomainIdentity(
    String name, {
    DomainIdentityArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ses/domainIdentity:DomainIdentity',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.domain = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.verificationToken = Output.createUnknown<String>();
  }
}
