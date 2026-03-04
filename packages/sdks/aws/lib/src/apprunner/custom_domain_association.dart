import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_domain_association_args.dart';
import 'custom_domain_association_state.dart';

/// Manages an App Runner Custom Domain association.
///
/// &gt; **NOTE:** After creation, you must use the information in the `certificate_validation_records` attribute to add CNAME records to your Domain Name System (DNS). For each mapped domain name, add a mapping to the target App Runner subdomain (found in the `dns_target` attribute) and one or more certificate validation records. App Runner then performs DNS validation to verify that you own or control the domain name you associated. App Runner tracks domain validity in a certificate stored in AWS Certificate Manager (ACM).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.apprunner.CustomDomainAssociation("example", {
///     domainName: "example.com",
///     serviceArn: exampleAwsApprunnerService.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.apprunner.CustomDomainAssociation("example",
///     domain_name="example.com",
///     service_arn=example_aws_apprunner_service["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.AppRunner.CustomDomainAssociation("example", new()
///     {
///         DomainName = "example.com",
///         ServiceArn = exampleAwsApprunnerService.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/apprunner"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := apprunner.NewCustomDomainAssociation(ctx, "example", &apprunner.CustomDomainAssociationArgs{
/// 			DomainName: pulumi.String("example.com"),
/// 			ServiceArn: pulumi.Any(exampleAwsApprunnerService.Arn),
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new CustomDomainAssociation("example", CustomDomainAssociationArgs.builder()
///             .domainName("example.com")
///             .serviceArn(exampleAwsApprunnerService.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:apprunner:CustomDomainAssociation
///     properties:
///       domainName: example.com
///       serviceArn: ${exampleAwsApprunnerService.arn}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import App Runner Custom Domain Associations using the `domain_name` and `service_arn` separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:apprunner/customDomainAssociation:CustomDomainAssociation example example.com,arn:aws:apprunner:us-east-1:123456789012:service/example-app/8fe1e10304f84fd2b0df550fe98a71fa
/// ```
class CustomDomainAssociation extends pulumi.CustomResource {
  /// A set of certificate CNAME records used for this domain name. See Certificate Validation Records below for more details.
  late final pulumi.Output<List<Map<String, dynamic>>>
  certificateValidationRecords;

  /// App Runner subdomain of the App Runner service. The custom domain name is mapped to this target name. Attribute only available if resource created (not imported) with this provider.
  late final pulumi.Output<String> dnsTarget;

  /// Custom domain endpoint to association. Specify a base domain e.g., `example.com` or a subdomain e.g., `subdomain.example.com`.
  late final pulumi.Output<String> domainName;

  /// Whether to associate the subdomain with the App Runner service in addition to the base domain. Defaults to `true`.
  late final pulumi.Output<bool?> enableWwwSubdomain;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// ARN of the App Runner service.
  late final pulumi.Output<String> serviceArn;

  /// Current state of the certificate CNAME record validation. It should change to `SUCCESS` after App Runner completes validation with your DNS.
  late final pulumi.Output<String> status;

  /// Creates a new [CustomDomainAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CustomDomainAssociation]. {@macro pulumi_apprunner_custom_domain_association_custom_domain_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CustomDomainAssociation(
    String name, {
    CustomDomainAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:apprunner/customDomainAssociation:CustomDomainAssociation',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    certificateValidationRecords = registerOutput<List<Map<String, dynamic>>>(
      'certificateValidationRecords',
    );
    dnsTarget = registerOutput<String>('dnsTarget');
    domainName = registerOutput<String>('domainName');
    enableWwwSubdomain = registerOutput<bool?>('enableWwwSubdomain');
    region = registerOutput<String>('region');
    serviceArn = registerOutput<String>('serviceArn');
    status = registerOutput<String>('status');
  }

  /// Gets an existing [CustomDomainAssociation] resource's state with the given [name] and [id].
  static CustomDomainAssociation get(
    String name,
    pulumi.Input<String> id, {
    CustomDomainAssociationState? state,
  }) {
    return CustomDomainAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  CustomDomainAssociation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:apprunner/customDomainAssociation:CustomDomainAssociation',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    certificateValidationRecords = registerOutput<List<Map<String, dynamic>>>(
      'certificateValidationRecords',
    );
    dnsTarget = registerOutput<String>('dnsTarget');
    domainName = registerOutput<String>('domainName');
    enableWwwSubdomain = registerOutput<bool?>('enableWwwSubdomain');
    region = registerOutput<String>('region');
    serviceArn = registerOutput<String>('serviceArn');
    status = registerOutput<String>('status');
  }
}
