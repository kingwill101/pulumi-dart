import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_association_args.dart';
import 'domain_association_certificate_settings.dart';
import 'domain_association_state.dart';
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
///     customRules: [{
///         source: "https://example.com",
///         status: "302",
///         target: "https://www.example.com",
///     }],
///     name: "app",
/// });
/// const master = new aws.amplify.Branch("master", {
///     appId: example.id,
///     branchName: "master",
/// });
/// const exampleDomainAssociation = new aws.amplify.DomainAssociation("example", {
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
///     appId: example.id,
///     domainName: "example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.amplify.App("example",
///     custom_rules=[{
///         "source": "https://example.com",
///         "status": "302",
///         "target": "https://www.example.com",
///     }],
///     name="app")
/// master = aws.amplify.Branch("master",
///     app_id=example.id,
///     branch_name="master")
/// example_domain_association = aws.amplify.DomainAssociation("example",
///     sub_domains=[
///         {
///             "branch_name": master.branch_name,
///             "prefix": "",
///         },
///         {
///             "branch_name": master.branch_name,
///             "prefix": "www",
///         },
///     ],
///     app_id=example.id,
///     domain_name="example.com")
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
///         CustomRules = new[]
///         {
///             new Aws.Amplify.Inputs.AppCustomRuleArgs
///             {
///                 Source = "https://example.com",
///                 Status = "302",
///                 Target = "https://www.example.com",
///             },
///         },
///         Name = "app",
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
///         AppId = example.Id,
///         DomainName = "example.com",
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
/// 			CustomRules: amplify.AppCustomRuleArray{
/// 				&amplify.AppCustomRuleArgs{
/// 					Source: pulumi.String("https://example.com"),
/// 					Status: pulumi.String("302"),
/// 					Target: pulumi.String("https://www.example.com"),
/// 				},
/// 			},
/// 			Name: pulumi.String("app"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		master, err := amplify.NewBranch(ctx, "master", &amplify.BranchArgs{
/// 			AppId:      example.ID().ToIDOutput().ToStringOutput(),
/// 			BranchName: pulumi.String("master"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = amplify.NewDomainAssociation(ctx, "example", &amplify.DomainAssociationArgs{
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
/// 			AppId:      example.ID().ToIDOutput().ToStringOutput(),
/// 			DomainName: pulumi.String("example.com"),
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
/// resource "aws_amplify_app" "example" {
///   custom_rules {
///     source = "https://example.com"
///     status = "302"
///     target = "https://www.example.com"
///   }
///   name = "app"
/// }
/// resource "aws_amplify_branch" "master" {
///   app_id      = aws_amplify_app.example.id
///   branch_name = "master"
/// }
/// resource "aws_amplify_domainassociation" "example" {
///   sub_domains {
///     branch_name = aws_amplify_branch.master.branch_name
///     prefix      = ""
///   }
///   sub_domains {
///     branch_name = aws_amplify_branch.master.branch_name
///     prefix      = "www"
///   }
///   app_id      = aws_amplify_app.example.id
///   domain_name = "example.com"
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
///         var example = new App("example", AppArgs.builder()
///             .customRules(AppCustomRuleArgs.builder()
///                 .source("https://example.com")
///                 .status("302")
///                 .target("https://www.example.com")
///                 .build())
///             .name("app")
///             .build());
///
///         var master = new Branch("master", BranchArgs.builder()
///             .appId(example.id())
///             .branchName("master")
///             .build());
///
///         var exampleDomainAssociation = new DomainAssociation("exampleDomainAssociation", DomainAssociationArgs.builder()
///             .subDomains(
///                 DomainAssociationSubDomainArgs.builder()
///                     .branchName(master.branchName())
///                     .prefix("")
///                     .build(),
///                 DomainAssociationSubDomainArgs.builder()
///                     .branchName(master.branchName())
///                     .prefix("www")
///                     .build())
///             .appId(example.id())
///             .domainName("example.com")
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
///       customRules:
///         - source: https://example.com
///           status: '302'
///           target: https://www.example.com
///       name: app
///   master:
///     type: aws:amplify:Branch
///     properties:
///       appId: ${example.id}
///       branchName: master
///   exampleDomainAssociation:
///     type: aws:amplify:DomainAssociation
///     name: example
///     properties:
///       subDomains:
///         - branchName: ${master.branchName}
///           prefix: ""
///         - branchName: ${master.branchName}
///           prefix: www
///       appId: ${example.id}
///       domainName: example.com
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Amplify domain association using `appId` and `domainName`. For example:
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
  /// DNS records for certificate verification in a space-delimited format (`&lt;record&gt; CNAME &lt;target&gt;`).
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
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    appId = registerOutput<String>('appId');
    arn = registerOutput<String>('arn');
    certificateSettings = registerOutput<DomainAssociationCertificateSettings>('certificateSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainAssociationCertificateSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    certificateVerificationDnsRecord = registerOutput<String>('certificateVerificationDnsRecord');
    domainName = registerOutput<String>('domainName');
    enableAutoSubDomain = registerOutput<bool?>('enableAutoSubDomain');
    region = registerOutput<String>('region');
    subDomains = registerOutput<List<DomainAssociationSubDomain>>('subDomains', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DomainAssociationSubDomain>(guardedValue, (value) => DomainAssociationSubDomain.fromMap((value as Map).cast<String, dynamic>())); });
    waitForVerification = registerOutput<bool?>('waitForVerification');
  }

  /// Gets an existing [DomainAssociation] resource's state with the given [name] and [id].
  static DomainAssociation get(
    String name,
    pulumi.Input<String> id, {
    DomainAssociationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return DomainAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  DomainAssociation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:amplify/domainAssociation:DomainAssociation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    appId = registerOutput<String>('appId');
    arn = registerOutput<String>('arn');
    certificateSettings = registerOutput<DomainAssociationCertificateSettings>('certificateSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainAssociationCertificateSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    certificateVerificationDnsRecord = registerOutput<String>('certificateVerificationDnsRecord');
    domainName = registerOutput<String>('domainName');
    enableAutoSubDomain = registerOutput<bool?>('enableAutoSubDomain');
    region = registerOutput<String>('region');
    subDomains = registerOutput<List<DomainAssociationSubDomain>>('subDomains', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DomainAssociationSubDomain>(guardedValue, (value) => DomainAssociationSubDomain.fromMap((value as Map).cast<String, dynamic>())); });
    waitForVerification = registerOutput<bool?>('waitForVerification');
  }

  /// Creates a typed reference to an existing [DomainAssociation] resource.
  DomainAssociation.reference(String urn)
    : super(
        'aws:amplify/domainAssociation:DomainAssociation',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    appId = registerOutput<String>('appId');
    arn = registerOutput<String>('arn');
    certificateSettings = registerOutput<DomainAssociationCertificateSettings>('certificateSettings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainAssociationCertificateSettings.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    certificateVerificationDnsRecord = registerOutput<String>('certificateVerificationDnsRecord');
    domainName = registerOutput<String>('domainName');
    enableAutoSubDomain = registerOutput<bool?>('enableAutoSubDomain');
    region = registerOutput<String>('region');
    subDomains = registerOutput<List<DomainAssociationSubDomain>>('subDomains', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DomainAssociationSubDomain>(guardedValue, (value) => DomainAssociationSubDomain.fromMap((value as Map).cast<String, dynamic>())); });
    waitForVerification = registerOutput<bool?>('waitForVerification');
  }
}
