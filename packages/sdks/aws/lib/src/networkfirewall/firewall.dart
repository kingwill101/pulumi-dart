import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_args.dart';
import 'firewall_availability_zone_mapping.dart';
import 'firewall_encryption_configuration.dart';
import 'firewall_firewall_status.dart';
import 'firewall_state.dart';
import 'firewall_subnet_mapping.dart';

/// Provides an AWS Network Firewall Firewall Resource
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.networkfirewall.Firewall("example", {
///     subnetMappings: [{
///         subnetId: exampleAwsSubnet.id,
///     }],
///     name: "example",
///     firewallPolicyArn: exampleAwsNetworkfirewallFirewallPolicy.arn,
///     vpcId: exampleAwsVpc.id,
///     enabledAnalysisTypes: [
///         "TLS_SNI",
///         "HTTP_HOST",
///     ],
///     tags: {
///         Tag1: "Value1",
///         Tag2: "Value2",
///     },
/// }, {
///     customTimeouts: {
///         create: "40m",
///         update: "50m",
///         "delete": "1h",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.networkfirewall.Firewall("example",
///     subnet_mappings=[{
///         "subnet_id": example_aws_subnet["id"],
///     }],
///     name="example",
///     firewall_policy_arn=example_aws_networkfirewall_firewall_policy["arn"],
///     vpc_id=example_aws_vpc["id"],
///     enabled_analysis_types=[
///         "TLS_SNI",
///         "HTTP_HOST",
///     ],
///     tags={
///         "Tag1": "Value1",
///         "Tag2": "Value2",
///     },
///     opts = pulumi.ResourceOptions(custom_timeouts=pulumi.CustomTimeouts(create="40m", update="50m", delete="1h")))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.NetworkFirewall.Firewall("example", new()
///     {
///         SubnetMappings = new[]
///         {
///             new Aws.NetworkFirewall.Inputs.FirewallSubnetMappingArgs
///             {
///                 SubnetId = exampleAwsSubnet.Id,
///             },
///         },
///         Name = "example",
///         FirewallPolicyArn = exampleAwsNetworkfirewallFirewallPolicy.Arn,
///         VpcId = exampleAwsVpc.Id,
///         EnabledAnalysisTypes = new[]
///         {
///             "TLS_SNI",
///             "HTTP_HOST",
///         },
///         Tags =
///         {
///             { "Tag1", "Value1" },
///             { "Tag2", "Value2" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/networkfirewall"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networkfirewall.NewFirewall(ctx, "example", &networkfirewall.FirewallArgs{
/// 			SubnetMappings: networkfirewall.FirewallSubnetMappingArray{
/// 				&networkfirewall.FirewallSubnetMappingArgs{
/// 					SubnetId: pulumi.Any(exampleAwsSubnet.Id),
/// 				},
/// 			},
/// 			Name:              pulumi.String("example"),
/// 			FirewallPolicyArn: pulumi.Any(exampleAwsNetworkfirewallFirewallPolicy.Arn),
/// 			VpcId:             pulumi.Any(exampleAwsVpc.Id),
/// 			EnabledAnalysisTypes: pulumi.StringArray{
/// 				pulumi.String("TLS_SNI"),
/// 				pulumi.String("HTTP_HOST"),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Tag1": pulumi.String("Value1"),
/// 				"Tag2": pulumi.String("Value2"),
/// 			},
/// 		}, pulumi.Timeouts(&pulumi.CustomTimeouts{Create: "40m", Update: "50m", Delete: "1h"}))
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
/// resource "aws_networkfirewall_firewall" "example" {
///   timeouts {
///     create = "40m"
///     update = "50m"
///     delete = "1h"
///   }
///   subnet_mappings {
///     subnet_id = exampleAwsSubnet.id
///   }
///   name                   = "example"
///   firewall_policy_arn    = exampleAwsNetworkfirewallFirewallPolicy.arn
///   vpc_id                 = exampleAwsVpc.id
///   enabled_analysis_types = ["TLS_SNI", "HTTP_HOST"]
///   tags = {
///     "Tag1" = "Value1"
///     "Tag2" = "Value2"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.networkfirewall.Firewall;
/// import com.pulumi.aws.networkfirewall.FirewallArgs;
/// import com.pulumi.aws.networkfirewall.inputs.FirewallSubnetMappingArgs;
/// import com.pulumi.resources.CustomResourceOptions;
/// import com.pulumi.resources.CustomTimeouts;
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
///         var example = new Firewall("example", FirewallArgs.builder()
///             .subnetMappings(FirewallSubnetMappingArgs.builder()
///                 .subnetId(exampleAwsSubnet.id())
///                 .build())
///             .name("example")
///             .firewallPolicyArn(exampleAwsNetworkfirewallFirewallPolicy.arn())
///             .vpcId(exampleAwsVpc.id())
///             .enabledAnalysisTypes(
///                 "TLS_SNI",
///                 "HTTP_HOST")
///             .tags(Map.ofEntries(
///                 Map.entry("Tag1", "Value1"),
///                 Map.entry("Tag2", "Value2")
///             ))
///             .build(), CustomResourceOptions.builder()
///                 .customTimeouts(CustomTimeouts.builder()
///                     .create(CustomTimeouts.parseTimeoutString("40m"))
///                     .update(CustomTimeouts.parseTimeoutString("50m"))
///                     .delete(CustomTimeouts.parseTimeoutString("1h"))
///                 .build())
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:networkfirewall:Firewall
///     properties:
///       subnetMappings:
///         - subnetId: ${exampleAwsSubnet.id}
///       name: example
///       firewallPolicyArn: ${exampleAwsNetworkfirewallFirewallPolicy.arn}
///       vpcId: ${exampleAwsVpc.id}
///       enabledAnalysisTypes:
///         - TLS_SNI
///         - HTTP_HOST
///       tags:
///         Tag1: Value1
///         Tag2: Value2
///     options:
///       customTimeouts:
///         create: 40m
///         update: 50m
///         delete: 1h
/// ```
///
///
/// ### Transit Gateway Attached Firewall
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.getAvailabilityZones({
///     state: "available",
/// });
/// const exampleFirewall = new aws.networkfirewall.Firewall("example", {
///     availabilityZoneMappings: [
///         {
///             availabilityZoneId: example.then(example => example.zoneIds?.[0]),
///         },
///         {
///             availabilityZoneId: example.then(example => example.zoneIds?.[1]),
///         },
///     ],
///     name: "example",
///     firewallPolicyArn: exampleAwsNetworkfirewallFirewallPolicy.arn,
///     transitGatewayId: exampleAwsEc2TransitGateway.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.get_availability_zones(state="available")
/// example_firewall = aws.networkfirewall.Firewall("example",
///     availability_zone_mappings=[
///         {
///             "availability_zone_id": example.zone_ids[0],
///         },
///         {
///             "availability_zone_id": example.zone_ids[1],
///         },
///     ],
///     name="example",
///     firewall_policy_arn=example_aws_networkfirewall_firewall_policy["arn"],
///     transit_gateway_id=example_aws_ec2_transit_gateway["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.GetAvailabilityZones.Invoke(new()
///     {
///         State = "available",
///     });
///
///     var exampleFirewall = new Aws.NetworkFirewall.Firewall("example", new()
///     {
///         AvailabilityZoneMappings = new[]
///         {
///             new Aws.NetworkFirewall.Inputs.FirewallAvailabilityZoneMappingArgs
///             {
///                 AvailabilityZoneId = example.Apply(getAvailabilityZonesResult => getAvailabilityZonesResult.ZoneIds[0]),
///             },
///             new Aws.NetworkFirewall.Inputs.FirewallAvailabilityZoneMappingArgs
///             {
///                 AvailabilityZoneId = example.Apply(getAvailabilityZonesResult => getAvailabilityZonesResult.ZoneIds[1]),
///             },
///         },
///         Name = "example",
///         FirewallPolicyArn = exampleAwsNetworkfirewallFirewallPolicy.Arn,
///         TransitGatewayId = exampleAwsEc2TransitGateway.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/networkfirewall"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := aws.GetAvailabilityZones(ctx, &aws.GetAvailabilityZonesArgs{
/// 			State: pulumi.StringRef("available"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networkfirewall.NewFirewall(ctx, "example", &networkfirewall.FirewallArgs{
/// 			AvailabilityZoneMappings: networkfirewall.FirewallAvailabilityZoneMappingArray{
/// 				&networkfirewall.FirewallAvailabilityZoneMappingArgs{
/// 					AvailabilityZoneId: pulumi.String(example.ZoneIds[0]),
/// 				},
/// 				&networkfirewall.FirewallAvailabilityZoneMappingArgs{
/// 					AvailabilityZoneId: pulumi.String(example.ZoneIds[1]),
/// 				},
/// 			},
/// 			Name:              pulumi.String("example"),
/// 			FirewallPolicyArn: pulumi.Any(exampleAwsNetworkfirewallFirewallPolicy.Arn),
/// 			TransitGatewayId:  pulumi.Any(exampleAwsEc2TransitGateway.Id),
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
/// data "aws_getavailabilityzones" "example" {
///   state = "available"
/// }
///
/// resource "aws_networkfirewall_firewall" "example" {
///   availability_zone_mappings {
///     availability_zone_id = data.aws_getavailabilityzones.example.zone_ids[0]
///   }
///   availability_zone_mappings {
///     availability_zone_id = data.aws_getavailabilityzones.example.zone_ids[1]
///   }
///   name                = "example"
///   firewall_policy_arn = exampleAwsNetworkfirewallFirewallPolicy.arn
///   transit_gateway_id  = exampleAwsEc2TransitGateway.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetAvailabilityZonesArgs;
/// import com.pulumi.aws.networkfirewall.Firewall;
/// import com.pulumi.aws.networkfirewall.FirewallArgs;
/// import com.pulumi.aws.networkfirewall.inputs.FirewallAvailabilityZoneMappingArgs;
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
///         final var example = AwsFunctions.getAvailabilityZones(GetAvailabilityZonesArgs.builder()
///             .state("available")
///             .build());
///
///         var exampleFirewall = new Firewall("exampleFirewall", FirewallArgs.builder()
///             .availabilityZoneMappings(
///                 FirewallAvailabilityZoneMappingArgs.builder()
///                     .availabilityZoneId(example.zoneIds()[0])
///                     .build(),
///                 FirewallAvailabilityZoneMappingArgs.builder()
///                     .availabilityZoneId(example.zoneIds()[1])
///                     .build())
///             .name("example")
///             .firewallPolicyArn(exampleAwsNetworkfirewallFirewallPolicy.arn())
///             .transitGatewayId(exampleAwsEc2TransitGateway.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleFirewall:
///     type: aws:networkfirewall:Firewall
///     name: example
///     properties:
///       availabilityZoneMappings:
///         - availabilityZoneId: ${example.zoneIds[0]}
///         - availabilityZoneId: ${example.zoneIds[1]}
///       name: example
///       firewallPolicyArn: ${exampleAwsNetworkfirewallFirewallPolicy.arn}
///       transitGatewayId: ${exampleAwsEc2TransitGateway.id}
/// variables:
///   example:
///     fn::invoke:
///       function: aws:getAvailabilityZones
///       arguments:
///         state: available
/// ```
///
///
/// ### Transit Gateway Attached Firewall (Cross Account)
///
/// A full example of how to create a Transit Gateway in one AWS account, share it with a second AWS account, and create Network Firewall in the second account to the Transit Gateway via the `aws.networkfirewall.Firewall` and `aws.networkfirewall.FirewallTransitGatewayAttachmentAccepter` resources can be found in the `./examples/network-firewall-cross-account-transit-gateway` directory within the Github Repository
///
/// ## Import
///
/// Using `pulumi import`, import Network Firewall Firewalls using their `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:networkfirewall/firewall:Firewall example arn:aws:network-firewall:us-west-1:123456789012:firewall/example
/// ```
class Firewall extends pulumi.CustomResource {
  /// ARN that identifies the firewall.
  late final pulumi.Output<String> arn;
  /// A setting indicating whether the firewall is protected against changes to its Availability Zone configuration. When set to `true`, you must first disable this protection before adding or removing Availability Zones.
  late final pulumi.Output<bool?> availabilityZoneChangeProtection;
  /// Required when creating a transit gateway-attached firewall. Set of configuration blocks describing the avaiability availability where you want to create firewall endpoints for a transit gateway-attached firewall.
  late final pulumi.Output<List<FirewallAvailabilityZoneMapping>> availabilityZoneMappings;
  /// A flag indicating whether the firewall is protected against deletion. Use this setting to protect against accidentally deleting a firewall that is in use. Defaults to `false`.
  late final pulumi.Output<bool?> deleteProtection;
  /// A friendly description of the firewall.
  late final pulumi.Output<String?> description;
  /// Set of types for which to collect analysis metrics. See [Reporting on network traffic in Network Firewall](https://docs.aws.amazon.com/network-firewall/latest/developerguide/reporting.html) for details on how to use the data. Valid values: `TLS_SNI`, `HTTP_HOST`. Defaults to `[]`.
  late final pulumi.Output<List<String>?> enabledAnalysisTypes;
  /// KMS encryption configuration settings. See Encryption Configuration below for details.
  late final pulumi.Output<FirewallEncryptionConfiguration?> encryptionConfiguration;
  /// ARN of the VPC Firewall policy.
  late final pulumi.Output<String> firewallPolicyArn;
  /// A flag indicating whether the firewall is protected against a change to the firewall policy association. Use this setting to protect against accidentally modifying the firewall policy for a firewall that is in use. Defaults to `false`.
  late final pulumi.Output<bool?> firewallPolicyChangeProtection;
  /// Nested list of information about the current status of the firewall.
  late final pulumi.Output<List<FirewallFirewallStatus>> firewallStatuses;
  /// A friendly name of the firewall.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// A flag indicating whether the firewall is protected against changes to the subnet associations. Use this setting to protect against accidentally modifying the subnet associations for a firewall that is in use. Defaults to `false`.
  late final pulumi.Output<bool?> subnetChangeProtection;
  /// Required when creating a VPC attached firewall. Set of configuration blocks describing the public subnets. Each subnet must belong to a different Availability Zone in the VPC. AWS Network Firewall creates a firewall endpoint in each subnet. See Subnet Mapping below for details.
  late final pulumi.Output<List<FirewallSubnetMapping>?> subnetMappings;
  /// Map of resource tags to associate with the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// . Required when creating a transit gateway-attached firewall. The unique identifier of the transit gateway to attach to this firewall. You can provide either a transit gateway from your account or one that has been shared with you through AWS Resource Access Manager
  late final pulumi.Output<String?> transitGatewayId;
  /// The AWS account ID that owns the transit gateway.
  late final pulumi.Output<String> transitGatewayOwnerAccountId;
  /// A string token used when updating a firewall.
  late final pulumi.Output<String> updateToken;
  /// Required when creating a VPC attached firewall. The unique identifier of the VPC where AWS Network Firewall should create the firewall.
  late final pulumi.Output<String?> vpcId;

  /// Creates a new [Firewall].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Firewall]. {@macro pulumi_networkfirewall_firewall_firewall_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Firewall(
    String name, {
    FirewallArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:networkfirewall/firewall:Firewall',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    availabilityZoneChangeProtection = registerOutput<bool?>('availabilityZoneChangeProtection');
    availabilityZoneMappings = registerOutput<List<FirewallAvailabilityZoneMapping>>('availabilityZoneMappings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FirewallAvailabilityZoneMapping>(guardedValue, (value) => FirewallAvailabilityZoneMapping.fromMap((value as Map).cast<String, dynamic>())); });
    deleteProtection = registerOutput<bool?>('deleteProtection');
    description = registerOutput<String?>('description');
    enabledAnalysisTypes = registerOutput<List<String>?>('enabledAnalysisTypes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    encryptionConfiguration = registerOutput<FirewallEncryptionConfiguration?>('encryptionConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FirewallEncryptionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    firewallPolicyArn = registerOutput<String>('firewallPolicyArn');
    firewallPolicyChangeProtection = registerOutput<bool?>('firewallPolicyChangeProtection');
    firewallStatuses = registerOutput<List<FirewallFirewallStatus>>('firewallStatuses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FirewallFirewallStatus>(guardedValue, (value) => FirewallFirewallStatus.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    subnetChangeProtection = registerOutput<bool?>('subnetChangeProtection');
    subnetMappings = registerOutput<List<FirewallSubnetMapping>?>('subnetMappings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FirewallSubnetMapping>(guardedValue, (value) => FirewallSubnetMapping.fromMap((value as Map).cast<String, dynamic>())); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    transitGatewayId = registerOutput<String?>('transitGatewayId');
    transitGatewayOwnerAccountId = registerOutput<String>('transitGatewayOwnerAccountId');
    updateToken = registerOutput<String>('updateToken');
    vpcId = registerOutput<String?>('vpcId');
  }

  /// Gets an existing [Firewall] resource's state with the given [name] and [id].
  static Firewall get(
    String name,
    pulumi.Input<String> id, {
    FirewallState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Firewall._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Firewall._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:networkfirewall/firewall:Firewall',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    availabilityZoneChangeProtection = registerOutput<bool?>('availabilityZoneChangeProtection');
    availabilityZoneMappings = registerOutput<List<FirewallAvailabilityZoneMapping>>('availabilityZoneMappings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FirewallAvailabilityZoneMapping>(guardedValue, (value) => FirewallAvailabilityZoneMapping.fromMap((value as Map).cast<String, dynamic>())); });
    deleteProtection = registerOutput<bool?>('deleteProtection');
    description = registerOutput<String?>('description');
    enabledAnalysisTypes = registerOutput<List<String>?>('enabledAnalysisTypes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    encryptionConfiguration = registerOutput<FirewallEncryptionConfiguration?>('encryptionConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FirewallEncryptionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    firewallPolicyArn = registerOutput<String>('firewallPolicyArn');
    firewallPolicyChangeProtection = registerOutput<bool?>('firewallPolicyChangeProtection');
    firewallStatuses = registerOutput<List<FirewallFirewallStatus>>('firewallStatuses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FirewallFirewallStatus>(guardedValue, (value) => FirewallFirewallStatus.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    subnetChangeProtection = registerOutput<bool?>('subnetChangeProtection');
    subnetMappings = registerOutput<List<FirewallSubnetMapping>?>('subnetMappings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FirewallSubnetMapping>(guardedValue, (value) => FirewallSubnetMapping.fromMap((value as Map).cast<String, dynamic>())); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    transitGatewayId = registerOutput<String?>('transitGatewayId');
    transitGatewayOwnerAccountId = registerOutput<String>('transitGatewayOwnerAccountId');
    updateToken = registerOutput<String>('updateToken');
    vpcId = registerOutput<String?>('vpcId');
  }

  /// Creates a typed reference to an existing [Firewall] resource.
  Firewall.reference(String urn)
    : super(
        'aws:networkfirewall/firewall:Firewall',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    availabilityZoneChangeProtection = registerOutput<bool?>('availabilityZoneChangeProtection');
    availabilityZoneMappings = registerOutput<List<FirewallAvailabilityZoneMapping>>('availabilityZoneMappings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FirewallAvailabilityZoneMapping>(guardedValue, (value) => FirewallAvailabilityZoneMapping.fromMap((value as Map).cast<String, dynamic>())); });
    deleteProtection = registerOutput<bool?>('deleteProtection');
    description = registerOutput<String?>('description');
    enabledAnalysisTypes = registerOutput<List<String>?>('enabledAnalysisTypes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    encryptionConfiguration = registerOutput<FirewallEncryptionConfiguration?>('encryptionConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FirewallEncryptionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    firewallPolicyArn = registerOutput<String>('firewallPolicyArn');
    firewallPolicyChangeProtection = registerOutput<bool?>('firewallPolicyChangeProtection');
    firewallStatuses = registerOutput<List<FirewallFirewallStatus>>('firewallStatuses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FirewallFirewallStatus>(guardedValue, (value) => FirewallFirewallStatus.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    subnetChangeProtection = registerOutput<bool?>('subnetChangeProtection');
    subnetMappings = registerOutput<List<FirewallSubnetMapping>?>('subnetMappings', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FirewallSubnetMapping>(guardedValue, (value) => FirewallSubnetMapping.fromMap((value as Map).cast<String, dynamic>())); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    transitGatewayId = registerOutput<String?>('transitGatewayId');
    transitGatewayOwnerAccountId = registerOutput<String>('transitGatewayOwnerAccountId');
    updateToken = registerOutput<String>('updateToken');
    vpcId = registerOutput<String?>('vpcId');
  }
}
