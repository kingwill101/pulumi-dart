import 'package:pulumi/pulumi.dart';
import '../service_network_resource_association_dns_entry/service_network_resource_association_dns_entry.dart';
import '../service_network_resource_association_timeouts/service_network_resource_association_timeouts.dart';
import 'service_network_resource_association_args.dart';

/// Resource for managing an AWS VPC Lattice Service Network Resource Association.
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
/// const example = new aws.vpclattice.ServiceNetworkResourceAssociation("example", {
/// resourceConfigurationIdentifier: exampleAwsVpclatticeResourceConfiguration.id,
/// serviceNetworkIdentifier: exampleAwsVpclatticeServiceNetwork.id,
/// tags: {
/// Name: "Example",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.vpclattice.ServiceNetworkResourceAssociation("example",
/// resource_configuration_identifier=example_aws_vpclattice_resource_configuration["id"],
/// service_network_identifier=example_aws_vpclattice_service_network["id"],
/// tags={
/// "Name": "Example",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.VpcLattice.ServiceNetworkResourceAssociation("example", new()
/// {
/// ResourceConfigurationIdentifier = exampleAwsVpclatticeResourceConfiguration.Id,
/// ServiceNetworkIdentifier = exampleAwsVpclatticeServiceNetwork.Id,
/// Tags =
/// {
/// { "Name", "Example" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/vpclattice"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := vpclattice.NewServiceNetworkResourceAssociation(ctx, "example", &vpclattice.ServiceNetworkResourceAssociationArgs{
/// ResourceConfigurationIdentifier: pulumi.Any(exampleAwsVpclatticeResourceConfiguration.Id),
/// ServiceNetworkIdentifier:        pulumi.Any(exampleAwsVpclatticeServiceNetwork.Id),
/// Tags: pulumi.StringMap{
/// "Name": pulumi.String("Example"),
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
/// import com.pulumi.aws.vpclattice.ServiceNetworkResourceAssociation;
/// import com.pulumi.aws.vpclattice.ServiceNetworkResourceAssociationArgs;
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
/// var example = new ServiceNetworkResourceAssociation("example", ServiceNetworkResourceAssociationArgs.builder()
/// .resourceConfigurationIdentifier(exampleAwsVpclatticeResourceConfiguration.id())
/// .serviceNetworkIdentifier(exampleAwsVpclatticeServiceNetwork.id())
/// .tags(Map.of("Name", "Example"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:vpclattice:ServiceNetworkResourceAssociation
/// properties:
/// resourceConfigurationIdentifier: ${exampleAwsVpclatticeResourceConfiguration.id}
/// serviceNetworkIdentifier: ${exampleAwsVpclatticeServiceNetwork.id}
/// tags:
/// Name: Example
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import VPC Lattice Service Network Resource Association using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:vpclattice/serviceNetworkResourceAssociation:ServiceNetworkResourceAssociation example snra-1234567890abcef12
/// ```
class ServiceNetworkResourceAssociation extends CustomResource {
  /// ARN of the Service Network Resource Association.
  late final Output<String> arn;

  /// DNS entry of the association in the service network.
  late final Output<List<ServiceNetworkResourceAssociationDnsEntry>> dnsEntries;

  /// Boolean indicating whether private DNS is enabled for the service network resource association. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>. When set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>, the resource configuration identified by <span pulumi-lang-nodejs="`resourceConfigurationIdentifier`" pulumi-lang-dotnet="`ResourceConfigurationIdentifier`" pulumi-lang-go="`resourceConfigurationIdentifier`" pulumi-lang-python="`resource_configuration_identifier`" pulumi-lang-yaml="`resourceConfigurationIdentifier`" pulumi-lang-java="`resourceConfigurationIdentifier`">`resource_configuration_identifier`</span> must have a custom domain name or a group domain for private DNS.
  late final Output<bool> privateDnsEnabled;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Identifier of Resource Configuration to associate to the Service Network.
  late final Output<String> resourceConfigurationIdentifier;

  /// Identifier of the Service Network to associate the Resource to.
  ///
  /// The following arguments are optional:
  late final Output<String> serviceNetworkIdentifier;

  /// Map of tags assigned to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;
  late final Output<ServiceNetworkResourceAssociationTimeouts?> timeouts;

  ServiceNetworkResourceAssociation(
    String name, {
    ServiceNetworkResourceAssociationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:vpclattice/serviceNetworkResourceAssociation:ServiceNetworkResourceAssociation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.dnsEntries =
        Output.createUnknown<List<ServiceNetworkResourceAssociationDnsEntry>>();
    this.privateDnsEnabled = Output.createUnknown<bool>();
    this.region = Output.createUnknown<String>();
    this.resourceConfigurationIdentifier = Output.createUnknown<String>();
    this.serviceNetworkIdentifier = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.timeouts =
        Output.createUnknown<ServiceNetworkResourceAssociationTimeouts?>();
  }
}
