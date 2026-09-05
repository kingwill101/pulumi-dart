import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_saml_options_args.dart';
import 'domain_saml_options_saml_options.dart';
import 'domain_saml_options_state.dart';

/// Manages SAML authentication options for an AWS OpenSearch Domain.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// const example = new aws.opensearch.Domain("example", {
///     clusterConfig: {
///         instanceType: "r4.large.search",
///     },
///     snapshotOptions: {
///         automatedSnapshotStartHour: 23,
///     },
///     domainName: "example",
///     engineVersion: "OpenSearch_1.1",
///     tags: {
///         Domain: "TestDomain",
///     },
/// });
/// const exampleDomainSamlOptions = new aws.opensearch.DomainSamlOptions("example", {
///     samlOptions: {
///         idp: {
///             entityId: "https://example.com",
///             metadataContent: std.file({
///                 input: "./saml-metadata.xml",
///             }).then(invoke => invoke.result),
///         },
///         enabled: true,
///     },
///     domainName: example.domainName,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// example = aws.opensearch.Domain("example",
///     cluster_config={
///         "instance_type": "r4.large.search",
///     },
///     snapshot_options={
///         "automated_snapshot_start_hour": 23,
///     },
///     domain_name="example",
///     engine_version="OpenSearch_1.1",
///     tags={
///         "Domain": "TestDomain",
///     })
/// example_domain_saml_options = aws.opensearch.DomainSamlOptions("example",
///     saml_options={
///         "idp": {
///             "entity_id": "https://example.com",
///             "metadata_content": std.file(input="./saml-metadata.xml").result,
///         },
///         "enabled": True,
///     },
///     domain_name=example.domain_name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.OpenSearch.Domain("example", new()
///     {
///         ClusterConfig = new Aws.OpenSearch.Inputs.DomainClusterConfigArgs
///         {
///             InstanceType = "r4.large.search",
///         },
///         SnapshotOptions = new Aws.OpenSearch.Inputs.DomainSnapshotOptionsArgs
///         {
///             AutomatedSnapshotStartHour = 23,
///         },
///         DomainName = "example",
///         EngineVersion = "OpenSearch_1.1",
///         Tags =
///         {
///             { "Domain", "TestDomain" },
///         },
///     });
///
///     var exampleDomainSamlOptions = new Aws.OpenSearch.DomainSamlOptions("example", new()
///     {
///         SamlOptions = new Aws.OpenSearch.Inputs.DomainSamlOptionsSamlOptionsArgs
///         {
///             Idp = new Aws.OpenSearch.Inputs.DomainSamlOptionsSamlOptionsIdpArgs
///             {
///                 EntityId = "https://example.com",
///                 MetadataContent = Std.File.Invoke(new()
///                 {
///                     Input = "./saml-metadata.xml",
///                 }).Apply(invoke => invoke.Result),
///             },
///             Enabled = true,
///         },
///         DomainName = example.DomainName,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/opensearch"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := opensearch.NewDomain(ctx, "example", &opensearch.DomainArgs{
/// 			ClusterConfig: &opensearch.DomainClusterConfigArgs{
/// 				InstanceType: pulumi.String("r4.large.search"),
/// 			},
/// 			SnapshotOptions: &opensearch.DomainSnapshotOptionsArgs{
/// 				AutomatedSnapshotStartHour: pulumi.Int(23),
/// 			},
/// 			DomainName:    pulumi.String("example"),
/// 			EngineVersion: pulumi.String("OpenSearch_1.1"),
/// 			Tags: pulumi.StringMap{
/// 				"Domain": pulumi.String("TestDomain"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFile, err := std.File(ctx, &std.FileArgs{
/// 			Input: "./saml-metadata.xml",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = opensearch.NewDomainSamlOptions(ctx, "example", &opensearch.DomainSamlOptionsArgs{
/// 			SamlOptions: &opensearch.DomainSamlOptionsSamlOptionsArgs{
/// 				Idp: &opensearch.DomainSamlOptionsSamlOptionsIdpArgs{
/// 					EntityId:        pulumi.String("https://example.com"),
/// 					MetadataContent: pulumi.String(invokeFile.Result),
/// 				},
/// 				Enabled: pulumi.Bool(true),
/// 			},
/// 			DomainName: example.DomainName,
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
///     std = {
///       source = "pulumi/std"
///     }
///   }
/// }
///
/// resource "aws_opensearch_domain" "example" {
///   cluster_config = {
///     instance_type = "r4.large.search"
///   }
///   snapshot_options = {
///     automated_snapshot_start_hour = 23
///   }
///   domain_name    = "example"
///   engine_version = "OpenSearch_1.1"
///   tags = {
///     "Domain" = "TestDomain"
///   }
/// }
/// resource "aws_opensearch_domainsamloptions" "example" {
///   saml_options = {
///     idp = {
///       entity_id        = "https://example.com"
///       metadata_content = file("./saml-metadata.xml")
///     }
///     enabled = true
///   }
///   domain_name = aws_opensearch_domain.example.domain_name
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
/// import com.pulumi.aws.opensearch.inputs.DomainSnapshotOptionsArgs;
/// import com.pulumi.aws.opensearch.DomainSamlOptions;
/// import com.pulumi.aws.opensearch.DomainSamlOptionsArgs;
/// import com.pulumi.aws.opensearch.inputs.DomainSamlOptionsSamlOptionsArgs;
/// import com.pulumi.aws.opensearch.inputs.DomainSamlOptionsSamlOptionsIdpArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
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
///         var example = new Domain("example", DomainArgs.builder()
///             .clusterConfig(DomainClusterConfigArgs.builder()
///                 .instanceType("r4.large.search")
///                 .build())
///             .snapshotOptions(DomainSnapshotOptionsArgs.builder()
///                 .automatedSnapshotStartHour(23)
///                 .build())
///             .domainName("example")
///             .engineVersion("OpenSearch_1.1")
///             .tags(Map.of("Domain", "TestDomain"))
///             .build());
///
///         var exampleDomainSamlOptions = new DomainSamlOptions("exampleDomainSamlOptions", DomainSamlOptionsArgs.builder()
///             .samlOptions(DomainSamlOptionsSamlOptionsArgs.builder()
///                 .idp(DomainSamlOptionsSamlOptionsIdpArgs.builder()
///                     .entityId("https://example.com")
///                     .metadataContent(StdFunctions.file(FileArgs.builder()
///                         .input("./saml-metadata.xml")
///                         .build()).result())
///                     .build())
///                 .enabled(true)
///                 .build())
///             .domainName(example.domainName())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:opensearch:Domain
///     properties:
///       clusterConfig:
///         instanceType: r4.large.search
///       snapshotOptions:
///         automatedSnapshotStartHour: 23
///       domainName: example
///       engineVersion: OpenSearch_1.1
///       tags:
///         Domain: TestDomain
///   exampleDomainSamlOptions:
///     type: aws:opensearch:DomainSamlOptions
///     name: example
///     properties:
///       samlOptions:
///         idp:
///           entityId: https://example.com
///           metadataContent:
///             fn::invoke:
///               function: std:file
///               arguments:
///                 input: ./saml-metadata.xml
///               return: result
///         enabled: true
///       domainName: ${example.domainName}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import OpenSearch domains using the `domainName`. For example:
///
/// ```sh
/// $ pulumi import aws:opensearch/domainSamlOptions:DomainSamlOptions example domain_name
/// ```
class DomainSamlOptions extends pulumi.CustomResource {
  /// Name of the domain.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> domainName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// SAML authentication options for an AWS OpenSearch Domain.
  late final pulumi.Output<DomainSamlOptionsSamlOptions?> samlOptions;

