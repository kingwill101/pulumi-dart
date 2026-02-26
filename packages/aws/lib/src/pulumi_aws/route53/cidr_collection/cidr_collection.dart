import 'package:pulumi/pulumi.dart';
import 'cidr_collection_args.dart';

/// Provides a Route53 CIDR collection resource.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.route53.CidrCollection("example", {name: "collection-1"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.route53.CidrCollection("example", name="collection-1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Route53.CidrCollection("example", new()
/// {
/// Name = "collection-1",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/route53"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := route53.NewCidrCollection(ctx, "example", &route53.CidrCollectionArgs{
/// Name: pulumi.String("collection-1"),
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
/// import com.pulumi.aws.route53.CidrCollection;
/// import com.pulumi.aws.route53.CidrCollectionArgs;
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
/// var example = new CidrCollection("example", CidrCollectionArgs.builder()
/// .name("collection-1")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:route53:CidrCollection
/// properties:
/// name: collection-1
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import CIDR collections using their ID. For example:
///
/// ```sh
/// $ pulumi import aws:route53/cidrCollection:CidrCollection example 9ac32814-3e67-0932-6048-8d779cc6f511
/// ```
class CidrCollection extends CustomResource {
  /// The Amazon Resource Name (ARN) of the CIDR collection.
  late final Output<String> arn;

  /// Unique name for the CIDR collection.
  late final Output<String> name;

  /// The lastest version of the CIDR collection.
  late final Output<int> version;

  CidrCollection(
    String name, {
    CidrCollectionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:route53/cidrCollection:CidrCollection',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.name = registerOutput<String>('name');
    this.version = registerOutput<int>('version');
  }
}
