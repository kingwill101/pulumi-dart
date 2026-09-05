import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_name_access_association_args.dart';
import 'domain_name_access_association_state.dart';

/// Creates a domain name access association resource between an access association source and a private custom domain name.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.apigateway.DomainNameAccessAssociation("example", {
///     accessAssociationSource: exampleAwsVpcEndpoint.id,
///     accessAssociationSourceType: "VPCE",
///     domainNameArn: exampleAwsApiGatewayDomainName.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.apigateway.DomainNameAccessAssociation("example",
///     access_association_source=example_aws_vpc_endpoint["id"],
///     access_association_source_type="VPCE",
///     domain_name_arn=example_aws_api_gateway_domain_name["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.ApiGateway.DomainNameAccessAssociation("example", new()
///     {
///         AccessAssociationSource = exampleAwsVpcEndpoint.Id,
///         AccessAssociationSourceType = "VPCE",
///         DomainNameArn = exampleAwsApiGatewayDomainName.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/apigateway"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := apigateway.NewDomainNameAccessAssociation(ctx, "example", &apigateway.DomainNameAccessAssociationArgs{
/// 			AccessAssociationSource:     pulumi.Any(exampleAwsVpcEndpoint.Id),
/// 			AccessAssociationSourceType: pulumi.String("VPCE"),
/// 			DomainNameArn:               pulumi.Any(exampleAwsApiGatewayDomainName.Arn),
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
/// resource "aws_apigateway_domainnameaccessassociation" "example" {
///   access_association_source      = exampleAwsVpcEndpoint.id
///   access_association_source_type = "VPCE"
///   domain_name_arn                = exampleAwsApiGatewayDomainName.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.apigateway.DomainNameAccessAssociation;
/// import com.pulumi.aws.apigateway.DomainNameAccessAssociationArgs;
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
///         var example = new DomainNameAccessAssociation("example", DomainNameAccessAssociationArgs.builder()
///             .accessAssociationSource(exampleAwsVpcEndpoint.id())
///             .accessAssociationSourceType("VPCE")
///             .domainNameArn(exampleAwsApiGatewayDomainName.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:apigateway:DomainNameAccessAssociation
///     properties:
///       accessAssociationSource: ${exampleAwsVpcEndpoint.id}
///       accessAssociationSourceType: VPCE
///       domainNameArn: ${exampleAwsApiGatewayDomainName.arn}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) ARN of the API Gateway domain name access association.
///
///
/// Using `pulumi import`, import API Gateway domain name acces associations as using their `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:apigateway/domainNameAccessAssociation:DomainNameAccessAssociation example arn:aws:apigateway:us-west-2:123456789012:/domainnameaccessassociations/domainname/12qmzgp2.9m7ilski.test+hykg7a12e7/vpcesource/vpce-05de3f8f82740a748
/// ```
class DomainNameAccessAssociation extends pulumi.CustomResource {
  /// Identifier of the domain name access association source. For a `VPCE`, the value is the VPC endpoint ID.
  late final pulumi.Output<String> accessAssociationSource;
  /// Type of the domain name access association source. Valid values are `VPCE`.
  late final pulumi.Output<String> accessAssociationSourceType;
  /// ARN of the domain name access association.
  late final pulumi.Output<String> arn;
  /// ARN of the domain name.
  late final pulumi.Output<String> domainNameArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [DomainNameAccessAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DomainNameAccessAssociation]. {@macro pulumi_apigateway_domain_name_access_association_domain_name_access_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DomainNameAccessAssociation(
    String name, {
    DomainNameAccessAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:apigateway/domainNameAccessAssociation:DomainNameAccessAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    accessAssociationSource = registerOutput<String>('accessAssociationSource');
    accessAssociationSourceType = registerOutput<String>('accessAssociationSourceType');
    arn = registerOutput<String>('arn');
    domainNameArn = registerOutput<String>('domainNameArn');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [DomainNameAccessAssociation] resource's state with the given [name] and [id].
  static DomainNameAccessAssociation get(
    String name,
    pulumi.Input<String> id, {
    DomainNameAccessAssociationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return DomainNameAccessAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  DomainNameAccessAssociation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:apigateway/domainNameAccessAssociation:DomainNameAccessAssociation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessAssociationSource = registerOutput<String>('accessAssociationSource');
    accessAssociationSourceType = registerOutput<String>('accessAssociationSourceType');
    arn = registerOutput<String>('arn');
    domainNameArn = registerOutput<String>('domainNameArn');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [DomainNameAccessAssociation] resource.
  DomainNameAccessAssociation.reference(String urn)
    : super(
        'aws:apigateway/domainNameAccessAssociation:DomainNameAccessAssociation',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accessAssociationSource = registerOutput<String>('accessAssociationSource');
    accessAssociationSourceType = registerOutput<String>('accessAssociationSourceType');
    arn = registerOutput<String>('arn');
    domainNameArn = registerOutput<String>('domainNameArn');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