  /// Creates a new [DomainSamlOptions].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DomainSamlOptions]. {@macro pulumi_opensearch_domain_saml_options_domain_saml_options_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DomainSamlOptions(
    String name, {
    DomainSamlOptionsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:opensearch/domainSamlOptions:DomainSamlOptions',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    domainName = registerOutput<String>('domainName');
    region = registerOutput<String>('region');
    samlOptions = registerOutput<DomainSamlOptionsSamlOptions?>('samlOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainSamlOptionsSamlOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [DomainSamlOptions] resource's state with the given [name] and [id].
  static DomainSamlOptions get(
    String name,
    pulumi.Input<String> id, {
    DomainSamlOptionsState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return DomainSamlOptions._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  DomainSamlOptions._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:opensearch/domainSamlOptions:DomainSamlOptions',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    domainName = registerOutput<String>('domainName');
    region = registerOutput<String>('region');
    samlOptions = registerOutput<DomainSamlOptionsSamlOptions?>('samlOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainSamlOptionsSamlOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [DomainSamlOptions] resource.
  DomainSamlOptions.reference(String urn)
    : super(
        'aws:opensearch/domainSamlOptions:DomainSamlOptions',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    domainName = registerOutput<String>('domainName');
    region = registerOutput<String>('region');
    samlOptions = registerOutput<DomainSamlOptionsSamlOptions?>('samlOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainSamlOptionsSamlOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
