import 'package:pulumi/pulumi.dart';
import '../domain_endpoint_options/domain_endpoint_options.dart';
import '../domain_index_field/domain_index_field.dart';
import '../domain_scaling_parameters/domain_scaling_parameters.dart';
import 'domain_args.dart';

/// Provides an CloudSearch domain resource.
///
/// The provider waits for the domain to become `Active` when applying a configuration.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.cloudsearch.Domain("example", {
/// name: "example-domain",
/// scalingParameters: {
/// desiredInstanceType: "search.medium",
/// },
/// indexFields: [
/// {
/// name: "headline",
/// type: "text",
/// search: true,
/// "return": true,
/// sort: true,
/// highlight: false,
/// analysisScheme: "_en_default_",
/// },
/// {
/// name: "price",
/// type: "double",
/// search: true,
/// facet: true,
/// "return": true,
/// sort: true,
/// sourceFields: "headline",
/// },
/// ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudsearch.Domain("example",
/// name="example-domain",
/// scaling_parameters={
/// "desired_instance_type": "search.medium",
/// },
/// index_fields=[
/// {
/// "name": "headline",
/// "type": "text",
/// "search": True,
/// "return_": True,
/// "sort": True,
/// "highlight": False,
/// "analysis_scheme": "_en_default_",
/// },
/// {
/// "name": "price",
/// "type": "double",
/// "search": True,
/// "facet": True,
/// "return_": True,
/// "sort": True,
/// "source_fields": "headline",
/// },
/// ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.CloudSearch.Domain("example", new()
/// {
/// Name = "example-domain",
/// ScalingParameters = new Aws.CloudSearch.Inputs.DomainScalingParametersArgs
/// {
/// DesiredInstanceType = "search.medium",
/// },
/// IndexFields = new[]
/// {
/// new Aws.CloudSearch.Inputs.DomainIndexFieldArgs
/// {
/// Name = "headline",
/// Type = "text",
/// Search = true,
/// Return = true,
/// Sort = true,
/// Highlight = false,
/// AnalysisScheme = "_en_default_",
/// },
/// new Aws.CloudSearch.Inputs.DomainIndexFieldArgs
/// {
/// Name = "price",
/// Type = "double",
/// Search = true,
/// Facet = true,
/// Return = true,
/// Sort = true,
/// SourceFields = "headline",
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudsearch"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := cloudsearch.NewDomain(ctx, "example", &cloudsearch.DomainArgs{
/// Name: pulumi.String("example-domain"),
/// ScalingParameters: &cloudsearch.DomainScalingParametersArgs{
/// DesiredInstanceType: pulumi.String("search.medium"),
/// },
/// IndexFields: cloudsearch.DomainIndexFieldArray{
/// &cloudsearch.DomainIndexFieldArgs{
/// Name:           pulumi.String("headline"),
/// Type:           pulumi.String("text"),
/// Search:         pulumi.Bool(true),
/// Return:         pulumi.Bool(true),
/// Sort:           pulumi.Bool(true),
/// Highlight:      pulumi.Bool(false),
/// AnalysisScheme: pulumi.String("_en_default_"),
/// },
/// &cloudsearch.DomainIndexFieldArgs{
/// Name:         pulumi.String("price"),
/// Type:         pulumi.String("double"),
/// Search:       pulumi.Bool(true),
/// Facet:        pulumi.Bool(true),
/// Return:       pulumi.Bool(true),
/// Sort:         pulumi.Bool(true),
/// SourceFields: pulumi.String("headline"),
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new Domain("example", DomainArgs.builder()
/// .name("example-domain")
/// .scalingParameters(DomainScalingParametersArgs.builder()
/// .desiredInstanceType("search.medium")
/// .build())
/// .indexFields(
/// DomainIndexFieldArgs.builder()
/// .name("headline")
/// .type("text")
/// .search(true)
/// .return_(true)
/// .sort(true)
/// .highlight(false)
/// .analysisScheme("_en_default_")
/// .build(),
/// DomainIndexFieldArgs.builder()
/// .name("price")
/// .type("double")
/// .search(true)
/// .facet(true)
/// .return_(true)
/// .sort(true)
/// .sourceFields("headline")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:cloudsearch:Domain
/// properties:
/// name: example-domain
/// scalingParameters:
/// desiredInstanceType: search.medium
/// indexFields:
/// - name: headline
/// type: text
/// search: true
/// return: true
/// sort: true
/// highlight: false
/// analysisScheme: _en_default_
/// - name: price
/// type: double
/// search: true
/// facet: true
/// return: true
/// sort: true
/// sourceFields: headline
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import CloudSearch Domains using the <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:cloudsearch/domain:Domain example example-domain
/// ```
class Domain extends CustomResource {
  /// The domain's ARN.
  late final Output<String> arn;

  /// The service endpoint for updating documents in a search domain.
  late final Output<String> documentServiceEndpoint;

  /// An internally generated unique identifier for the domain.
  late final Output<String> domainId;

  /// Domain endpoint options. Documented below.
  late final Output<DomainEndpointOptions> endpointOptions;

  /// The index fields for documents added to the domain. Documented below.
  late final Output<List<DomainIndexField>?> indexFields;

  /// Whether or not to maintain extra instances for the domain in a second Availability Zone to ensure high availability.
  late final Output<bool> multiAz;

  /// The name of the CloudSearch domain.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Domain scaling parameters. Documented below.
  late final Output<DomainScalingParameters> scalingParameters;

  /// The service endpoint for requesting search results from a search domain.
  late final Output<String> searchServiceEndpoint;

  Domain(
    String name, {
    DomainArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:cloudsearch/domain:Domain',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.documentServiceEndpoint =
        registerOutput<String>('documentServiceEndpoint');
    this.domainId = registerOutput<String>('domainId');
    this.endpointOptions =
        registerOutput<DomainEndpointOptions>('endpointOptions');
    this.indexFields = registerOutput<List<DomainIndexField>?>('indexFields');
    this.multiAz = registerOutput<bool>('multiAz');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.scalingParameters =
        registerOutput<DomainScalingParameters>('scalingParameters');
    this.searchServiceEndpoint =
        registerOutput<String>('searchServiceEndpoint');
  }
}
