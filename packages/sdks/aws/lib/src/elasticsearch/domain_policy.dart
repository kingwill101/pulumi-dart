import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_policy_args.dart';
import 'domain_policy_state.dart';

/// Allows setting policy to an Elasticsearch domain while referencing domain attributes (e.g., ARN)
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.elasticsearch.Domain("example", {
///     domainName: "tf-test",
///     elasticsearchVersion: "2.3",
/// });
/// const main = new aws.elasticsearch.DomainPolicy("main", {
///     domainName: example.domainName,
///     accessPolicies: pulumi.interpolate`{
///     \"Version\": \"2012-10-17\",
///     \"Statement\": [
///         {
///             \"Action\": \"es:*\",
///             \"Principal\": \"*\",
///             \"Effect\": \"Allow\",
///             \"Condition\": {
///                 \"IpAddress\": {\"aws:SourceIp\": \"127.0.0.1/32\"}
///             },
///             \"Resource\": \"${example.arn}/*\"
///         }
///     ]
/// }
/// `,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.elasticsearch.Domain("example",
///     domain_name="tf-test",
///     elasticsearch_version="2.3")
/// main = aws.elasticsearch.DomainPolicy("main",
///     domain_name=example.domain_name,
///     access_policies=example.arn.apply(lambda arn: f"""{{
///     \"Version\": \"2012-10-17\",
///     \"Statement\": [
///         {{
///             \"Action\": \"es:*\",
///             \"Principal\": \"*\",
///             \"Effect\": \"Allow\",
///             \"Condition\": {{
///                 \"IpAddress\": {{\"aws:SourceIp\": \"127.0.0.1/32\"}}
///             }},
///             \"Resource\": \"{arn}/*\"
///         }}
///     ]
/// }}
/// """))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.ElasticSearch.Domain("example", new()
///     {
///         DomainName = "tf-test",
///         ElasticsearchVersion = "2.3",
///     });
///
///     var main = new Aws.ElasticSearch.DomainPolicy("main", new()
///     {
///         DomainName = example.DomainName,
///         AccessPolicies = example.Arn.Apply(arn => @$"{{
///     \""Version\"": \""2012-10-17\"",
///     \""Statement\"": [
///         {{
///             \""Action\"": \""es:*\"",
///             \""Principal\"": \""*\"",
///             \""Effect\"": \""Allow\"",
///             \""Condition\"": {{
///                 \""IpAddress\"": {{\""aws:SourceIp\"": \""127.0.0.1/32\""}}
///             }},
///             \""Resource\"": \""{arn}/*\""
///         }}
///     ]
/// }}
/// "),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/elasticsearch"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := elasticsearch.NewDomain(ctx, "example", &elasticsearch.DomainArgs{
/// 			DomainName:           pulumi.String("tf-test"),
/// 			ElasticsearchVersion: pulumi.String("2.3"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = elasticsearch.NewDomainPolicy(ctx, "main", &elasticsearch.DomainPolicyArgs{
/// 			DomainName: example.DomainName,
/// 			AccessPolicies: example.Arn.ApplyT(func(arn string) (string, error) {
/// 				return fmt.Sprintf(`{
///     \"Version\": \"2012-10-17\",
///     \"Statement\": [
///         {
///             \"Action\": \"es:*\",
///             \"Principal\": \"*\",
///             \"Effect\": \"Allow\",
///             \"Condition\": {
///                 \"IpAddress\": {\"aws:SourceIp\": \"127.0.0.1/32\"}
///             },
///             \"Resource\": \"%v/*\"
///         }
///     ]
/// }
/// `, arn), nil
/// 			}).(pulumi.StringOutput),
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
/// import com.pulumi.aws.elasticsearch.Domain;
/// import com.pulumi.aws.elasticsearch.DomainArgs;
/// import com.pulumi.aws.elasticsearch.DomainPolicy;
/// import com.pulumi.aws.elasticsearch.DomainPolicyArgs;
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
///         var example = new Domain("example", DomainArgs.builder()
///             .domainName("tf-test")
///             .elasticsearchVersion("2.3")
///             .build());
///
///         var main = new DomainPolicy("main", DomainPolicyArgs.builder()
///             .domainName(example.domainName())
///             .accessPolicies(example.arn().applyValue(_arn -> """
/// {
///     \"Version\": \"2012-10-17\",
///     \"Statement\": [
///         {
///             \"Action\": \"es:*\",
///             \"Principal\": \"*\",
///             \"Effect\": \"Allow\",
///             \"Condition\": {
///                 \"IpAddress\": {\"aws:SourceIp\": \"127.0.0.1/32\"}
///             },
///             \"Resource\": \"%s/*\"
///         }
///     ]
/// }
/// ", _arn)))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:elasticsearch:Domain
///     properties:
///       domainName: tf-test
///       elasticsearchVersion: '2.3'
///   main:
///     type: aws:elasticsearch:DomainPolicy
///     properties:
///       domainName: ${example.domainName}
///       accessPolicies: |
///         {
///             \"Version\": \"2012-10-17\",
///             \"Statement\": [
///                 {
///                     \"Action\": \"es:*\",
///                     \"Principal\": \"*\",
///                     \"Effect\": \"Allow\",
///                     \"Condition\": {
///                         \"IpAddress\": {\"aws:SourceIp\": \"127.0.0.1/32\"}
///                     },
///                     \"Resource\": \"${example.arn}/*\"
///                 }
///             ]
///         }
/// ```
class DomainPolicy extends pulumi.CustomResource {
  /// IAM policy document specifying the access policies for the domain
  late final pulumi.Output<String> accessPolicies;
  /// Name of the domain.
  late final pulumi.Output<String> domainName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [DomainPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DomainPolicy]. {@macro pulumi_elasticsearch_domain_policy_domain_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DomainPolicy(
    String name, {
    DomainPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:elasticsearch/domainPolicy:DomainPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accessPolicies = registerOutput<String>('accessPolicies');
    this.domainName = registerOutput<String>('domainName');
    this.region = registerOutput<String>('region');
  }

  /// Gets an existing [DomainPolicy] resource's state with the given [name] and [id].
  static DomainPolicy get(
    String name,
    pulumi.Input<String> id, {
    DomainPolicyState? state,
  }) {
    return DomainPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DomainPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:elasticsearch/domainPolicy:DomainPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accessPolicies = registerOutput<String>('accessPolicies');
    this.domainName = registerOutput<String>('domainName');
    this.region = registerOutput<String>('region');
  }
}
