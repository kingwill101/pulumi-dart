import 'package:pulumi/pulumi.dart' as pulumi;
import 'package_association_args.dart';
import 'package_association_state.dart';

/// Manages an AWS Opensearch Package Association.
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
/// const myDomain = new aws.opensearch.Domain("my_domain", {
///     domainName: "my-opensearch-domain",
///     engineVersion: "Elasticsearch_7.10",
///     clusterConfig: {
///         instanceType: "r4.large.search",
///     },
/// });
/// const example = new aws.opensearch.Package("example", {
///     packageName: "example-txt",
///     packageSource: {
///         s3BucketName: myOpensearchPackages.bucket,
///         s3Key: exampleAwsS3Object.key,
///     },
///     packageType: "TXT-DICTIONARY",
/// });
/// const examplePackageAssociation = new aws.opensearch.PackageAssociation("example", {
///     packageId: example.id,
///     domainName: myDomain.domainName,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// my_domain = aws.opensearch.Domain("my_domain",
///     domain_name="my-opensearch-domain",
///     engine_version="Elasticsearch_7.10",
///     cluster_config={
///         "instance_type": "r4.large.search",
///     })
/// example = aws.opensearch.Package("example",
///     package_name="example-txt",
///     package_source={
///         "s3_bucket_name": my_opensearch_packages["bucket"],
///         "s3_key": example_aws_s3_object["key"],
///     },
///     package_type="TXT-DICTIONARY")
/// example_package_association = aws.opensearch.PackageAssociation("example",
///     package_id=example.id,
///     domain_name=my_domain.domain_name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myDomain = new Aws.OpenSearch.Domain("my_domain", new()
///     {
///         DomainName = "my-opensearch-domain",
///         EngineVersion = "Elasticsearch_7.10",
///         ClusterConfig = new Aws.OpenSearch.Inputs.DomainClusterConfigArgs
///         {
///             InstanceType = "r4.large.search",
///         },
///     });
///
///     var example = new Aws.OpenSearch.Package("example", new()
///     {
///         PackageName = "example-txt",
///         PackageSource = new Aws.OpenSearch.Inputs.PackagePackageSourceArgs
///         {
///             S3BucketName = myOpensearchPackages.Bucket,
///             S3Key = exampleAwsS3Object.Key,
///         },
///         PackageType = "TXT-DICTIONARY",
///     });
///
///     var examplePackageAssociation = new Aws.OpenSearch.PackageAssociation("example", new()
///     {
///         PackageId = example.Id,
///         DomainName = myDomain.DomainName,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/opensearch"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		myDomain, err := opensearch.NewDomain(ctx, "my_domain", &opensearch.DomainArgs{
/// 			DomainName:    pulumi.String("my-opensearch-domain"),
/// 			EngineVersion: pulumi.String("Elasticsearch_7.10"),
/// 			ClusterConfig: &opensearch.DomainClusterConfigArgs{
/// 				InstanceType: pulumi.String("r4.large.search"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := opensearch.NewPackage(ctx, "example", &opensearch.PackageArgs{
/// 			PackageName: pulumi.String("example-txt"),
/// 			PackageSource: &opensearch.PackagePackageSourceArgs{
/// 				S3BucketName: pulumi.Any(myOpensearchPackages.Bucket),
/// 				S3Key:        pulumi.Any(exampleAwsS3Object.Key),
/// 			},
/// 			PackageType: pulumi.String("TXT-DICTIONARY"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = opensearch.NewPackageAssociation(ctx, "example", &opensearch.PackageAssociationArgs{
/// 			PackageId:  example.ID().ToIDOutput().ToStringOutput(),
/// 			DomainName: myDomain.DomainName,
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
/// resource "aws_opensearch_domain" "my_domain" {
///   domain_name    = "my-opensearch-domain"
///   engine_version = "Elasticsearch_7.10"
///   cluster_config = {
///     instance_type = "r4.large.search"
///   }
/// }
/// resource "aws_opensearch_package" "example" {
///   package_name = "example-txt"
///   package_source = {
///     s3_bucket_name = myOpensearchPackages.bucket
///     s3_key         = exampleAwsS3Object.key
///   }
///   package_type = "TXT-DICTIONARY"
/// }
/// resource "aws_opensearch_packageassociation" "example" {
///   package_id  = aws_opensearch_package.example.id
///   domain_name = aws_opensearch_domain.my_domain.domain_name
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.opensearch.Domain;
/// import com.pulumi.aws.opensearch.DomainArgs;
/// import com.pulumi.aws.opensearch.inputs.DomainClusterConfigArgs;
/// import com.pulumi.aws.opensearch.Package;
/// import com.pulumi.aws.opensearch.PackageArgs;
/// import com.pulumi.aws.opensearch.inputs.PackagePackageSourceArgs;
/// import com.pulumi.aws.opensearch.PackageAssociation;
/// import com.pulumi.aws.opensearch.PackageAssociationArgs;
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
///         var myDomain = new Domain("myDomain", DomainArgs.builder()
///             .domainName("my-opensearch-domain")
///             .engineVersion("Elasticsearch_7.10")
///             .clusterConfig(DomainClusterConfigArgs.builder()
///                 .instanceType("r4.large.search")
///                 .build())
///             .build());
///
///         var example = new Package("example", PackageArgs.builder()
///             .packageName("example-txt")
///             .packageSource(PackagePackageSourceArgs.builder()
///                 .s3BucketName(myOpensearchPackages.bucket())
///                 .s3Key(exampleAwsS3Object.key())
///                 .build())
///             .packageType("TXT-DICTIONARY")
///             .build());
///
///         var examplePackageAssociation = new PackageAssociation("examplePackageAssociation", PackageAssociationArgs.builder()
///             .packageId(example.id())
///             .domainName(myDomain.domainName())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   myDomain:
///     type: aws:opensearch:Domain
///     name: my_domain
///     properties:
///       domainName: my-opensearch-domain
///       engineVersion: Elasticsearch_7.10
///       clusterConfig:
///         instanceType: r4.large.search
///   example:
///     type: aws:opensearch:Package
///     properties:
///       packageName: example-txt
///       packageSource:
///         s3BucketName: ${myOpensearchPackages.bucket}
///         s3Key: ${exampleAwsS3Object.key}
///       packageType: TXT-DICTIONARY
///   examplePackageAssociation:
///     type: aws:opensearch:PackageAssociation
///     name: example
///     properties:
///       packageId: ${example.id}
///       domainName: ${myDomain.domainName}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.opensearch.PackageAssociation` using `DOMAIN_NAME,PACKAGE_ID`. For example:
///
/// ```sh
/// $ pulumi import aws:opensearch/packageAssociation:PackageAssociation example example-domain,F123456789
/// ```
class PackageAssociation extends pulumi.CustomResource {
  /// Name of the domain to associate the package with.
  late final pulumi.Output<String> domainName;
  /// Internal ID of the package to associate with a domain.
  late final pulumi.Output<String> packageId;
  late final pulumi.Output<String> referencePath;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [PackageAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PackageAssociation]. {@macro pulumi_opensearch_package_association_package_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PackageAssociation(
    String name, {
    PackageAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:opensearch/packageAssociation:PackageAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    domainName = registerOutput<String>('domainName');
    packageId = registerOutput<String>('packageId');
    referencePath = registerOutput<String>('referencePath');
    region = registerOutput<String>('region');
  }

  /// Gets an existing [PackageAssociation] resource's state with the given [name] and [id].
  static PackageAssociation get(
    String name,
    pulumi.Input<String> id, {
    PackageAssociationState? state,
  }) {
    return PackageAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  PackageAssociation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:opensearch/packageAssociation:PackageAssociation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    domainName = registerOutput<String>('domainName');
    packageId = registerOutput<String>('packageId');
    referencePath = registerOutput<String>('referencePath');
    region = registerOutput<String>('region');
  }
}
