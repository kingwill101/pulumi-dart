import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_args.dart';
import 'domain_endpoint_options.dart';
import 'domain_index_field.dart';
import 'domain_scaling_parameters.dart';
import 'domain_state.dart';

/// Provides an CloudSearch domain resource.
///
/// The provider waits for the domain to become `Active` when applying a configuration.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.cloudsearch.Domain("example", {
///     scalingParameters: {
///         desiredInstanceType: "search.medium",
///     },
///     indexFields: [
///         {
///             name: "headline",
///             type: "text",
///             search: true,
///             "return": true,
///             sort: true,
///             highlight: false,
///             analysisScheme: "_en_default_",
///         },
///         {
///             name: "price",
///             type: "double",
///             search: true,
///             facet: true,
///             "return": true,
///             sort: true,
///             sourceFields: "headline",
///         },
///     ],
///     name: "example-domain",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudsearch.Domain("example",
///     scaling_parameters={
///         "desired_instance_type": "search.medium",
///     },
///     index_fields=[
///         {
///             "name": "headline",
///             "type": "text",
///             "search": True,
///             "return_": True,
///             "sort": True,
///             "highlight": False,
///             "analysis_scheme": "_en_default_",
///         },
///         {
///             "name": "price",
///             "type": "double",
///             "search": True,
///             "facet": True,
///             "return_": True,
///             "sort": True,
///             "source_fields": "headline",
///         },
///     ],
///     name="example-domain")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.CloudSearch.Domain("example", new()
///     {
///         ScalingParameters = new Aws.CloudSearch.Inputs.DomainScalingParametersArgs
///         {
///             DesiredInstanceType = "search.medium",
///         },
///         IndexFields = new[]
///         {
///             new Aws.CloudSearch.Inputs.DomainIndexFieldArgs
///             {
///                 Name = "headline",
///                 Type = "text",
///                 Search = true,
///                 Return = true,
///                 Sort = true,
///                 Highlight = false,
///                 AnalysisScheme = "_en_default_",
///             },
///             new Aws.CloudSearch.Inputs.DomainIndexFieldArgs
///             {
///                 Name = "price",
///                 Type = "double",
///                 Search = true,
///                 Facet = true,
///                 Return = true,
///                 Sort = true,
///                 SourceFields = "headline",
///             },
///         },
///         Name = "example-domain",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudsearch"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudsearch.NewDomain(ctx, "example", &cloudsearch.DomainArgs{
/// 			ScalingParameters: &cloudsearch.DomainScalingParametersArgs{
/// 				DesiredInstanceType: pulumi.String("search.medium"),
/// 			},
/// 			IndexFields: cloudsearch.DomainIndexFieldArray{
/// 				&cloudsearch.DomainIndexFieldArgs{
/// 					Name:           pulumi.String("headline"),
/// 					Type:           pulumi.String("text"),
/// 					Search:         pulumi.Bool(true),
/// 					Return:         pulumi.Bool(true),
/// 					Sort:           pulumi.Bool(true),
/// 					Highlight:      pulumi.Bool(false),
/// 					AnalysisScheme: pulumi.String("_en_default_"),
/// 				},
/// 				&cloudsearch.DomainIndexFieldArgs{
/// 					Name:         pulumi.String("price"),
/// 					Type:         pulumi.String("double"),
/// 					Search:       pulumi.Bool(true),
/// 					Facet:        pulumi.Bool(true),
/// 					Return:       pulumi.Bool(true),
/// 					Sort:         pulumi.Bool(true),
/// 					SourceFields: pulumi.String("headline"),
/// 				},
/// 			},
/// 			Name: pulumi.String("example-domain"),
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
/// resource "aws_cloudsearch_domain" "example" {
///   scaling_parameters = {
///     desired_instance_type = "search.medium"
///   }
///   index_fields {
///     name            = "headline"
///     type            = "text"
///     search          = true
///     return          = true
///     sort            = true
///     highlight       = false
///     analysis_scheme = "_en_default_"
///   }
///   index_fields {
///     name          = "price"
///     type          = "double"
///     search        = true
///     facet         = true
///     return        = true
///     sort          = true
///     source_fields = "headline"
///   }
///   name = "example-domain"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.cloudsearch.Domain;
/// import com.pulumi.aws.cloudsearch.DomainArgs;
/// import com.pulumi.aws.cloudsearch.inputs.DomainScalingParametersArgs;
/// import com.pulumi.aws.cloudsearch.inputs.DomainIndexFieldArgs;
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
///             .scalingParameters(DomainScalingParametersArgs.builder()
///                 .desiredInstanceType("search.medium")
///                 .build())
///             .indexFields(
///                 DomainIndexFieldArgs.builder()
///                     .name("headline")
///                     .type("text")
///                     .search(true)
///                     .return_(true)
///                     .sort(true)
///                     .highlight(false)
///                     .analysisScheme("_en_default_")
///                     .build(),
///                 DomainIndexFieldArgs.builder()
///                     .name("price")
///                     .type("double")
///                     .search(true)
///                     .facet(true)
///                     .return_(true)
///                     .sort(true)
///                     .sourceFields("headline")
///                     .build())
///             .name("example-domain")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:cloudsearch:Domain
///     properties:
///       scalingParameters:
///         desiredInstanceType: search.medium
///       indexFields:
///         - name: headline
///           type: text
///           search: true
///           return: true
///           sort: true
///           highlight: false
///           analysisScheme: _en_default_
///         - name: price
///           type: double
///           search: true
///           facet: true
///           return: true
///           sort: true
///           sourceFields: headline
///       name: example-domain
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import CloudSearch Domains using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:cloudsearch/domain:Domain example example-domain
/// ```
class Domain extends pulumi.CustomResource {
  /// The domain's ARN.
  late final pulumi.Output<String> arn;
  /// The service endpoint for updating documents in a search domain.
  late final pulumi.Output<String> documentServiceEndpoint;
  /// An internally generated unique identifier for the domain.
  late final pulumi.Output<String> domainId;
  /// Domain endpoint options. Documented below.
  late final pulumi.Output<DomainEndpointOptions> endpointOptions;
  /// The index fields for documents added to the domain. Documented below.
  late final pulumi.Output<List<DomainIndexField>?> indexFields;
  /// Whether or not to maintain extra instances for the domain in a second Availability Zone to ensure high availability.
  late final pulumi.Output<bool> multiAz;
  /// The name of the CloudSearch domain.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Domain scaling parameters. Documented below.
  late final pulumi.Output<DomainScalingParameters> scalingParameters;
  /// The service endpoint for requesting search results from a search domain.
  late final pulumi.Output<String> searchServiceEndpoint;

