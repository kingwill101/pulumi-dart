import 'package:pulumi/pulumi.dart';
import '../resource_set_resource_set/resource_set_resource_set.dart';
import '../resource_set_timeouts/resource_set_timeouts.dart';
import 'resource_set_args.dart';

/// Resource for managing an AWS FMS (Firewall Manager) Resource Set.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.fms.ResourceSet("example", {resourceSets: [{
/// name: "testing",
/// resourceTypeLists: ["AWS::NetworkFirewall::Firewall"],
/// }]});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.fms.ResourceSet("example", resource_sets=[{
/// "name": "testing",
/// "resource_type_lists": ["AWS::NetworkFirewall::Firewall"],
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Fms.ResourceSet("example", new()
/// {
/// ResourceSets = new[]
/// {
/// new Aws.Fms.Inputs.ResourceSetResourceSetArgs
/// {
/// Name = "testing",
/// ResourceTypeLists = new[]
/// {
/// "AWS::NetworkFirewall::Firewall",
/// },
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/fms"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := fms.NewResourceSet(ctx, "example", &fms.ResourceSetArgs{
/// ResourceSets: fms.ResourceSetResourceSetArray{
/// &fms.ResourceSetResourceSetArgs{
/// Name: pulumi.String("testing"),
/// ResourceTypeLists: pulumi.StringArray{
/// pulumi.String("AWS::NetworkFirewall::Firewall"),
/// },
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
/// import com.pulumi.aws.fms.ResourceSet;
/// import com.pulumi.aws.fms.ResourceSetArgs;
/// import com.pulumi.aws.fms.inputs.ResourceSetResourceSetArgs;
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
/// var example = new ResourceSet("example", ResourceSetArgs.builder()
/// .resourceSets(ResourceSetResourceSetArgs.builder()
/// .name("testing")
/// .resourceTypeLists("AWS::NetworkFirewall::Firewall")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:fms:ResourceSet
/// properties:
/// resourceSets:
/// - name: testing
/// resourceTypeLists:
/// - AWS::NetworkFirewall::Firewall
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import FMS (Firewall Manager) Resource Set using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:fms/resourceSet:ResourceSet example resource_set-id-12345678
/// ```
class ResourceSet extends CustomResource {
  /// ARN of the Resource Set.
  late final Output<String> arn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Details about the resource set to be created or updated. See <span pulumi-lang-nodejs="`resourceSet`" pulumi-lang-dotnet="`ResourceSet`" pulumi-lang-go="`resourceSet`" pulumi-lang-python="`resource_set`" pulumi-lang-yaml="`resourceSet`" pulumi-lang-java="`resourceSet`">`resource_set`</span> Attribute Reference below.
  late final Output<List<ResourceSetResourceSet>?> resourceSets;
  late final Output<Map<String, String>?> tags;
  late final Output<Map<String, String>> tagsAll;
  late final Output<ResourceSetTimeouts?> timeouts;

  ResourceSet(
    String name, {
    ResourceSetArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:fms/resourceSet:ResourceSet',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.region = registerOutput<String>('region');
    this.resourceSets =
        registerOutput<List<ResourceSetResourceSet>?>('resourceSets');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<ResourceSetTimeouts?>('timeouts');
  }
}
