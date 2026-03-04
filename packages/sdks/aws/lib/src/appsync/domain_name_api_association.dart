import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_name_api_association_args.dart';
import 'domain_name_api_association_state.dart';

/// Provides an AppSync API Association.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.appsync.DomainNameApiAssociation("example", {
///     apiId: exampleAwsAppsyncGraphqlApi.id,
///     domainName: exampleAwsAppsyncDomainName.domainName,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.appsync.DomainNameApiAssociation("example",
///     api_id=example_aws_appsync_graphql_api["id"],
///     domain_name=example_aws_appsync_domain_name["domainName"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.AppSync.DomainNameApiAssociation("example", new()
///     {
///         ApiId = exampleAwsAppsyncGraphqlApi.Id,
///         DomainName = exampleAwsAppsyncDomainName.DomainName,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/appsync"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := appsync.NewDomainNameApiAssociation(ctx, "example", &appsync.DomainNameApiAssociationArgs{
/// 			ApiId:      pulumi.Any(exampleAwsAppsyncGraphqlApi.Id),
/// 			DomainName: pulumi.Any(exampleAwsAppsyncDomainName.DomainName),
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
/// import com.pulumi.aws.appsync.DomainNameApiAssociation;
/// import com.pulumi.aws.appsync.DomainNameApiAssociationArgs;
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
///         var example = new DomainNameApiAssociation("example", DomainNameApiAssociationArgs.builder()
///             .apiId(exampleAwsAppsyncGraphqlApi.id())
///             .domainName(exampleAwsAppsyncDomainName.domainName())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:appsync:DomainNameApiAssociation
///     properties:
///       apiId: ${exampleAwsAppsyncGraphqlApi.id}
///       domainName: ${exampleAwsAppsyncDomainName.domainName}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.appsync.DomainNameApiAssociation` using the AppSync domain name. For example:
///
/// ```sh
/// $ pulumi import aws:appsync/domainNameApiAssociation:DomainNameApiAssociation example example.com
/// ```
class DomainNameApiAssociation extends pulumi.CustomResource {
  /// API ID.
  late final pulumi.Output<String> apiId;

  /// Appsync domain name.
  late final pulumi.Output<String> domainName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [DomainNameApiAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DomainNameApiAssociation]. {@macro pulumi_appsync_domain_name_api_association_domain_name_api_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DomainNameApiAssociation(
    String name, {
    DomainNameApiAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:appsync/domainNameApiAssociation:DomainNameApiAssociation',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    apiId = registerOutput<String>('apiId');
    domainName = registerOutput<String>('domainName');
    region = registerOutput<String>('region');
  }

  /// Gets an existing [DomainNameApiAssociation] resource's state with the given [name] and [id].
  static DomainNameApiAssociation get(
    String name,
    pulumi.Input<String> id, {
    DomainNameApiAssociationState? state,
  }) {
    return DomainNameApiAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DomainNameApiAssociation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:appsync/domainNameApiAssociation:DomainNameApiAssociation',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    apiId = registerOutput<String>('apiId');
    domainName = registerOutput<String>('domainName');
    region = registerOutput<String>('region');
  }
}