  /// Creates a new [Domain].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Domain]. {@macro pulumi_cloudsearch_domain_domain_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Domain(
    String name, {
    DomainArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudsearch/domain:Domain',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    documentServiceEndpoint = registerOutput<String>('documentServiceEndpoint');
    domainId = registerOutput<String>('domainId');
    endpointOptions = registerOutput<DomainEndpointOptions>('endpointOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainEndpointOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    indexFields = registerOutput<List<DomainIndexField>?>('indexFields', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DomainIndexField>(guardedValue, (value) => DomainIndexField.fromMap((value as Map).cast<String, dynamic>())); });
    multiAz = registerOutput<bool>('multiAz');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    scalingParameters = registerOutput<DomainScalingParameters>('scalingParameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainScalingParameters.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    searchServiceEndpoint = registerOutput<String>('searchServiceEndpoint');
  }

  /// Gets an existing [Domain] resource's state with the given [name] and [id].
  static Domain get(
    String name,
    pulumi.Input<String> id, {
    DomainState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Domain._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Domain._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudsearch/domain:Domain',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    documentServiceEndpoint = registerOutput<String>('documentServiceEndpoint');
    domainId = registerOutput<String>('domainId');
    endpointOptions = registerOutput<DomainEndpointOptions>('endpointOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainEndpointOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    indexFields = registerOutput<List<DomainIndexField>?>('indexFields', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DomainIndexField>(guardedValue, (value) => DomainIndexField.fromMap((value as Map).cast<String, dynamic>())); });
    multiAz = registerOutput<bool>('multiAz');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    scalingParameters = registerOutput<DomainScalingParameters>('scalingParameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainScalingParameters.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    searchServiceEndpoint = registerOutput<String>('searchServiceEndpoint');
  }

  /// Creates a typed reference to an existing [Domain] resource.
  Domain.reference(String urn)
    : super(
        'aws:cloudsearch/domain:Domain',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    documentServiceEndpoint = registerOutput<String>('documentServiceEndpoint');
    domainId = registerOutput<String>('domainId');
    endpointOptions = registerOutput<DomainEndpointOptions>('endpointOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainEndpointOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    indexFields = registerOutput<List<DomainIndexField>?>('indexFields', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DomainIndexField>(guardedValue, (value) => DomainIndexField.fromMap((value as Map).cast<String, dynamic>())); });
    multiAz = registerOutput<bool>('multiAz');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    scalingParameters = registerOutput<DomainScalingParameters>('scalingParameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DomainScalingParameters.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    searchServiceEndpoint = registerOutput<String>('searchServiceEndpoint');
  }
}
