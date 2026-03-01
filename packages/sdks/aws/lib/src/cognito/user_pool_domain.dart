import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_pool_domain_args.dart';
import 'user_pool_domain_state.dart';

/// Provides a Cognito User Pool Domain resource.
///
/// ## Example Usage
///
/// ### Amazon Cognito domain
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.cognito.UserPool("example", {name: "example-pool"});
/// const main = new aws.cognito.UserPoolDomain("main", {
///     domain: "example-domain",
///     userPoolId: example.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cognito.UserPool("example", name="example-pool")
/// main = aws.cognito.UserPoolDomain("main",
///     domain="example-domain",
///     user_pool_id=example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Cognito.UserPool("example", new()
///     {
///         Name = "example-pool",
///     });
///
///     var main = new Aws.Cognito.UserPoolDomain("main", new()
///     {
///         Domain = "example-domain",
///         UserPoolId = example.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cognito"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := cognito.NewUserPool(ctx, "example", &cognito.UserPoolArgs{
/// 			Name: pulumi.String("example-pool"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cognito.NewUserPoolDomain(ctx, "main", &cognito.UserPoolDomainArgs{
/// 			Domain:     pulumi.String("example-domain"),
/// 			UserPoolId: example.ID(),
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
/// import com.pulumi.aws.cognito.UserPool;
/// import com.pulumi.aws.cognito.UserPoolArgs;
/// import com.pulumi.aws.cognito.UserPoolDomain;
/// import com.pulumi.aws.cognito.UserPoolDomainArgs;
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
///         var example = new UserPool("example", UserPoolArgs.builder()
///             .name("example-pool")
///             .build());
///
///         var main = new UserPoolDomain("main", UserPoolDomainArgs.builder()
///             .domain("example-domain")
///             .userPoolId(example.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   main:
///     type: aws:cognito:UserPoolDomain
///     properties:
///       domain: example-domain
///       userPoolId: ${example.id}
///   example:
///     type: aws:cognito:UserPool
///     properties:
///       name: example-pool
/// ```
///
///
/// ### Custom Cognito domain
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const exampleUserPool = new aws.cognito.UserPool("example", {name: "example-pool"});
/// const main = new aws.cognito.UserPoolDomain("main", {
///     domain: "auth.example.com",
///     certificateArn: cert.arn,
///     userPoolId: exampleUserPool.id,
/// });
/// const example = aws.route53.getZone({
///     name: "example.com",
/// });
/// const auth_cognito_A = new aws.route53.Record("auth-cognito-A", {
///     name: main.domain,
///     type: aws.route53.RecordType.A,
///     zoneId: example.then(example => example.zoneId),
///     aliases: [{
///         evaluateTargetHealth: false,
///         name: main.cloudfrontDistribution,
///         zoneId: main.cloudfrontDistributionZoneId,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_user_pool = aws.cognito.UserPool("example", name="example-pool")
/// main = aws.cognito.UserPoolDomain("main",
///     domain="auth.example.com",
///     certificate_arn=cert["arn"],
///     user_pool_id=example_user_pool.id)
/// example = aws.route53.get_zone(name="example.com")
/// auth_cognito__a = aws.route53.Record("auth-cognito-A",
///     name=main.domain,
///     type=aws.route53.RecordType.A,
///     zone_id=example.zone_id,
///     aliases=[{
///         "evaluate_target_health": False,
///         "name": main.cloudfront_distribution,
///         "zone_id": main.cloudfront_distribution_zone_id,
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleUserPool = new Aws.Cognito.UserPool("example", new()
///     {
///         Name = "example-pool",
///     });
///
///     var main = new Aws.Cognito.UserPoolDomain("main", new()
///     {
///         Domain = "auth.example.com",
///         CertificateArn = cert.Arn,
///         UserPoolId = exampleUserPool.Id,
///     });
///
///     var example = Aws.Route53.GetZone.Invoke(new()
///     {
///         Name = "example.com",
///     });
///
///     var auth_cognito_A = new Aws.Route53.Record("auth-cognito-A", new()
///     {
///         Name = main.Domain,
///         Type = Aws.Route53.RecordType.A,
///         ZoneId = example.Apply(getZoneResult => getZoneResult.ZoneId),
///         Aliases = new[]
///         {
///             new Aws.Route53.Inputs.RecordAliasArgs
///             {
///                 EvaluateTargetHealth = false,
///                 Name = main.CloudfrontDistribution,
///                 ZoneId = main.CloudfrontDistributionZoneId,
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cognito"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/route53"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		exampleUserPool, err := cognito.NewUserPool(ctx, "example", &cognito.UserPoolArgs{
/// 			Name: pulumi.String("example-pool"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		main, err := cognito.NewUserPoolDomain(ctx, "main", &cognito.UserPoolDomainArgs{
/// 			Domain:         pulumi.String("auth.example.com"),
/// 			CertificateArn: pulumi.Any(cert.Arn),
/// 			UserPoolId:     exampleUserPool.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := route53.LookupZone(ctx, &route53.LookupZoneArgs{
/// 			Name: pulumi.StringRef("example.com"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = route53.NewRecord(ctx, "auth-cognito-A", &route53.RecordArgs{
/// 			Name:   main.Domain,
/// 			Type:   pulumi.String(route53.RecordTypeA),
/// 			ZoneId: pulumi.String(example.ZoneId),
/// 			Aliases: route53.RecordAliasArray{
/// 				&route53.RecordAliasArgs{
/// 					EvaluateTargetHealth: pulumi.Bool(false),
/// 					Name:                 main.CloudfrontDistribution,
/// 					ZoneId:               main.CloudfrontDistributionZoneId,
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
/// import com.pulumi.aws.cognito.UserPool;
/// import com.pulumi.aws.cognito.UserPoolArgs;
/// import com.pulumi.aws.cognito.UserPoolDomain;
/// import com.pulumi.aws.cognito.UserPoolDomainArgs;
/// import com.pulumi.aws.route53.Route53Functions;
/// import com.pulumi.aws.route53.inputs.GetZoneArgs;
/// import com.pulumi.aws.route53.Record;
/// import com.pulumi.aws.route53.RecordArgs;
/// import com.pulumi.aws.route53.inputs.RecordAliasArgs;
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
///         var exampleUserPool = new UserPool("exampleUserPool", UserPoolArgs.builder()
///             .name("example-pool")
///             .build());
///
///         var main = new UserPoolDomain("main", UserPoolDomainArgs.builder()
///             .domain("auth.example.com")
///             .certificateArn(cert.arn())
///             .userPoolId(exampleUserPool.id())
///             .build());
///
///         final var example = Route53Functions.getZone(GetZoneArgs.builder()
///             .name("example.com")
///             .build());
///
///         var auth_cognito_A = new Record("auth-cognito-A", RecordArgs.builder()
///             .name(main.domain())
///             .type("A")
///             .zoneId(example.zoneId())
///             .aliases(RecordAliasArgs.builder()
///                 .evaluateTargetHealth(false)
///                 .name(main.cloudfrontDistribution())
///                 .zoneId(main.cloudfrontDistributionZoneId())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   main:
///     type: aws:cognito:UserPoolDomain
///     properties:
///       domain: auth.example.com
///       certificateArn: ${cert.arn}
///       userPoolId: ${exampleUserPool.id}
///   exampleUserPool:
///     type: aws:cognito:UserPool
///     name: example
///     properties:
///       name: example-pool
///   auth-cognito-A:
///     type: aws:route53:Record
///     properties:
///       name: ${main.domain}
///       type: A
///       zoneId: ${example.zoneId}
///       aliases:
///         - evaluateTargetHealth: false
///           name: ${main.cloudfrontDistribution}
///           zoneId: ${main.cloudfrontDistributionZoneId}
/// variables:
///   example:
///     fn::invoke:
///       function: aws:route53:getZone
///       arguments:
///         name: example.com
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Cognito User Pool Domains using the `domain`. For example:
///
/// ```sh
/// $ pulumi import aws:cognito/userPoolDomain:UserPoolDomain main auth.example.org
/// ```
class UserPoolDomain extends pulumi.CustomResource {
  /// The AWS account ID for the user pool owner.
  late final pulumi.Output<String> awsAccountId;
  /// The ARN of an ISSUED ACM certificate in us-east-1 for a custom domain.
  late final pulumi.Output<String?> certificateArn;
  /// The Amazon CloudFront endpoint (e.g. `dpp0gtxikpq3y.cloudfront.net`) that you use as the target of the alias that you set up with your Domain Name Service (DNS) provider.
  late final pulumi.Output<String> cloudfrontDistribution;
  /// The URL of the CloudFront distribution. This is required to generate the ALIAS `aws.route53.Record`
  late final pulumi.Output<String> cloudfrontDistributionArn;
  /// The Route 53 hosted zone ID of the CloudFront distribution.
  late final pulumi.Output<String> cloudfrontDistributionZoneId;
  /// For custom domains, this is the fully-qualified domain name, such as auth.example.com. For Amazon Cognito prefix domains, this is the prefix alone, such as auth.
  late final pulumi.Output<String> domain;
  /// A version number that indicates the state of managed login for your domain. Valid values: `1` for hosted UI (classic), `2` for the newer managed login with the branding designer.
  late final pulumi.Output<int> managedLoginVersion;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The S3 bucket where the static files for this domain are stored.
  late final pulumi.Output<String> s3Bucket;
  /// The user pool ID.
  late final pulumi.Output<String> userPoolId;
  /// The app version.
  late final pulumi.Output<String> version;

  /// Creates a new [UserPoolDomain].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [UserPoolDomain]. {@macro pulumi_cognito_user_pool_domain_user_pool_domain_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  UserPoolDomain(
    String name, {
    UserPoolDomainArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cognito/userPoolDomain:UserPoolDomain',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.awsAccountId = registerOutput<String>('awsAccountId');
    this.certificateArn = registerOutput<String?>('certificateArn');
    this.cloudfrontDistribution = registerOutput<String>('cloudfrontDistribution');
    this.cloudfrontDistributionArn = registerOutput<String>('cloudfrontDistributionArn');
    this.cloudfrontDistributionZoneId = registerOutput<String>('cloudfrontDistributionZoneId');
    this.domain = registerOutput<String>('domain');
    this.managedLoginVersion = registerOutput<int>('managedLoginVersion');
    this.region = registerOutput<String>('region');
    this.s3Bucket = registerOutput<String>('s3Bucket');
    this.userPoolId = registerOutput<String>('userPoolId');
    this.version = registerOutput<String>('version');
  }

  /// Gets an existing [UserPoolDomain] resource's state with the given [name] and [id].
  static UserPoolDomain get(
    String name,
    pulumi.Input<String> id, {
    UserPoolDomainState? state,
  }) {
    return UserPoolDomain._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  UserPoolDomain._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cognito/userPoolDomain:UserPoolDomain',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.awsAccountId = registerOutput<String>('awsAccountId');
    this.certificateArn = registerOutput<String?>('certificateArn');
    this.cloudfrontDistribution = registerOutput<String>('cloudfrontDistribution');
    this.cloudfrontDistributionArn = registerOutput<String>('cloudfrontDistributionArn');
    this.cloudfrontDistributionZoneId = registerOutput<String>('cloudfrontDistributionZoneId');
    this.domain = registerOutput<String>('domain');
    this.managedLoginVersion = registerOutput<int>('managedLoginVersion');
    this.region = registerOutput<String>('region');
    this.s3Bucket = registerOutput<String>('s3Bucket');
    this.userPoolId = registerOutput<String>('userPoolId');
    this.version = registerOutput<String>('version');
  }
}
