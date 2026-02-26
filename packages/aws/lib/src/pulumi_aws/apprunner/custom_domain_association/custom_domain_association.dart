import 'package:pulumi/pulumi.dart';
import '../custom_domain_association_certificate_validation_record/custom_domain_association_certificate_validation_record.dart';
import 'custom_domain_association_args.dart';

/// Manages an App Runner Custom Domain association.
///
/// > **NOTE:** After creation, you must use the information in the <span pulumi-lang-nodejs="`certificateValidationRecords`" pulumi-lang-dotnet="`CertificateValidationRecords`" pulumi-lang-go="`certificateValidationRecords`" pulumi-lang-python="`certificate_validation_records`" pulumi-lang-yaml="`certificateValidationRecords`" pulumi-lang-java="`certificateValidationRecords`">`certificate_validation_records`</span> attribute to add CNAME records to your Domain Name System (DNS). For each mapped domain name, add a mapping to the target App Runner subdomain (found in the <span pulumi-lang-nodejs="`dnsTarget`" pulumi-lang-dotnet="`DnsTarget`" pulumi-lang-go="`dnsTarget`" pulumi-lang-python="`dns_target`" pulumi-lang-yaml="`dnsTarget`" pulumi-lang-java="`dnsTarget`">`dns_target`</span> attribute) and one or more certificate validation records. App Runner then performs DNS validation to verify that you own or control the domain name you associated. App Runner tracks domain validity in a certificate stored in AWS Certificate Manager (ACM).
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.apprunner.CustomDomainAssociation("example", {
/// domainName: "example.com",
/// serviceArn: exampleAwsApprunnerService.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.apprunner.CustomDomainAssociation("example",
/// domain_name="example.com",
/// service_arn=example_aws_apprunner_service["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.AppRunner.CustomDomainAssociation("example", new()
/// {
/// DomainName = "example.com",
/// ServiceArn = exampleAwsApprunnerService.Arn,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/apprunner"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := apprunner.NewCustomDomainAssociation(ctx, "example", &apprunner.CustomDomainAssociationArgs{
/// DomainName: pulumi.String("example.com"),
/// ServiceArn: pulumi.Any(exampleAwsApprunnerService.Arn),
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
/// import com.pulumi.aws.apprunner.CustomDomainAssociation;
/// import com.pulumi.aws.apprunner.CustomDomainAssociationArgs;
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
/// var example = new CustomDomainAssociation("example", CustomDomainAssociationArgs.builder()
/// .domainName("example.com")
/// .serviceArn(exampleAwsApprunnerService.arn())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:apprunner:CustomDomainAssociation
/// properties:
/// domainName: example.com
/// serviceArn: ${exampleAwsApprunnerService.arn}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import App Runner Custom Domain Associations using the <span pulumi-lang-nodejs="`domainName`" pulumi-lang-dotnet="`DomainName`" pulumi-lang-go="`domainName`" pulumi-lang-python="`domain_name`" pulumi-lang-yaml="`domainName`" pulumi-lang-java="`domainName`">`domain_name`</span> and <span pulumi-lang-nodejs="`serviceArn`" pulumi-lang-dotnet="`ServiceArn`" pulumi-lang-go="`serviceArn`" pulumi-lang-python="`service_arn`" pulumi-lang-yaml="`serviceArn`" pulumi-lang-java="`serviceArn`">`service_arn`</span> separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:apprunner/customDomainAssociation:CustomDomainAssociation example example.com,arn:aws:apprunner:us-east-1:123456789012:service/example-app/8fe1e10304f84fd2b0df550fe98a71fa
/// ```
class CustomDomainAssociation extends CustomResource {
  /// A set of certificate CNAME records used for this domain name. See Certificate Validation Records below for more details.
  late final Output<List<CustomDomainAssociationCertificateValidationRecord>>
      certificateValidationRecords;

  /// App Runner subdomain of the App Runner service. The custom domain name is mapped to this target name. Attribute only available if resource created (not imported) with this provider.
  late final Output<String> dnsTarget;

  /// Custom domain endpoint to association. Specify a base domain e.g., `example.com` or a subdomain e.g., `subdomain.example.com`.
  late final Output<String> domainName;

  /// Whether to associate the subdomain with the App Runner service in addition to the base domain. Defaults to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  late final Output<bool?> enableWwwSubdomain;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// ARN of the App Runner service.
  late final Output<String> serviceArn;

  /// Current state of the certificate CNAME record validation. It should change to `SUCCESS` after App Runner completes validation with your DNS.
  late final Output<String> status;

  CustomDomainAssociation(
    String name, {
    CustomDomainAssociationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:apprunner/customDomainAssociation:CustomDomainAssociation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.certificateValidationRecords = Output.createUnknown<
        List<CustomDomainAssociationCertificateValidationRecord>>();
    this.dnsTarget = Output.createUnknown<String>();
    this.domainName = Output.createUnknown<String>();
    this.enableWwwSubdomain = Output.createUnknown<bool?>();
    this.region = Output.createUnknown<String>();
    this.serviceArn = Output.createUnknown<String>();
    this.status = Output.createUnknown<String>();
  }
}
