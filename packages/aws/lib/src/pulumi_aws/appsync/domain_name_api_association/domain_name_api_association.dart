import 'package:pulumi/pulumi.dart';
import 'domain_name_api_association_args.dart';

/// Provides an AppSync API Association.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.appsync.DomainNameApiAssociation("example", {
/// apiId: exampleAwsAppsyncGraphqlApi.id,
/// domainName: exampleAwsAppsyncDomainName.domainName,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.appsync.DomainNameApiAssociation("example",
/// api_id=example_aws_appsync_graphql_api["id"],
/// domain_name=example_aws_appsync_domain_name["domainName"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.AppSync.DomainNameApiAssociation("example", new()
/// {
/// ApiId = exampleAwsAppsyncGraphqlApi.Id,
/// DomainName = exampleAwsAppsyncDomainName.DomainName,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/appsync"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := appsync.NewDomainNameApiAssociation(ctx, "example", &appsync.DomainNameApiAssociationArgs{
/// ApiId:      pulumi.Any(exampleAwsAppsyncGraphqlApi.Id),
/// DomainName: pulumi.Any(exampleAwsAppsyncDomainName.DomainName),
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new DomainNameApiAssociation("example", DomainNameApiAssociationArgs.builder()
/// .apiId(exampleAwsAppsyncGraphqlApi.id())
/// .domainName(exampleAwsAppsyncDomainName.domainName())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:appsync:DomainNameApiAssociation
/// properties:
/// apiId: ${exampleAwsAppsyncGraphqlApi.id}
/// domainName: ${exampleAwsAppsyncDomainName.domainName}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.appsync.DomainNameApiAssociation`" pulumi-lang-dotnet="`aws.appsync.DomainNameApiAssociation`" pulumi-lang-go="`appsync.DomainNameApiAssociation`" pulumi-lang-python="`appsync.DomainNameApiAssociation`" pulumi-lang-yaml="`aws.appsync.DomainNameApiAssociation`" pulumi-lang-java="`aws.appsync.DomainNameApiAssociation`">`aws.appsync.DomainNameApiAssociation`</span> using the AppSync domain name. For example:
///
/// ```sh
/// $ pulumi import aws:appsync/domainNameApiAssociation:DomainNameApiAssociation example example.com
/// ```
class DomainNameApiAssociation extends CustomResource {
  /// API ID.
  late final Output<String> apiId;

  /// Appsync domain name.
  late final Output<String> domainName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  DomainNameApiAssociation(
    String name, {
    DomainNameApiAssociationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:appsync/domainNameApiAssociation:DomainNameApiAssociation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.apiId = registerOutput<String>('apiId');
    this.domainName = registerOutput<String>('domainName');
    this.region = registerOutput<String>('region');
  }
}
