import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_association_args.dart';
import 'domain_association_certificate_settings.dart';
import 'domain_association_sub_domain.dart';

/// Provides an Amplify Domain Association resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.amplify.App("example", {
///     name: "app",
///     customRules: [{
///         source: "https://example.com",
///         status: "302",
///         target: "https://www.example.com",
///     }],
/// });
/// const master = new aws.amplify.Branch("master", {
///     appId: example.id,
///     branchName: "master",
/// });
/// const exampleDomainAssociation = new aws.amplify.DomainAssociation("example", {
///     appId: example.id,
///     domainName: "example.com",
///     subDomains: [
///         {
///             branchName: master.branchName,
///             prefix: "",
///         },
///         {
///             branchName: master.branchName,
///             prefix: "www",
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.amplify.App("example",
///     name="app",
///     custom_rules=[{
///         "source": "https://example.com",
///         "status": "302",
///         "target": "https://www.example.com",
///     }])
/// master = aws.amplify.Branch("master",
///     app_id=example.id,
///     branch_name="master")
/// example_domain_association = aws.amplify.DomainAssociation("example",
///     app_id=example.id,
///     domain_name="example.com",
///     sub_domains=[
///         {
///             "branch_name": master.branch_name,
///             "prefix": "",
///         },
///         {
///             "branch_name": master.branch_name,
///             "prefix": "www",
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Amplify.App("example", new()
///     {
///         Name = "app",
///         CustomRules = new[]
///         {
///             new Aws.Amplify.Inputs.AppCustomRuleArgs
///             {
///                 Source = "https://example.com",
///                 Status = "302",
///                 Target = "https://www.example.com",
///             },
///         },
///     });
///
///     var master = new Aws.Amplify.Branch("master", new()
///     {
///         AppId = example.Id,
///         BranchName = "master",
///     });
///
///     var exampleDomainAssociation = new Aws.Amplify.DomainAssociation("example", new()
///     {
///         AppId = example.Id,
///         DomainName = "example.com",
///         SubDomains = new[]
///         {
///             new Aws.Amplify.Inputs.DomainAssociationSubDomainArgs
///             {
///                 BranchName = master.BranchName,
///                 Prefix = "",
///             },
///             new Aws.Amplify.Inputs.DomainAssociationSubDomainArgs
///             {
///                 BranchName = master.BranchName,
///                 Prefix = "www",
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/amplify"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := amplify.NewApp(ctx, "example", &amplify.AppArgs{
/// 			Name: pulumi.String("app"),
/// 			CustomRules: amplify.AppCustomRuleArray{
/// 				&amplify.AppCustomRuleArgs{
/// 					Source: pulumi.String("https://example.com"),
/// 					Status: pulumi.String("302"),
/// 					Target: pulumi.String("https://www.example.com"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		master, err := amplify.NewBranch(ctx, "master", &amplify.BranchArgs{
/// 			AppId:      example.ID(),
/// 			BranchName: pulumi.String("master"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = amplify.NewDomainAssociation(ctx, "example", &amplify.DomainAssociationArgs{
/// 			AppId:      example.ID(),
/// 			DomainName: pulumi.String("example.com"),
/// 			SubDomains: amplify.DomainAssociationSubDomainArray{
/// 				&amplify.DomainAssociationSubDomainArgs{
/// 					BranchName: master.BranchName,
/// 					Prefix:     pulumi.String(""),
/// 				},
/// 				&amplify.DomainAssociationSubDomainArgs{
/// 					BranchName: master.BranchName,
/// 					Prefix:     pulumi.String("www"),
/// 				},
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
/// import com.pulumi.aws.amplify.App;
/// import com.pulumi.aws.amplify.AppArgs;
/// import com.pulumi.aws.amplify.inputs.AppCustomRuleArgs;
/// import com.pulumi.aws.amplify.Branch;
/// import com.pulumi.aws.amplify.BranchArgs;
/// import com.pulumi.aws.amplify.DomainAssociation;
/// import com.pulumi.aws.amplify.DomainAssociationArgs;
/// import com.pulumi.aws.amplify.inputs.DomainAssociationSubDomainArgs;
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
///         var example = new App("example", AppArgs.builder()
///             .name("app")
///             .customRules(AppCustomRuleArgs.builder()
///                 .source("https://example.com")
///                 .status("302")
///                 .target("https://www.example.com")
///                 .build())
///             .build());
///
///         var master = new Branch("master", BranchArgs.builder()
///             .appId(example.id())
///             .branchName("master")
///             .build());
///
///         var exampleDomainAssociation = new DomainAssociation("exampleDomainAssociation", DomainAssociationArgs.builder()
///             .appId(example.id())
///             .domainName("example.com")
///             .subDomains(
///                 DomainAssociationSubDomainArgs.builder()
///                     .branchName(master.branchName())
///                     .prefix("")
///                     .build(),
///                 DomainAssociationSubDomainArgs.builder()
///                     .branchName(master.branchName())
///                     .prefix("www")
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:amplify:App
///     properties:
///       name: app
///       customRules:
///         - source: https://example.com
///           status: '302'
///           target: https://www.example.com
///   master:
///     type: aws:amplify:Branch
///     properties:
///       appId: ${example.id}
///       branchName: master
///   exampleDomainAssociation:
///     type: aws:amplify:DomainAssociation
///     name: example
///     properties:
///       appId: ${example.id}
///       domainName: example.com
///       subDomains:
///         - branchName: ${master.branchName}
///           prefix: ""
///         - branchName: ${master.branchName}
///           prefix: www
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Amplify domain association using `app_id` and `domain_name`. For example:
///
/// ```sh
/// $ pulumi import aws:amplify/domainAssociation:DomainAssociation app d2ypk4k47z8u6/example.com
/// ```
class DomainAssociation extends pulumi.CustomResource {
  /// Unique ID for an Amplify app.
  late final pulumi.Output<String> appId;
  /// ARN for the domain association.
  late final pulumi.Output<String> arn;
  /// The type of SSL/TLS certificate to use for your custom domain. If you don't specify a certificate type, Amplify uses the default certificate that it provisions and manages for you.
  late final pulumi.Output<DomainAssociationCertificateSettings> certificateSettings;
  /// DNS records for certificate verification in a space-delimited format (`<record> CNAME <target>`).
  late final pulumi.Output<String> certificateVerificationDnsRecord;
  /// Domain name for the domain association.
  late final pulumi.Output<String> domainName;
  /// Enables the automated creation of subdomains for branches.
  late final pulumi.Output<bool?> enableAutoSubDomain;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Setting for the subdomain. Documented below.
  late final pulumi.Output<List<DomainAssociationSubDomain>> subDomains;
  /// If enabled, the resource will wait for the domain association status to change to `PENDING_DEPLOYMENT` or `AVAILABLE`. Setting this to `false` will skip the process. Default: `true`.
  late final pulumi.Output<bool?> waitForVerification;

  /// Creates a new [DomainAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DomainAssociation]. {@macro pulumi_amplify_domain_association_domain_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DomainAssociation(
    String name, {
    DomainAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:amplify/domainAssociation:DomainAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.appId = registerOutput<String>('appId');
    this.arn = registerOutput<String>('arn');
    this.certificateSettings = registerOutput<DomainAssociationCertificateSettings>('certificateSettings');
    this.certificateVerificationDnsRecord = registerOutput<String>('certificateVerificationDnsRecord');
    this.domainName = registerOutput<String>('domainName');
    this.enableAutoSubDomain = registerOutput<bool?>('enableAutoSubDomain');
    this.region = registerOutput<String>('region');
    this.subDomains = registerOutput<List<DomainAssociationSubDomain>>('subDomains');
    this.waitForVerification = registerOutput<bool?>('waitForVerification');
  }
}
