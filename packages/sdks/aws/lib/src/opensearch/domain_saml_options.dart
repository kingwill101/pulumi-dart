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
///     domainName: "example",
///     engineVersion: "OpenSearch_1.1",
///     clusterConfig: {
///         instanceType: "r4.large.search",
///     },
///     snapshotOptions: {
///         automatedSnapshotStartHour: 23,
///     },
///     tags: {
///         Domain: "TestDomain",
///     },
/// });
/// const exampleDomainSamlOptions = new aws.opensearch.DomainSamlOptions("example", {
///     domainName: example.domainName,
///     samlOptions: {
///         enabled: true,
///         idp: {
///             entityId: "https://example.com",
///             metadataContent: std.file({
///                 input: "./saml-metadata.xml",
///             }).then(invoke => invoke.result),
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// example = aws.opensearch.Domain("example",
///     domain_name="example",
///     engine_version="OpenSearch_1.1",
///     cluster_config={
///         "instance_type": "r4.large.search",
///     },
///     snapshot_options={
///         "automated_snapshot_start_hour": 23,
///     },
///     tags={
///         "Domain": "TestDomain",
///     })
/// example_domain_saml_options = aws.opensearch.DomainSamlOptions("example",
///     domain_name=example.domain_name,
///     saml_options={
///         "enabled": True,
///         "idp": {
///             "entity_id": "https://example.com",
///             "metadata_content": std.file(input="./saml-metadata.xml").result,
///         },
///     })
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
///         DomainName = "example",
///         EngineVersion = "OpenSearch_1.1",
///         ClusterConfig = new Aws.OpenSearch.Inputs.DomainClusterConfigArgs
///         {
///             InstanceType = "r4.large.search",
///         },
///         SnapshotOptions = new Aws.OpenSearch.Inputs.DomainSnapshotOptionsArgs
///         {
///             AutomatedSnapshotStartHour = 23,
///         },
///         Tags =
///         {
///             { "Domain", "TestDomain" },
///         },
///     });
///
///     var exampleDomainSamlOptions = new Aws.OpenSearch.DomainSamlOptions("example", new()
///     {
///         DomainName = example.DomainName,
///         SamlOptions = new Aws.OpenSearch.Inputs.DomainSamlOptionsSamlOptionsArgs
///         {
///             Enabled = true,
///             Idp = new Aws.OpenSearch.Inputs.DomainSamlOptionsSamlOptionsIdpArgs
///             {
///                 EntityId = "https://example.com",
///                 MetadataContent = Std.File.Invoke(new()
///                 {
///                     Input = "./saml-metadata.xml",
///                 }).Apply(invoke => invoke.Result),
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/opensearch"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := opensearch.NewDomain(ctx, "example", &opensearch.DomainArgs{
/// 			DomainName:    pulumi.String("example"),
/// 			EngineVersion: pulumi.String("OpenSearch_1.1"),
/// 			ClusterConfig: &opensearch.DomainClusterConfigArgs{
/// 				InstanceType: pulumi.String("r4.large.search"),
/// 			},
/// 			SnapshotOptions: &opensearch.DomainSnapshotOptionsArgs{
/// 				AutomatedSnapshotStartHour: pulumi.Int(23),
/// 			},
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
/// 			DomainName: example.DomainName,
/// 			SamlOptions: &opensearch.DomainSamlOptionsSamlOptionsArgs{
/// 				Enabled: pulumi.Bool(true),
/// 				Idp: &opensearch.DomainSamlOptionsSamlOptionsIdpArgs{
/// 					EntityId:        pulumi.String("https://example.com"),
/// 					MetadataContent: pulumi.String(invokeFile.Result),
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
///             .domainName("example")
///             .engineVersion("OpenSearch_1.1")
///             .clusterConfig(DomainClusterConfigArgs.builder()
///                 .instanceType("r4.large.search")
///                 .build())
///             .snapshotOptions(DomainSnapshotOptionsArgs.builder()
///                 .automatedSnapshotStartHour(23)
///                 .build())
///             .tags(Map.of("Domain", "TestDomain"))
///             .build());
///
///         var exampleDomainSamlOptions = new DomainSamlOptions("exampleDomainSamlOptions", DomainSamlOptionsArgs.builder()
///             .domainName(example.domainName())
///             .samlOptions(DomainSamlOptionsSamlOptionsArgs.builder()
///                 .enabled(true)
///                 .idp(DomainSamlOptionsSamlOptionsIdpArgs.builder()
///                     .entityId("https://example.com")
///                     .metadataContent(StdFunctions.file(FileArgs.builder()
///                         .input("./saml-metadata.xml")
///                         .build()).result())
///                     .build())
///                 .build())
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
///       domainName: example
///       engineVersion: OpenSearch_1.1
///       clusterConfig:
///         instanceType: r4.large.search
///       snapshotOptions:
///         automatedSnapshotStartHour: 23
///       tags:
///         Domain: TestDomain
///   exampleDomainSamlOptions:
///     type: aws:opensearch:DomainSamlOptions
///     name: example
///     properties:
///       domainName: ${example.domainName}
///       samlOptions:
///         enabled: true
///         idp:
///           entityId: https://example.com
///           metadataContent:
///             fn::invoke:
///               function: std:file
///               arguments:
///                 input: ./saml-metadata.xml
///               return: result
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import OpenSearch domains using the `domain_name`. For example:
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
          options ?? pulumi.CustomResourceOptions(),
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
  }) {
    return DomainSamlOptions._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
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
}
