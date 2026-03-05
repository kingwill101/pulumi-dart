import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_verification_args.dart';
import 'domain_verification_state.dart';

/// Resource for managing an AWS VPC Lattice Domain Verification.
///
/// Starts the domain verification process for a custom domain name. Use this resource to verify ownership of a domain before associating it with VPC Lattice resources.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.vpclattice.DomainVerification("example", {domainName: "example.com"});
/// // Create DNS TXT record for domain verification
/// const exampleRecord = new aws.route53.Record("example", {
///     zoneId: exampleAwsRoute53Zone.zoneId,
///     name: example.txtRecordName,
///     type: aws.route53.RecordType.TXT,
///     ttl: 300,
///     records: [example.txtRecordValue],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.vpclattice.DomainVerification("example", domain_name="example.com")
/// # Create DNS TXT record for domain verification
/// example_record = aws.route53.Record("example",
///     zone_id=example_aws_route53_zone["zoneId"],
///     name=example.txt_record_name,
///     type=aws.route53.RecordType.TXT,
///     ttl=300,
///     records=[example.txt_record_value])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.VpcLattice.DomainVerification("example", new()
///     {
///         DomainName = "example.com",
///     });
///
///     // Create DNS TXT record for domain verification
///     var exampleRecord = new Aws.Route53.Record("example", new()
///     {
///         ZoneId = exampleAwsRoute53Zone.ZoneId,
///         Name = example.TxtRecordName,
///         Type = Aws.Route53.RecordType.TXT,
///         Ttl = 300,
///         Records = new[]
///         {
///             example.TxtRecordValue,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/route53"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/vpclattice"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := vpclattice.NewDomainVerification(ctx, "example", &vpclattice.DomainVerificationArgs{
/// 			DomainName: pulumi.String("example.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Create DNS TXT record for domain verification
/// 		_, err = route53.NewRecord(ctx, "example", &route53.RecordArgs{
/// 			ZoneId: pulumi.Any(exampleAwsRoute53Zone.ZoneId),
/// 			Name:   example.TxtRecordName,
/// 			Type:   pulumi.String(route53.RecordTypeTXT),
/// 			Ttl:    pulumi.Int(300),
/// 			Records: pulumi.StringArray{
/// 				example.TxtRecordValue,
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
/// import com.pulumi.aws.vpclattice.DomainVerification;
/// import com.pulumi.aws.vpclattice.DomainVerificationArgs;
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new DomainVerification("example", DomainVerificationArgs.builder()
///             .domainName("example.com")
///             .build());
///
///         // Create DNS TXT record for domain verification
///         var exampleRecord = new Record("exampleRecord", RecordArgs.builder()
///             .zoneId(exampleAwsRoute53Zone.zoneId())
///             .name(example.txtRecordName())
///             .type("TXT")
///             .ttl(300)
///             .records(example.txtRecordValue())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:vpclattice:DomainVerification
///     properties:
///       domainName: example.com
///   # Create DNS TXT record for domain verification
///   exampleRecord:
///     type: aws:route53:Record
///     name: example
///     properties:
///       zoneId: ${exampleAwsRoute53Zone.zoneId}
///       name: ${example.txtRecordName}
///       type: TXT
///       ttl: 300
///       records:
///         - ${example.txtRecordValue}
/// ```
///
///
/// ### With Tags
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.vpclattice.DomainVerification("example", {
///     domainName: "example.com",
///     tags: {
///         Environment: "production",
///         Purpose: "domain-verification",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.vpclattice.DomainVerification("example",
///     domain_name="example.com",
///     tags={
///         "Environment": "production",
///         "Purpose": "domain-verification",
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
///     var example = new Aws.VpcLattice.DomainVerification("example", new()
///     {
///         DomainName = "example.com",
///         Tags =
///         {
///             { "Environment", "production" },
///             { "Purpose", "domain-verification" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/vpclattice"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := vpclattice.NewDomainVerification(ctx, "example", &vpclattice.DomainVerificationArgs{
/// 			DomainName: pulumi.String("example.com"),
/// 			Tags: pulumi.StringMap{
/// 				"Environment": pulumi.String("production"),
/// 				"Purpose":     pulumi.String("domain-verification"),
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
/// import com.pulumi.aws.vpclattice.DomainVerification;
/// import com.pulumi.aws.vpclattice.DomainVerificationArgs;
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
///         var example = new DomainVerification("example", DomainVerificationArgs.builder()
///             .domainName("example.com")
///             .tags(Map.ofEntries(
///                 Map.entry("Environment", "production"),
///                 Map.entry("Purpose", "domain-verification")
///             ))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:vpclattice:DomainVerification
///     properties:
///       domainName: example.com
///       tags:
///         Environment: production
///         Purpose: domain-verification
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import VPC Lattice Domain Verification using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:vpclattice/domainVerification:DomainVerification example dv-0a1b2c3d4e5f
/// ```
class DomainVerification extends pulumi.CustomResource {
  /// The Amazon Resource Name (ARN) of the domain verification.
  late final pulumi.Output<String> arn;
  /// The date and time that the domain verification was created, in ISO-8601 format.
  late final pulumi.Output<String> createdAt;
  /// The domain name to verify ownership for.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> domainName;
  /// The date and time that the domain was last successfully verified, in ISO-8601 format.
  late final pulumi.Output<String> lastVerifiedTime;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The current status of the domain verification process. Valid values: `VERIFIED`, `PENDING`, `VERIFICATION_TIMED_OUT`.
  late final pulumi.Output<String> status;
  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// The name of the TXT record that must be created for domain verification.
  late final pulumi.Output<String> txtRecordName;
  /// The value that must be added to the TXT record for domain verification.
  late final pulumi.Output<String> txtRecordValue;

  /// Creates a new [DomainVerification].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DomainVerification]. {@macro pulumi_vpclattice_domain_verification_domain_verification_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DomainVerification(
    String name, {
    DomainVerificationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:vpclattice/domainVerification:DomainVerification',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    createdAt = registerOutput<String>('createdAt');
    domainName = registerOutput<String>('domainName');
    lastVerifiedTime = registerOutput<String>('lastVerifiedTime');
    region = registerOutput<String>('region');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    txtRecordName = registerOutput<String>('txtRecordName');
    txtRecordValue = registerOutput<String>('txtRecordValue');
  }

  /// Gets an existing [DomainVerification] resource's state with the given [name] and [id].
  static DomainVerification get(
    String name,
    pulumi.Input<String> id, {
    DomainVerificationState? state,
  }) {
    return DomainVerification._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DomainVerification._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:vpclattice/domainVerification:DomainVerification',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    createdAt = registerOutput<String>('createdAt');
    domainName = registerOutput<String>('domainName');
    lastVerifiedTime = registerOutput<String>('lastVerifiedTime');
    region = registerOutput<String>('region');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    txtRecordName = registerOutput<String>('txtRecordName');
    txtRecordValue = registerOutput<String>('txtRecordValue');
  }
}
