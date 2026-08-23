import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ami_args.dart';
import 'get_ami_ids_args.dart';
import 'get_ami_ids_result.dart';
import 'get_ami_result.dart';
import 'get_capacity_block_offering_args.dart';
import 'get_capacity_block_offering_result.dart';
import 'get_capacity_block_reservation_args.dart';
import 'get_capacity_block_reservation_result.dart';
import 'get_coip_pool_args.dart';
import 'get_coip_pool_result.dart';
import 'get_coip_pools_args.dart';
import 'get_coip_pools_result.dart';
import 'get_customer_gateway_args.dart';
import 'get_customer_gateway_result.dart';
import 'get_dedicated_host_args.dart';
import 'get_dedicated_host_result.dart';
import 'get_eips_args.dart';
import 'get_eips_result.dart';
import 'get_elastic_ip_args.dart';
import 'get_elastic_ip_result.dart';
import 'get_hosts_args.dart';
import 'get_hosts_result.dart';
import 'get_instance_args.dart';
import 'get_instance_result.dart';
import 'get_instance_type_args.dart';
import 'get_instance_type_offering_args.dart';
import 'get_instance_type_offering_result.dart';
import 'get_instance_type_offerings_args.dart';
import 'get_instance_type_offerings_result.dart';
import 'get_instance_type_result.dart';
import 'get_instance_types_args.dart';
import 'get_instance_types_result.dart';
import 'get_instances_args.dart';
import 'get_instances_result.dart';
import 'get_internet_gateway_args.dart';
import 'get_internet_gateway_result.dart';
import 'get_ipam_preview_next_cidr_args.dart';
import 'get_ipam_preview_next_cidr_result.dart';
import 'get_key_pair_args.dart';
import 'get_key_pair_result.dart';
import 'get_launch_configuration_args.dart';
import 'get_launch_configuration_result.dart';
import 'get_launch_template_args.dart';
import 'get_launch_template_result.dart';
import 'get_local_gateway_args.dart';
import 'get_local_gateway_result.dart';
import 'get_local_gateway_route_table_args.dart';
import 'get_local_gateway_route_table_result.dart';
import 'get_local_gateway_route_tables_args.dart';
import 'get_local_gateway_route_tables_result.dart';
import 'get_local_gateway_virtual_interface_args.dart';
import 'get_local_gateway_virtual_interface_group_args.dart';
import 'get_local_gateway_virtual_interface_group_result.dart';
import 'get_local_gateway_virtual_interface_groups_args.dart';
import 'get_local_gateway_virtual_interface_groups_result.dart';
import 'get_local_gateway_virtual_interface_result.dart';
import 'get_local_gateways_args.dart';
import 'get_local_gateways_result.dart';
import 'get_managed_prefix_list_args.dart';
import 'get_managed_prefix_list_result.dart';
import 'get_managed_prefix_lists_args.dart';
import 'get_managed_prefix_lists_result.dart';
import 'get_nat_gateway_args.dart';
import 'get_nat_gateway_result.dart';
import 'get_nat_gateways_args.dart';
import 'get_nat_gateways_result.dart';
import 'get_network_acls_args.dart';
import 'get_network_acls_result.dart';
import 'get_network_insights_analysis_args.dart';
import 'get_network_insights_analysis_result.dart';
import 'get_network_insights_path_args.dart';
import 'get_network_insights_path_result.dart';
import 'get_network_interface_args.dart';
import 'get_network_interface_result.dart';
import 'get_network_interfaces_args.dart';
import 'get_network_interfaces_result.dart';
import 'get_prefix_list_args.dart';
import 'get_prefix_list_result.dart';
import 'get_public_ipv4_pool_args.dart';
import 'get_public_ipv4_pool_result.dart';
import 'get_public_ipv4_pools_args.dart';
import 'get_public_ipv4_pools_result.dart';
import 'get_route_args.dart';
import 'get_route_result.dart';
import 'get_route_table_args.dart';
import 'get_route_table_result.dart';
import 'get_route_tables_args.dart';
import 'get_route_tables_result.dart';
import 'get_security_group_args.dart';
import 'get_security_group_result.dart';
import 'get_security_groups_args.dart';
import 'get_security_groups_result.dart';
import 'get_serial_console_access_args.dart';
import 'get_serial_console_access_result.dart';
import 'get_service_link_virtual_interface_args.dart';
import 'get_service_link_virtual_interface_result.dart';
import 'get_service_link_virtual_interfaces_args.dart';
import 'get_service_link_virtual_interfaces_result.dart';
import 'get_spot_datafeed_subscription_args.dart';
import 'get_spot_datafeed_subscription_result.dart';
import 'get_spot_price_args.dart';
import 'get_spot_price_result.dart';
import 'get_subnet_args.dart';
import 'get_subnet_result.dart';
import 'get_subnets_args.dart';
import 'get_subnets_result.dart';
import 'get_transit_gateway_route_tables_args.dart';
import 'get_transit_gateway_route_tables_result.dart';
import 'get_vpc_args.dart';
import 'get_vpc_dhcp_options_args.dart';
import 'get_vpc_dhcp_options_result.dart';
import 'get_vpc_endpoint_args.dart';
import 'get_vpc_endpoint_result.dart';
import 'get_vpc_endpoint_service_args.dart';
import 'get_vpc_endpoint_service_result.dart';
import 'get_vpc_ipam_args.dart';
import 'get_vpc_ipam_pool_args.dart';
import 'get_vpc_ipam_pool_cidrs_args.dart';
import 'get_vpc_ipam_pool_cidrs_result.dart';
import 'get_vpc_ipam_pool_result.dart';
import 'get_vpc_ipam_pools_args.dart';
import 'get_vpc_ipam_pools_result.dart';
import 'get_vpc_ipam_result.dart';
import 'get_vpc_ipams_args.dart';
import 'get_vpc_ipams_result.dart';
import 'get_vpc_peering_connection_args.dart';
import 'get_vpc_peering_connection_result.dart';
import 'get_vpc_peering_connections_args.dart';
import 'get_vpc_peering_connections_result.dart';
import 'get_vpc_result.dart';
import 'get_vpcs_args.dart';
import 'get_vpcs_result.dart';
import 'get_vpn_connection_args.dart';
import 'get_vpn_connection_result.dart';
import 'get_vpn_gateway_args.dart';
import 'get_vpn_gateway_result.dart';

/// Use this data source to get the ID of a registered AMI for use in other
/// resources.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ec2.getAmi({
///     executableUsers: ["self"],
///     mostRecent: true,
///     nameRegex: "^myami-[0-9]{3}",
///     owners: ["self"],
///     filters: [
///         {
///             name: "name",
///             values: ["myami-*"],
///         },
///         {
///             name: "root-device-type",
///             values: ["ebs"],
///         },
///         {
///             name: "virtualization-type",
///             values: ["hvm"],
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.get_ami(executable_users=["self"],
///     most_recent=True,
///     name_regex="^myami-[0-9]{3}",
///     owners=["self"],
///     filters=[
///         {
///             "name": "name",
///             "values": ["myami-*"],
///         },
///         {
///             "name": "root-device-type",
///             "values": ["ebs"],
///         },
///         {
///             "name": "virtualization-type",
///             "values": ["hvm"],
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Ec2.GetAmi.Invoke(new()
///     {
///         ExecutableUsers = new[]
///         {
///             "self",
///         },
///         MostRecent = true,
///         NameRegex = "^myami-[0-9]{3}",
///         Owners = new[]
///         {
///             "self",
///         },
///         Filters = new[]
///         {
///             new Aws.Ec2.Inputs.GetAmiFilterInputArgs
///             {
///                 Name = "name",
///                 Values = new[]
///                 {
///                     "myami-*",
///                 },
///             },
///             new Aws.Ec2.Inputs.GetAmiFilterInputArgs
///             {
///                 Name = "root-device-type",
///                 Values = new[]
///                 {
///                     "ebs",
///                 },
///             },
///             new Aws.Ec2.Inputs.GetAmiFilterInputArgs
///             {
///                 Name = "virtualization-type",
///                 Values = new[]
///                 {
///                     "hvm",
///                 },
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2.LookupAmi(ctx, &ec2.LookupAmiArgs{
/// 			ExecutableUsers: []string{
/// 				"self",
/// 			},
/// 			MostRecent: pulumi.BoolRef(true),
/// 			NameRegex:  pulumi.StringRef("^myami-[0-9]{3}"),
/// 			Owners: []string{
/// 				"self",
/// 			},
/// 			Filters: []ec2.GetAmiFilter{
/// 				{
/// 					Name: "name",
/// 					Values: []string{
/// 						"myami-*",
/// 					},
/// 				},
/// 				{
/// 					Name: "root-device-type",
/// 					Values: []string{
/// 						"ebs",
/// 					},
/// 				},
/// 				{
/// 					Name: "virtualization-type",
/// 					Values: []string{
/// 						"hvm",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
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
/// data "aws_ec2_getami" "example" {
///   executable_users = ["self"]
///   most_recent      = true
///   name_regex       = "^myami-[0-9]{3}"
///   owners           = ["self"]
///   filters {
///     name   = "name"
///     values = ["myami-*"]
///   }
///   filters {
///     name   = "root-device-type"
///     values = ["ebs"]
///   }
///   filters {
///     name   = "virtualization-type"
///     values = ["hvm"]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetAmiArgs;
/// import com.pulumi.aws.ec2.inputs.GetAmiFilterArgs;
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
///         final var example = Ec2Functions.getAmi(GetAmiArgs.builder()
///             .executableUsers("self")
///             .mostRecent(true)
///             .nameRegex("^myami-[0-9]{3}")
///             .owners("self")
///             .filters(
///                 GetAmiFilterArgs.builder()
///                     .name("name")
///                     .values("myami-*")
///                     .build(),
///                 GetAmiFilterArgs.builder()
///                     .name("root-device-type")
///                     .values("ebs")
///                     .build(),
///                 GetAmiFilterArgs.builder()
///                     .name("virtualization-type")
///                     .values("hvm")
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:ec2:getAmi
///       arguments:
///         executableUsers:
///           - self
///         mostRecent: true
///         nameRegex: ^myami-[0-9]{3}
///         owners:
///           - self
///         filters:
///           - name: name
///             values:
///               - myami-*
///           - name: root-device-type
///             values:
///               - ebs
///           - name: virtualization-type
///             values:
///               - hvm
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ec2_get_ami_get_ami_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAmiResult> getAmi(
  GetAmiArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getAmi:getAmi',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAmiResult.fromMap(result);
}

/// Use this data source to get a list of AMI IDs matching the specified criteria.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const ubuntu = aws.ec2.getAmiIds({
///     owners: ["099720109477"],
///     filters: [{
///         name: "name",
///         values: ["ubuntu/images/ubuntu-*-*-amd64-server-*"],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// ubuntu = aws.ec2.get_ami_ids(owners=["099720109477"],
///     filters=[{
///         "name": "name",
///         "values": ["ubuntu/images/ubuntu-*-*-amd64-server-*"],
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ubuntu = Aws.Ec2.GetAmiIds.Invoke(new()
///     {
///         Owners = new[]
///         {
///             "099720109477",
///         },
///         Filters = new[]
///         {
///             new Aws.Ec2.Inputs.GetAmiIdsFilterInputArgs
///             {
///                 Name = "name",
///                 Values = new[]
///                 {
///                     "ubuntu/images/ubuntu-*-*-amd64-server-*",
///                 },
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2.GetAmiIds(ctx, &ec2.GetAmiIdsArgs{
/// 			Owners: []string{
/// 				"099720109477",
/// 			},
/// 			Filters: []ec2.GetAmiIdsFilter{
/// 				{
/// 					Name: "name",
/// 					Values: []string{
/// 						"ubuntu/images/ubuntu-*-*-amd64-server-*",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
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
/// data "aws_ec2_getamiids" "ubuntu" {
///   owners = ["099720109477"]
///   filters {
///     name   = "name"
///     values = ["ubuntu/images/ubuntu-*-*-amd64-server-*"]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetAmiIdsArgs;
/// import com.pulumi.aws.ec2.inputs.GetAmiIdsFilterArgs;
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
///         final var ubuntu = Ec2Functions.getAmiIds(GetAmiIdsArgs.builder()
///             .owners("099720109477")
///             .filters(GetAmiIdsFilterArgs.builder()
///                 .name("name")
///                 .values("ubuntu/images/ubuntu-*-*-amd64-server-*")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ubuntu:
///     fn::invoke:
///       function: aws:ec2:getAmiIds
///       arguments:
///         owners:
///           - '099720109477'
///         filters:
///           - name: name
///             values:
///               - ubuntu/images/ubuntu-*-*-amd64-server-*
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ec2_get_ami_ids_get_ami_ids_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAmiIdsResult> getAmiIds(
  GetAmiIdsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getAmiIds:getAmiIds',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAmiIdsResult.fromMap(result);
}

/// Information about a single EC2 Capacity Block Offering.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ec2.getCapacityBlockOffering({
///     capacityDurationHours: 24,
///     endDateRange: "2024-05-30T15:04:05Z",
///     instanceCount: 1,
///     instanceType: "p4d.24xlarge",
///     startDateRange: "2024-04-28T15:04:05Z",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.get_capacity_block_offering(capacity_duration_hours=24,
///     end_date_range="2024-05-30T15:04:05Z",
///     instance_count=1,
///     instance_type="p4d.24xlarge",
///     start_date_range="2024-04-28T15:04:05Z")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Ec2.GetCapacityBlockOffering.Invoke(new()
///     {
///         CapacityDurationHours = 24,
///         EndDateRange = "2024-05-30T15:04:05Z",
///         InstanceCount = 1,
///         InstanceType = "p4d.24xlarge",
///         StartDateRange = "2024-04-28T15:04:05Z",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2.GetCapacityBlockOffering(ctx, &ec2.GetCapacityBlockOfferingArgs{
/// 			CapacityDurationHours: 24,
/// 			EndDateRange:          pulumi.StringRef("2024-05-30T15:04:05Z"),
/// 			InstanceCount:         1,
/// 			InstanceType:          "p4d.24xlarge",
/// 			StartDateRange:        pulumi.StringRef("2024-04-28T15:04:05Z"),
/// 		}, nil)
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
/// data "aws_ec2_getcapacityblockoffering" "example" {
///   capacity_duration_hours = 24
///   end_date_range          = "2024-05-30T15:04:05Z"
///   instance_count          = 1
///   instance_type           = "p4d.24xlarge"
///   start_date_range        = "2024-04-28T15:04:05Z"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetCapacityBlockOfferingArgs;
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
///         final var example = Ec2Functions.getCapacityBlockOffering(GetCapacityBlockOfferingArgs.builder()
///             .capacityDurationHours(24)
///             .endDateRange("2024-05-30T15:04:05Z")
///             .instanceCount(1)
///             .instanceType("p4d.24xlarge")
///             .startDateRange("2024-04-28T15:04:05Z")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:ec2:getCapacityBlockOffering
///       arguments:
///         capacityDurationHours: 24
///         endDateRange: 2024-05-30T15:04:05Z
///         instanceCount: 1
///         instanceType: p4d.24xlarge
///         startDateRange: 2024-04-28T15:04:05Z
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ec2_get_capacity_block_offering_get_capacity_block_offering_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCapacityBlockOfferingResult> getCapacityBlockOffering(
  GetCapacityBlockOfferingArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getCapacityBlockOffering:getCapacityBlockOffering',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCapacityBlockOfferingResult.fromMap(result);
}

/// Information about an existing EC2 Capacity Block reservation.
///
/// This data source returns only Capacity Reservations whose `reservationType` is `capacity-block`. Use the `aws.ec2.CapacityReservation` data source to look up On-Demand Capacity Reservations (ODCR).
///
/// At least one of `id` or `filter` must be specified. Filter combinations that match multiple Capacity Block reservations will return an error.
///
/// ## Example Usage
///
/// ### Lookup by ID
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ec2.getCapacityBlockReservation({
///     id: "cr-0123456789abcdef0",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.get_capacity_block_reservation(id="cr-0123456789abcdef0")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Ec2.GetCapacityBlockReservation.Invoke(new()
///     {
///         Id = "cr-0123456789abcdef0",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2.LookupCapacityBlockReservation(ctx, &ec2.LookupCapacityBlockReservationArgs{
/// 			Id: pulumi.StringRef("cr-0123456789abcdef0"),
/// 		}, nil)
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
/// data "aws_ec2_getcapacityblockreservation" "example" {
///   id = "cr-0123456789abcdef0"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetCapacityBlockReservationArgs;
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
///         final var example = Ec2Functions.getCapacityBlockReservation(GetCapacityBlockReservationArgs.builder()
///             .id("cr-0123456789abcdef0")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:ec2:getCapacityBlockReservation
///       arguments:
///         id: cr-0123456789abcdef0
/// ```
///
///
/// ### Lookup by filter
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ec2.getCapacityBlockReservation({
///     filters: [
///         {
///             name: "instance-type",
///             values: ["p4d.24xlarge"],
///         },
///         {
///             name: "state",
///             values: ["active"],
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.get_capacity_block_reservation(filters=[
///     {
///         "name": "instance-type",
///         "values": ["p4d.24xlarge"],
///     },
///     {
///         "name": "state",
///         "values": ["active"],
///     },
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
///     var example = Aws.Ec2.GetCapacityBlockReservation.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new Aws.Ec2.Inputs.GetCapacityBlockReservationFilterInputArgs
///             {
///                 Name = "instance-type",
///                 Values = new[]
///                 {
///                     "p4d.24xlarge",
///                 },
///             },
///             new Aws.Ec2.Inputs.GetCapacityBlockReservationFilterInputArgs
///             {
///                 Name = "state",
///                 Values = new[]
///                 {
///                     "active",
///                 },
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2.LookupCapacityBlockReservation(ctx, &ec2.LookupCapacityBlockReservationArgs{
/// 			Filters: []ec2.GetCapacityBlockReservationFilter{
/// 				{
/// 					Name: "instance-type",
/// 					Values: []string{
/// 						"p4d.24xlarge",
/// 					},
/// 				},
/// 				{
/// 					Name: "state",
/// 					Values: []string{
/// 						"active",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
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
/// data "aws_ec2_getcapacityblockreservation" "example" {
///   filters {
///     name   = "instance-type"
///     values = ["p4d.24xlarge"]
///   }
///   filters {
///     name   = "state"
///     values = ["active"]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetCapacityBlockReservationArgs;
/// import com.pulumi.aws.ec2.inputs.GetCapacityBlockReservationFilterArgs;
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
///         final var example = Ec2Functions.getCapacityBlockReservation(GetCapacityBlockReservationArgs.builder()
///             .filters(
///                 GetCapacityBlockReservationFilterArgs.builder()
///                     .name("instance-type")
///                     .values("p4d.24xlarge")
///                     .build(),
///                 GetCapacityBlockReservationFilterArgs.builder()
///                     .name("state")
///                     .values("active")
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:ec2:getCapacityBlockReservation
///       arguments:
///         filters:
///           - name: instance-type
///             values:
///               - p4d.24xlarge
///           - name: state
///             values:
///               - active
/// ```
///
///
/// ### Lookup by tag
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ec2.getCapacityBlockReservation({
///     filters: [{
///         name: "tag:Project",
///         values: ["ml-training"],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.get_capacity_block_reservation(filters=[{
///     "name": "tag:Project",
///     "values": ["ml-training"],
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
///     var example = Aws.Ec2.GetCapacityBlockReservation.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new Aws.Ec2.Inputs.GetCapacityBlockReservationFilterInputArgs
///             {
///                 Name = "tag:Project",
///                 Values = new[]
///                 {
///                     "ml-training",
///                 },
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2.LookupCapacityBlockReservation(ctx, &ec2.LookupCapacityBlockReservationArgs{
/// 			Filters: []ec2.GetCapacityBlockReservationFilter{
/// 				{
/// 					Name: "tag:Project",
/// 					Values: []string{
/// 						"ml-training",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
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
/// data "aws_ec2_getcapacityblockreservation" "example" {
///   filters {
///     name   = "tag:Project"
///     values = ["ml-training"]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetCapacityBlockReservationArgs;
/// import com.pulumi.aws.ec2.inputs.GetCapacityBlockReservationFilterArgs;
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
///         final var example = Ec2Functions.getCapacityBlockReservation(GetCapacityBlockReservationArgs.builder()
///             .filters(GetCapacityBlockReservationFilterArgs.builder()
///                 .name("tag:Project")
///                 .values("ml-training")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:ec2:getCapacityBlockReservation
///       arguments:
///         filters:
///           - name: tag:Project
///             values:
///               - ml-training
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ec2_get_capacity_block_reservation_get_capacity_block_reservation_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCapacityBlockReservationResult> getCapacityBlockReservation(
  GetCapacityBlockReservationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getCapacityBlockReservation:getCapacityBlockReservation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCapacityBlockReservationResult.fromMap(result);
}

/// Provides details about a specific EC2 Customer-Owned IP Pool.
///
/// This data source can prove useful when a module accepts a coip pool id as
/// an input variable and needs to, for example, determine the CIDR block of that
/// COIP Pool.
///
/// ## Example Usage
///
/// The following example returns a specific coip pool ID
///
///
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_ec2_getcoippool" "selected" {
///   id = var.coipPoolId
/// }
///
/// variable "coipPoolId" {
/// }
/// ```
/// ```yaml
/// configuration:
///   coipPoolId:
///     type: object
/// variables:
///   selected:
///     fn::invoke:
///       function: aws:ec2:getCoipPool
///       arguments:
///         id: ${coipPoolId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ec2_get_coip_pool_get_coip_pool_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCoipPoolResult> getCoipPool(
  GetCoipPoolArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getCoipPool:getCoipPool',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCoipPoolResult.fromMap(result);
}

/// Provides information for multiple EC2 Customer-Owned IP Pools, such as their identifiers.
///
/// ## Example Usage
///
/// The following shows outputting all COIP Pool Ids.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// export = async () => {
///     const foo = await aws.ec2.getCoipPools({});
///     return {
///         foo: foo.ids,
///     };
/// }
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// foo = aws.ec2.get_coip_pools()
/// pulumi.export("foo", foo.ids)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = Aws.Ec2.GetCoipPools.Invoke();
///
///     return new Dictionary<string, object?>
///     {
///         ["foo"] = foo.Apply(getCoipPoolsResult => getCoipPoolsResult.Ids),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		foo, err := ec2.GetCoipPools(ctx, &ec2.GetCoipPoolsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("foo", pulumi.Any(foo.Ids))
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
/// data "aws_ec2_getcoippools" "foo" {
/// }
///
/// output "foo" {
///   value = data.aws_ec2_getcoippools.foo.ids
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetCoipPoolsArgs;
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
///         final var foo = Ec2Functions.getCoipPools(GetCoipPoolsArgs.builder()
///             .build());
///
///         ctx.export("foo", foo.ids());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   foo:
///     fn::invoke:
///       function: aws:ec2:getCoipPools
///       arguments: {}
/// outputs:
///   foo: ${foo.ids}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ec2_get_coip_pools_get_coip_pools_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCoipPoolsResult> getCoipPools(
  GetCoipPoolsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getCoipPools:getCoipPools',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCoipPoolsResult.fromMap(result);
}

/// Get an existing AWS Customer Gateway.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const foo = aws.ec2.getCustomerGateway({
///     filters: [{
///         name: "tag:Name",
///         values: ["foo-prod"],
///     }],
/// });
/// const main = new aws.ec2.VpnGateway("main", {
///     vpcId: mainAwsVpc.id,
///     amazonSideAsn: "7224",
/// });
/// const transit = new aws.ec2.VpnConnection("transit", {
///     vpnGatewayId: main.id,
///     customerGatewayId: foo.then(foo => foo.id),
///     type: foo.then(foo => foo.type),
///     staticRoutesOnly: false,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// foo = aws.ec2.get_customer_gateway(filters=[{
///     "name": "tag:Name",
///     "values": ["foo-prod"],
/// }])
/// main = aws.ec2.VpnGateway("main",
///     vpc_id=main_aws_vpc["id"],
///     amazon_side_asn="7224")
/// transit = aws.ec2.VpnConnection("transit",
///     vpn_gateway_id=main.id,
///     customer_gateway_id=foo.id,
///     type=foo.type,
///     static_routes_only=False)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = Aws.Ec2.GetCustomerGateway.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new Aws.Ec2.Inputs.GetCustomerGatewayFilterInputArgs
///             {
///                 Name = "tag:Name",
///                 Values = new[]
///                 {
///                     "foo-prod",
///                 },
///             },
///         },
///     });
///
///     var main = new Aws.Ec2.VpnGateway("main", new()
///     {
///         VpcId = mainAwsVpc.Id,
///         AmazonSideAsn = "7224",
///     });
///
///     var transit = new Aws.Ec2.VpnConnection("transit", new()
///     {
///         VpnGatewayId = main.Id,
///         CustomerGatewayId = foo.Apply(getCustomerGatewayResult => getCustomerGatewayResult.Id),
///         Type = foo.Apply(getCustomerGatewayResult => getCustomerGatewayResult.Type),
///         StaticRoutesOnly = false,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		foo, err := ec2.LookupCustomerGateway(ctx, &ec2.LookupCustomerGatewayArgs{
/// 			Filters: []ec2.GetCustomerGatewayFilter{
/// 				{
/// 					Name: "tag:Name",
/// 					Values: []string{
/// 						"foo-prod",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		main, err := ec2.NewVpnGateway(ctx, "main", &ec2.VpnGatewayArgs{
/// 			VpcId:         pulumi.Any(mainAwsVpc.Id),
/// 			AmazonSideAsn: pulumi.String("7224"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ec2.NewVpnConnection(ctx, "transit", &ec2.VpnConnectionArgs{
/// 			VpnGatewayId:      main.ID().ToIDOutput().ToStringOutput(),
/// 			CustomerGatewayId: pulumi.String(foo.Id),
/// 			Type:              pulumi.String(foo.Type),
/// 			StaticRoutesOnly:  pulumi.Bool(false),
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
/// data "aws_ec2_getcustomergateway" "foo" {
///   filters {
///     name   = "tag:Name"
///     values = ["foo-prod"]
///   }
/// }
///
/// resource "aws_ec2_vpngateway" "main" {
///   vpc_id          = mainAwsVpc.id
///   amazon_side_asn = 7224
/// }
/// resource "aws_ec2_vpnconnection" "transit" {
///   vpn_gateway_id      = aws_ec2_vpngateway.main.id
///   customer_gateway_id = data.aws_ec2_getcustomergateway.foo.id
///   type                = data.aws_ec2_getcustomergateway.foo.type
///   static_routes_only  = false
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetCustomerGatewayArgs;
/// import com.pulumi.aws.ec2.inputs.GetCustomerGatewayFilterArgs;
/// import com.pulumi.aws.ec2.VpnGateway;
/// import com.pulumi.aws.ec2.VpnGatewayArgs;
/// import com.pulumi.aws.ec2.VpnConnection;
/// import com.pulumi.aws.ec2.VpnConnectionArgs;
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
///         final var foo = Ec2Functions.getCustomerGateway(GetCustomerGatewayArgs.builder()
///             .filters(GetCustomerGatewayFilterArgs.builder()
///                 .name("tag:Name")
///                 .values("foo-prod")
///                 .build())
///             .build());
///
///         var main = new VpnGateway("main", VpnGatewayArgs.builder()
///             .vpcId(mainAwsVpc.id())
///             .amazonSideAsn("7224")
///             .build());
///
///         var transit = new VpnConnection("transit", VpnConnectionArgs.builder()
///             .vpnGatewayId(main.id())
///             .customerGatewayId(foo.id())
///             .type(foo.type())
///             .staticRoutesOnly(false)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   main:
///     type: aws:ec2:VpnGateway
///     properties:
///       vpcId: ${mainAwsVpc.id}
///       amazonSideAsn: 7224
///   transit:
///     type: aws:ec2:VpnConnection
///     properties:
///       vpnGatewayId: ${main.id}
///       customerGatewayId: ${foo.id}
///       type: ${foo.type}
///       staticRoutesOnly: false
/// variables:
///   foo:
///     fn::invoke:
///       function: aws:ec2:getCustomerGateway
///       arguments:
///         filters:
///           - name: tag:Name
///             values:
///               - foo-prod
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ec2_get_customer_gateway_get_customer_gateway_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCustomerGatewayResult> getCustomerGateway(
  GetCustomerGatewayArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getCustomerGateway:getCustomerGateway',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCustomerGatewayResult.fromMap(result);
}

/// Use this data source to get information about an EC2 Dedicated Host.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const testDedicatedHost = new aws.ec2.DedicatedHost("test", {
///     instanceType: "c5.18xlarge",
///     availabilityZone: "us-west-2a",
/// });
/// const test = aws.ec2.getDedicatedHostOutput({
///     hostId: testDedicatedHost.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test_dedicated_host = aws.ec2.DedicatedHost("test",
///     instance_type="c5.18xlarge",
///     availability_zone="us-west-2a")
/// test = aws.ec2.get_dedicated_host_output(host_id=test_dedicated_host.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var testDedicatedHost = new Aws.Ec2.DedicatedHost("test", new()
///     {
///         InstanceType = "c5.18xlarge",
///         AvailabilityZone = "us-west-2a",
///     });
///
///     var test = Aws.Ec2.GetDedicatedHost.Invoke(new()
///     {
///         HostId = testDedicatedHost.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		testDedicatedHost, err := ec2.NewDedicatedHost(ctx, "test", &ec2.DedicatedHostArgs{
/// 			InstanceType:     pulumi.String("c5.18xlarge"),
/// 			AvailabilityZone: pulumi.String("us-west-2a"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_ = ec2.LookupDedicatedHostOutput(ctx, ec2.GetDedicatedHostOutputArgs{
/// 			HostId: testDedicatedHost.ID().ToIDOutput().ToStringOutput(),
/// 		}, nil)
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
/// data "aws_ec2_getdedicatedhost" "test" {
///   host_id = aws_ec2_dedicatedhost.test.id
/// }
///
/// resource "aws_ec2_dedicatedhost" "test" {
///   instance_type     = "c5.18xlarge"
///   availability_zone = "us-west-2a"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.DedicatedHost;
/// import com.pulumi.aws.ec2.DedicatedHostArgs;
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetDedicatedHostArgs;
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
///         var testDedicatedHost = new DedicatedHost("testDedicatedHost", DedicatedHostArgs.builder()
///             .instanceType("c5.18xlarge")
///             .availabilityZone("us-west-2a")
///             .build());
///
///         final var test = Ec2Functions.getDedicatedHost(GetDedicatedHostArgs.builder()
///             .hostId(testDedicatedHost.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   testDedicatedHost:
///     type: aws:ec2:DedicatedHost
///     name: test
///     properties:
///       instanceType: c5.18xlarge
///       availabilityZone: us-west-2a
/// variables:
///   test:
///     fn::invoke:
///       function: aws:ec2:getDedicatedHost
///       arguments:
///         hostId: ${testDedicatedHost.id}
/// ```
///
///
/// ### Filter Example
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.ec2.getDedicatedHost({
///     filters: [{
///         name: "instance-type",
///         values: ["c5.18xlarge"],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.ec2.get_dedicated_host(filters=[{
///     "name": "instance-type",
///     "values": ["c5.18xlarge"],
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
///     var test = Aws.Ec2.GetDedicatedHost.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new Aws.Ec2.Inputs.GetDedicatedHostFilterInputArgs
///             {
///                 Name = "instance-type",
///                 Values = new[]
///                 {
///                     "c5.18xlarge",
///                 },
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2.LookupDedicatedHost(ctx, &ec2.LookupDedicatedHostArgs{
/// 			Filters: []ec2.GetDedicatedHostFilter{
/// 				{
/// 					Name: "instance-type",
/// 					Values: []string{
/// 						"c5.18xlarge",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
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
/// data "aws_ec2_getdedicatedhost" "test" {
///   filters {
///     name   = "instance-type"
///     values = ["c5.18xlarge"]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetDedicatedHostArgs;
/// import com.pulumi.aws.ec2.inputs.GetDedicatedHostFilterArgs;
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
///         final var test = Ec2Functions.getDedicatedHost(GetDedicatedHostArgs.builder()
///             .filters(GetDedicatedHostFilterArgs.builder()
///                 .name("instance-type")
///                 .values("c5.18xlarge")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   test:
///     fn::invoke:
///       function: aws:ec2:getDedicatedHost
///       arguments:
///         filters:
///           - name: instance-type
///             values:
///               - c5.18xlarge
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ec2_get_dedicated_host_get_dedicated_host_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDedicatedHostResult> getDedicatedHost(
  GetDedicatedHostArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getDedicatedHost:getDedicatedHost',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDedicatedHostResult.fromMap(result);
}

/// Provides a list of Elastic IPs in a region.
///
/// ## Example Usage
///
/// The following shows outputting all Elastic IPs with the a specific tag value.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ec2.getEips({
///     tags: {
///         Env: "dev",
///     },
/// });
/// export const allocationIds = example.then(example => example.allocationIds);
/// export const publicIps = example.then(example => example.publicIps);
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.get_eips(tags={
///     "Env": "dev",
/// })
/// pulumi.export("allocationIds", example.allocation_ids)
/// pulumi.export("publicIps", example.public_ips)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Ec2.GetEips.Invoke(new()
///     {
///         Tags =
///         {
///             { "Env", "dev" },
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["allocationIds"] = example.Apply(getEipsResult => getEipsResult.AllocationIds),
///         ["publicIps"] = example.Apply(getEipsResult => getEipsResult.PublicIps),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := ec2.GetEips(ctx, &ec2.GetEipsArgs{
/// 			Tags: map[string]string{
/// 				"Env": "dev",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("allocationIds", example.AllocationIds)
/// 		ctx.Export("publicIps", example.PublicIps)
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
/// data "aws_ec2_geteips" "example" {
///   tags = {
///     "Env" = "dev"
///   }
/// }
///
/// # VPC EIPs.
/// output "allocationIds" {
///   value = data.aws_ec2_geteips.example.allocation_ids
/// }
/// # EC2-Classic EIPs.
/// output "publicIps" {
///   value = data.aws_ec2_geteips.example.public_ips
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetEipsArgs;
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
///         final var example = Ec2Functions.getEips(GetEipsArgs.builder()
///             .tags(Map.of("Env", "dev"))
///             .build());
///
///         ctx.export("allocationIds", example.allocationIds());
///         ctx.export("publicIps", example.publicIps());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:ec2:getEips
///       arguments:
///         tags:
///           Env: dev
/// outputs:
///   # VPC EIPs.
///   allocationIds: ${example.allocationIds}
///   # EC2-Classic EIPs.
///   publicIps: ${example.publicIps}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ec2_get_eips_get_eips_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEipsResult> getEips(
  GetEipsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getEips:getEips',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEipsResult.fromMap(result);
}

/// `aws.ec2.Eip` provides details about a specific Elastic IP.
///
/// ## Example Usage
///
/// ### Search By Allocation ID (VPC only)
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const byAllocationId = aws.ec2.getElasticIp({
///     id: "eipalloc-12345678",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// by_allocation_id = aws.ec2.get_elastic_ip(id="eipalloc-12345678")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var byAllocationId = Aws.Ec2.GetElasticIp.Invoke(new()
///     {
///         Id = "eipalloc-12345678",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2.GetElasticIp(ctx, &ec2.GetElasticIpArgs{
/// 			Id: pulumi.StringRef("eipalloc-12345678"),
/// 		}, nil)
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
/// data "aws_ec2_getelasticip" "byAllocationId" {
///   id = "eipalloc-12345678"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetElasticIpArgs;
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
///         final var byAllocationId = Ec2Functions.getElasticIp(GetElasticIpArgs.builder()
///             .id("eipalloc-12345678")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   byAllocationId:
///     fn::invoke:
///       function: aws:ec2:getElasticIp
///       arguments:
///         id: eipalloc-12345678
/// ```
///
///
/// ### Search By Filters (EC2-Classic or VPC)
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const byFilter = aws.ec2.getElasticIp({
///     filters: [{
///         name: "tag:Name",
///         values: ["exampleNameTagValue"],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// by_filter = aws.ec2.get_elastic_ip(filters=[{
///     "name": "tag:Name",
///     "values": ["exampleNameTagValue"],
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
///     var byFilter = Aws.Ec2.GetElasticIp.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new Aws.Ec2.Inputs.GetElasticIpFilterInputArgs
///             {
///                 Name = "tag:Name",
///                 Values = new[]
///                 {
///                     "exampleNameTagValue",
///                 },
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2.GetElasticIp(ctx, &ec2.GetElasticIpArgs{
/// 			Filters: []ec2.GetElasticIpFilter{
/// 				{
/// 					Name: "tag:Name",
/// 					Values: []string{
/// 						"exampleNameTagValue",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
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
/// data "aws_ec2_getelasticip" "byFilter" {
///   filters {
///     name   = "tag:Name"
///     values = ["exampleNameTagValue"]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetElasticIpArgs;
/// import com.pulumi.aws.ec2.inputs.GetElasticIpFilterArgs;
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
///         final var byFilter = Ec2Functions.getElasticIp(GetElasticIpArgs.builder()
///             .filters(GetElasticIpFilterArgs.builder()
///                 .name("tag:Name")
///                 .values("exampleNameTagValue")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   byFilter:
///     fn::invoke:
///       function: aws:ec2:getElasticIp
///       arguments:
///         filters:
///           - name: tag:Name
///             values:
///               - exampleNameTagValue
/// ```
///
///
/// ### Search By Public IP (EC2-Classic or VPC)
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const byPublicIp = aws.ec2.getElasticIp({
///     publicIp: "1.2.3.4",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// by_public_ip = aws.ec2.get_elastic_ip(public_ip="1.2.3.4")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var byPublicIp = Aws.Ec2.GetElasticIp.Invoke(new()
///     {
///         PublicIp = "1.2.3.4",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2.GetElasticIp(ctx, &ec2.GetElasticIpArgs{
/// 			PublicIp: pulumi.StringRef("1.2.3.4"),
/// 		}, nil)
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
/// data "aws_ec2_getelasticip" "byPublicIp" {
///   public_ip = "1.2.3.4"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetElasticIpArgs;
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
///         final var byPublicIp = Ec2Functions.getElasticIp(GetElasticIpArgs.builder()
///             .publicIp("1.2.3.4")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   byPublicIp:
///     fn::invoke:
///       function: aws:ec2:getElasticIp
///       arguments:
///         publicIp: 1.2.3.4
/// ```
///
///
/// ### Search By Tags (EC2-Classic or VPC)
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const byTags = aws.ec2.getElasticIp({
///     tags: {
///         Name: "exampleNameTagValue",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// by_tags = aws.ec2.get_elastic_ip(tags={
///     "Name": "exampleNameTagValue",
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
///     var byTags = Aws.Ec2.GetElasticIp.Invoke(new()
///     {
///         Tags =
///         {
///             { "Name", "exampleNameTagValue" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2.GetElasticIp(ctx, &ec2.GetElasticIpArgs{
/// 			Tags: map[string]string{
/// 				"Name": "exampleNameTagValue",
/// 			},
/// 		}, nil)
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
/// data "aws_ec2_getelasticip" "byTags" {
///   tags = {
///     "Name" = "exampleNameTagValue"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetElasticIpArgs;
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
///         final var byTags = Ec2Functions.getElasticIp(GetElasticIpArgs.builder()
///             .tags(Map.of("Name", "exampleNameTagValue"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   byTags:
///     fn::invoke:
///       function: aws:ec2:getElasticIp
///       arguments:
///         tags:
///           Name: exampleNameTagValue
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ec2_get_elastic_ip_get_elastic_ip_args_doc}
/// [options] Invoke options controlling this call.
Future<GetElasticIpResult> getElasticIp(
  GetElasticIpArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getElasticIp:getElasticIp',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetElasticIpResult.fromMap(result);
}

/// Provides a list of EC2 Dedicated Host IDs matching the provided filters. More information about Dedicated Hosts can be found in the [EC2 User Guide](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/dedicated-hosts-overview.html).
///
/// ## Example Usage
///
/// ### Filter by instance type
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ec2.getHosts({
///     filters: [
///         {
///             name: "instance-type",
///             values: ["c5.large"],
///         },
///         {
///             name: "state",
///             values: ["available"],
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.get_hosts(filters=[
///     {
///         "name": "instance-type",
///         "values": ["c5.large"],
///     },
///     {
///         "name": "state",
///         "values": ["available"],
///     },
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
///     var example = Aws.Ec2.GetHosts.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new Aws.Ec2.Inputs.GetHostsFilterInputArgs
///             {
///                 Name = "instance-type",
///                 Values = new[]
///                 {
///                     "c5.large",
///                 },
///             },
///             new Aws.Ec2.Inputs.GetHostsFilterInputArgs
///             {
///                 Name = "state",
///                 Values = new[]
///                 {
///                     "available",
///                 },
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2.GetHosts(ctx, &ec2.GetHostsArgs{
/// 			Filters: []ec2.GetHostsFilter{
/// 				{
/// 					Name: "instance-type",
/// 					Values: []string{
/// 						"c5.large",
/// 					},
/// 				},
/// 				{
/// 					Name: "state",
/// 					Values: []string{
/// 						"available",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
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
/// data "aws_ec2_gethosts" "example" {
///   filters {
///     name   = "instance-type"
///     values = ["c5.large"]
///   }
///   filters {
///     name   = "state"
///     values = ["available"]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetHostsArgs;
/// import com.pulumi.aws.ec2.inputs.GetHostsFilterArgs;
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
///         final var example = Ec2Functions.getHosts(GetHostsArgs.builder()
///             .filters(
///                 GetHostsFilterArgs.builder()
///                     .name("instance-type")
///                     .values("c5.large")
///                     .build(),
///                 GetHostsFilterArgs.builder()
///                     .name("state")
///                     .values("available")
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:ec2:getHosts
///       arguments:
///         filters:
///           - name: instance-type
///             values:
///               - c5.large
///           - name: state
///             values:
///               - available
/// ```
///
///
/// ### Filter by Outpost ARN
///
/// The `outpostArn` argument applies a client-side filter because the `DescribeHosts` API does not support `outpost-arn` as a server-side filter.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const outpost = aws.ec2.getHosts({
///     outpostArn: example.arn,
///     filters: [{
///         name: "state",
///         values: ["available"],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// outpost = aws.ec2.get_hosts(outpost_arn=example["arn"],
///     filters=[{
///         "name": "state",
///         "values": ["available"],
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var outpost = Aws.Ec2.GetHosts.Invoke(new()
///     {
///         OutpostArn = example.Arn,
///         Filters = new[]
///         {
///             new Aws.Ec2.Inputs.GetHostsFilterInputArgs
///             {
///                 Name = "state",
///                 Values = new[]
///                 {
///                     "available",
///                 },
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2.GetHosts(ctx, &ec2.GetHostsArgs{
/// 			OutpostArn: pulumi.StringRef(example.Arn),
/// 			Filters: []ec2.GetHostsFilter{
/// 				{
/// 					Name: "state",
/// 					Values: []string{
/// 						"available",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
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
/// data "aws_ec2_gethosts" "outpost" {
///   outpost_arn = example.arn
///   filters {
///     name   = "state"
///     values = ["available"]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetHostsArgs;
/// import com.pulumi.aws.ec2.inputs.GetHostsFilterArgs;
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
///         final var outpost = Ec2Functions.getHosts(GetHostsArgs.builder()
///             .outpostArn(example.arn())
///             .filters(GetHostsFilterArgs.builder()
///                 .name("state")
///                 .values("available")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   outpost:
///     fn::invoke:
///       function: aws:ec2:getHosts
///       arguments:
///         outpostArn: ${example.arn}
///         filters:
///           - name: state
///             values:
///               - available
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ec2_get_hosts_get_hosts_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHostsResult> getHosts(
  GetHostsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getHosts:getHosts',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHostsResult.fromMap(result);
}

/// Use this data source to get the ID of an Amazon EC2 Instance for use in other resources.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const foo = aws.ec2.getInstance({
///     instanceId: "i-instanceid",
///     filters: [
///         {
///             name: "image-id",
///             values: ["ami-xxxxxxxx"],
///         },
///         {
///             name: "tag:Name",
///             values: ["instance-name-tag"],
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// foo = aws.ec2.get_instance(instance_id="i-instanceid",
///     filters=[
///         {
///             "name": "image-id",
///             "values": ["ami-xxxxxxxx"],
///         },
///         {
///             "name": "tag:Name",
///             "values": ["instance-name-tag"],
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = Aws.Ec2.GetInstance.Invoke(new()
///     {
///         InstanceId = "i-instanceid",
///         Filters = new[]
///         {
///             new Aws.Ec2.Inputs.GetInstanceFilterInputArgs
///             {
///                 Name = "image-id",
///                 Values = new[]
///                 {
///                     "ami-xxxxxxxx",
///                 },
///             },
///             new Aws.Ec2.Inputs.GetInstanceFilterInputArgs
///             {
///                 Name = "tag:Name",
///                 Values = new[]
///                 {
///                     "instance-name-tag",
///                 },
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2.LookupInstance(ctx, &ec2.LookupInstanceArgs{
/// 			InstanceId: pulumi.StringRef("i-instanceid"),
/// 			Filters: []ec2.GetInstanceFilter{
/// 				{
/// 					Name: "image-id",
/// 					Values: []string{
/// 						"ami-xxxxxxxx",
/// 					},
/// 				},
/// 				{
/// 					Name: "tag:Name",
/// 					Values: []string{
/// 						"instance-name-tag",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
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
/// data "aws_ec2_getinstance" "foo" {
///   instance_id = "i-instanceid"
///   filters {
///     name   = "image-id"
///     values = ["ami-xxxxxxxx"]
///   }
///   filters {
///     name   = "tag:Name"
///     values = ["instance-name-tag"]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetInstanceArgs;
/// import com.pulumi.aws.ec2.inputs.GetInstanceFilterArgs;
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
///         final var foo = Ec2Functions.getInstance(GetInstanceArgs.builder()
///             .instanceId("i-instanceid")
///             .filters(
///                 GetInstanceFilterArgs.builder()
///                     .name("image-id")
///                     .values("ami-xxxxxxxx")
///                     .build(),
///                 GetInstanceFilterArgs.builder()
///                     .name("tag:Name")
///                     .values("instance-name-tag")
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   foo:
///     fn::invoke:
///       function: aws:ec2:getInstance
///       arguments:
///         instanceId: i-instanceid
///         filters:
///           - name: image-id
///             values:
///               - ami-xxxxxxxx
///           - name: tag:Name
///             values:
///               - instance-name-tag
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ec2_get_instance_get_instance_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceResult> getInstance(
  GetInstanceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getInstance:getInstance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceResult.fromMap(result);
}

/// Get characteristics for a single EC2 Instance Type.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ec2.getInstanceType({
///     instanceType: "t2.micro",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.get_instance_type(instance_type="t2.micro")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Ec2.GetInstanceType.Invoke(new()
///     {
///         InstanceType = "t2.micro",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2.GetInstanceType(ctx, &ec2.GetInstanceTypeArgs{
/// 			InstanceType: "t2.micro",
/// 		}, nil)
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
/// data "aws_ec2_getinstancetype" "example" {
///   instance_type = "t2.micro"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetInstanceTypeArgs;
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
///         final var example = Ec2Functions.getInstanceType(GetInstanceTypeArgs.builder()
///             .instanceType("t2.micro")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:ec2:getInstanceType
///       arguments:
///         instanceType: t2.micro
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ec2_get_instance_type_get_instance_type_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceTypeResult> getInstanceType(
  GetInstanceTypeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getInstanceType:getInstanceType',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceTypeResult.fromMap(result);
}

/// Information about single EC2 Instance Type Offering.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ec2.getInstanceTypeOffering({
///     filters: [{
///         name: "instance-type",
///         values: [
///             "t2.micro",
///             "t3.micro",
///         ],
///     }],
///     preferredInstanceTypes: [
///         "t3.micro",
///         "t2.micro",
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.get_instance_type_offering(filters=[{
///         "name": "instance-type",
///         "values": [
///             "t2.micro",
///             "t3.micro",
///         ],
///     }],
///     preferred_instance_types=[
///         "t3.micro",
///         "t2.micro",
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Ec2.GetInstanceTypeOffering.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new Aws.Ec2.Inputs.GetInstanceTypeOfferingFilterInputArgs
///             {
///                 Name = "instance-type",
///                 Values = new[]
///                 {
///                     "t2.micro",
///                     "t3.micro",
///                 },
///             },
///         },
///         PreferredInstanceTypes = new[]
///         {
///             "t3.micro",
///             "t2.micro",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2.GetInstanceTypeOffering(ctx, &ec2.GetInstanceTypeOfferingArgs{
/// 			Filters: []ec2.GetInstanceTypeOfferingFilter{
/// 				{
/// 					Name: "instance-type",
/// 					Values: []string{
/// 						"t2.micro",
/// 						"t3.micro",
/// 					},
/// 				},
/// 			},
/// 			PreferredInstanceTypes: []string{
/// 				"t3.micro",
/// 				"t2.micro",
/// 			},
/// 		}, nil)
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
/// data "aws_ec2_getinstancetypeoffering" "example" {
///   filters {
///     name   = "instance-type"
///     values = ["t2.micro", "t3.micro"]
///   }
///   preferred_instance_types = ["t3.micro", "t2.micro"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetInstanceTypeOfferingArgs;
/// import com.pulumi.aws.ec2.inputs.GetInstanceTypeOfferingFilterArgs;
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
///         final var example = Ec2Functions.getInstanceTypeOffering(GetInstanceTypeOfferingArgs.builder()
///             .filters(GetInstanceTypeOfferingFilterArgs.builder()
///                 .name("instance-type")
///                 .values(
///                     "t2.micro",
///                     "t3.micro")
///                 .build())
///             .preferredInstanceTypes(
///                 "t3.micro",
///                 "t2.micro")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:ec2:getInstanceTypeOffering
///       arguments:
///         filters:
///           - name: instance-type
///             values:
///               - t2.micro
///               - t3.micro
///         preferredInstanceTypes:
///           - t3.micro
///           - t2.micro
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ec2_get_instance_type_offering_get_instance_type_offering_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceTypeOfferingResult> getInstanceTypeOffering(
  GetInstanceTypeOfferingArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getInstanceTypeOffering:getInstanceTypeOffering',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceTypeOfferingResult.fromMap(result);
}

/// Information about EC2 Instance Type Offerings.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ec2.getInstanceTypeOfferings({
///     filters: [
///         {
///             name: "instance-type",
///             values: [
///                 "t2.micro",
///                 "t3.micro",
///             ],
///         },
///         {
///             name: "location",
///             values: ["usw2-az4"],
///         },
///     ],
///     locationType: "availability-zone-id",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.get_instance_type_offerings(filters=[
///         {
///             "name": "instance-type",
///             "values": [
///                 "t2.micro",
///                 "t3.micro",
///             ],
///         },
///         {
///             "name": "location",
///             "values": ["usw2-az4"],
///         },
///     ],
///     location_type="availability-zone-id")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Ec2.GetInstanceTypeOfferings.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new Aws.Ec2.Inputs.GetInstanceTypeOfferingsFilterInputArgs
///             {
///                 Name = "instance-type",
///                 Values = new[]
///                 {
///                     "t2.micro",
///                     "t3.micro",
///                 },
///             },
///             new Aws.Ec2.Inputs.GetInstanceTypeOfferingsFilterInputArgs
///             {
///                 Name = "location",
///                 Values = new[]
///                 {
///                     "usw2-az4",
///                 },
///             },
///         },
///         LocationType = "availability-zone-id",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2.GetInstanceTypeOfferings(ctx, &ec2.GetInstanceTypeOfferingsArgs{
/// 			Filters: []ec2.GetInstanceTypeOfferingsFilter{
/// 				{
/// 					Name: "instance-type",
/// 					Values: []string{
/// 						"t2.micro",
/// 						"t3.micro",
/// 					},
/// 				},
/// 				{
/// 					Name: "location",
/// 					Values: []string{
/// 						"usw2-az4",
/// 					},
/// 				},
/// 			},
/// 			LocationType: pulumi.StringRef("availability-zone-id"),
/// 		}, nil)
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
/// data "aws_ec2_getinstancetypeofferings" "example" {
///   filters {
///     name   = "instance-type"
///     values = ["t2.micro", "t3.micro"]
///   }
///   filters {
///     name   = "location"
///     values = ["usw2-az4"]
///   }
///   location_type = "availability-zone-id"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetInstanceTypeOfferingsArgs;
/// import com.pulumi.aws.ec2.inputs.GetInstanceTypeOfferingsFilterArgs;
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
///         final var example = Ec2Functions.getInstanceTypeOfferings(GetInstanceTypeOfferingsArgs.builder()
///             .filters(
///                 GetInstanceTypeOfferingsFilterArgs.builder()
///                     .name("instance-type")
///                     .values(
///                         "t2.micro",
///                         "t3.micro")
///                     .build(),
///                 GetInstanceTypeOfferingsFilterArgs.builder()
///                     .name("location")
///                     .values("usw2-az4")
///                     .build())
///             .locationType("availability-zone-id")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:ec2:getInstanceTypeOfferings
///       arguments:
///         filters:
///           - name: instance-type
///             values:
///               - t2.micro
///               - t3.micro
///           - name: location
///             values:
///               - usw2-az4
///         locationType: availability-zone-id
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ec2_get_instance_type_offerings_get_instance_type_offerings_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceTypeOfferingsResult> getInstanceTypeOfferings(
  GetInstanceTypeOfferingsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getInstanceTypeOfferings:getInstanceTypeOfferings',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceTypeOfferingsResult.fromMap(result);
}

/// Information about EC2 Instance Types.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.ec2.getInstanceTypes({
///     filters: [
///         {
///             name: "auto-recovery-supported",
///             values: ["true"],
///         },
///         {
///             name: "network-info.encryption-in-transit-supported",
///             values: ["true"],
///         },
///         {
///             name: "instance-storage-supported",
///             values: ["true"],
///         },
///         {
///             name: "instance-type",
///             values: [
///                 "g5.2xlarge",
///                 "g5.4xlarge",
///             ],
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.ec2.get_instance_types(filters=[
///     {
///         "name": "auto-recovery-supported",
///         "values": ["true"],
///     },
///     {
///         "name": "network-info.encryption-in-transit-supported",
///         "values": ["true"],
///     },
///     {
///         "name": "instance-storage-supported",
///         "values": ["true"],
///     },
///     {
///         "name": "instance-type",
///         "values": [
///             "g5.2xlarge",
///             "g5.4xlarge",
///         ],
///     },
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
///     var test = Aws.Ec2.GetInstanceTypes.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new Aws.Ec2.Inputs.GetInstanceTypesFilterInputArgs
///             {
///                 Name = "auto-recovery-supported",
///                 Values = new[]
///                 {
///                     "true",
///                 },
///             },
///             new Aws.Ec2.Inputs.GetInstanceTypesFilterInputArgs
///             {
///                 Name = "network-info.encryption-in-transit-supported",
///                 Values = new[]
///                 {
///                     "true",
///                 },
///             },
///             new Aws.Ec2.Inputs.GetInstanceTypesFilterInputArgs
///             {
///                 Name = "instance-storage-supported",
///                 Values = new[]
///                 {
///                     "true",
///                 },
///             },
///             new Aws.Ec2.Inputs.GetInstanceTypesFilterInputArgs
///             {
///                 Name = "instance-type",
///                 Values = new[]
///                 {
///                     "g5.2xlarge",
///                     "g5.4xlarge",
///                 },
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2.GetInstanceTypes(ctx, &ec2.GetInstanceTypesArgs{
/// 			Filters: []ec2.GetInstanceTypesFilter{
/// 				{
/// 					Name: "auto-recovery-supported",
/// 					Values: []string{
/// 						"true",
/// 					},
/// 				},
/// 				{
/// 					Name: "network-info.encryption-in-transit-supported",
/// 					Values: []string{
/// 						"true",
/// 					},
/// 				},
/// 				{
/// 					Name: "instance-storage-supported",
/// 					Values: []string{
/// 						"true",
/// 					},
/// 				},
/// 				{
/// 					Name: "instance-type",
/// 					Values: []string{
/// 						"g5.2xlarge",
/// 						"g5.4xlarge",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
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
/// data "aws_ec2_getinstancetypes" "test" {
///   filters {
///     name   = "auto-recovery-supported"
///     values = ["true"]
///   }
///   filters {
///     name   = "network-info.encryption-in-transit-supported"
///     values = ["true"]
///   }
///   filters {
///     name   = "instance-storage-supported"
///     values = ["true"]
///   }
///   filters {
///     name   = "instance-type"
///     values = ["g5.2xlarge", "g5.4xlarge"]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetInstanceTypesArgs;
/// import com.pulumi.aws.ec2.inputs.GetInstanceTypesFilterArgs;
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
///         final var test = Ec2Functions.getInstanceTypes(GetInstanceTypesArgs.builder()
///             .filters(
///                 GetInstanceTypesFilterArgs.builder()
///                     .name("auto-recovery-supported")
///                     .values("true")
///                     .build(),
///                 GetInstanceTypesFilterArgs.builder()
///                     .name("network-info.encryption-in-transit-supported")
///                     .values("true")
///                     .build(),
///                 GetInstanceTypesFilterArgs.builder()
///                     .name("instance-storage-supported")
///                     .values("true")
///                     .build(),
///                 GetInstanceTypesFilterArgs.builder()
///                     .name("instance-type")
///                     .values(
///                         "g5.2xlarge",
///                         "g5.4xlarge")
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   test:
///     fn::invoke:
///       function: aws:ec2:getInstanceTypes
///       arguments:
///         filters:
///           - name: auto-recovery-supported
///             values:
///               - 'true'
///           - name: network-info.encryption-in-transit-supported
///             values:
///               - 'true'
///           - name: instance-storage-supported
///             values:
///               - 'true'
///           - name: instance-type
///             values:
///               - g5.2xlarge
///               - g5.4xlarge
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ec2_get_instance_types_get_instance_types_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceTypesResult> getInstanceTypes(
  GetInstanceTypesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getInstanceTypes:getInstanceTypes',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceTypesResult.fromMap(result);
}

/// Use this data source to get IDs or IPs of Amazon EC2 instances to be referenced elsewhere,
/// e.g., to allow easier migration from another management solution
/// or to make it easier for an operator to connect through bastion host(s).
///
///
///
///
///
/// &gt; **Note:** It's strongly discouraged to use this data source for querying ephemeral
/// instances (e.g., managed via autoscaling group), as the output may change at any time
/// and you'd need to re-run `apply` every time an instance comes up or dies.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.ec2.getInstances({
///     instanceTags: {
///         Role: "HardWorker",
///     },
///     filters: [{
///         name: "instance.group-id",
///         values: ["sg-12345678"],
///     }],
///     instanceStateNames: [
///         "running",
///         "stopped",
///     ],
/// });
/// const testEip: aws.ec2.Eip[] = [];
/// test.then(test => test.ids).length.apply(rangeBody => {
///     for (let range = 0; range < rangeBody; range++) {
///         testEip.push(new aws.ec2.Eip(`test-${range}`, {instance: test.then(test => test.ids[range])}));
///     }
/// });
/// ```
/// ```python
/// import pulumi
/// from typing import Any
/// import pulumi_aws as aws
///
/// test = aws.ec2.get_instances(instance_tags={
///         "Role": "HardWorker",
///     },
///     filters=[{
///         "name": "instance.group-id",
///         "values": ["sg-12345678"],
///     }],
///     instance_state_names=[
///         "running",
///         "stopped",
///     ])
/// test_eip: list[aws.ec2.Eip] = []
/// def create_test(range_body):
///     for test_eip_range in [{"value": i} for i in range(0, range_body)]:
///         test_eip.append(aws.ec2.Eip(f"test-{test_eip_range['value']}", instance=test.ids[test_eip_range["value"]]))
///
/// (len(test.ids)).apply(create_test)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = Aws.Ec2.GetInstances.Invoke(new()
///     {
///         InstanceTags =
///         {
///             { "Role", "HardWorker" },
///         },
///         Filters = new[]
///         {
///             new Aws.Ec2.Inputs.GetInstancesFilterInputArgs
///             {
///                 Name = "instance.group-id",
///                 Values = new[]
///                 {
///                     "sg-12345678",
///                 },
///             },
///         },
///         InstanceStateNames = new[]
///         {
///             "running",
///             "stopped",
///         },
///     });
///
///     var testEip = new List<Aws.Ec2.Eip>();
///     test.Apply(getInstancesResult => getInstancesResult.Ids).Length().Apply(rangeBody =>
///     {
///         for (var rangeIndex = 0; rangeIndex < rangeBody; rangeIndex++)
///         {
///             var range = new { Value = rangeIndex };
///             testEip.Add(new Aws.Ec2.Eip($"test-{range.Value}", new()
///             {
///                 Instance = test.Apply(getInstancesResult => getInstancesResult.Ids)[range.Value],
///             }));
///         }
///         return 0;
///     });
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		test, err := ec2.GetInstances(ctx, &ec2.GetInstancesArgs{
/// 			InstanceTags: map[string]string{
/// 				"Role": "HardWorker",
/// 			},
/// 			Filters: []ec2.GetInstancesFilter{
/// 				{
/// 					Name: "instance.group-id",
/// 					Values: []string{
/// 						"sg-12345678",
/// 					},
/// 				},
/// 			},
/// 			InstanceStateNames: []string{
/// 				"running",
/// 				"stopped",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		var testEip []*ec2.Eip
/// 		for index := 0; index < int(len(test.Ids)); index++ {
/// 			key0 := index
/// 			val0 := index
/// 			__res, err := ec2.NewEip(ctx, fmt.Sprintf("test-%v", key0), &ec2.EipArgs{
/// 				Instance: pulumi.String(test.Ids[val0]),
/// 			})
/// 			if err != nil {
/// 				return err
/// 			}
/// 			testEip = append(testEip, __res)
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
/// data "aws_ec2_getinstances" "test" {
///   instance_tags = {
///     "Role" = "HardWorker"
///   }
///   filters {
///     name   = "instance.group-id"
///     values = ["sg-12345678"]
///   }
///   instance_state_names = ["running", "stopped"]
/// }
///
/// resource "aws_ec2_eip" "test" {
///   count    = length(data.aws_ec2_getinstances.test.ids)
///   instance = data.aws_ec2_getinstances.test.ids[count.index]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetInstancesArgs;
/// import com.pulumi.aws.ec2.inputs.GetInstancesFilterArgs;
/// import com.pulumi.aws.ec2.Eip;
/// import com.pulumi.aws.ec2.EipArgs;
/// import com.pulumi.codegen.internal.KeyedValue;
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
///         final var test = Ec2Functions.getInstances(GetInstancesArgs.builder()
///             .instanceTags(Map.of("Role", "HardWorker"))
///             .filters(GetInstancesFilterArgs.builder()
///                 .name("instance.group-id")
///                 .values("sg-12345678")
///                 .build())
///             .instanceStateNames(
///                 "running",
///                 "stopped")
///             .build());
///
///         for (var i = 0; i < test.ids().size(); i++) {
///             new Eip("testEip-" + i, EipArgs.builder()
///                 .instance(test.ids()[range.value()])
///                 .build());
///
///
/// }
///     }
/// }
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ec2_get_instances_get_instances_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstancesResult> getInstances(
  GetInstancesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getInstances:getInstances',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstancesResult.fromMap(result);
}

/// `aws.ec2.InternetGateway` provides details about a specific Internet Gateway.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const config = new pulumi.Config();
/// const vpcId = config.requireObject<any>("vpcId");
/// const _default = aws.ec2.getInternetGateway({
///     filters: [{
///         name: "attachment.vpc-id",
///         values: [vpcId],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// config = pulumi.Config()
/// vpc_id = config.require_object("vpcId")
/// default = aws.ec2.get_internet_gateway(filters=[{
///     "name": "attachment.vpc-id",
///     "values": [vpc_id],
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
///     var config = new Config();
///     var vpcId = config.RequireObject<dynamic>("vpcId");
///     var @default = Aws.Ec2.GetInternetGateway.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new Aws.Ec2.Inputs.GetInternetGatewayFilterInputArgs
///             {
///                 Name = "attachment.vpc-id",
///                 Values = new[]
///                 {
///                     vpcId,
///                 },
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		var vpcId interface{}
/// 		cfg.RequireObject("vpcId", &vpcId)
/// 		_, err := ec2.LookupInternetGateway(ctx, &ec2.LookupInternetGatewayArgs{
/// 			Filters: []ec2.GetInternetGatewayFilter{
/// 				{
/// 					Name: "attachment.vpc-id",
/// 					Values: pulumi.StringArray{
/// 						vpcId,
/// 					},
/// 				},
/// 			},
/// 		}, nil)
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
/// data "aws_ec2_getinternetgateway" "default" {
///   filters {
///     name   = "attachment.vpc-id"
///     values = [var.vpcId]
///   }
/// }
///
/// variable "vpcId" {
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetInternetGatewayArgs;
/// import com.pulumi.aws.ec2.inputs.GetInternetGatewayFilterArgs;
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
///         final var config = ctx.config();
///         final var vpcId = config.require("vpcId");
///         final var default = Ec2Functions.getInternetGateway(GetInternetGatewayArgs.builder()
///             .filters(GetInternetGatewayFilterArgs.builder()
///                 .name("attachment.vpc-id")
///                 .values(vpcId)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   vpcId:
///     type: object
/// variables:
///   default:
///     fn::invoke:
///       function: aws:ec2:getInternetGateway
///       arguments:
///         filters:
///           - name: attachment.vpc-id
///             values:
///               - ${vpcId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ec2_get_internet_gateway_get_internet_gateway_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInternetGatewayResult> getInternetGateway(
  GetInternetGatewayArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getInternetGateway:getInternetGateway',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInternetGatewayResult.fromMap(result);
}

/// Previews a CIDR from an IPAM address pool. Only works for private IPv4.
///
/// &gt; **NOTE:** This functionality is also encapsulated in a resource sharing the same name. The data source can be used when you need to use the cidr in a calculation of the same Root module, `count` for example. However, once a cidr range has been allocated that was previewed, the next refresh will find a **new** cidr and may force new resources downstream. Make sure to use `ignoreChanges` if this is undesirable.
///
/// ## Example Usage
///
/// Basic usage:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.ec2.getIpamPreviewNextCidr({
///     ipamPoolId: testAwsVpcIpamPool.id,
///     netmaskLength: 28,
/// });
/// const testVpcIpamPoolCidrAllocation = new aws.ec2.VpcIpamPoolCidrAllocation("test", {
///     ipamPoolId: testAwsVpcIpamPool.id,
///     cidr: test.then(test => test.cidr),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.ec2.get_ipam_preview_next_cidr(ipam_pool_id=test_aws_vpc_ipam_pool["id"],
///     netmask_length=28)
/// test_vpc_ipam_pool_cidr_allocation = aws.ec2.VpcIpamPoolCidrAllocation("test",
///     ipam_pool_id=test_aws_vpc_ipam_pool["id"],
///     cidr=test.cidr)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = Aws.Ec2.GetIpamPreviewNextCidr.Invoke(new()
///     {
///         IpamPoolId = testAwsVpcIpamPool.Id,
///         NetmaskLength = 28,
///     });
///
///     var testVpcIpamPoolCidrAllocation = new Aws.Ec2.VpcIpamPoolCidrAllocation("test", new()
///     {
///         IpamPoolId = testAwsVpcIpamPool.Id,
///         Cidr = test.Apply(getIpamPreviewNextCidrResult => getIpamPreviewNextCidrResult.Cidr),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		test, err := ec2.GetIpamPreviewNextCidr(ctx, &ec2.GetIpamPreviewNextCidrArgs{
/// 			IpamPoolId:    testAwsVpcIpamPool.Id,
/// 			NetmaskLength: pulumi.IntRef(28),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ec2.NewVpcIpamPoolCidrAllocation(ctx, "test", &ec2.VpcIpamPoolCidrAllocationArgs{
/// 			IpamPoolId: pulumi.Any(testAwsVpcIpamPool.Id),
/// 			Cidr:       pulumi.String(test.Cidr),
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
/// data "aws_ec2_getipampreviewnextcidr" "test" {
///   ipam_pool_id   = testAwsVpcIpamPool.id
///   netmask_length = 28
/// }
///
/// resource "aws_ec2_vpcipampoolcidrallocation" "test" {
///   ipam_pool_id = testAwsVpcIpamPool.id
///   cidr         = data.aws_ec2_getipampreviewnextcidr.test.cidr
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetIpamPreviewNextCidrArgs;
/// import com.pulumi.aws.ec2.VpcIpamPoolCidrAllocation;
/// import com.pulumi.aws.ec2.VpcIpamPoolCidrAllocationArgs;
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
///         final var test = Ec2Functions.getIpamPreviewNextCidr(GetIpamPreviewNextCidrArgs.builder()
///             .ipamPoolId(testAwsVpcIpamPool.id())
///             .netmaskLength(28)
///             .build());
///
///         var testVpcIpamPoolCidrAllocation = new VpcIpamPoolCidrAllocation("testVpcIpamPoolCidrAllocation", VpcIpamPoolCidrAllocationArgs.builder()
///             .ipamPoolId(testAwsVpcIpamPool.id())
///             .cidr(test.cidr())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   testVpcIpamPoolCidrAllocation:
///     type: aws:ec2:VpcIpamPoolCidrAllocation
///     name: test
///     properties:
///       ipamPoolId: ${testAwsVpcIpamPool.id}
///       cidr: ${test.cidr}
/// variables:
///   test:
///     fn::invoke:
///       function: aws:ec2:getIpamPreviewNextCidr
///       arguments:
///         ipamPoolId: ${testAwsVpcIpamPool.id}
///         netmaskLength: 28
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ec2_get_ipam_preview_next_cidr_get_ipam_preview_next_cidr_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIpamPreviewNextCidrResult> getIpamPreviewNextCidr(
  GetIpamPreviewNextCidrArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getIpamPreviewNextCidr:getIpamPreviewNextCidr',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIpamPreviewNextCidrResult.fromMap(result);
}

/// Use this data source to get information about a specific EC2 Key Pair.
///
/// ## Example Usage
///
/// The following example shows how to get a EC2 Key Pair including the public key material from its name.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ec2.getKeyPair({
///     keyName: "test",
///     includePublicKey: true,
///     filters: [{
///         name: "tag:Component",
///         values: ["web"],
///     }],
/// });
/// export const fingerprint = example.then(example => example.fingerprint);
/// export const name = example.then(example => example.keyName);
/// export const id = example.then(example => example.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.get_key_pair(key_name="test",
///     include_public_key=True,
///     filters=[{
///         "name": "tag:Component",
///         "values": ["web"],
///     }])
/// pulumi.export("fingerprint", example.fingerprint)
/// pulumi.export("name", example.key_name)
/// pulumi.export("id", example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Ec2.GetKeyPair.Invoke(new()
///     {
///         KeyName = "test",
///         IncludePublicKey = true,
///         Filters = new[]
///         {
///             new Aws.Ec2.Inputs.GetKeyPairFilterInputArgs
///             {
///                 Name = "tag:Component",
///                 Values = new[]
///                 {
///                     "web",
///                 },
///             },
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["fingerprint"] = example.Apply(getKeyPairResult => getKeyPairResult.Fingerprint),
///         ["name"] = example.Apply(getKeyPairResult => getKeyPairResult.KeyName),
///         ["id"] = example.Apply(getKeyPairResult => getKeyPairResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := ec2.LookupKeyPair(ctx, &ec2.LookupKeyPairArgs{
/// 			KeyName:          pulumi.StringRef("test"),
/// 			IncludePublicKey: pulumi.BoolRef(true),
/// 			Filters: []ec2.GetKeyPairFilter{
/// 				{
/// 					Name: "tag:Component",
/// 					Values: []string{
/// 						"web",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("fingerprint", example.Fingerprint)
/// 		ctx.Export("name", example.KeyName)
/// 		ctx.Export("id", example.Id)
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
/// data "aws_ec2_getkeypair" "example" {
///   key_name           = "test"
///   include_public_key = true
///   filters {
///     name   = "tag:Component"
///     values = ["web"]
///   }
/// }
///
/// output "fingerprint" {
///   value = data.aws_ec2_getkeypair.example.fingerprint
/// }
/// output "name" {
///   value = data.aws_ec2_getkeypair.example.key_name
/// }
/// output "id" {
///   value = data.aws_ec2_getkeypair.example.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetKeyPairArgs;
/// import com.pulumi.aws.ec2.inputs.GetKeyPairFilterArgs;
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
///         final var example = Ec2Functions.getKeyPair(GetKeyPairArgs.builder()
///             .keyName("test")
///             .includePublicKey(true)
///             .filters(GetKeyPairFilterArgs.builder()
///                 .name("tag:Component")
///                 .values("web")
///                 .build())
///             .build());
///
///         ctx.export("fingerprint", example.fingerprint());
///         ctx.export("name", example.keyName());
///         ctx.export("id", example.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:ec2:getKeyPair
///       arguments:
///         keyName: test
///         includePublicKey: true
///         filters:
///           - name: tag:Component
///             values:
///               - web
/// outputs:
///   fingerprint: ${example.fingerprint}
///   name: ${example.keyName}
///   id: ${example.id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ec2_get_key_pair_get_key_pair_args_doc}
/// [options] Invoke options controlling this call.
Future<GetKeyPairResult> getKeyPair(
  GetKeyPairArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getKeyPair:getKeyPair',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetKeyPairResult.fromMap(result);
}

/// Provides information about a Launch Configuration.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const ubuntu = aws.ec2.getLaunchConfiguration({
///     name: "test-launch-config",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// ubuntu = aws.ec2.get_launch_configuration(name="test-launch-config")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ubuntu = Aws.Ec2.GetLaunchConfiguration.Invoke(new()
///     {
///         Name = "test-launch-config",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2.LookupLaunchConfiguration(ctx, &ec2.LookupLaunchConfigurationArgs{
/// 			Name: "test-launch-config",
/// 		}, nil)
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
/// data "aws_ec2_getlaunchconfiguration" "ubuntu" {
///   name = "test-launch-config"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetLaunchConfigurationArgs;
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
///         final var ubuntu = Ec2Functions.getLaunchConfiguration(GetLaunchConfigurationArgs.builder()
///             .name("test-launch-config")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ubuntu:
///     fn::invoke:
///       function: aws:ec2:getLaunchConfiguration
///       arguments:
///         name: test-launch-config
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ec2_get_launch_configuration_get_launch_configuration_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLaunchConfigurationResult> getLaunchConfiguration(
  GetLaunchConfigurationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getLaunchConfiguration:getLaunchConfiguration',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLaunchConfigurationResult.fromMap(result);
}

/// Provides information about a Launch Template.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const _default = aws.ec2.getLaunchTemplate({
///     name: "my-launch-template",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// default = aws.ec2.get_launch_template(name="my-launch-template")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = Aws.Ec2.GetLaunchTemplate.Invoke(new()
///     {
///         Name = "my-launch-template",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2.LookupLaunchTemplate(ctx, &ec2.LookupLaunchTemplateArgs{
/// 			Name: pulumi.StringRef("my-launch-template"),
/// 		}, nil)
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
/// data "aws_ec2_getlaunchtemplate" "default" {
///   name = "my-launch-template"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetLaunchTemplateArgs;
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
///         final var default = Ec2Functions.getLaunchTemplate(GetLaunchTemplateArgs.builder()
///             .name("my-launch-template")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: aws:ec2:getLaunchTemplate
///       arguments:
///         name: my-launch-template
/// ```
///
///
/// ### Filter
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.ec2.getLaunchTemplate({
///     filters: [{
///         name: "launch-template-name",
///         values: ["some-template"],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.ec2.get_launch_template(filters=[{
///     "name": "launch-template-name",
///     "values": ["some-template"],
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
///     var test = Aws.Ec2.GetLaunchTemplate.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new Aws.Ec2.Inputs.GetLaunchTemplateFilterInputArgs
///             {
///                 Name = "launch-template-name",
///                 Values = new[]
///                 {
///                     "some-template",
///                 },
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2.LookupLaunchTemplate(ctx, &ec2.LookupLaunchTemplateArgs{
/// 			Filters: []ec2.GetLaunchTemplateFilter{
/// 				{
/// 					Name: "launch-template-name",
/// 					Values: []string{
/// 						"some-template",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
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
/// data "aws_ec2_getlaunchtemplate" "test" {
///   filters {
///     name   = "launch-template-name"
///     values = ["some-template"]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetLaunchTemplateArgs;
/// import com.pulumi.aws.ec2.inputs.GetLaunchTemplateFilterArgs;
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
///         final var test = Ec2Functions.getLaunchTemplate(GetLaunchTemplateArgs.builder()
///             .filters(GetLaunchTemplateFilterArgs.builder()
///                 .name("launch-template-name")
///                 .values("some-template")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   test:
///     fn::invoke:
///       function: aws:ec2:getLaunchTemplate
///       arguments:
///         filters:
///           - name: launch-template-name
///             values:
///               - some-template
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ec2_get_launch_template_get_launch_template_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLaunchTemplateResult> getLaunchTemplate(
  GetLaunchTemplateArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getLaunchTemplate:getLaunchTemplate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLaunchTemplateResult.fromMap(result);
}

/// Provides details about an EC2 Local Gateway.
///
/// ## Example Usage
///
/// The following example shows how one might accept a local gateway id as a variable.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const config = new pulumi.Config();
/// const localGatewayId = config.requireObject<any>("localGatewayId");
/// const selected = aws.ec2.getLocalGateway({
///     id: localGatewayId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// config = pulumi.Config()
/// local_gateway_id = config.require_object("localGatewayId")
/// selected = aws.ec2.get_local_gateway(id=local_gateway_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var localGatewayId = config.RequireObject<dynamic>("localGatewayId");
///     var selected = Aws.Ec2.GetLocalGateway.Invoke(new()
///     {
///         Id = localGatewayId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		var localGatewayId interface{}
/// 		cfg.RequireObject("localGatewayId", &localGatewayId)
/// 		_, err := ec2.GetLocalGateway(ctx, &ec2.GetLocalGatewayArgs{
/// 			Id: pulumi.StringRef(localGatewayId),
/// 		}, nil)
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
/// data "aws_ec2_getlocalgateway" "selected" {
///   id = var.localGatewayId
/// }
///
/// variable "localGatewayId" {
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetLocalGatewayArgs;
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
///         final var config = ctx.config();
///         final var localGatewayId = config.require("localGatewayId");
///         final var selected = Ec2Functions.getLocalGateway(GetLocalGatewayArgs.builder()
///             .id(localGatewayId)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   localGatewayId:
///     type: object
/// variables:
///   selected:
///     fn::invoke:
///       function: aws:ec2:getLocalGateway
///       arguments:
///         id: ${localGatewayId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ec2_get_local_gateway_get_local_gateway_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLocalGatewayResult> getLocalGateway(
  GetLocalGatewayArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getLocalGateway:getLocalGateway',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLocalGatewayResult.fromMap(result);
}

/// Provides details about an EC2 Local Gateway Route Table.
///
/// This data source can prove useful when a module accepts a local gateway route table id as
/// an input variable and needs to, for example, find the associated Outpost or Local Gateway.
///
/// ## Example Usage
///
/// The following example returns a specific local gateway route table ID
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const config = new pulumi.Config();
/// const awsEc2LocalGatewayRouteTable = config.requireObject<any>("awsEc2LocalGatewayRouteTable");
/// const selected = aws.ec2.getLocalGatewayRouteTable({
///     localGatewayRouteTableId: awsEc2LocalGatewayRouteTable,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// config = pulumi.Config()
/// aws_ec2_local_gateway_route_table = config.require_object("awsEc2LocalGatewayRouteTable")
/// selected = aws.ec2.get_local_gateway_route_table(local_gateway_route_table_id=aws_ec2_local_gateway_route_table)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var awsEc2LocalGatewayRouteTable = config.RequireObject<dynamic>("awsEc2LocalGatewayRouteTable");
///     var selected = Aws.Ec2.GetLocalGatewayRouteTable.Invoke(new()
///     {
///         LocalGatewayRouteTableId = awsEc2LocalGatewayRouteTable,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		var awsEc2LocalGatewayRouteTable interface{}
/// 		cfg.RequireObject("awsEc2LocalGatewayRouteTable", &awsEc2LocalGatewayRouteTable)
/// 		_, err := ec2.LookupLocalGatewayRouteTable(ctx, &ec2.LookupLocalGatewayRouteTableArgs{
/// 			LocalGatewayRouteTableId: pulumi.StringRef(awsEc2LocalGatewayRouteTable),
/// 		}, nil)
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
/// data "aws_ec2_getlocalgatewayroutetable" "selected" {
///   local_gateway_route_table_id = var.awsEc2LocalGatewayRouteTable
/// }
///
/// variable "awsEc2LocalGatewayRouteTable" {
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetLocalGatewayRouteTableArgs;
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
///         final var config = ctx.config();
///         final var awsEc2LocalGatewayRouteTable = config.require("awsEc2LocalGatewayRouteTable");
///         final var selected = Ec2Functions.getLocalGatewayRouteTable(GetLocalGatewayRouteTableArgs.builder()
///             .localGatewayRouteTableId(awsEc2LocalGatewayRouteTable)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   awsEc2LocalGatewayRouteTable:
///     type: object
/// variables:
///   selected:
///     fn::invoke:
///       function: aws:ec2:getLocalGatewayRouteTable
///       arguments:
///         localGatewayRouteTableId: ${awsEc2LocalGatewayRouteTable}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ec2_get_local_gateway_route_table_get_local_gateway_route_table_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLocalGatewayRouteTableResult> getLocalGatewayRouteTable(
  GetLocalGatewayRouteTableArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getLocalGatewayRouteTable:getLocalGatewayRouteTable',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLocalGatewayRouteTableResult.fromMap(result);
}

/// Provides information for multiple EC2 Local Gateway Route Tables, such as their identifiers.
///
/// ## Example Usage
///
/// The following shows outputting all Local Gateway Route Table Ids.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// export = async () => {
///     const foo = await aws.ec2.getLocalGatewayRouteTables({});
///     return {
///         foo: foo.ids,
///     };
/// }
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// foo = aws.ec2.get_local_gateway_route_tables()
/// pulumi.export("foo", foo.ids)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = Aws.Ec2.GetLocalGatewayRouteTables.Invoke();
///
///     return new Dictionary<string, object?>
///     {
///         ["foo"] = foo.Apply(getLocalGatewayRouteTablesResult => getLocalGatewayRouteTablesResult.Ids),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		foo, err := ec2.GetLocalGatewayRouteTables(ctx, &ec2.GetLocalGatewayRouteTablesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("foo", foo.Ids)
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
/// data "aws_ec2_getlocalgatewayroutetables" "foo" {
/// }
///
/// output "foo" {
///   value = data.aws_ec2_getlocalgatewayroutetables.foo.ids
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetLocalGatewayRouteTablesArgs;
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
///         final var foo = Ec2Functions.getLocalGatewayRouteTables(GetLocalGatewayRouteTablesArgs.builder()
///             .build());
///
///         ctx.export("foo", foo.ids());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   foo:
///     fn::invoke:
///       function: aws:ec2:getLocalGatewayRouteTables
///       arguments: {}
/// outputs:
///   foo: ${foo.ids}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ec2_get_local_gateway_route_tables_get_local_gateway_route_tables_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLocalGatewayRouteTablesResult> getLocalGatewayRouteTables(
  GetLocalGatewayRouteTablesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getLocalGatewayRouteTables:getLocalGatewayRouteTables',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLocalGatewayRouteTablesResult.fromMap(result);
}

/// Provides details about an EC2 Local Gateway Virtual Interface. More information can be found in the [Outposts User Guide](https://docs.aws.amazon.com/outposts/latest/userguide/outposts-networking-components.html#routing).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = .reduce((__obj, [__key, __value]) => ({ ...__obj, [String(__key)]: aws.ec2.getLocalGatewayVirtualInterface({
///     id: __value,
/// }) }), {});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = {str(__key): aws.ec2.get_local_gateway_virtual_interface(id=__value) for __key, __value in enumerate(example_aws_ec2_local_gateway_virtual_interface_group["localGatewayVirtualInterfaceIds"])}
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = .ToDictionary(item => {
///         var __key = item.Key;
///         return __key;
///     }, item => {
///         var __value = item.Value;
///         return Aws.Ec2.GetLocalGatewayVirtualInterface.Invoke(new()
///         {
///             Id = __value,
///         });
///     });
///
/// });
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
/// data "aws_ec2_getlocalgatewayvirtualinterface" "invoke_0" {
///   for_each = exampleAwsEc2LocalGatewayVirtualInterfaceGroup.localGatewayVirtualInterfaceIds
///   id       = each.value
/// }
///
/// locals {
///   example = {for __key, __value in exampleAwsEc2LocalGatewayVirtualInterfaceGroup.localGatewayVirtualInterfaceIds : __key => data.aws_ec2_getlocalgatewayvirtualinterface.invoke_0[__key]}
/// }
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ec2_get_local_gateway_virtual_interface_get_local_gateway_virtual_interface_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLocalGatewayVirtualInterfaceResult> getLocalGatewayVirtualInterface(
  GetLocalGatewayVirtualInterfaceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getLocalGatewayVirtualInterface:getLocalGatewayVirtualInterface',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLocalGatewayVirtualInterfaceResult.fromMap(result);
}

/// Provides details about an EC2 Local Gateway Virtual Interface Group. More information can be found in the [Outposts User Guide](https://docs.aws.amazon.com/outposts/latest/userguide/outposts-networking-components.html#routing).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ec2.getLocalGatewayVirtualInterfaceGroup({
///     localGatewayId: exampleAwsEc2LocalGateway.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.get_local_gateway_virtual_interface_group(local_gateway_id=example_aws_ec2_local_gateway["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Ec2.GetLocalGatewayVirtualInterfaceGroup.Invoke(new()
///     {
///         LocalGatewayId = exampleAwsEc2LocalGateway.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2.GetLocalGatewayVirtualInterfaceGroup(ctx, &ec2.GetLocalGatewayVirtualInterfaceGroupArgs{
/// 			LocalGatewayId: pulumi.StringRef(exampleAwsEc2LocalGateway.Id),
/// 		}, nil)
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
/// data "aws_ec2_getlocalgatewayvirtualinterfacegroup" "example" {
///   local_gateway_id = exampleAwsEc2LocalGateway.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetLocalGatewayVirtualInterfaceGroupArgs;
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
///         final var example = Ec2Functions.getLocalGatewayVirtualInterfaceGroup(GetLocalGatewayVirtualInterfaceGroupArgs.builder()
///             .localGatewayId(exampleAwsEc2LocalGateway.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:ec2:getLocalGatewayVirtualInterfaceGroup
///       arguments:
///         localGatewayId: ${exampleAwsEc2LocalGateway.id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ec2_get_local_gateway_virtual_interface_group_get_local_gateway_virtual_interface_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLocalGatewayVirtualInterfaceGroupResult> getLocalGatewayVirtualInterfaceGroup(
  GetLocalGatewayVirtualInterfaceGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getLocalGatewayVirtualInterfaceGroup:getLocalGatewayVirtualInterfaceGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLocalGatewayVirtualInterfaceGroupResult.fromMap(result);
}

/// Provides details about multiple EC2 Local Gateway Virtual Interface Groups, such as identifiers. More information can be found in the [Outposts User Guide](https://docs.aws.amazon.com/outposts/latest/userguide/outposts-networking-components.html#routing).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const all = aws.ec2.getLocalGatewayVirtualInterfaceGroups({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// all = aws.ec2.get_local_gateway_virtual_interface_groups()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var all = Aws.Ec2.GetLocalGatewayVirtualInterfaceGroups.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2.GetLocalGatewayVirtualInterfaceGroups(ctx, &ec2.GetLocalGatewayVirtualInterfaceGroupsArgs{}, nil)
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
/// data "aws_ec2_getlocalgatewayvirtualinterfacegroups" "all" {
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetLocalGatewayVirtualInterfaceGroupsArgs;
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
///         final var all = Ec2Functions.getLocalGatewayVirtualInterfaceGroups(GetLocalGatewayVirtualInterfaceGroupsArgs.builder()
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   all:
///     fn::invoke:
///       function: aws:ec2:getLocalGatewayVirtualInterfaceGroups
///       arguments: {}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ec2_get_local_gateway_virtual_interface_groups_get_local_gateway_virtual_interface_groups_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLocalGatewayVirtualInterfaceGroupsResult> getLocalGatewayVirtualInterfaceGroups(
  GetLocalGatewayVirtualInterfaceGroupsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getLocalGatewayVirtualInterfaceGroups:getLocalGatewayVirtualInterfaceGroups',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLocalGatewayVirtualInterfaceGroupsResult.fromMap(result);
}

/// Provides information for multiple EC2 Local Gateways, such as their identifiers.
///
/// ## Example Usage
///
/// The following example retrieves Local Gateways with a resource tag of `service` set to `production`.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// export = async () => {
///     const foo = await aws.ec2.getLocalGateways({
///         tags: {
///             service: "production",
///         },
///     });
///     return {
///         foo: foo.ids,
///     };
/// }
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// foo = aws.ec2.get_local_gateways(tags={
///     "service": "production",
/// })
/// pulumi.export("foo", foo.ids)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = Aws.Ec2.GetLocalGateways.Invoke(new()
///     {
///         Tags =
///         {
///             { "service", "production" },
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["foo"] = foo.Apply(getLocalGatewaysResult => getLocalGatewaysResult.Ids),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		foo, err := ec2.GetLocalGateways(ctx, &ec2.GetLocalGatewaysArgs{
/// 			Tags: map[string]string{
/// 				"service": "production",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("foo", foo.Ids)
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
/// data "aws_ec2_getlocalgateways" "foo" {
///   tags = {
///     "service" = "production"
///   }
/// }
///
/// output "foo" {
///   value = data.aws_ec2_getlocalgateways.foo.ids
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetLocalGatewaysArgs;
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
///         final var foo = Ec2Functions.getLocalGateways(GetLocalGatewaysArgs.builder()
///             .tags(Map.of("service", "production"))
///             .build());
///
///         ctx.export("foo", foo.ids());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   foo:
///     fn::invoke:
///       function: aws:ec2:getLocalGateways
///       arguments:
///         tags:
///           service: production
/// outputs:
///   foo: ${foo.ids}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ec2_get_local_gateways_get_local_gateways_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLocalGatewaysResult> getLocalGateways(
  GetLocalGatewaysArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getLocalGateways:getLocalGateways',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLocalGatewaysResult.fromMap(result);
}

/// `aws.ec2.ManagedPrefixList` provides details about a specific AWS prefix list or
/// customer-managed prefix list in the current region.
///
/// ## Example Usage
///
/// ### Find the regional DynamoDB prefix list
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.getRegion({});
/// const example = current.then(current => aws.ec2.getManagedPrefixList({
///     name: `com.amazonaws.${current.region}.dynamodb`,
/// }));
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// current = aws.get_region()
/// example = aws.ec2.get_managed_prefix_list(name=f"com.amazonaws.{current.region}.dynamodb")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = Aws.GetRegion.Invoke();
///
///     var example = Aws.Ec2.GetManagedPrefixList.Invoke(new()
///     {
///         Name = $"com.amazonaws.{current.Apply(getRegionResult => getRegionResult.Region)}.dynamodb",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := aws.GetRegion(ctx, &aws.GetRegionArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ec2.LookupManagedPrefixList(ctx, &ec2.LookupManagedPrefixListArgs{
/// 			Name: pulumi.StringRef(fmt.Sprintf("com.amazonaws.%v.dynamodb", current.Region)),
/// 		}, nil)
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
/// data "aws_getregion" "current" {
/// }
/// data "aws_ec2_getmanagedprefixlist" "example" {
///   name ="com.amazonaws.${data.aws_getregion.current.region}.dynamodb"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetRegionArgs;
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetManagedPrefixListArgs;
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
///         final var current = AwsFunctions.getRegion(GetRegionArgs.builder()
///             .build());
///
///         final var example = Ec2Functions.getManagedPrefixList(GetManagedPrefixListArgs.builder()
///             .name(String.format("com.amazonaws.%s.dynamodb", current.region()))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   current:
///     fn::invoke:
///       function: aws:getRegion
///       arguments: {}
///   example:
///     fn::invoke:
///       function: aws:ec2:getManagedPrefixList
///       arguments:
///         name: com.amazonaws.${current.region}.dynamodb
/// ```
///
///
/// ### Find a managed prefix list using filters
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ec2.getManagedPrefixList({
///     filters: [{
///         name: "prefix-list-name",
///         values: ["my-prefix-list"],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.get_managed_prefix_list(filters=[{
///     "name": "prefix-list-name",
///     "values": ["my-prefix-list"],
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
///     var example = Aws.Ec2.GetManagedPrefixList.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new Aws.Ec2.Inputs.GetManagedPrefixListFilterInputArgs
///             {
///                 Name = "prefix-list-name",
///                 Values = new[]
///                 {
///                     "my-prefix-list",
///                 },
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2.LookupManagedPrefixList(ctx, &ec2.LookupManagedPrefixListArgs{
/// 			Filters: []ec2.GetManagedPrefixListFilter{
/// 				{
/// 					Name: "prefix-list-name",
/// 					Values: []string{
/// 						"my-prefix-list",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
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
/// data "aws_ec2_getmanagedprefixlist" "example" {
///   filters {
///     name   = "prefix-list-name"
///     values = ["my-prefix-list"]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetManagedPrefixListArgs;
/// import com.pulumi.aws.ec2.inputs.GetManagedPrefixListFilterArgs;
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
///         final var example = Ec2Functions.getManagedPrefixList(GetManagedPrefixListArgs.builder()
///             .filters(GetManagedPrefixListFilterArgs.builder()
///                 .name("prefix-list-name")
///                 .values("my-prefix-list")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:ec2:getManagedPrefixList
///       arguments:
///         filters:
///           - name: prefix-list-name
///             values:
///               - my-prefix-list
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ec2_get_managed_prefix_list_get_managed_prefix_list_args_doc}
/// [options] Invoke options controlling this call.
Future<GetManagedPrefixListResult> getManagedPrefixList(
  GetManagedPrefixListArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getManagedPrefixList:getManagedPrefixList',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetManagedPrefixListResult.fromMap(result);
}

/// This resource can be useful for getting back a list of managed prefix list ids to be referenced elsewhere.
///
/// ## Example Usage
///
/// The following returns all managed prefix lists filtered by tags
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const testEnv = aws.ec2.getManagedPrefixLists({
///     tags: {
///         Env: "test",
///     },
/// });
/// const testEnvGetManagedPrefixList = .map(__index => (aws.ec2.getManagedPrefixList({
///     id: _arg0_.ids[__index],
/// })));
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test_env = aws.ec2.get_managed_prefix_lists(tags={
///     "Env": "test",
/// })
/// test_env_get_managed_prefix_list = [aws.ec2.get_managed_prefix_list(id=test_env.ids[__index]) for __index in len(test_env.ids).apply(lambda length: range(length))]
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var testEnv = Aws.Ec2.GetManagedPrefixLists.Invoke(new()
///     {
///         Tags =
///         {
///             { "Env", "test" },
///         },
///     });
///
///     var testEnvGetManagedPrefixList = ;
///
/// });
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
/// data "aws_ec2_getmanagedprefixlists" "testEnv" {
///   tags = {
///     "Env" = "test"
///   }
/// }
/// data "aws_ec2_getmanagedprefixlist" "invoke_1" {
///   for_each = toset(range(length(data.aws_ec2_getmanagedprefixlists.testEnv.ids)))
///   id       = data.aws_ec2_getmanagedprefixlists.testEnv.ids[each.value]
/// }
///
/// locals {
///   testEnvGetManagedPrefixList = [for __index in range(length(data.aws_ec2_getmanagedprefixlists.testEnv.ids)) : data.aws_ec2_getmanagedprefixlist.invoke_1[__index]]
/// }
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ec2_get_managed_prefix_lists_get_managed_prefix_lists_args_doc}
/// [options] Invoke options controlling this call.
Future<GetManagedPrefixListsResult> getManagedPrefixLists(
  GetManagedPrefixListsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getManagedPrefixLists:getManagedPrefixLists',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetManagedPrefixListsResult.fromMap(result);
}

/// Provides details about a specific VPC NAT Gateway.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const _default = aws.ec2.getNatGateway({
///     subnetId: _public.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// default = aws.ec2.get_nat_gateway(subnet_id=public["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = Aws.Ec2.GetNatGateway.Invoke(new()
///     {
///         SubnetId = @public.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2.LookupNatGateway(ctx, &ec2.LookupNatGatewayArgs{
/// 			SubnetId: pulumi.StringRef(public.Id),
/// 		}, nil)
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
/// data "aws_ec2_getnatgateway" "default" {
///   subnet_id = public.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetNatGatewayArgs;
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
///         final var default = Ec2Functions.getNatGateway(GetNatGatewayArgs.builder()
///             .subnetId(public_.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: aws:ec2:getNatGateway
///       arguments:
///         subnetId: ${public.id}
/// ```
///
///
/// ### With tags
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const _default = aws.ec2.getNatGateway({
///     subnetId: _public.id,
///     tags: {
///         Name: "gw NAT",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// default = aws.ec2.get_nat_gateway(subnet_id=public["id"],
///     tags={
///         "Name": "gw NAT",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = Aws.Ec2.GetNatGateway.Invoke(new()
///     {
///         SubnetId = @public.Id,
///         Tags =
///         {
///             { "Name", "gw NAT" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2.LookupNatGateway(ctx, &ec2.LookupNatGatewayArgs{
/// 			SubnetId: pulumi.StringRef(public.Id),
/// 			Tags: map[string]string{
/// 				"Name": "gw NAT",
/// 			},
/// 		}, nil)
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
/// data "aws_ec2_getnatgateway" "default" {
///   subnet_id = public.id
///   tags = {
///     "Name" = "gw NAT"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetNatGatewayArgs;
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
///         final var default = Ec2Functions.getNatGateway(GetNatGatewayArgs.builder()
///             .subnetId(public_.id())
///             .tags(Map.of("Name", "gw NAT"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: aws:ec2:getNatGateway
///       arguments:
///         subnetId: ${public.id}
///         tags:
///           Name: gw NAT
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ec2_get_nat_gateway_get_nat_gateway_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNatGatewayResult> getNatGateway(
  GetNatGatewayArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getNatGateway:getNatGateway',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNatGatewayResult.fromMap(result);
}

/// This resource can be useful for getting back a list of NAT gateway ids to be referenced elsewhere.
///
/// ## Example Usage
///
/// The following returns all NAT gateways in a specified VPC that are marked as available
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const ngws = aws.ec2.getNatGateways({
///     vpcId: vpcId,
///     filters: [{
///         name: "state",
///         values: ["available"],
///     }],
/// });
/// const ngw = .map(__index => (aws.ec2.getNatGateway({
///     id: _arg0_.ids[__index],
/// })));
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// ngws = aws.ec2.get_nat_gateways(vpc_id=vpc_id,
///     filters=[{
///         "name": "state",
///         "values": ["available"],
///     }])
/// ngw = [aws.ec2.get_nat_gateway(id=ngws.ids[__index]) for __index in len(ngws.ids).apply(lambda length: range(length))]
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ngws = Aws.Ec2.GetNatGateways.Invoke(new()
///     {
///         VpcId = vpcId,
///         Filters = new[]
///         {
///             new Aws.Ec2.Inputs.GetNatGatewaysFilterInputArgs
///             {
///                 Name = "state",
///                 Values = new[]
///                 {
///                     "available",
///                 },
///             },
///         },
///     });
///
///     var ngw = ;
///
/// });
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
/// data "aws_ec2_getnatgateways" "ngws" {
///   vpc_id = vpcId
///   filters {
///     name   = "state"
///     values = ["available"]
///   }
/// }
/// data "aws_ec2_getnatgateway" "invoke_1" {
///   for_each = toset(range(length(data.aws_ec2_getnatgateways.ngws.ids)))
///   id       = data.aws_ec2_getnatgateways.ngws.ids[each.value]
/// }
///
/// locals {
///   ngw = [for __index in range(length(data.aws_ec2_getnatgateways.ngws.ids)) : data.aws_ec2_getnatgateway.invoke_1[__index]]
/// }
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ec2_get_nat_gateways_get_nat_gateways_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNatGatewaysResult> getNatGateways(
  GetNatGatewaysArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getNatGateways:getNatGateways',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNatGatewaysResult.fromMap(result);
}

/// ## Example Usage
///
/// The following shows outputting all network ACL ids in a vpc.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// export = async () => {
///     const example = await aws.ec2.getNetworkAcls({
///         vpcId: vpcId,
///     });
///     return {
///         example: example.ids,
///     };
/// }
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.get_network_acls(vpc_id=vpc_id)
/// pulumi.export("example", example.ids)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Ec2.GetNetworkAcls.Invoke(new()
///     {
///         VpcId = vpcId,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["example"] = example.Apply(getNetworkAclsResult => getNetworkAclsResult.Ids),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := ec2.GetNetworkAcls(ctx, &ec2.GetNetworkAclsArgs{
/// 			VpcId: pulumi.StringRef(vpcId),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("example", example.Ids)
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
/// data "aws_ec2_getnetworkacls" "example" {
///   vpc_id = vpcId
/// }
///
/// output "example" {
///   value = data.aws_ec2_getnetworkacls.example.ids
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetNetworkAclsArgs;
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
///         final var example = Ec2Functions.getNetworkAcls(GetNetworkAclsArgs.builder()
///             .vpcId(vpcId)
///             .build());
///
///         ctx.export("example", example.ids());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:ec2:getNetworkAcls
///       arguments:
///         vpcId: ${vpcId}
/// outputs:
///   example: ${example.ids}
/// ```
///
///
/// The following example retrieves a list of all network ACL ids in a VPC with a custom
/// tag of `Tier` set to a value of "Private".
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ec2.getNetworkAcls({
///     vpcId: vpcId,
///     tags: {
///         Tier: "Private",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.get_network_acls(vpc_id=vpc_id,
///     tags={
///         "Tier": "Private",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Ec2.GetNetworkAcls.Invoke(new()
///     {
///         VpcId = vpcId,
///         Tags =
///         {
///             { "Tier", "Private" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2.GetNetworkAcls(ctx, &ec2.GetNetworkAclsArgs{
/// 			VpcId: pulumi.StringRef(vpcId),
/// 			Tags: map[string]string{
/// 				"Tier": "Private",
/// 			},
/// 		}, nil)
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
/// data "aws_ec2_getnetworkacls" "example" {
///   vpc_id = vpcId
///   tags = {
///     "Tier" = "Private"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetNetworkAclsArgs;
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
///         final var example = Ec2Functions.getNetworkAcls(GetNetworkAclsArgs.builder()
///             .vpcId(vpcId)
///             .tags(Map.of("Tier", "Private"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:ec2:getNetworkAcls
///       arguments:
///         vpcId: ${vpcId}
///         tags:
///           Tier: Private
/// ```
///
///
/// The following example retrieves a network ACL id in a VPC which associated
/// with specific subnet.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ec2.getNetworkAcls({
///     vpcId: vpcId,
///     filters: [{
///         name: "association.subnet-id",
///         values: [test.id],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.get_network_acls(vpc_id=vpc_id,
///     filters=[{
///         "name": "association.subnet-id",
///         "values": [test["id"]],
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Ec2.GetNetworkAcls.Invoke(new()
///     {
///         VpcId = vpcId,
///         Filters = new[]
///         {
///             new Aws.Ec2.Inputs.GetNetworkAclsFilterInputArgs
///             {
///                 Name = "association.subnet-id",
///                 Values = new[]
///                 {
///                     test.Id,
///                 },
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2.GetNetworkAcls(ctx, &ec2.GetNetworkAclsArgs{
/// 			VpcId: pulumi.StringRef(vpcId),
/// 			Filters: []ec2.GetNetworkAclsFilter{
/// 				{
/// 					Name: "association.subnet-id",
/// 					Values: pulumi.StringArray{
/// 						test.Id,
/// 					},
/// 				},
/// 			},
/// 		}, nil)
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
/// data "aws_ec2_getnetworkacls" "example" {
///   vpc_id = vpcId
///   filters {
///     name   = "association.subnet-id"
///     values = [test.id]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetNetworkAclsArgs;
/// import com.pulumi.aws.ec2.inputs.GetNetworkAclsFilterArgs;
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
///         final var example = Ec2Functions.getNetworkAcls(GetNetworkAclsArgs.builder()
///             .vpcId(vpcId)
///             .filters(GetNetworkAclsFilterArgs.builder()
///                 .name("association.subnet-id")
///                 .values(test.id())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:ec2:getNetworkAcls
///       arguments:
///         vpcId: ${vpcId}
///         filters:
///           - name: association.subnet-id
///             values:
///               - ${test.id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ec2_get_network_acls_get_network_acls_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworkAclsResult> getNetworkAcls(
  GetNetworkAclsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getNetworkAcls:getNetworkAcls',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkAclsResult.fromMap(result);
}

/// `aws.ec2.NetworkInsightsAnalysis` provides details about a specific Network Insights Analysis.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ec2.getNetworkInsightsAnalysis({
///     networkInsightsAnalysisId: exampleAwsEc2NetworkInsightsAnalysis.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.get_network_insights_analysis(network_insights_analysis_id=example_aws_ec2_network_insights_analysis["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Ec2.GetNetworkInsightsAnalysis.Invoke(new()
///     {
///         NetworkInsightsAnalysisId = exampleAwsEc2NetworkInsightsAnalysis.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2.LookupNetworkInsightsAnalysis(ctx, &ec2.LookupNetworkInsightsAnalysisArgs{
/// 			NetworkInsightsAnalysisId: pulumi.StringRef(exampleAwsEc2NetworkInsightsAnalysis.Id),
/// 		}, nil)
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
/// data "aws_ec2_getnetworkinsightsanalysis" "example" {
///   network_insights_analysis_id = exampleAwsEc2NetworkInsightsAnalysis.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetNetworkInsightsAnalysisArgs;
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
///         final var example = Ec2Functions.getNetworkInsightsAnalysis(GetNetworkInsightsAnalysisArgs.builder()
///             .networkInsightsAnalysisId(exampleAwsEc2NetworkInsightsAnalysis.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:ec2:getNetworkInsightsAnalysis
///       arguments:
///         networkInsightsAnalysisId: ${exampleAwsEc2NetworkInsightsAnalysis.id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ec2_get_network_insights_analysis_get_network_insights_analysis_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworkInsightsAnalysisResult> getNetworkInsightsAnalysis(
  GetNetworkInsightsAnalysisArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getNetworkInsightsAnalysis:getNetworkInsightsAnalysis',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkInsightsAnalysisResult.fromMap(result);
}

/// `aws.ec2.NetworkInsightsPath` provides details about a specific Network Insights Path.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ec2.getNetworkInsightsPath({
///     networkInsightsPathId: exampleAwsEc2NetworkInsightsPath.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.get_network_insights_path(network_insights_path_id=example_aws_ec2_network_insights_path["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Ec2.GetNetworkInsightsPath.Invoke(new()
///     {
///         NetworkInsightsPathId = exampleAwsEc2NetworkInsightsPath.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2.LookupNetworkInsightsPath(ctx, &ec2.LookupNetworkInsightsPathArgs{
/// 			NetworkInsightsPathId: pulumi.StringRef(exampleAwsEc2NetworkInsightsPath.Id),
/// 		}, nil)
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
/// data "aws_ec2_getnetworkinsightspath" "example" {
///   network_insights_path_id = exampleAwsEc2NetworkInsightsPath.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetNetworkInsightsPathArgs;
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
///         final var example = Ec2Functions.getNetworkInsightsPath(GetNetworkInsightsPathArgs.builder()
///             .networkInsightsPathId(exampleAwsEc2NetworkInsightsPath.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:ec2:getNetworkInsightsPath
///       arguments:
///         networkInsightsPathId: ${exampleAwsEc2NetworkInsightsPath.id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ec2_get_network_insights_path_get_network_insights_path_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworkInsightsPathResult> getNetworkInsightsPath(
  GetNetworkInsightsPathArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getNetworkInsightsPath:getNetworkInsightsPath',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkInsightsPathResult.fromMap(result);
}

/// Use this data source to get information about a Network Interface.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const bar = aws.ec2.getNetworkInterface({
///     id: "eni-01234567",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// bar = aws.ec2.get_network_interface(id="eni-01234567")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var bar = Aws.Ec2.GetNetworkInterface.Invoke(new()
///     {
///         Id = "eni-01234567",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2.LookupNetworkInterface(ctx, &ec2.LookupNetworkInterfaceArgs{
/// 			Id: pulumi.StringRef("eni-01234567"),
/// 		}, nil)
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
/// data "aws_ec2_getnetworkinterface" "bar" {
///   id = "eni-01234567"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetNetworkInterfaceArgs;
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
///         final var bar = Ec2Functions.getNetworkInterface(GetNetworkInterfaceArgs.builder()
///             .id("eni-01234567")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   bar:
///     fn::invoke:
///       function: aws:ec2:getNetworkInterface
///       arguments:
///         id: eni-01234567
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ec2_get_network_interface_get_network_interface_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworkInterfaceResult> getNetworkInterface(
  GetNetworkInterfaceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getNetworkInterface:getNetworkInterface',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkInterfaceResult.fromMap(result);
}

/// ## Example Usage
///
/// The following shows outputting all network interface ids in a region.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// export = async () => {
///     const example = await aws.ec2.getNetworkInterfaces({});
///     return {
///         example: example.ids,
///     };
/// }
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.get_network_interfaces()
/// pulumi.export("example", example.ids)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Ec2.GetNetworkInterfaces.Invoke();
///
///     return new Dictionary<string, object?>
///     {
///         ["example"] = example.Apply(getNetworkInterfacesResult => getNetworkInterfacesResult.Ids),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := ec2.GetNetworkInterfaces(ctx, &ec2.GetNetworkInterfacesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("example", example.Ids)
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
/// data "aws_ec2_getnetworkinterfaces" "example" {
/// }
///
/// output "example" {
///   value = data.aws_ec2_getnetworkinterfaces.example.ids
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetNetworkInterfacesArgs;
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
///         final var example = Ec2Functions.getNetworkInterfaces(GetNetworkInterfacesArgs.builder()
///             .build());
///
///         ctx.export("example", example.ids());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:ec2:getNetworkInterfaces
///       arguments: {}
/// outputs:
///   example: ${example.ids}
/// ```
///
///
/// The following example retrieves a list of all network interface ids with a custom tag of `Name` set to a value of `test`.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ec2.getNetworkInterfaces({
///     tags: {
///         Name: "test",
///     },
/// });
/// export const example1 = example.then(example => example.ids);
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.get_network_interfaces(tags={
///     "Name": "test",
/// })
/// pulumi.export("example1", example.ids)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Ec2.GetNetworkInterfaces.Invoke(new()
///     {
///         Tags =
///         {
///             { "Name", "test" },
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["example1"] = example.Apply(getNetworkInterfacesResult => getNetworkInterfacesResult.Ids),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := ec2.GetNetworkInterfaces(ctx, &ec2.GetNetworkInterfacesArgs{
/// 			Tags: map[string]string{
/// 				"Name": "test",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("example1", example.Ids)
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
/// data "aws_ec2_getnetworkinterfaces" "example" {
///   tags = {
///     "Name" = "test"
///   }
/// }
///
/// output "example1" {
///   value = data.aws_ec2_getnetworkinterfaces.example.ids
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetNetworkInterfacesArgs;
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
///         final var example = Ec2Functions.getNetworkInterfaces(GetNetworkInterfacesArgs.builder()
///             .tags(Map.of("Name", "test"))
///             .build());
///
///         ctx.export("example1", example.ids());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:ec2:getNetworkInterfaces
///       arguments:
///         tags:
///           Name: test
/// outputs:
///   example1: ${example.ids}
/// ```
///
///
/// The following example retrieves a network interface ids which associated
/// with specific subnet.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// export = async () => {
///     const example = await aws.ec2.getNetworkInterfaces({
///         filters: [{
///             name: "subnet-id",
///             values: [test.id],
///         }],
///     });
///     return {
///         example: example.ids,
///     };
/// }
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.get_network_interfaces(filters=[{
///     "name": "subnet-id",
///     "values": [test["id"]],
/// }])
/// pulumi.export("example", example.ids)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Ec2.GetNetworkInterfaces.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new Aws.Ec2.Inputs.GetNetworkInterfacesFilterInputArgs
///             {
///                 Name = "subnet-id",
///                 Values = new[]
///                 {
///                     test.Id,
///                 },
///             },
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["example"] = example.Apply(getNetworkInterfacesResult => getNetworkInterfacesResult.Ids),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := ec2.GetNetworkInterfaces(ctx, &ec2.GetNetworkInterfacesArgs{
/// 			Filters: []ec2.GetNetworkInterfacesFilter{
/// 				{
/// 					Name: "subnet-id",
/// 					Values: pulumi.StringArray{
/// 						test.Id,
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("example", example.Ids)
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
/// data "aws_ec2_getnetworkinterfaces" "example" {
///   filters {
///     name   = "subnet-id"
///     values = [test.id]
///   }
/// }
///
/// output "example" {
///   value = data.aws_ec2_getnetworkinterfaces.example.ids
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetNetworkInterfacesArgs;
/// import com.pulumi.aws.ec2.inputs.GetNetworkInterfacesFilterArgs;
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
///         final var example = Ec2Functions.getNetworkInterfaces(GetNetworkInterfacesArgs.builder()
///             .filters(GetNetworkInterfacesFilterArgs.builder()
///                 .name("subnet-id")
///                 .values(test.id())
///                 .build())
///             .build());
///
///         ctx.export("example", example.ids());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:ec2:getNetworkInterfaces
///       arguments:
///         filters:
///           - name: subnet-id
///             values:
///               - ${test.id}
/// outputs:
///   example: ${example.ids}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ec2_get_network_interfaces_get_network_interfaces_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworkInterfacesResult> getNetworkInterfaces(
  GetNetworkInterfacesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getNetworkInterfaces:getNetworkInterfaces',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkInterfacesResult.fromMap(result);
}

/// `aws.ec2.getPrefixList` provides details about a specific AWS prefix list (PL)
/// in the current region.
///
/// This can be used both to validate a prefix list given in a variable
/// and to obtain the CIDR blocks (IP address ranges) for the associated
/// AWS service. The latter may be useful e.g., for adding network ACL
/// rules.
///
/// The aws.ec2.ManagedPrefixList data source is normally more appropriate to use given it can return customer-managed prefix list info, as well as additional attributes.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const privateS3VpcEndpoint = new aws.ec2.VpcEndpoint("private_s3", {
///     vpcId: foo.id,
///     serviceName: "com.amazonaws.us-west-2.s3",
/// });
/// const privateS3 = aws.ec2.getPrefixListOutput({
///     prefixListId: privateS3VpcEndpoint.prefixListId,
/// });
/// const bar = new aws.ec2.NetworkAcl("bar", {vpcId: foo.id});
/// const privateS3NetworkAclRule = new aws.ec2.NetworkAclRule("private_s3", {
///     networkAclId: bar.id,
///     ruleNumber: 200,
///     egress: false,
///     protocol: "tcp",
///     ruleAction: "allow",
///     cidrBlock: privateS3.apply(privateS3 => privateS3.cidrBlocks?.[0]),
///     fromPort: 443,
///     toPort: 443,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// private_s3_vpc_endpoint = aws.ec2.VpcEndpoint("private_s3",
///     vpc_id=foo["id"],
///     service_name="com.amazonaws.us-west-2.s3")
/// private_s3 = aws.ec2.get_prefix_list_output(prefix_list_id=private_s3_vpc_endpoint.prefix_list_id)
/// bar = aws.ec2.NetworkAcl("bar", vpc_id=foo["id"])
/// private_s3_network_acl_rule = aws.ec2.NetworkAclRule("private_s3",
///     network_acl_id=bar.id,
///     rule_number=200,
///     egress=False,
///     protocol="tcp",
///     rule_action="allow",
///     cidr_block=private_s3.cidr_blocks[0],
///     from_port=443,
///     to_port=443)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var privateS3VpcEndpoint = new Aws.Ec2.VpcEndpoint("private_s3", new()
///     {
///         VpcId = foo.Id,
///         ServiceName = "com.amazonaws.us-west-2.s3",
///     });
///
///     var privateS3 = Aws.Ec2.GetPrefixList.Invoke(new()
///     {
///         PrefixListId = privateS3VpcEndpoint.PrefixListId,
///     });
///
///     var bar = new Aws.Ec2.NetworkAcl("bar", new()
///     {
///         VpcId = foo.Id,
///     });
///
///     var privateS3NetworkAclRule = new Aws.Ec2.NetworkAclRule("private_s3", new()
///     {
///         NetworkAclId = bar.Id,
///         RuleNumber = 200,
///         Egress = false,
///         Protocol = "tcp",
///         RuleAction = "allow",
///         CidrBlock = privateS3.Apply(getPrefixListResult => getPrefixListResult.CidrBlocks[0]),
///         FromPort = 443,
///         ToPort = 443,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		privateS3VpcEndpoint, err := ec2.NewVpcEndpoint(ctx, "private_s3", &ec2.VpcEndpointArgs{
/// 			VpcId:       pulumi.Any(foo.Id),
/// 			ServiceName: pulumi.String("com.amazonaws.us-west-2.s3"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		privateS3 := ec2.GetPrefixListOutput(ctx, ec2.GetPrefixListOutputArgs{
/// 			PrefixListId: privateS3VpcEndpoint.PrefixListId,
/// 		}, nil)
/// 		bar, err := ec2.NewNetworkAcl(ctx, "bar", &ec2.NetworkAclArgs{
/// 			VpcId: pulumi.Any(foo.Id),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ec2.NewNetworkAclRule(ctx, "private_s3", &ec2.NetworkAclRuleArgs{
/// 			NetworkAclId: bar.ID().ToIDOutput().ToStringOutput(),
/// 			RuleNumber:   pulumi.Int(200),
/// 			Egress:       pulumi.Bool(false),
/// 			Protocol:     pulumi.String("tcp"),
/// 			RuleAction:   pulumi.String("allow"),
/// 			CidrBlock: privateS3.ApplyT(func(privateS3 ec2.GetPrefixListResult) (*string, error) {
/// 				return &privateS3.CidrBlocks[0], nil
/// 			}).(pulumi.StringPtrOutput),
/// 			FromPort: pulumi.Int(443),
/// 			ToPort:   pulumi.Int(443),
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
/// data "aws_ec2_getprefixlist" "privateS3" {
///   prefix_list_id = aws_ec2_vpcendpoint.private_s3.prefix_list_id
/// }
///
/// resource "aws_ec2_vpcendpoint" "private_s3" {
///   vpc_id       = foo.id
///   service_name = "com.amazonaws.us-west-2.s3"
/// }
/// resource "aws_ec2_networkacl" "bar" {
///   vpc_id = foo.id
/// }
/// resource "aws_ec2_networkaclrule" "private_s3" {
///   network_acl_id = aws_ec2_networkacl.bar.id
///   rule_number    = 200
///   egress         = false
///   protocol       = "tcp"
///   rule_action    = "allow"
///   cidr_block     = data.aws_ec2_getprefixlist.privateS3.cidr_blocks[0]
///   from_port      = 443
///   to_port        = 443
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.VpcEndpoint;
/// import com.pulumi.aws.ec2.VpcEndpointArgs;
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetPrefixListArgs;
/// import com.pulumi.aws.ec2.NetworkAcl;
/// import com.pulumi.aws.ec2.NetworkAclArgs;
/// import com.pulumi.aws.ec2.NetworkAclRule;
/// import com.pulumi.aws.ec2.NetworkAclRuleArgs;
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
///         var privateS3VpcEndpoint = new VpcEndpoint("privateS3VpcEndpoint", VpcEndpointArgs.builder()
///             .vpcId(foo.id())
///             .serviceName("com.amazonaws.us-west-2.s3")
///             .build());
///
///         final var privateS3 = Ec2Functions.getPrefixList(GetPrefixListArgs.builder()
///             .prefixListId(privateS3VpcEndpoint.prefixListId())
///             .build());
///
///         var bar = new NetworkAcl("bar", NetworkAclArgs.builder()
///             .vpcId(foo.id())
///             .build());
///
///         var privateS3NetworkAclRule = new NetworkAclRule("privateS3NetworkAclRule", NetworkAclRuleArgs.builder()
///             .networkAclId(bar.id())
///             .ruleNumber(200)
///             .egress(false)
///             .protocol("tcp")
///             .ruleAction("allow")
///             .cidrBlock(privateS3.applyValue(_privateS3 -> _privateS3.cidrBlocks()[0]))
///             .fromPort(443)
///             .toPort(443)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   privateS3VpcEndpoint:
///     type: aws:ec2:VpcEndpoint
///     name: private_s3
///     properties:
///       vpcId: ${foo.id}
///       serviceName: com.amazonaws.us-west-2.s3
///   bar:
///     type: aws:ec2:NetworkAcl
///     properties:
///       vpcId: ${foo.id}
///   privateS3NetworkAclRule:
///     type: aws:ec2:NetworkAclRule
///     name: private_s3
///     properties:
///       networkAclId: ${bar.id}
///       ruleNumber: 200
///       egress: false
///       protocol: tcp
///       ruleAction: allow
///       cidrBlock: ${privateS3.cidrBlocks[0]}
///       fromPort: 443
///       toPort: 443
/// variables:
///   privateS3:
///     fn::invoke:
///       function: aws:ec2:getPrefixList
///       arguments:
///         prefixListId: ${privateS3VpcEndpoint.prefixListId}
/// ```
///
///
/// ### Filter
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.ec2.getPrefixList({
///     filters: [{
///         name: "prefix-list-id",
///         values: ["pl-68a54001"],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.ec2.get_prefix_list(filters=[{
///     "name": "prefix-list-id",
///     "values": ["pl-68a54001"],
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
///     var test = Aws.Ec2.GetPrefixList.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new Aws.Ec2.Inputs.GetPrefixListFilterInputArgs
///             {
///                 Name = "prefix-list-id",
///                 Values = new[]
///                 {
///                     "pl-68a54001",
///                 },
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2.GetPrefixList(ctx, &ec2.GetPrefixListArgs{
/// 			Filters: []ec2.GetPrefixListFilter{
/// 				{
/// 					Name: "prefix-list-id",
/// 					Values: []string{
/// 						"pl-68a54001",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
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
/// data "aws_ec2_getprefixlist" "test" {
///   filters {
///     name   = "prefix-list-id"
///     values = ["pl-68a54001"]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetPrefixListArgs;
/// import com.pulumi.aws.ec2.inputs.GetPrefixListFilterArgs;
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
///         final var test = Ec2Functions.getPrefixList(GetPrefixListArgs.builder()
///             .filters(GetPrefixListFilterArgs.builder()
///                 .name("prefix-list-id")
///                 .values("pl-68a54001")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   test:
///     fn::invoke:
///       function: aws:ec2:getPrefixList
///       arguments:
///         filters:
///           - name: prefix-list-id
///             values:
///               - pl-68a54001
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ec2_get_prefix_list_get_prefix_list_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrefixListResult> getPrefixList(
  GetPrefixListArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getPrefixList:getPrefixList',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrefixListResult.fromMap(result);
}

/// Provides details about a specific AWS EC2 Public IPv4 Pool.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ec2.getPublicIpv4Pool({
///     poolId: "ipv4pool-ec2-000df99cff0c1ec10",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.get_public_ipv4_pool(pool_id="ipv4pool-ec2-000df99cff0c1ec10")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Ec2.GetPublicIpv4Pool.Invoke(new()
///     {
///         PoolId = "ipv4pool-ec2-000df99cff0c1ec10",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2.GetPublicIpv4Pool(ctx, &ec2.GetPublicIpv4PoolArgs{
/// 			PoolId: "ipv4pool-ec2-000df99cff0c1ec10",
/// 		}, nil)
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
/// data "aws_ec2_getpublicipv4pool" "example" {
///   pool_id = "ipv4pool-ec2-000df99cff0c1ec10"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetPublicIpv4PoolArgs;
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
///         final var example = Ec2Functions.getPublicIpv4Pool(GetPublicIpv4PoolArgs.builder()
///             .poolId("ipv4pool-ec2-000df99cff0c1ec10")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:ec2:getPublicIpv4Pool
///       arguments:
///         poolId: ipv4pool-ec2-000df99cff0c1ec10
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ec2_get_public_ipv4_pool_get_public_ipv4_pool_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPublicIpv4PoolResult> getPublicIpv4Pool(
  GetPublicIpv4PoolArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getPublicIpv4Pool:getPublicIpv4Pool',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPublicIpv4PoolResult.fromMap(result);
}

/// Data source for getting information about AWS EC2 Public IPv4 Pools.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// // Returns all public IPv4 pools.
/// const example = aws.ec2.getPublicIpv4Pools({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// # Returns all public IPv4 pools.
/// example = aws.ec2.get_public_ipv4_pools()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Returns all public IPv4 pools.
///     var example = Aws.Ec2.GetPublicIpv4Pools.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// Returns all public IPv4 pools.
/// 		_, err := ec2.GetPublicIpv4Pools(ctx, &ec2.GetPublicIpv4PoolsArgs{}, nil)
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
/// data "aws_ec2_getpublicipv4pools" "example" {
/// }
///
/// # Returns all public IPv4 pools.
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetPublicIpv4PoolsArgs;
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
///         // Returns all public IPv4 pools.
///         final var example = Ec2Functions.getPublicIpv4Pools(GetPublicIpv4PoolsArgs.builder()
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   # Returns all public IPv4 pools.
///   example:
///     fn::invoke:
///       function: aws:ec2:getPublicIpv4Pools
///       arguments: {}
/// ```
///
///
/// ### Usage with Filter
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ec2.getPublicIpv4Pools({
///     filters: [{
///         name: "tag-key",
///         values: ["ExampleTagKey"],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.get_public_ipv4_pools(filters=[{
///     "name": "tag-key",
///     "values": ["ExampleTagKey"],
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
///     var example = Aws.Ec2.GetPublicIpv4Pools.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new Aws.Ec2.Inputs.GetPublicIpv4PoolsFilterInputArgs
///             {
///                 Name = "tag-key",
///                 Values = new[]
///                 {
///                     "ExampleTagKey",
///                 },
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2.GetPublicIpv4Pools(ctx, &ec2.GetPublicIpv4PoolsArgs{
/// 			Filters: []ec2.GetPublicIpv4PoolsFilter{
/// 				{
/// 					Name: "tag-key",
/// 					Values: []string{
/// 						"ExampleTagKey",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
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
/// data "aws_ec2_getpublicipv4pools" "example" {
///   filters {
///     name   = "tag-key"
///     values = ["ExampleTagKey"]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetPublicIpv4PoolsArgs;
/// import com.pulumi.aws.ec2.inputs.GetPublicIpv4PoolsFilterArgs;
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
///         final var example = Ec2Functions.getPublicIpv4Pools(GetPublicIpv4PoolsArgs.builder()
///             .filters(GetPublicIpv4PoolsFilterArgs.builder()
///                 .name("tag-key")
///                 .values("ExampleTagKey")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:ec2:getPublicIpv4Pools
///       arguments:
///         filters:
///           - name: tag-key
///             values:
///               - ExampleTagKey
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ec2_get_public_ipv4_pools_get_public_ipv4_pools_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPublicIpv4PoolsResult> getPublicIpv4Pools(
  GetPublicIpv4PoolsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getPublicIpv4Pools:getPublicIpv4Pools',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPublicIpv4PoolsResult.fromMap(result);
}

/// `aws.ec2.Route` provides details about a specific Route.
///
/// This resource can prove useful when finding the resource associated with a CIDR. For example, finding the peering connection associated with a CIDR value.
///
/// ## Example Usage
///
/// The following example shows how one might use a CIDR value to find a network interface id and use this to create a data source of that network interface.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const config = new pulumi.Config();
/// const subnetId = config.requireObject<any>("subnetId");
/// const selected = aws.ec2.getRouteTable({
///     subnetId: subnetId,
/// });
/// const route = aws.ec2.getRoute({
///     routeTableId: selectedAwsRouteTable.id,
///     destinationCidrBlock: "10.0.1.0/24",
/// });
/// const _interface = route.then(route => aws.ec2.getNetworkInterface({
///     id: route.networkInterfaceId,
/// }));
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// config = pulumi.Config()
/// subnet_id = config.require_object("subnetId")
/// selected = aws.ec2.get_route_table(subnet_id=subnet_id)
/// route = aws.ec2.get_route(route_table_id=selected_aws_route_table["id"],
///     destination_cidr_block="10.0.1.0/24")
/// interface = aws.ec2.get_network_interface(id=route.network_interface_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var subnetId = config.RequireObject<dynamic>("subnetId");
///     var selected = Aws.Ec2.GetRouteTable.Invoke(new()
///     {
///         SubnetId = subnetId,
///     });
///
///     var route = Aws.Ec2.GetRoute.Invoke(new()
///     {
///         RouteTableId = selectedAwsRouteTable.Id,
///         DestinationCidrBlock = "10.0.1.0/24",
///     });
///
///     var @interface = Aws.Ec2.GetNetworkInterface.Invoke(new()
///     {
///         Id = route.Apply(getRouteResult => getRouteResult.NetworkInterfaceId),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		var subnetId interface{}
/// 		cfg.RequireObject("subnetId", &subnetId)
/// 		_, err := ec2.LookupRouteTable(ctx, &ec2.LookupRouteTableArgs{
/// 			SubnetId: pulumi.StringRef(subnetId),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		route, err := ec2.LookupRoute(ctx, &ec2.LookupRouteArgs{
/// 			RouteTableId:         selectedAwsRouteTable.Id,
/// 			DestinationCidrBlock: pulumi.StringRef("10.0.1.0/24"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ec2.LookupNetworkInterface(ctx, &ec2.LookupNetworkInterfaceArgs{
/// 			Id: pulumi.StringRef(route.NetworkInterfaceId),
/// 		}, nil)
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
/// data "aws_ec2_getroutetable" "selected" {
///   subnet_id = var.subnetId
/// }
/// data "aws_ec2_getroute" "route" {
///   route_table_id         = selectedAwsRouteTable.id
///   destination_cidr_block = "10.0.1.0/24"
/// }
/// data "aws_ec2_getnetworkinterface" "interface" {
///   id = data.aws_ec2_getroute.route.network_interface_id
/// }
///
/// variable "subnetId" {
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetRouteTableArgs;
/// import com.pulumi.aws.ec2.inputs.GetRouteArgs;
/// import com.pulumi.aws.ec2.inputs.GetNetworkInterfaceArgs;
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
///         final var config = ctx.config();
///         final var subnetId = config.require("subnetId");
///         final var selected = Ec2Functions.getRouteTable(GetRouteTableArgs.builder()
///             .subnetId(subnetId)
///             .build());
///
///         final var route = Ec2Functions.getRoute(GetRouteArgs.builder()
///             .routeTableId(selectedAwsRouteTable.id())
///             .destinationCidrBlock("10.0.1.0/24")
///             .build());
///
///         final var interface = Ec2Functions.getNetworkInterface(GetNetworkInterfaceArgs.builder()
///             .id(route.networkInterfaceId())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   subnetId:
///     type: object
/// variables:
///   selected:
///     fn::invoke:
///       function: aws:ec2:getRouteTable
///       arguments:
///         subnetId: ${subnetId}
///   route:
///     fn::invoke:
///       function: aws:ec2:getRoute
///       arguments:
///         routeTableId: ${selectedAwsRouteTable.id}
///         destinationCidrBlock: 10.0.1.0/24
///   interface:
///     fn::invoke:
///       function: aws:ec2:getNetworkInterface
///       arguments:
///         id: ${route.networkInterfaceId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ec2_get_route_get_route_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRouteResult> getRoute(
  GetRouteArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getRoute:getRoute',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRouteResult.fromMap(result);
}

/// `aws.ec2.RouteTable` provides details about a specific Route Table.
///
/// This resource can prove useful when a module accepts a Subnet ID as an input variable and needs to, for example, add a route in the Route Table.
///
/// ## Example Usage
///
/// The following example shows how one might accept a Route Table ID as a variable and use this data source to obtain the data necessary to create a route.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const config = new pulumi.Config();
/// const subnetId = config.requireObject<any>("subnetId");
/// const selected = aws.ec2.getRouteTable({
///     subnetId: subnetId,
/// });
/// const route = new aws.ec2.Route("route", {
///     routeTableId: selected.then(selected => selected.id),
///     destinationCidrBlock: "10.0.1.0/22",
///     vpcPeeringConnectionId: "pcx-45ff3dc1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// config = pulumi.Config()
/// subnet_id = config.require_object("subnetId")
/// selected = aws.ec2.get_route_table(subnet_id=subnet_id)
/// route = aws.ec2.Route("route",
///     route_table_id=selected.id,
///     destination_cidr_block="10.0.1.0/22",
///     vpc_peering_connection_id="pcx-45ff3dc1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var subnetId = config.RequireObject<dynamic>("subnetId");
///     var selected = Aws.Ec2.GetRouteTable.Invoke(new()
///     {
///         SubnetId = subnetId,
///     });
///
///     var route = new Aws.Ec2.Route("route", new()
///     {
///         RouteTableId = selected.Apply(getRouteTableResult => getRouteTableResult.Id),
///         DestinationCidrBlock = "10.0.1.0/22",
///         VpcPeeringConnectionId = "pcx-45ff3dc1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		var subnetId interface{}
/// 		cfg.RequireObject("subnetId", &subnetId)
/// 		selected, err := ec2.LookupRouteTable(ctx, &ec2.LookupRouteTableArgs{
/// 			SubnetId: pulumi.StringRef(subnetId),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ec2.NewRoute(ctx, "route", &ec2.RouteArgs{
/// 			RouteTableId:           pulumi.String(selected.Id),
/// 			DestinationCidrBlock:   pulumi.String("10.0.1.0/22"),
/// 			VpcPeeringConnectionId: pulumi.String("pcx-45ff3dc1"),
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
/// data "aws_ec2_getroutetable" "selected" {
///   subnet_id = var.subnetId
/// }
///
/// resource "aws_ec2_route" "route" {
///   route_table_id            = data.aws_ec2_getroutetable.selected.id
///   destination_cidr_block    = "10.0.1.0/22"
///   vpc_peering_connection_id = "pcx-45ff3dc1"
/// }
/// variable "subnetId" {
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetRouteTableArgs;
/// import com.pulumi.aws.ec2.Route;
/// import com.pulumi.aws.ec2.RouteArgs;
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
///         final var config = ctx.config();
///         final var subnetId = config.require("subnetId");
///         final var selected = Ec2Functions.getRouteTable(GetRouteTableArgs.builder()
///             .subnetId(subnetId)
///             .build());
///
///         var route = new Route("route", RouteArgs.builder()
///             .routeTableId(selected.id())
///             .destinationCidrBlock("10.0.1.0/22")
///             .vpcPeeringConnectionId("pcx-45ff3dc1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   subnetId:
///     type: object
/// resources:
///   route:
///     type: aws:ec2:Route
///     properties:
///       routeTableId: ${selected.id}
///       destinationCidrBlock: 10.0.1.0/22
///       vpcPeeringConnectionId: pcx-45ff3dc1
/// variables:
///   selected:
///     fn::invoke:
///       function: aws:ec2:getRouteTable
///       arguments:
///         subnetId: ${subnetId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ec2_get_route_table_get_route_table_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRouteTableResult> getRouteTable(
  GetRouteTableArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getRouteTable:getRouteTable',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRouteTableResult.fromMap(result);
}

/// This resource can be useful for getting back a list of route table ids to be referenced elsewhere.
///
/// ## Example Usage
///
/// The following adds a route for a particular cidr block to every (private
/// kops) route table in a specified vpc to use a particular vpc peering
/// connection.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const rts = aws.ec2.getRouteTables({
///     vpcId: vpcId,
///     filters: [{
///         name: "tag:kubernetes.io/kops/role",
///         values: ["private*"],
///     }],
/// });
/// const r: aws.ec2.Route[] = [];
/// rts.then(rts => rts.ids).length.apply(rangeBody => {
///     for (let range = 0; range < rangeBody; range++) {
///         r.push(new aws.ec2.Route(`r-${range}`, {
///             routeTableId: rts.then(rts => rts.ids[range]),
///             destinationCidrBlock: "10.0.0.0/22",
///             vpcPeeringConnectionId: "pcx-0e9a7a9ecd137dc54",
///         }));
///     }
/// });
/// ```
/// ```python
/// import pulumi
/// from typing import Any
/// import pulumi_aws as aws
///
/// rts = aws.ec2.get_route_tables(vpc_id=vpc_id,
///     filters=[{
///         "name": "tag:kubernetes.io/kops/role",
///         "values": ["private*"],
///     }])
/// r: list[aws.ec2.Route] = []
/// def create_r(range_body):
///     for r_range in [{"value": i} for i in range(0, range_body)]:
///         r.append(aws.ec2.Route(f"r-{r_range['value']}",
///             route_table_id=rts.ids[r_range["value"]],
///             destination_cidr_block="10.0.0.0/22",
///             vpc_peering_connection_id="pcx-0e9a7a9ecd137dc54"))
///
/// (len(rts.ids)).apply(create_r)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var rts = Aws.Ec2.GetRouteTables.Invoke(new()
///     {
///         VpcId = vpcId,
///         Filters = new[]
///         {
///             new Aws.Ec2.Inputs.GetRouteTablesFilterInputArgs
///             {
///                 Name = "tag:kubernetes.io/kops/role",
///                 Values = new[]
///                 {
///                     "private*",
///                 },
///             },
///         },
///     });
///
///     var r = new List<Aws.Ec2.Route>();
///     rts.Apply(getRouteTablesResult => getRouteTablesResult.Ids).Length().Apply(rangeBody =>
///     {
///         for (var rangeIndex = 0; rangeIndex < rangeBody; rangeIndex++)
///         {
///             var range = new { Value = rangeIndex };
///             r.Add(new Aws.Ec2.Route($"r-{range.Value}", new()
///             {
///                 RouteTableId = rts.Apply(getRouteTablesResult => getRouteTablesResult.Ids)[range.Value],
///                 DestinationCidrBlock = "10.0.0.0/22",
///                 VpcPeeringConnectionId = "pcx-0e9a7a9ecd137dc54",
///             }));
///         }
///         return 0;
///     });
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		rts, err := ec2.GetRouteTables(ctx, &ec2.GetRouteTablesArgs{
/// 			VpcId: pulumi.StringRef(vpcId),
/// 			Filters: []ec2.GetRouteTablesFilter{
/// 				{
/// 					Name: "tag:kubernetes.io/kops/role",
/// 					Values: []string{
/// 						"private*",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		var r []*ec2.Route
/// 		for index := 0; index < int(len(rts.Ids)); index++ {
/// 			key0 := index
/// 			val0 := index
/// 			__res, err := ec2.NewRoute(ctx, fmt.Sprintf("r-%v", key0), &ec2.RouteArgs{
/// 				RouteTableId:           pulumi.String(rts.Ids[val0]),
/// 				DestinationCidrBlock:   pulumi.String("10.0.0.0/22"),
/// 				VpcPeeringConnectionId: pulumi.String("pcx-0e9a7a9ecd137dc54"),
/// 			})
/// 			if err != nil {
/// 				return err
/// 			}
/// 			r = append(r, __res)
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
/// data "aws_ec2_getroutetables" "rts" {
///   vpc_id = vpcId
///   filters {
///     name   = "tag:kubernetes.io/kops/role"
///     values = ["private*"]
///   }
/// }
///
/// resource "aws_ec2_route" "r" {
///   count                     = length(data.aws_ec2_getroutetables.rts.ids)
///   route_table_id            = data.aws_ec2_getroutetables.rts.ids[count.index]
///   destination_cidr_block    = "10.0.0.0/22"
///   vpc_peering_connection_id = "pcx-0e9a7a9ecd137dc54"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetRouteTablesArgs;
/// import com.pulumi.aws.ec2.inputs.GetRouteTablesFilterArgs;
/// import com.pulumi.aws.ec2.Route;
/// import com.pulumi.aws.ec2.RouteArgs;
/// import com.pulumi.codegen.internal.KeyedValue;
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
///         final var rts = Ec2Functions.getRouteTables(GetRouteTablesArgs.builder()
///             .vpcId(vpcId)
///             .filters(GetRouteTablesFilterArgs.builder()
///                 .name("tag:kubernetes.io/kops/role")
///                 .values("private*")
///                 .build())
///             .build());
///
///         for (var i = 0; i < rts.ids().size(); i++) {
///             new Route("r-" + i, RouteArgs.builder()
///                 .routeTableId(rts.ids()[range.value()])
///                 .destinationCidrBlock("10.0.0.0/22")
///                 .vpcPeeringConnectionId("pcx-0e9a7a9ecd137dc54")
///                 .build());
///
///
/// }
///     }
/// }
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ec2_get_route_tables_get_route_tables_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRouteTablesResult> getRouteTables(
  GetRouteTablesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getRouteTables:getRouteTables',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRouteTablesResult.fromMap(result);
}

/// `aws.ec2.SecurityGroup` provides details about a specific Security Group.
///
/// This resource can prove useful when a module accepts a Security Group id as
/// an input variable and needs to, for example, determine the id of the
/// VPC that the security group belongs to.
///
/// ## Example Usage
///
/// The following example shows how one might accept a Security Group id as a variable
/// and use this data source to obtain the data necessary to create a subnet.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const config = new pulumi.Config();
/// const securityGroupId = config.requireObject<any>("securityGroupId");
/// const selected = aws.ec2.getSecurityGroup({
///     id: securityGroupId,
/// });
/// const subnet = new aws.ec2.Subnet("subnet", {
///     vpcId: selected.then(selected => selected.vpcId),
///     cidrBlock: "10.0.1.0/24",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// config = pulumi.Config()
/// security_group_id = config.require_object("securityGroupId")
/// selected = aws.ec2.get_security_group(id=security_group_id)
/// subnet = aws.ec2.Subnet("subnet",
///     vpc_id=selected.vpc_id,
///     cidr_block="10.0.1.0/24")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var securityGroupId = config.RequireObject<dynamic>("securityGroupId");
///     var selected = Aws.Ec2.GetSecurityGroup.Invoke(new()
///     {
///         Id = securityGroupId,
///     });
///
///     var subnet = new Aws.Ec2.Subnet("subnet", new()
///     {
///         VpcId = selected.Apply(getSecurityGroupResult => getSecurityGroupResult.VpcId),
///         CidrBlock = "10.0.1.0/24",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		var securityGroupId interface{}
/// 		cfg.RequireObject("securityGroupId", &securityGroupId)
/// 		selected, err := ec2.LookupSecurityGroup(ctx, &ec2.LookupSecurityGroupArgs{
/// 			Id: pulumi.StringRef(securityGroupId),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ec2.NewSubnet(ctx, "subnet", &ec2.SubnetArgs{
/// 			VpcId:     pulumi.String(selected.VpcId),
/// 			CidrBlock: pulumi.String("10.0.1.0/24"),
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
/// data "aws_ec2_getsecuritygroup" "selected" {
///   id = var.securityGroupId
/// }
///
/// resource "aws_ec2_subnet" "subnet" {
///   vpc_id     = data.aws_ec2_getsecuritygroup.selected.vpc_id
///   cidr_block = "10.0.1.0/24"
/// }
/// variable "securityGroupId" {
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetSecurityGroupArgs;
/// import com.pulumi.aws.ec2.Subnet;
/// import com.pulumi.aws.ec2.SubnetArgs;
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
///         final var config = ctx.config();
///         final var securityGroupId = config.require("securityGroupId");
///         final var selected = Ec2Functions.getSecurityGroup(GetSecurityGroupArgs.builder()
///             .id(securityGroupId)
///             .build());
///
///         var subnet = new Subnet("subnet", SubnetArgs.builder()
///             .vpcId(selected.vpcId())
///             .cidrBlock("10.0.1.0/24")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   securityGroupId:
///     type: object
/// resources:
///   subnet:
///     type: aws:ec2:Subnet
///     properties:
///       vpcId: ${selected.vpcId}
///       cidrBlock: 10.0.1.0/24
/// variables:
///   selected:
///     fn::invoke:
///       function: aws:ec2:getSecurityGroup
///       arguments:
///         id: ${securityGroupId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ec2_get_security_group_get_security_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSecurityGroupResult> getSecurityGroup(
  GetSecurityGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getSecurityGroup:getSecurityGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSecurityGroupResult.fromMap(result);
}

/// Use this data source to get IDs and VPC membership of Security Groups that are created outside this provider.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.ec2.getSecurityGroups({
///     tags: {
///         Application: "k8s",
///         Environment: "dev",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.ec2.get_security_groups(tags={
///     "Application": "k8s",
///     "Environment": "dev",
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
///     var test = Aws.Ec2.GetSecurityGroups.Invoke(new()
///     {
///         Tags =
///         {
///             { "Application", "k8s" },
///             { "Environment", "dev" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2.GetSecurityGroups(ctx, &ec2.GetSecurityGroupsArgs{
/// 			Tags: map[string]string{
/// 				"Application": "k8s",
/// 				"Environment": "dev",
/// 			},
/// 		}, nil)
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
/// data "aws_ec2_getsecuritygroups" "test" {
///   tags = {
///     "Application" = "k8s"
///     "Environment" = "dev"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetSecurityGroupsArgs;
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
///         final var test = Ec2Functions.getSecurityGroups(GetSecurityGroupsArgs.builder()
///             .tags(Map.ofEntries(
///                 Map.entry("Application", "k8s"),
///                 Map.entry("Environment", "dev")
///             ))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   test:
///     fn::invoke:
///       function: aws:ec2:getSecurityGroups
///       arguments:
///         tags:
///           Application: k8s
///           Environment: dev
/// ```
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.ec2.getSecurityGroups({
///     filters: [
///         {
///             name: "group-name",
///             values: ["*nodes*"],
///         },
///         {
///             name: "vpc-id",
///             values: [vpcId],
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.ec2.get_security_groups(filters=[
///     {
///         "name": "group-name",
///         "values": ["*nodes*"],
///     },
///     {
///         "name": "vpc-id",
///         "values": [vpc_id],
///     },
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
///     var test = Aws.Ec2.GetSecurityGroups.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new Aws.Ec2.Inputs.GetSecurityGroupsFilterInputArgs
///             {
///                 Name = "group-name",
///                 Values = new[]
///                 {
///                     "*nodes*",
///                 },
///             },
///             new Aws.Ec2.Inputs.GetSecurityGroupsFilterInputArgs
///             {
///                 Name = "vpc-id",
///                 Values = new[]
///                 {
///                     vpcId,
///                 },
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2.GetSecurityGroups(ctx, &ec2.GetSecurityGroupsArgs{
/// 			Filters: []ec2.GetSecurityGroupsFilter{
/// 				{
/// 					Name: "group-name",
/// 					Values: []string{
/// 						"*nodes*",
/// 					},
/// 				},
/// 				{
/// 					Name: "vpc-id",
/// 					Values: pulumi.StringArray{
/// 						vpcId,
/// 					},
/// 				},
/// 			},
/// 		}, nil)
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
/// data "aws_ec2_getsecuritygroups" "test" {
///   filters {
///     name   = "group-name"
///     values = ["*nodes*"]
///   }
///   filters {
///     name   = "vpc-id"
///     values = [vpcId]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetSecurityGroupsArgs;
/// import com.pulumi.aws.ec2.inputs.GetSecurityGroupsFilterArgs;
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
///         final var test = Ec2Functions.getSecurityGroups(GetSecurityGroupsArgs.builder()
///             .filters(
///                 GetSecurityGroupsFilterArgs.builder()
///                     .name("group-name")
///                     .values("*nodes*")
///                     .build(),
///                 GetSecurityGroupsFilterArgs.builder()
///                     .name("vpc-id")
///                     .values(vpcId)
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   test:
///     fn::invoke:
///       function: aws:ec2:getSecurityGroups
///       arguments:
///         filters:
///           - name: group-name
///             values:
///               - '*nodes*'
///           - name: vpc-id
///             values:
///               - ${vpcId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ec2_get_security_groups_get_security_groups_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSecurityGroupsResult> getSecurityGroups(
  GetSecurityGroupsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getSecurityGroups:getSecurityGroups',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSecurityGroupsResult.fromMap(result);
}

/// Provides a way to check whether serial console access is enabled for your AWS account in the current AWS region.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.ec2.getSerialConsoleAccess({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// current = aws.ec2.get_serial_console_access()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = Aws.Ec2.GetSerialConsoleAccess.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2.LookupSerialConsoleAccess(ctx, &ec2.LookupSerialConsoleAccessArgs{}, nil)
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
/// data "aws_ec2_getserialconsoleaccess" "current" {
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetSerialConsoleAccessArgs;
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
///         final var current = Ec2Functions.getSerialConsoleAccess(GetSerialConsoleAccessArgs.builder()
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   current:
///     fn::invoke:
///       function: aws:ec2:getSerialConsoleAccess
///       arguments: {}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ec2_get_serial_console_access_get_serial_console_access_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSerialConsoleAccessResult> getSerialConsoleAccess(
  GetSerialConsoleAccessArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getSerialConsoleAccess:getSerialConsoleAccess',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSerialConsoleAccessResult.fromMap(result);
}

/// Provides details about an EC2 Service Link Virtual Interface. More information can be found in the [Outposts User Guide](https://docs.aws.amazon.com/outposts/latest/userguide/how-outposts-works.html#how-service-link).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ec2.getServiceLinkVirtualInterface({
///     id: "slvif-1234567890abcdef0",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.get_service_link_virtual_interface(id="slvif-1234567890abcdef0")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Ec2.GetServiceLinkVirtualInterface.Invoke(new()
///     {
///         Id = "slvif-1234567890abcdef0",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2.GetServiceLinkVirtualInterface(ctx, &ec2.GetServiceLinkVirtualInterfaceArgs{
/// 			Id: pulumi.StringRef("slvif-1234567890abcdef0"),
/// 		}, nil)
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
/// data "aws_ec2_getservicelinkvirtualinterface" "example" {
///   id = "slvif-1234567890abcdef0"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetServiceLinkVirtualInterfaceArgs;
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
///         final var example = Ec2Functions.getServiceLinkVirtualInterface(GetServiceLinkVirtualInterfaceArgs.builder()
///             .id("slvif-1234567890abcdef0")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:ec2:getServiceLinkVirtualInterface
///       arguments:
///         id: slvif-1234567890abcdef0
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ec2_get_service_link_virtual_interface_get_service_link_virtual_interface_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceLinkVirtualInterfaceResult> getServiceLinkVirtualInterface(
  GetServiceLinkVirtualInterfaceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getServiceLinkVirtualInterface:getServiceLinkVirtualInterface',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceLinkVirtualInterfaceResult.fromMap(result);
}

/// Provides a list of EC2 Service Link Virtual Interface IDs matching the provided filters. More information can be found in the [Outposts User Guide](https://docs.aws.amazon.com/outposts/latest/userguide/how-outposts-works.html#how-service-link).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ec2.getServiceLinkVirtualInterfaces({
///     filters: [{
///         name: "outpost-arn",
///         values: [exampleAwsOutpostsOutpost.arn],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.get_service_link_virtual_interfaces(filters=[{
///     "name": "outpost-arn",
///     "values": [example_aws_outposts_outpost["arn"]],
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
///     var example = Aws.Ec2.GetServiceLinkVirtualInterfaces.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new Aws.Ec2.Inputs.GetServiceLinkVirtualInterfacesFilterInputArgs
///             {
///                 Name = "outpost-arn",
///                 Values = new[]
///                 {
///                     exampleAwsOutpostsOutpost.Arn,
///                 },
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2.GetServiceLinkVirtualInterfaces(ctx, &ec2.GetServiceLinkVirtualInterfacesArgs{
/// 			Filters: []ec2.GetServiceLinkVirtualInterfacesFilter{
/// 				{
/// 					Name: "outpost-arn",
/// 					Values: pulumi.StringArray{
/// 						exampleAwsOutpostsOutpost.Arn,
/// 					},
/// 				},
/// 			},
/// 		}, nil)
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
/// data "aws_ec2_getservicelinkvirtualinterfaces" "example" {
///   filters {
///     name   = "outpost-arn"
///     values = [exampleAwsOutpostsOutpost.arn]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetServiceLinkVirtualInterfacesArgs;
/// import com.pulumi.aws.ec2.inputs.GetServiceLinkVirtualInterfacesFilterArgs;
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
///         final var example = Ec2Functions.getServiceLinkVirtualInterfaces(GetServiceLinkVirtualInterfacesArgs.builder()
///             .filters(GetServiceLinkVirtualInterfacesFilterArgs.builder()
///                 .name("outpost-arn")
///                 .values(exampleAwsOutpostsOutpost.arn())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:ec2:getServiceLinkVirtualInterfaces
///       arguments:
///         filters:
///           - name: outpost-arn
///             values:
///               - ${exampleAwsOutpostsOutpost.arn}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ec2_get_service_link_virtual_interfaces_get_service_link_virtual_interfaces_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceLinkVirtualInterfacesResult> getServiceLinkVirtualInterfaces(
  GetServiceLinkVirtualInterfacesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getServiceLinkVirtualInterfaces:getServiceLinkVirtualInterfaces',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceLinkVirtualInterfacesResult.fromMap(result);
}

/// &gt; There is only a single spot data feed subscription per account.
///
/// Data source for accessing an AWS EC2 (Elastic Compute Cloud) spot data feed subscription.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const _default = aws.ec2.getSpotDatafeedSubscription({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// default = aws.ec2.get_spot_datafeed_subscription()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = Aws.Ec2.GetSpotDatafeedSubscription.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2.LookupSpotDatafeedSubscription(ctx, &ec2.LookupSpotDatafeedSubscriptionArgs{}, nil)
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
/// data "aws_ec2_getspotdatafeedsubscription" "default" {
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetSpotDatafeedSubscriptionArgs;
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
///         final var default = Ec2Functions.getSpotDatafeedSubscription(GetSpotDatafeedSubscriptionArgs.builder()
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: aws:ec2:getSpotDatafeedSubscription
///       arguments: {}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ec2_get_spot_datafeed_subscription_get_spot_datafeed_subscription_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSpotDatafeedSubscriptionResult> getSpotDatafeedSubscription(
  GetSpotDatafeedSubscriptionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getSpotDatafeedSubscription:getSpotDatafeedSubscription',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSpotDatafeedSubscriptionResult.fromMap(result);
}

/// Information about most recent Spot Price for a given EC2 instance.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ec2.getSpotPrice({
///     instanceType: "t3.medium",
///     availabilityZone: "us-west-2a",
///     filters: [{
///         name: "product-description",
///         values: ["Linux/UNIX"],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.get_spot_price(instance_type="t3.medium",
///     availability_zone="us-west-2a",
///     filters=[{
///         "name": "product-description",
///         "values": ["Linux/UNIX"],
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Ec2.GetSpotPrice.Invoke(new()
///     {
///         InstanceType = "t3.medium",
///         AvailabilityZone = "us-west-2a",
///         Filters = new[]
///         {
///             new Aws.Ec2.Inputs.GetSpotPriceFilterInputArgs
///             {
///                 Name = "product-description",
///                 Values = new[]
///                 {
///                     "Linux/UNIX",
///                 },
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2.GetSpotPrice(ctx, &ec2.GetSpotPriceArgs{
/// 			InstanceType:     pulumi.StringRef("t3.medium"),
/// 			AvailabilityZone: pulumi.StringRef("us-west-2a"),
/// 			Filters: []ec2.GetSpotPriceFilter{
/// 				{
/// 					Name: "product-description",
/// 					Values: []string{
/// 						"Linux/UNIX",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
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
/// data "aws_ec2_getspotprice" "example" {
///   instance_type     = "t3.medium"
///   availability_zone = "us-west-2a"
///   filters {
///     name   = "product-description"
///     values = ["Linux/UNIX"]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetSpotPriceArgs;
/// import com.pulumi.aws.ec2.inputs.GetSpotPriceFilterArgs;
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
///         final var example = Ec2Functions.getSpotPrice(GetSpotPriceArgs.builder()
///             .instanceType("t3.medium")
///             .availabilityZone("us-west-2a")
///             .filters(GetSpotPriceFilterArgs.builder()
///                 .name("product-description")
///                 .values("Linux/UNIX")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:ec2:getSpotPrice
///       arguments:
///         instanceType: t3.medium
///         availabilityZone: us-west-2a
///         filters:
///           - name: product-description
///             values:
///               - Linux/UNIX
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ec2_get_spot_price_get_spot_price_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSpotPriceResult> getSpotPrice(
  GetSpotPriceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getSpotPrice:getSpotPrice',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSpotPriceResult.fromMap(result);
}

/// `aws.ec2.Subnet` provides details about a specific VPC subnet.
///
/// This resource can prove useful when a module accepts a subnet ID as an input variable and needs to, for example, determine the ID of the VPC that the subnet belongs to.
///
/// ## Example Usage
///
/// The following example shows how one might accept a subnet ID as a variable and use this data source to obtain the data necessary to create a security group that allows connections from hosts in that subnet.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const config = new pulumi.Config();
/// const subnetId = config.requireObject<any>("subnetId");
/// const selected = aws.ec2.getSubnet({
///     id: subnetId,
/// });
/// const subnetSecurityGroup = new aws.ec2.SecurityGroup("subnet_security_group", {
///     vpcId: selected.then(selected => selected.vpcId),
///     ingress: [{
///         cidrBlocks: [selected.then(selected => selected.cidrBlock)],
///         fromPort: 80,
///         toPort: 80,
///         protocol: "tcp",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// config = pulumi.Config()
/// subnet_id = config.require_object("subnetId")
/// selected = aws.ec2.get_subnet(id=subnet_id)
/// subnet_security_group = aws.ec2.SecurityGroup("subnet_security_group",
///     vpc_id=selected.vpc_id,
///     ingress=[{
///         "cidr_blocks": [selected.cidr_block],
///         "from_port": 80,
///         "to_port": 80,
///         "protocol": "tcp",
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var subnetId = config.RequireObject<dynamic>("subnetId");
///     var selected = Aws.Ec2.GetSubnet.Invoke(new()
///     {
///         Id = subnetId,
///     });
///
///     var subnetSecurityGroup = new Aws.Ec2.SecurityGroup("subnet_security_group", new()
///     {
///         VpcId = selected.Apply(getSubnetResult => getSubnetResult.VpcId),
///         Ingress = new[]
///         {
///             new Aws.Ec2.Inputs.SecurityGroupIngressArgs
///             {
///                 CidrBlocks = new[]
///                 {
///                     selected.Apply(getSubnetResult => getSubnetResult.CidrBlock),
///                 },
///                 FromPort = 80,
///                 ToPort = 80,
///                 Protocol = "tcp",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		var subnetId interface{}
/// 		cfg.RequireObject("subnetId", &subnetId)
/// 		selected, err := ec2.LookupSubnet(ctx, &ec2.LookupSubnetArgs{
/// 			Id: pulumi.StringRef(subnetId),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ec2.NewSecurityGroup(ctx, "subnet_security_group", &ec2.SecurityGroupArgs{
/// 			VpcId: pulumi.String(selected.VpcId),
/// 			Ingress: ec2.SecurityGroupIngressArray{
/// 				&ec2.SecurityGroupIngressArgs{
/// 					CidrBlocks: pulumi.StringArray{
/// 						pulumi.String(selected.CidrBlock),
/// 					},
/// 					FromPort: pulumi.Int(80),
/// 					ToPort:   pulumi.Int(80),
/// 					Protocol: pulumi.String("tcp"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_ec2_getsubnet" "selected" {
///   id = var.subnetId
/// }
///
/// resource "aws_ec2_securitygroup" "subnet_security_group" {
///   vpc_id = data.aws_ec2_getsubnet.selected.vpc_id
///   ingress {
///     cidr_blocks = [data.aws_ec2_getsubnet.selected.cidr_block]
///     from_port   = 80
///     to_port     = 80
///     protocol    = "tcp"
///   }
/// }
/// variable "subnetId" {
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetSubnetArgs;
/// import com.pulumi.aws.ec2.SecurityGroup;
/// import com.pulumi.aws.ec2.SecurityGroupArgs;
/// import com.pulumi.aws.ec2.inputs.SecurityGroupIngressArgs;
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
///         final var config = ctx.config();
///         final var subnetId = config.require("subnetId");
///         final var selected = Ec2Functions.getSubnet(GetSubnetArgs.builder()
///             .id(subnetId)
///             .build());
///
///         var subnetSecurityGroup = new SecurityGroup("subnetSecurityGroup", SecurityGroupArgs.builder()
///             .vpcId(selected.vpcId())
///             .ingress(SecurityGroupIngressArgs.builder()
///                 .cidrBlocks(selected.cidrBlock())
///                 .fromPort(80)
///                 .toPort(80)
///                 .protocol("tcp")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   subnetId:
///     type: object
/// resources:
///   subnetSecurityGroup:
///     type: aws:ec2:SecurityGroup
///     name: subnet_security_group
///     properties:
///       vpcId: ${selected.vpcId}
///       ingress:
///         - cidrBlocks:
///             - ${selected.cidrBlock}
///           fromPort: 80
///           toPort: 80
///           protocol: tcp
/// variables:
///   selected:
///     fn::invoke:
///       function: aws:ec2:getSubnet
///       arguments:
///         id: ${subnetId}
/// ```
///
///
/// ### Filter Example
///
/// If you want to match against tag `Name`, use:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const selected = aws.ec2.getSubnet({
///     filters: [{
///         name: "tag:Name",
///         values: ["yakdriver"],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// selected = aws.ec2.get_subnet(filters=[{
///     "name": "tag:Name",
///     "values": ["yakdriver"],
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
///     var selected = Aws.Ec2.GetSubnet.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new Aws.Ec2.Inputs.GetSubnetFilterInputArgs
///             {
///                 Name = "tag:Name",
///                 Values = new[]
///                 {
///                     "yakdriver",
///                 },
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2.LookupSubnet(ctx, &ec2.LookupSubnetArgs{
/// 			Filters: []ec2.GetSubnetFilter{
/// 				{
/// 					Name: "tag:Name",
/// 					Values: []string{
/// 						"yakdriver",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
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
/// data "aws_ec2_getsubnet" "selected" {
///   filters {
///     name   = "tag:Name"
///     values = ["yakdriver"]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetSubnetArgs;
/// import com.pulumi.aws.ec2.inputs.GetSubnetFilterArgs;
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
///         final var selected = Ec2Functions.getSubnet(GetSubnetArgs.builder()
///             .filters(GetSubnetFilterArgs.builder()
///                 .name("tag:Name")
///                 .values("yakdriver")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   selected:
///     fn::invoke:
///       function: aws:ec2:getSubnet
///       arguments:
///         filters:
///           - name: tag:Name
///             values:
///               - yakdriver
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ec2_get_subnet_get_subnet_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSubnetResult> getSubnet(
  GetSubnetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getSubnet:getSubnet',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSubnetResult.fromMap(result);
}

/// This resource can be useful for getting back a set of subnet IDs.
///
/// ## Example Usage
///
/// The following shows outputting all CIDR blocks for every subnet ID in a VPC.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// const example = aws.ec2.getSubnets({
///     filters: [{
///         name: "vpc-id",
///         values: [vpcId],
///     }],
/// });
/// const exampleGetSubnet = example.then(example => std.toset({
///     input: example.ids,
/// })).then(invoke => .reduce((__obj, [__key, __value]) => ({ ...__obj, [String(__key)]: aws.ec2.getSubnet({
///     id: __value,
/// }) }), {}));
/// export const subnetCidrBlocks = exampleGetSubnet.apply(exampleGetSubnet => Object.values(exampleGetSubnet).map(s => (s.cidrBlock)));
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// example = aws.ec2.get_subnets(filters=[{
///     "name": "vpc-id",
///     "values": [vpc_id],
/// }])
/// example_get_subnet = {str(__key): aws.ec2.get_subnet(id=__value) for __key, __value in enumerate(std.toset(input=example.ids).result)}
/// pulumi.export("subnetCidrBlocks", [s.cidr_block for s in example_get_subnet.values()])
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
///     var example = Aws.Ec2.GetSubnets.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new Aws.Ec2.Inputs.GetSubnetsFilterInputArgs
///             {
///                 Name = "vpc-id",
///                 Values = new[]
///                 {
///                     vpcId,
///                 },
///             },
///         },
///     });
///
///     var exampleGetSubnet = Std.Toset.Invoke(new()
///     {
///         Input = example.Apply(getSubnetsResult => getSubnetsResult.Ids),
///     }).Apply(invoke => );
///
///     return new Dictionary<string, object?>
///     {
///         ["subnetCidrBlocks"] = exampleGetSubnet.Apply(exampleGetSubnet => (exampleGetSubnet).Values.Select(s =>
///         {
///             return s.CidrBlock;
///         }).ToList()),
///     };
/// });
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///     std = {
///       source = "pulumi/std"
///     }
///   }
/// }
///
/// data "aws_ec2_getsubnets" "example" {
///   filters {
///     name   = "vpc-id"
///     values = [vpcId]
///   }
/// }
/// data "aws_ec2_getsubnet" "invoke_1" {
///   for_each = toset(data.aws_ec2_getsubnets.example.ids)
///   id       = each.value
/// }
///
/// locals {
///   exampleGetSubnet = {for __key, __value in toset(data.aws_ec2_getsubnets.example.ids) : __key => data.aws_ec2_getsubnet.invoke_1[__key]}
/// }
/// output "subnetCidrBlocks" {
///   value = [for s in local.exampleGetSubnet : s.cidrBlock]
/// }
/// ```
///
///
/// The following example retrieves a set of all subnets in a VPC with a custom
/// tag of `Tier` set to a value of "Private" so that the `aws.ec2.Instance` resource
/// can loop through the subnets, putting instances across availability zones.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// export = async () => {
///     const _private = await aws.ec2.getSubnets({
///         filters: [{
///             name: "vpc-id",
///             values: [vpcId],
///         }],
///         tags: {
///             Tier: "Private",
///         },
///     });
///     const app: aws.ec2.Instance[] = [];
///     for (const range of std.toset({
///         input: _private.ids,
///     }).result.map((v, k) => ({key: k, value: v}))) {
///         app.push(new aws.ec2.Instance(`app-${range.key}`, {
///             ami: ami,
///             instanceType: aws.ec2.InstanceType.T2_Micro,
///             subnetId: range.value,
///         }));
///     }
/// }
/// ```
/// ```python
/// import pulumi
/// from typing import Any
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// private = aws.ec2.get_subnets(filters=[{
///         "name": "vpc-id",
///         "values": [vpc_id],
///     }],
///     tags={
///         "Tier": "Private",
///     })
/// app: list[aws.ec2.Instance] = []
/// for app_range in [{"key": k, "value": v} for [k, v] in enumerate(std.toset(input=private.ids).result)]:
///     app.append(aws.ec2.Instance(f"app-{app_range['key']}",
///         ami=ami,
///         instance_type=aws.ec2.InstanceType.T2_MICRO,
///         subnet_id=app_range["value"]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Threading.Tasks;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(async() =>
/// {
///     var @private = await Aws.Ec2.GetSubnets.InvokeAsync(new()
///     {
///         Filters = new[]
///         {
///             new Aws.Ec2.Inputs.GetSubnetsFilterArgs
///             {
///                 Name = "vpc-id",
///                 Values = new[]
///                 {
///                     vpcId,
///                 },
///             },
///         },
///         Tags =
///         {
///             { "Tier", "Private" },
///         },
///     });
///
///     var app = new List<Aws.Ec2.Instance>();
///     foreach (var range in )
///     {
///         app.Add(new Aws.Ec2.Instance($"app-{range.Key}", new()
///         {
///             Ami = ami,
///             InstanceType = Aws.Ec2.InstanceType.T2_Micro,
///             SubnetId = range.Value,
///         }));
///     }
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		private, err := ec2.GetSubnets(ctx, &ec2.GetSubnetsArgs{
/// 			Filters: []ec2.GetSubnetsFilter{
/// 				{
/// 					Name: "vpc-id",
/// 					Values: pulumi.StringArray{
/// 						vpcId,
/// 					},
/// 				},
/// 			},
/// 			Tags: map[string]string{
/// 				"Tier": "Private",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		var app []*ec2.Instance
/// 		for key0, val0 := range []interface{}(std.Toset(ctx, &std.TosetArgs{
/// 			Input: private.Ids,
/// 		}, nil).Result) {
/// 			__res, err := ec2.NewInstance(ctx, fmt.Sprintf("app-%v", key0), &ec2.InstanceArgs{
/// 				Ami:          pulumi.Any(ami),
/// 				InstanceType: pulumi.String(ec2.InstanceType_T2_Micro),
/// 				SubnetId:     pulumi.Any(val0),
/// 			})
/// 			if err != nil {
/// 				return err
/// 			}
/// 			app = append(app, __res)
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
///     std = {
///       source = "pulumi/std"
///     }
///   }
/// }
///
/// data "aws_ec2_getsubnets" "private" {
///   filters {
///     name   = "vpc-id"
///     values = [vpcId]
///   }
///   tags = {
///     "Tier" = "Private"
///   }
/// }
///
/// resource "aws_ec2_instance" "app" {
///   for_each      = toset(data.aws_ec2_getsubnets.private.ids)
///   ami           = ami
///   instance_type = "t2.micro"
///   subnet_id     = each.value
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetSubnetsArgs;
/// import com.pulumi.aws.ec2.inputs.GetSubnetsFilterArgs;
/// import com.pulumi.aws.ec2.Instance;
/// import com.pulumi.aws.ec2.InstanceArgs;
/// import com.pulumi.codegen.internal.KeyedValue;
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
///         final var private = Ec2Functions.getSubnets(GetSubnetsArgs.builder()
///             .filters(GetSubnetsFilterArgs.builder()
///                 .name("vpc-id")
///                 .values(vpcId)
///                 .build())
///             .tags(Map.of("Tier", "Private"))
///             .build());
///
///         for (var range : KeyedValue.of(com.pulumi.std.StdFunctions(com.pulumi.std.inputs.TosetArgs.builder()
///             .input(private_.ids())
///             .build()).result())) {
///             new Instance("app-" + range.key(), InstanceArgs.builder()
///                 .ami(ami)
///                 .instanceType("t2.micro")
///                 .subnetId(range.value())
///                 .build());
///         }
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   app:
///     type: aws:ec2:Instance
///     properties:
///       ami: ${ami}
///       instanceType: t2.micro
///       subnetId: ${range.value}
///     options: {}
/// variables:
///   private:
///     fn::invoke:
///       function: aws:ec2:getSubnets
///       arguments:
///         filters:
///           - name: vpc-id
///             values:
///               - ${vpcId}
///         tags:
///           Tier: Private
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ec2_get_subnets_get_subnets_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSubnetsResult> getSubnets(
  GetSubnetsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getSubnets:getSubnets',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSubnetsResult.fromMap(result);
}

/// Provides information for multiple EC2 Transit Gateway Route Tables, such as their identifiers.
///
/// ## Example Usage
///
/// The following shows outputting all Transit Gateway Route Table Ids.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// export = async () => {
///     const example = await aws.ec2.getTransitGatewayRouteTables({});
///     return {
///         example: example.ids,
///     };
/// }
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.get_transit_gateway_route_tables()
/// pulumi.export("example", example.ids)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Ec2.GetTransitGatewayRouteTables.Invoke();
///
///     return new Dictionary<string, object?>
///     {
///         ["example"] = example.Apply(getTransitGatewayRouteTablesResult => getTransitGatewayRouteTablesResult.Ids),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := ec2.GetTransitGatewayRouteTables(ctx, &ec2.GetTransitGatewayRouteTablesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("example", example.Ids)
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
/// data "aws_ec2_gettransitgatewayroutetables" "example" {
/// }
///
/// output "example" {
///   value = data.aws_ec2_gettransitgatewayroutetables.example.ids
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetTransitGatewayRouteTablesArgs;
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
///         final var example = Ec2Functions.getTransitGatewayRouteTables(GetTransitGatewayRouteTablesArgs.builder()
///             .build());
///
///         ctx.export("example", example.ids());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:ec2:getTransitGatewayRouteTables
///       arguments: {}
/// outputs:
///   example: ${example.ids}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ec2_get_transit_gateway_route_tables_get_transit_gateway_route_tables_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTransitGatewayRouteTablesResult> getTransitGatewayRouteTables(
  GetTransitGatewayRouteTablesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getTransitGatewayRouteTables:getTransitGatewayRouteTables',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTransitGatewayRouteTablesResult.fromMap(result);
}

/// `aws.ec2.Vpc` provides details about a specific VPC.
///
/// This resource can prove useful when a module accepts a vpc id as
/// an input variable and needs to, for example, determine the CIDR block of that
/// VPC.
///
/// ## Example Usage
///
/// The following example shows how one might accept a VPC id as a variable
/// and use this data source to obtain the data necessary to create a subnet
/// within it.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// const config = new pulumi.Config();
/// const vpcId = config.requireObject<any>("vpcId");
/// const selected = aws.ec2.getVpc({
///     id: vpcId,
/// });
/// const example = new aws.ec2.Subnet("example", {
///     vpcId: selected.then(selected => selected.id),
///     availabilityZone: "us-west-2a",
///     cidrBlock: selected.then(selected => std.cidrsubnet({
///         input: selected.cidrBlock,
///         newbits: 4,
///         netnum: 1,
///     })).then(invoke => invoke.result),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// config = pulumi.Config()
/// vpc_id = config.require_object("vpcId")
/// selected = aws.ec2.get_vpc(id=vpc_id)
/// example = aws.ec2.Subnet("example",
///     vpc_id=selected.id,
///     availability_zone="us-west-2a",
///     cidr_block=std.cidrsubnet(input=selected.cidr_block,
///         newbits=4,
///         netnum=1).result)
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
///     var config = new Config();
///     var vpcId = config.RequireObject<dynamic>("vpcId");
///     var selected = Aws.Ec2.GetVpc.Invoke(new()
///     {
///         Id = vpcId,
///     });
///
///     var example = new Aws.Ec2.Subnet("example", new()
///     {
///         VpcId = selected.Apply(getVpcResult => getVpcResult.Id),
///         AvailabilityZone = "us-west-2a",
///         CidrBlock = Std.Cidrsubnet.Invoke(new()
///         {
///             Input = selected.Apply(getVpcResult => getVpcResult.CidrBlock),
///             Newbits = 4,
///             Netnum = 1,
///         }).Apply(invoke => invoke.Result),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		var vpcId interface{}
/// 		cfg.RequireObject("vpcId", &vpcId)
/// 		selected, err := ec2.LookupVpc(ctx, &ec2.LookupVpcArgs{
/// 			Id: pulumi.StringRef(vpcId),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeCidrsubnet, err := std.Cidrsubnet(ctx, &std.CidrsubnetArgs{
/// 			Input:   selected.CidrBlock,
/// 			Newbits: 4,
/// 			Netnum:  1,
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ec2.NewSubnet(ctx, "example", &ec2.SubnetArgs{
/// 			VpcId:            pulumi.String(selected.Id),
/// 			AvailabilityZone: pulumi.String("us-west-2a"),
/// 			CidrBlock:        pulumi.String(invokeCidrsubnet.Result),
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
///     std = {
///       source = "pulumi/std"
///     }
///   }
/// }
///
/// data "aws_ec2_getvpc" "selected" {
///   id = var.vpcId
/// }
///
/// resource "aws_ec2_subnet" "example" {
///   vpc_id            = data.aws_ec2_getvpc.selected.id
///   availability_zone = "us-west-2a"
///   cidr_block        = cidrsubnet(data.aws_ec2_getvpc.selected.cidr_block, 4, 1)
/// }
/// variable "vpcId" {
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetVpcArgs;
/// import com.pulumi.aws.ec2.Subnet;
/// import com.pulumi.aws.ec2.SubnetArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.CidrsubnetArgs;
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
///         final var config = ctx.config();
///         final var vpcId = config.require("vpcId");
///         final var selected = Ec2Functions.getVpc(GetVpcArgs.builder()
///             .id(vpcId)
///             .build());
///
///         var example = new Subnet("example", SubnetArgs.builder()
///             .vpcId(selected.id())
///             .availabilityZone("us-west-2a")
///             .cidrBlock(StdFunctions.cidrsubnet(CidrsubnetArgs.builder()
///                 .input(selected.cidrBlock())
///                 .newbits(4)
///                 .netnum(1)
///                 .build()).result())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   vpcId:
///     type: object
/// resources:
///   example:
///     type: aws:ec2:Subnet
///     properties:
///       vpcId: ${selected.id}
///       availabilityZone: us-west-2a
///       cidrBlock:
///         fn::invoke:
///           function: std:cidrsubnet
///           arguments:
///             input: ${selected.cidrBlock}
///             newbits: 4
///             netnum: 1
///           return: result
/// variables:
///   selected:
///     fn::invoke:
///       function: aws:ec2:getVpc
///       arguments:
///         id: ${vpcId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ec2_get_vpc_get_vpc_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVpcResult> getVpc(
  GetVpcArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getVpc:getVpc',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVpcResult.fromMap(result);
}

/// Retrieve information about an EC2 DHCP Options configuration.
///
/// ## Example Usage
///
/// ### Lookup by DHCP Options ID
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ec2.getVpcDhcpOptions({
///     dhcpOptionsId: "dopts-12345678",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.get_vpc_dhcp_options(dhcp_options_id="dopts-12345678")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Ec2.GetVpcDhcpOptions.Invoke(new()
///     {
///         DhcpOptionsId = "dopts-12345678",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2.LookupVpcDhcpOptions(ctx, &ec2.LookupVpcDhcpOptionsArgs{
/// 			DhcpOptionsId: pulumi.StringRef("dopts-12345678"),
/// 		}, nil)
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
/// data "aws_ec2_getvpcdhcpoptions" "example" {
///   dhcp_options_id = "dopts-12345678"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetVpcDhcpOptionsArgs;
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
///         final var example = Ec2Functions.getVpcDhcpOptions(GetVpcDhcpOptionsArgs.builder()
///             .dhcpOptionsId("dopts-12345678")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:ec2:getVpcDhcpOptions
///       arguments:
///         dhcpOptionsId: dopts-12345678
/// ```
///
///
/// ### Lookup by Filter
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ec2.getVpcDhcpOptions({
///     filters: [
///         {
///             name: "key",
///             values: ["domain-name"],
///         },
///         {
///             name: "value",
///             values: ["example.com"],
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.get_vpc_dhcp_options(filters=[
///     {
///         "name": "key",
///         "values": ["domain-name"],
///     },
///     {
///         "name": "value",
///         "values": ["example.com"],
///     },
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
///     var example = Aws.Ec2.GetVpcDhcpOptions.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new Aws.Ec2.Inputs.GetVpcDhcpOptionsFilterInputArgs
///             {
///                 Name = "key",
///                 Values = new[]
///                 {
///                     "domain-name",
///                 },
///             },
///             new Aws.Ec2.Inputs.GetVpcDhcpOptionsFilterInputArgs
///             {
///                 Name = "value",
///                 Values = new[]
///                 {
///                     "example.com",
///                 },
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2.LookupVpcDhcpOptions(ctx, &ec2.LookupVpcDhcpOptionsArgs{
/// 			Filters: []ec2.GetVpcDhcpOptionsFilter{
/// 				{
/// 					Name: "key",
/// 					Values: []string{
/// 						"domain-name",
/// 					},
/// 				},
/// 				{
/// 					Name: "value",
/// 					Values: []string{
/// 						"example.com",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
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
/// data "aws_ec2_getvpcdhcpoptions" "example" {
///   filters {
///     name   = "key"
///     values = ["domain-name"]
///   }
///   filters {
///     name   = "value"
///     values = ["example.com"]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetVpcDhcpOptionsArgs;
/// import com.pulumi.aws.ec2.inputs.GetVpcDhcpOptionsFilterArgs;
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
///         final var example = Ec2Functions.getVpcDhcpOptions(GetVpcDhcpOptionsArgs.builder()
///             .filters(
///                 GetVpcDhcpOptionsFilterArgs.builder()
///                     .name("key")
///                     .values("domain-name")
///                     .build(),
///                 GetVpcDhcpOptionsFilterArgs.builder()
///                     .name("value")
///                     .values("example.com")
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:ec2:getVpcDhcpOptions
///       arguments:
///         filters:
///           - name: key
///             values:
///               - domain-name
///           - name: value
///             values:
///               - example.com
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ec2_get_vpc_dhcp_options_get_vpc_dhcp_options_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVpcDhcpOptionsResult> getVpcDhcpOptions(
  GetVpcDhcpOptionsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getVpcDhcpOptions:getVpcDhcpOptions',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVpcDhcpOptionsResult.fromMap(result);
}

/// The VPC Endpoint data source provides details about
/// a specific VPC endpoint.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// // Declare the data source
/// const s3 = aws.ec2.getVpcEndpoint({
///     vpcId: foo.id,
///     serviceName: "com.amazonaws.us-west-2.s3",
/// });
/// const privateS3 = new aws.ec2.VpcEndpointRouteTableAssociation("private_s3", {
///     vpcEndpointId: s3.then(s3 => s3.id),
///     routeTableId: _private.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// # Declare the data source
/// s3 = aws.ec2.get_vpc_endpoint(vpc_id=foo["id"],
///     service_name="com.amazonaws.us-west-2.s3")
/// private_s3 = aws.ec2.VpcEndpointRouteTableAssociation("private_s3",
///     vpc_endpoint_id=s3.id,
///     route_table_id=private["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Declare the data source
///     var s3 = Aws.Ec2.GetVpcEndpoint.Invoke(new()
///     {
///         VpcId = foo.Id,
///         ServiceName = "com.amazonaws.us-west-2.s3",
///     });
///
///     var privateS3 = new Aws.Ec2.VpcEndpointRouteTableAssociation("private_s3", new()
///     {
///         VpcEndpointId = s3.Apply(getVpcEndpointResult => getVpcEndpointResult.Id),
///         RouteTableId = @private.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// Declare the data source
/// 		s3, err := ec2.LookupVpcEndpoint(ctx, &ec2.LookupVpcEndpointArgs{
/// 			VpcId:       pulumi.StringRef(foo.Id),
/// 			ServiceName: pulumi.StringRef("com.amazonaws.us-west-2.s3"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ec2.NewVpcEndpointRouteTableAssociation(ctx, "private_s3", &ec2.VpcEndpointRouteTableAssociationArgs{
/// 			VpcEndpointId: pulumi.String(s3.Id),
/// 			RouteTableId:  pulumi.Any(private.Id),
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
/// data "aws_ec2_getvpcendpoint" "s3" {
///   vpc_id       = foo.id
///   service_name = "com.amazonaws.us-west-2.s3"
/// }
///
/// resource "aws_ec2_vpcendpointroutetableassociation" "private_s3" {
///   vpc_endpoint_id = data.aws_ec2_getvpcendpoint.s3.id
///   route_table_id  = private.id
/// }
/// # Declare the data source
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetVpcEndpointArgs;
/// import com.pulumi.aws.ec2.VpcEndpointRouteTableAssociation;
/// import com.pulumi.aws.ec2.VpcEndpointRouteTableAssociationArgs;
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
///         // Declare the data source
///         final var s3 = Ec2Functions.getVpcEndpoint(GetVpcEndpointArgs.builder()
///             .vpcId(foo.id())
///             .serviceName("com.amazonaws.us-west-2.s3")
///             .build());
///
///         var privateS3 = new VpcEndpointRouteTableAssociation("privateS3", VpcEndpointRouteTableAssociationArgs.builder()
///             .vpcEndpointId(s3.id())
///             .routeTableId(private_.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   privateS3:
///     type: aws:ec2:VpcEndpointRouteTableAssociation
///     name: private_s3
///     properties:
///       vpcEndpointId: ${s3.id}
///       routeTableId: ${private.id}
/// variables:
///   # Declare the data source
///   s3:
///     fn::invoke:
///       function: aws:ec2:getVpcEndpoint
///       arguments:
///         vpcId: ${foo.id}
///         serviceName: com.amazonaws.us-west-2.s3
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ec2_get_vpc_endpoint_get_vpc_endpoint_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVpcEndpointResult> getVpcEndpoint(
  GetVpcEndpointArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getVpcEndpoint:getVpcEndpoint',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVpcEndpointResult.fromMap(result);
}

/// The VPC Endpoint Service data source details about a specific service that
/// can be specified when creating a VPC endpoint within the region configured in the provider.
///
/// ## Example Usage
///
/// ### AWS Service
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// // Declare the data source
/// const s3 = aws.ec2.getVpcEndpointService({
///     service: "s3",
///     serviceType: "Gateway",
/// });
/// // Create a VPC
/// const foo = new aws.ec2.Vpc("foo", {cidrBlock: "10.0.0.0/16"});
/// // Create a VPC endpoint
/// const ep = new aws.ec2.VpcEndpoint("ep", {
///     vpcId: foo.id,
///     serviceName: s3.then(s3 => s3.serviceName),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// # Declare the data source
/// s3 = aws.ec2.get_vpc_endpoint_service(service="s3",
///     service_type="Gateway")
/// # Create a VPC
/// foo = aws.ec2.Vpc("foo", cidr_block="10.0.0.0/16")
/// # Create a VPC endpoint
/// ep = aws.ec2.VpcEndpoint("ep",
///     vpc_id=foo.id,
///     service_name=s3.service_name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Declare the data source
///     var s3 = Aws.Ec2.GetVpcEndpointService.Invoke(new()
///     {
///         Service = "s3",
///         ServiceType = "Gateway",
///     });
///
///     // Create a VPC
///     var foo = new Aws.Ec2.Vpc("foo", new()
///     {
///         CidrBlock = "10.0.0.0/16",
///     });
///
///     // Create a VPC endpoint
///     var ep = new Aws.Ec2.VpcEndpoint("ep", new()
///     {
///         VpcId = foo.Id,
///         ServiceName = s3.Apply(getVpcEndpointServiceResult => getVpcEndpointServiceResult.ServiceName),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// Declare the data source
/// 		s3, err := ec2.LookupVpcEndpointService(ctx, &ec2.LookupVpcEndpointServiceArgs{
/// 			Service:     pulumi.StringRef("s3"),
/// 			ServiceType: pulumi.StringRef("Gateway"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Create a VPC
/// 		foo, err := ec2.NewVpc(ctx, "foo", &ec2.VpcArgs{
/// 			CidrBlock: pulumi.String("10.0.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Create a VPC endpoint
/// 		_, err = ec2.NewVpcEndpoint(ctx, "ep", &ec2.VpcEndpointArgs{
/// 			VpcId:       foo.ID().ToIDOutput().ToStringOutput(),
/// 			ServiceName: pulumi.String(s3.ServiceName),
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
/// data "aws_ec2_getvpcendpointservice" "s3" {
///   service      = "s3"
///   service_type = "Gateway"
/// }
///
/// # Create a VPC
/// resource "aws_ec2_vpc" "foo" {
///   cidr_block = "10.0.0.0/16"
/// }
/// # Create a VPC endpoint
/// resource "aws_ec2_vpcendpoint" "ep" {
///   vpc_id       = aws_ec2_vpc.foo.id
///   service_name = data.aws_ec2_getvpcendpointservice.s3.service_name
/// }
/// # Declare the data source
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetVpcEndpointServiceArgs;
/// import com.pulumi.aws.ec2.Vpc;
/// import com.pulumi.aws.ec2.VpcArgs;
/// import com.pulumi.aws.ec2.VpcEndpoint;
/// import com.pulumi.aws.ec2.VpcEndpointArgs;
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
///         // Declare the data source
///         final var s3 = Ec2Functions.getVpcEndpointService(GetVpcEndpointServiceArgs.builder()
///             .service("s3")
///             .serviceType("Gateway")
///             .build());
///
///         // Create a VPC
///         var foo = new Vpc("foo", VpcArgs.builder()
///             .cidrBlock("10.0.0.0/16")
///             .build());
///
///         // Create a VPC endpoint
///         var ep = new VpcEndpoint("ep", VpcEndpointArgs.builder()
///             .vpcId(foo.id())
///             .serviceName(s3.serviceName())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # Create a VPC
///   foo:
///     type: aws:ec2:Vpc
///     properties:
///       cidrBlock: 10.0.0.0/16
///   # Create a VPC endpoint
///   ep:
///     type: aws:ec2:VpcEndpoint
///     properties:
///       vpcId: ${foo.id}
///       serviceName: ${s3.serviceName}
/// variables:
///   # Declare the data source
///   s3:
///     fn::invoke:
///       function: aws:ec2:getVpcEndpointService
///       arguments:
///         service: s3
///         serviceType: Gateway
/// ```
///
///
/// ### Non-AWS Service
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const custome = aws.ec2.getVpcEndpointService({
///     serviceName: "com.amazonaws.vpce.us-west-2.vpce-svc-0e87519c997c63cd8",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// custome = aws.ec2.get_vpc_endpoint_service(service_name="com.amazonaws.vpce.us-west-2.vpce-svc-0e87519c997c63cd8")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var custome = Aws.Ec2.GetVpcEndpointService.Invoke(new()
///     {
///         ServiceName = "com.amazonaws.vpce.us-west-2.vpce-svc-0e87519c997c63cd8",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2.LookupVpcEndpointService(ctx, &ec2.LookupVpcEndpointServiceArgs{
/// 			ServiceName: pulumi.StringRef("com.amazonaws.vpce.us-west-2.vpce-svc-0e87519c997c63cd8"),
/// 		}, nil)
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
/// data "aws_ec2_getvpcendpointservice" "custome" {
///   service_name = "com.amazonaws.vpce.us-west-2.vpce-svc-0e87519c997c63cd8"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetVpcEndpointServiceArgs;
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
///         final var custome = Ec2Functions.getVpcEndpointService(GetVpcEndpointServiceArgs.builder()
///             .serviceName("com.amazonaws.vpce.us-west-2.vpce-svc-0e87519c997c63cd8")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   custome:
///     fn::invoke:
///       function: aws:ec2:getVpcEndpointService
///       arguments:
///         serviceName: com.amazonaws.vpce.us-west-2.vpce-svc-0e87519c997c63cd8
/// ```
///
///
/// ### Filter
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.ec2.getVpcEndpointService({
///     filters: [{
///         name: "service-name",
///         values: ["some-service"],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.ec2.get_vpc_endpoint_service(filters=[{
///     "name": "service-name",
///     "values": ["some-service"],
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
///     var test = Aws.Ec2.GetVpcEndpointService.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new Aws.Ec2.Inputs.GetVpcEndpointServiceFilterInputArgs
///             {
///                 Name = "service-name",
///                 Values = new[]
///                 {
///                     "some-service",
///                 },
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2.LookupVpcEndpointService(ctx, &ec2.LookupVpcEndpointServiceArgs{
/// 			Filters: []ec2.GetVpcEndpointServiceFilter{
/// 				{
/// 					Name: "service-name",
/// 					Values: []string{
/// 						"some-service",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
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
/// data "aws_ec2_getvpcendpointservice" "test" {
///   filters {
///     name   = "service-name"
///     values = ["some-service"]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetVpcEndpointServiceArgs;
/// import com.pulumi.aws.ec2.inputs.GetVpcEndpointServiceFilterArgs;
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
///         final var test = Ec2Functions.getVpcEndpointService(GetVpcEndpointServiceArgs.builder()
///             .filters(GetVpcEndpointServiceFilterArgs.builder()
///                 .name("service-name")
///                 .values("some-service")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   test:
///     fn::invoke:
///       function: aws:ec2:getVpcEndpointService
///       arguments:
///         filters:
///           - name: service-name
///             values:
///               - some-service
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ec2_get_vpc_endpoint_service_get_vpc_endpoint_service_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVpcEndpointServiceResult> getVpcEndpointService(
  GetVpcEndpointServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getVpcEndpointService:getVpcEndpointService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVpcEndpointServiceResult.fromMap(result);
}

/// Data source for managing a VPC IPAM.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ec2.getVpcIpam({
///     id: "ipam-abcd1234",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.get_vpc_ipam(id="ipam-abcd1234")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Ec2.GetVpcIpam.Invoke(new()
///     {
///         Id = "ipam-abcd1234",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2.LookupVpcIpam(ctx, &ec2.LookupVpcIpamArgs{
/// 			Id: "ipam-abcd1234",
/// 		}, nil)
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
/// data "aws_ec2_getvpcipam" "example" {
///   id = "ipam-abcd1234"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetVpcIpamArgs;
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
///         final var example = Ec2Functions.getVpcIpam(GetVpcIpamArgs.builder()
///             .id("ipam-abcd1234")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:ec2:getVpcIpam
///       arguments:
///         id: ipam-abcd1234
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ec2_get_vpc_ipam_get_vpc_ipam_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVpcIpamResult> getVpcIpam(
  GetVpcIpamArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getVpcIpam:getVpcIpam',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVpcIpamResult.fromMap(result);
}

/// `aws.ec2.VpcIpamPool` provides details about an IPAM pool.
///
/// This resource can prove useful when an ipam pool was created in another root
/// module and you need the pool's id as an input variable. For example, pools
/// can be shared via RAM and used to create vpcs with CIDRs from that pool.
///
/// ## Example Usage
///
/// The following example shows an account that has only 1 pool, perhaps shared
/// via RAM, and using that pool id to create a VPC with a CIDR derived from
/// AWS IPAM.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.ec2.getVpcIpamPool({
///     filters: [
///         {
///             name: "description",
///             values: ["*test*"],
///         },
///         {
///             name: "address-family",
///             values: ["ipv4"],
///         },
///     ],
/// });
/// const testVpc = new aws.ec2.Vpc("test", {
///     ipv4IpamPoolId: test.then(test => test.id),
///     ipv4NetmaskLength: 28,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.ec2.get_vpc_ipam_pool(filters=[
///     {
///         "name": "description",
///         "values": ["*test*"],
///     },
///     {
///         "name": "address-family",
///         "values": ["ipv4"],
///     },
/// ])
/// test_vpc = aws.ec2.Vpc("test",
///     ipv4_ipam_pool_id=test.id,
///     ipv4_netmask_length=28)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = Aws.Ec2.GetVpcIpamPool.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new Aws.Ec2.Inputs.GetVpcIpamPoolFilterInputArgs
///             {
///                 Name = "description",
///                 Values = new[]
///                 {
///                     "*test*",
///                 },
///             },
///             new Aws.Ec2.Inputs.GetVpcIpamPoolFilterInputArgs
///             {
///                 Name = "address-family",
///                 Values = new[]
///                 {
///                     "ipv4",
///                 },
///             },
///         },
///     });
///
///     var testVpc = new Aws.Ec2.Vpc("test", new()
///     {
///         Ipv4IpamPoolId = test.Apply(getVpcIpamPoolResult => getVpcIpamPoolResult.Id),
///         Ipv4NetmaskLength = 28,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		test, err := ec2.LookupVpcIpamPool(ctx, &ec2.LookupVpcIpamPoolArgs{
/// 			Filters: []ec2.GetVpcIpamPoolFilter{
/// 				{
/// 					Name: "description",
/// 					Values: []string{
/// 						"*test*",
/// 					},
/// 				},
/// 				{
/// 					Name: "address-family",
/// 					Values: []string{
/// 						"ipv4",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ec2.NewVpc(ctx, "test", &ec2.VpcArgs{
/// 			Ipv4IpamPoolId:    pulumi.String(test.Id),
/// 			Ipv4NetmaskLength: pulumi.Int(28),
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
/// data "aws_ec2_getvpcipampool" "test" {
///   filters {
///     name   = "description"
///     values = ["*test*"]
///   }
///   filters {
///     name   = "address-family"
///     values = ["ipv4"]
///   }
/// }
///
/// resource "aws_ec2_vpc" "test" {
///   ipv4_ipam_pool_id   = data.aws_ec2_getvpcipampool.test.id
///   ipv4_netmask_length = 28
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetVpcIpamPoolArgs;
/// import com.pulumi.aws.ec2.inputs.GetVpcIpamPoolFilterArgs;
/// import com.pulumi.aws.ec2.Vpc;
/// import com.pulumi.aws.ec2.VpcArgs;
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
///         final var test = Ec2Functions.getVpcIpamPool(GetVpcIpamPoolArgs.builder()
///             .filters(
///                 GetVpcIpamPoolFilterArgs.builder()
///                     .name("description")
///                     .values("*test*")
///                     .build(),
///                 GetVpcIpamPoolFilterArgs.builder()
///                     .name("address-family")
///                     .values("ipv4")
///                     .build())
///             .build());
///
///         var testVpc = new Vpc("testVpc", VpcArgs.builder()
///             .ipv4IpamPoolId(test.id())
///             .ipv4NetmaskLength(28)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   testVpc:
///     type: aws:ec2:Vpc
///     name: test
///     properties:
///       ipv4IpamPoolId: ${test.id}
///       ipv4NetmaskLength: 28
/// variables:
///   test:
///     fn::invoke:
///       function: aws:ec2:getVpcIpamPool
///       arguments:
///         filters:
///           - name: description
///             values:
///               - '*test*'
///           - name: address-family
///             values:
///               - ipv4
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ec2_get_vpc_ipam_pool_get_vpc_ipam_pool_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVpcIpamPoolResult> getVpcIpamPool(
  GetVpcIpamPoolArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getVpcIpamPool:getVpcIpamPool',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVpcIpamPoolResult.fromMap(result);
}

/// `aws.ec2.getVpcIpamPoolCidrs` provides details about an IPAM pool.
///
/// This resource can prove useful when an ipam pool was shared to your account and you want to know all (or a filtered list) of the CIDRs that are provisioned into the pool.
///
/// ## Example Usage
///
/// Basic usage:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const p = aws.ec2.getVpcIpamPool({
///     filters: [
///         {
///             name: "description",
///             values: ["*mypool*"],
///         },
///         {
///             name: "address-family",
///             values: ["ipv4"],
///         },
///     ],
/// });
/// const c = p.then(p => aws.ec2.getVpcIpamPoolCidrs({
///     ipamPoolId: p.id,
/// }));
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// p = aws.ec2.get_vpc_ipam_pool(filters=[
///     {
///         "name": "description",
///         "values": ["*mypool*"],
///     },
///     {
///         "name": "address-family",
///         "values": ["ipv4"],
///     },
/// ])
/// c = aws.ec2.get_vpc_ipam_pool_cidrs(ipam_pool_id=p.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var p = Aws.Ec2.GetVpcIpamPool.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new Aws.Ec2.Inputs.GetVpcIpamPoolFilterInputArgs
///             {
///                 Name = "description",
///                 Values = new[]
///                 {
///                     "*mypool*",
///                 },
///             },
///             new Aws.Ec2.Inputs.GetVpcIpamPoolFilterInputArgs
///             {
///                 Name = "address-family",
///                 Values = new[]
///                 {
///                     "ipv4",
///                 },
///             },
///         },
///     });
///
///     var c = Aws.Ec2.GetVpcIpamPoolCidrs.Invoke(new()
///     {
///         IpamPoolId = p.Apply(getVpcIpamPoolResult => getVpcIpamPoolResult.Id),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		p, err := ec2.LookupVpcIpamPool(ctx, &ec2.LookupVpcIpamPoolArgs{
/// 			Filters: []ec2.GetVpcIpamPoolFilter{
/// 				{
/// 					Name: "description",
/// 					Values: []string{
/// 						"*mypool*",
/// 					},
/// 				},
/// 				{
/// 					Name: "address-family",
/// 					Values: []string{
/// 						"ipv4",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ec2.GetVpcIpamPoolCidrs(ctx, &ec2.GetVpcIpamPoolCidrsArgs{
/// 			IpamPoolId: p.Id,
/// 		}, nil)
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
/// data "aws_ec2_getvpcipampoolcidrs" "c" {
///   ipam_pool_id = data.aws_ec2_getvpcipampool.p.id
/// }
/// data "aws_ec2_getvpcipampool" "p" {
///   filters {
///     name   = "description"
///     values = ["*mypool*"]
///   }
///   filters {
///     name   = "address-family"
///     values = ["ipv4"]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetVpcIpamPoolArgs;
/// import com.pulumi.aws.ec2.inputs.GetVpcIpamPoolFilterArgs;
/// import com.pulumi.aws.ec2.inputs.GetVpcIpamPoolCidrsArgs;
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
///         final var p = Ec2Functions.getVpcIpamPool(GetVpcIpamPoolArgs.builder()
///             .filters(
///                 GetVpcIpamPoolFilterArgs.builder()
///                     .name("description")
///                     .values("*mypool*")
///                     .build(),
///                 GetVpcIpamPoolFilterArgs.builder()
///                     .name("address-family")
///                     .values("ipv4")
///                     .build())
///             .build());
///
///         final var c = Ec2Functions.getVpcIpamPoolCidrs(GetVpcIpamPoolCidrsArgs.builder()
///             .ipamPoolId(p.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   c:
///     fn::invoke:
///       function: aws:ec2:getVpcIpamPoolCidrs
///       arguments:
///         ipamPoolId: ${p.id}
///   p:
///     fn::invoke:
///       function: aws:ec2:getVpcIpamPool
///       arguments:
///         filters:
///           - name: description
///             values:
///               - '*mypool*'
///           - name: address-family
///             values:
///               - ipv4
/// ```
///
///
/// Filtering:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const c = aws.ec2.getVpcIpamPoolCidrs({
///     ipamPoolId: "ipam-pool-123",
///     filters: [{
///         name: "cidr",
///         values: ["10.*"],
///     }],
/// });
/// const mycidrs = c.then(c => .filter(cidr => cidr.state == "provisioned").map(cidr => (cidr.cidr)));
/// const pls = new aws.ec2.ManagedPrefixList("pls", {
///     entries: mycidrs.map((v, k) => ({key: k, value: v})).apply(entries => entries.map(entry => ({
///         cidr: entry.value,
///         description: entry.value,
///     }))),
///     name: `IPAM Pool (${test.id}) Cidrs`,
///     addressFamily: "IPv4",
///     maxEntries: mycidrs.length,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// c = aws.ec2.get_vpc_ipam_pool_cidrs(ipam_pool_id="ipam-pool-123",
///     filters=[{
///         "name": "cidr",
///         "values": ["10.*"],
///     }])
/// mycidrs = [cidr.cidr for cidr in c.ipam_pool_cidrs if cidr.state == "provisioned"]
/// pls = aws.ec2.ManagedPrefixList("pls",
///     entries=[{"key": k, "value": v} for k, v in sorted(mycidrs.items())].apply(lambda entries: [aws.ec2.ManagedPrefixListEntryArgs(
///         cidr=entry["value"],
///         description=entry["value"],
///     ) for entry in entries]),
///     name=f"IPAM Pool ({test['id']}) Cidrs",
///     address_family="IPv4",
///     max_entries=len(mycidrs))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var c = Aws.Ec2.GetVpcIpamPoolCidrs.Invoke(new()
///     {
///         IpamPoolId = "ipam-pool-123",
///         Filters = new[]
///         {
///             new Aws.Ec2.Inputs.GetVpcIpamPoolCidrsFilterInputArgs
///             {
///                 Name = "cidr",
///                 Values = new[]
///                 {
///                     "10.*",
///                 },
///             },
///         },
///     });
///
///     var mycidrs = .Where(cidr => cidr.State == "provisioned").Select(cidr =>
///     {
///         return cidr.Cidr;
///     }).ToList();
///
///     var pls = new Aws.Ec2.ManagedPrefixList("pls", new()
///     {
///         Entries = mycidrs.Select((v, k) => new { Key = k, Value = v }).Apply(entries => entries.Select(entry =>
///         {
///             return
///             {
///                 { "cidr", entry.Value },
///                 { "description", entry.Value },
///             };
///         }).ToList()),
///         Name = $"IPAM Pool ({test.Id}) Cidrs",
///         AddressFamily = "IPv4",
///         MaxEntries = mycidrs.Length,
///     });
///
/// });
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
/// data "aws_ec2_getvpcipampoolcidrs" "c" {
///   ipam_pool_id = "ipam-pool-123"
///   filters {
///     name   = "cidr"
///     values = ["10.*"]
///   }
/// }
///
/// resource "aws_ec2_managedprefixlist" "pls" {
///   dynamic "entries" {
///     for_each = entries(local.mycidrs)
///     content {
///       cidr        = entries.value.value
///       description = entries.value.value
///     }
///   }
///   name           ="IPAM Pool (${test.id}) Cidrs"
///   address_family = "IPv4"
///   max_entries    = length(local.mycidrs)
/// }
/// locals {
///   mycidrs = [for cidr in data.aws_ec2_getvpcipampoolcidrs.c.ipam_pool_cidrs : cidr.cidr if cidr.state == "provisioned"]
/// }
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ec2_get_vpc_ipam_pool_cidrs_get_vpc_ipam_pool_cidrs_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVpcIpamPoolCidrsResult> getVpcIpamPoolCidrs(
  GetVpcIpamPoolCidrsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getVpcIpamPoolCidrs:getVpcIpamPoolCidrs',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVpcIpamPoolCidrsResult.fromMap(result);
}

/// `aws.ec2.getVpcIpamPools` provides details about IPAM pools.
///
/// This resource can prove useful when IPAM pools are created in another root
/// module and you need the pool ids as input variables. For example, pools
/// can be shared via RAM and used to create vpcs with CIDRs from that pool.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.ec2.getVpcIpamPools({
///     filters: [
///         {
///             name: "description",
///             values: ["*test*"],
///         },
///         {
///             name: "address-family",
///             values: ["ipv4"],
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.ec2.get_vpc_ipam_pools(filters=[
///     {
///         "name": "description",
///         "values": ["*test*"],
///     },
///     {
///         "name": "address-family",
///         "values": ["ipv4"],
///     },
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
///     var test = Aws.Ec2.GetVpcIpamPools.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new Aws.Ec2.Inputs.GetVpcIpamPoolsFilterInputArgs
///             {
///                 Name = "description",
///                 Values = new[]
///                 {
///                     "*test*",
///                 },
///             },
///             new Aws.Ec2.Inputs.GetVpcIpamPoolsFilterInputArgs
///             {
///                 Name = "address-family",
///                 Values = new[]
///                 {
///                     "ipv4",
///                 },
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2.GetVpcIpamPools(ctx, &ec2.GetVpcIpamPoolsArgs{
/// 			Filters: []ec2.GetVpcIpamPoolsFilter{
/// 				{
/// 					Name: "description",
/// 					Values: []string{
/// 						"*test*",
/// 					},
/// 				},
/// 				{
/// 					Name: "address-family",
/// 					Values: []string{
/// 						"ipv4",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
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
/// data "aws_ec2_getvpcipampools" "test" {
///   filters {
///     name   = "description"
///     values = ["*test*"]
///   }
///   filters {
///     name   = "address-family"
///     values = ["ipv4"]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetVpcIpamPoolsArgs;
/// import com.pulumi.aws.ec2.inputs.GetVpcIpamPoolsFilterArgs;
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
///         final var test = Ec2Functions.getVpcIpamPools(GetVpcIpamPoolsArgs.builder()
///             .filters(
///                 GetVpcIpamPoolsFilterArgs.builder()
///                     .name("description")
///                     .values("*test*")
///                     .build(),
///                 GetVpcIpamPoolsFilterArgs.builder()
///                     .name("address-family")
///                     .values("ipv4")
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   test:
///     fn::invoke:
///       function: aws:ec2:getVpcIpamPools
///       arguments:
///         filters:
///           - name: description
///             values:
///               - '*test*'
///           - name: address-family
///             values:
///               - ipv4
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ec2_get_vpc_ipam_pools_get_vpc_ipam_pools_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVpcIpamPoolsResult> getVpcIpamPools(
  GetVpcIpamPoolsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getVpcIpamPools:getVpcIpamPools',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVpcIpamPoolsResult.fromMap(result);
}

/// Data source for managing VPC IPAMs.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ec2.getVpcIpams({
///     ipamIds: ["ipam-abcd1234"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.get_vpc_ipams(ipam_ids=["ipam-abcd1234"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Ec2.GetVpcIpams.Invoke(new()
///     {
///         IpamIds = new[]
///         {
///             "ipam-abcd1234",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2.GetVpcIpams(ctx, &ec2.GetVpcIpamsArgs{
/// 			IpamIds: []string{
/// 				"ipam-abcd1234",
/// 			},
/// 		}, nil)
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
/// data "aws_ec2_getvpcipams" "example" {
///   ipam_ids = ["ipam-abcd1234"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetVpcIpamsArgs;
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
///         final var example = Ec2Functions.getVpcIpams(GetVpcIpamsArgs.builder()
///             .ipamIds("ipam-abcd1234")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:ec2:getVpcIpams
///       arguments:
///         ipamIds:
///           - ipam-abcd1234
/// ```
///
///
/// ### Filter by `tags`
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ec2.getVpcIpams({
///     filters: [{
///         name: "tags.Some",
///         values: ["Value"],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.get_vpc_ipams(filters=[{
///     "name": "tags.Some",
///     "values": ["Value"],
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
///     var example = Aws.Ec2.GetVpcIpams.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new Aws.Ec2.Inputs.GetVpcIpamsFilterInputArgs
///             {
///                 Name = "tags.Some",
///                 Values = new[]
///                 {
///                     "Value",
///                 },
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2.GetVpcIpams(ctx, &ec2.GetVpcIpamsArgs{
/// 			Filters: []ec2.GetVpcIpamsFilter{
/// 				{
/// 					Name: "tags.Some",
/// 					Values: []string{
/// 						"Value",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
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
/// data "aws_ec2_getvpcipams" "example" {
///   filters {
///     name   = "tags.Some"
///     values = ["Value"]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetVpcIpamsArgs;
/// import com.pulumi.aws.ec2.inputs.GetVpcIpamsFilterArgs;
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
///         final var example = Ec2Functions.getVpcIpams(GetVpcIpamsArgs.builder()
///             .filters(GetVpcIpamsFilterArgs.builder()
///                 .name("tags.Some")
///                 .values("Value")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:ec2:getVpcIpams
///       arguments:
///         filters:
///           - name: tags.Some
///             values:
///               - Value
/// ```
///
///
/// ### Filter by `tier`
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ec2.getVpcIpams({
///     filters: [{
///         name: "tier",
///         values: ["free"],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.get_vpc_ipams(filters=[{
///     "name": "tier",
///     "values": ["free"],
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
///     var example = Aws.Ec2.GetVpcIpams.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new Aws.Ec2.Inputs.GetVpcIpamsFilterInputArgs
///             {
///                 Name = "tier",
///                 Values = new[]
///                 {
///                     "free",
///                 },
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2.GetVpcIpams(ctx, &ec2.GetVpcIpamsArgs{
/// 			Filters: []ec2.GetVpcIpamsFilter{
/// 				{
/// 					Name: "tier",
/// 					Values: []string{
/// 						"free",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
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
/// data "aws_ec2_getvpcipams" "example" {
///   filters {
///     name   = "tier"
///     values = ["free"]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetVpcIpamsArgs;
/// import com.pulumi.aws.ec2.inputs.GetVpcIpamsFilterArgs;
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
///         final var example = Ec2Functions.getVpcIpams(GetVpcIpamsArgs.builder()
///             .filters(GetVpcIpamsFilterArgs.builder()
///                 .name("tier")
///                 .values("free")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:ec2:getVpcIpams
///       arguments:
///         filters:
///           - name: tier
///             values:
///               - free
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ec2_get_vpc_ipams_get_vpc_ipams_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVpcIpamsResult> getVpcIpams(
  GetVpcIpamsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getVpcIpams:getVpcIpams',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVpcIpamsResult.fromMap(result);
}

/// The VPC Peering Connection data source provides details about
/// a specific VPC peering connection.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// // Declare the data source
/// const pc = aws.ec2.getVpcPeeringConnection({
///     vpcId: foo.id,
///     peerCidrBlock: "10.0.1.0/22",
/// });
/// // Create a route table
/// const rt = new aws.ec2.RouteTable("rt", {vpcId: foo.id});
/// // Create a route
/// const r = new aws.ec2.Route("r", {
///     routeTableId: rt.id,
///     destinationCidrBlock: pc.then(pc => pc.peerCidrBlock),
///     vpcPeeringConnectionId: pc.then(pc => pc.id),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// # Declare the data source
/// pc = aws.ec2.get_vpc_peering_connection(vpc_id=foo["id"],
///     peer_cidr_block="10.0.1.0/22")
/// # Create a route table
/// rt = aws.ec2.RouteTable("rt", vpc_id=foo["id"])
/// # Create a route
/// r = aws.ec2.Route("r",
///     route_table_id=rt.id,
///     destination_cidr_block=pc.peer_cidr_block,
///     vpc_peering_connection_id=pc.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Declare the data source
///     var pc = Aws.Ec2.GetVpcPeeringConnection.Invoke(new()
///     {
///         VpcId = foo.Id,
///         PeerCidrBlock = "10.0.1.0/22",
///     });
///
///     // Create a route table
///     var rt = new Aws.Ec2.RouteTable("rt", new()
///     {
///         VpcId = foo.Id,
///     });
///
///     // Create a route
///     var r = new Aws.Ec2.Route("r", new()
///     {
///         RouteTableId = rt.Id,
///         DestinationCidrBlock = pc.Apply(getVpcPeeringConnectionResult => getVpcPeeringConnectionResult.PeerCidrBlock),
///         VpcPeeringConnectionId = pc.Apply(getVpcPeeringConnectionResult => getVpcPeeringConnectionResult.Id),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// Declare the data source
/// 		pc, err := ec2.LookupVpcPeeringConnection(ctx, &ec2.LookupVpcPeeringConnectionArgs{
/// 			VpcId:         pulumi.StringRef(foo.Id),
/// 			PeerCidrBlock: pulumi.StringRef("10.0.1.0/22"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Create a route table
/// 		rt, err := ec2.NewRouteTable(ctx, "rt", &ec2.RouteTableArgs{
/// 			VpcId: pulumi.Any(foo.Id),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Create a route
/// 		_, err = ec2.NewRoute(ctx, "r", &ec2.RouteArgs{
/// 			RouteTableId:           rt.ID().ToIDOutput().ToStringOutput(),
/// 			DestinationCidrBlock:   pulumi.String(pc.PeerCidrBlock),
/// 			VpcPeeringConnectionId: pulumi.String(pc.Id),
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
/// data "aws_ec2_getvpcpeeringconnection" "pc" {
///   vpc_id          = foo.id
///   peer_cidr_block = "10.0.1.0/22"
/// }
///
/// # Create a route table
/// resource "aws_ec2_routetable" "rt" {
///   vpc_id = foo.id
/// }
/// # Create a route
/// resource "aws_ec2_route" "r" {
///   route_table_id            = aws_ec2_routetable.rt.id
///   destination_cidr_block    = data.aws_ec2_getvpcpeeringconnection.pc.peer_cidr_block
///   vpc_peering_connection_id = data.aws_ec2_getvpcpeeringconnection.pc.id
/// }
/// # Declare the data source
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetVpcPeeringConnectionArgs;
/// import com.pulumi.aws.ec2.RouteTable;
/// import com.pulumi.aws.ec2.RouteTableArgs;
/// import com.pulumi.aws.ec2.Route;
/// import com.pulumi.aws.ec2.RouteArgs;
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
///         // Declare the data source
///         final var pc = Ec2Functions.getVpcPeeringConnection(GetVpcPeeringConnectionArgs.builder()
///             .vpcId(foo.id())
///             .peerCidrBlock("10.0.1.0/22")
///             .build());
///
///         // Create a route table
///         var rt = new RouteTable("rt", RouteTableArgs.builder()
///             .vpcId(foo.id())
///             .build());
///
///         // Create a route
///         var r = new Route("r", RouteArgs.builder()
///             .routeTableId(rt.id())
///             .destinationCidrBlock(pc.peerCidrBlock())
///             .vpcPeeringConnectionId(pc.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # Create a route table
///   rt:
///     type: aws:ec2:RouteTable
///     properties:
///       vpcId: ${foo.id}
///   # Create a route
///   r:
///     type: aws:ec2:Route
///     properties:
///       routeTableId: ${rt.id}
///       destinationCidrBlock: ${pc.peerCidrBlock}
///       vpcPeeringConnectionId: ${pc.id}
/// variables:
///   # Declare the data source
///   pc:
///     fn::invoke:
///       function: aws:ec2:getVpcPeeringConnection
///       arguments:
///         vpcId: ${foo.id}
///         peerCidrBlock: 10.0.1.0/22
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ec2_get_vpc_peering_connection_get_vpc_peering_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVpcPeeringConnectionResult> getVpcPeeringConnection(
  GetVpcPeeringConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getVpcPeeringConnection:getVpcPeeringConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVpcPeeringConnectionResult.fromMap(result);
}

/// Use this data source to get IDs of Amazon VPC peering connections
/// To get more details on each connection, use the data resource aws.ec2.VpcPeeringConnection
///
/// Note: To use this data source in a count, the resources should exist before trying to access
/// the data source.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// // Declare the data source
/// const pcs = aws.ec2.getVpcPeeringConnections({
///     filters: [{
///         name: "requester-vpc-info.vpc-id",
///         values: [foo.id],
///     }],
/// });
/// // get the details of each resource
/// const pc = .map(__index => (aws.ec2.getVpcPeeringConnection({
///     id: _arg0_.ids[__index],
/// })));
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// # Declare the data source
/// pcs = aws.ec2.get_vpc_peering_connections(filters=[{
///     "name": "requester-vpc-info.vpc-id",
///     "values": [foo["id"]],
/// }])
/// # get the details of each resource
/// pc = [aws.ec2.get_vpc_peering_connection(id=pcs.ids[__index]) for __index in len(pcs.ids).apply(lambda length: range(length))]
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Declare the data source
///     var pcs = Aws.Ec2.GetVpcPeeringConnections.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new Aws.Ec2.Inputs.GetVpcPeeringConnectionsFilterInputArgs
///             {
///                 Name = "requester-vpc-info.vpc-id",
///                 Values = new[]
///                 {
///                     foo.Id,
///                 },
///             },
///         },
///     });
///
///     // get the details of each resource
///     var pc = ;
///
/// });
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
/// data "aws_ec2_getvpcpeeringconnections" "pcs" {
///   filters {
///     name   = "requester-vpc-info.vpc-id"
///     values = [foo.id]
///   }
/// }
/// data "aws_ec2_getvpcpeeringconnection" "invoke_1" {
///   for_each = toset(range(length(data.aws_ec2_getvpcpeeringconnections.pcs.ids)))
///   id       = data.aws_ec2_getvpcpeeringconnections.pcs.ids[each.value]
/// }
///
/// # Declare the data source
/// # get the details of each resource
/// locals {
///   pc = [for __index in range(length(data.aws_ec2_getvpcpeeringconnections.pcs.ids)) : data.aws_ec2_getvpcpeeringconnection.invoke_1[__index]]
/// }
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ec2_get_vpc_peering_connections_get_vpc_peering_connections_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVpcPeeringConnectionsResult> getVpcPeeringConnections(
  GetVpcPeeringConnectionsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getVpcPeeringConnections:getVpcPeeringConnections',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVpcPeeringConnectionsResult.fromMap(result);
}

/// This resource can be useful for getting back a list of VPC Ids for a region.
///
/// The following example retrieves a list of VPC Ids with a custom tag of `service` set to a value of "production".
///
/// ## Example Usage
///
/// The following shows outputting all VPC Ids.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// export = async () => {
///     const foo = await aws.ec2.getVpcs({
///         tags: {
///             service: "production",
///         },
///     });
///     return {
///         foo: foo.ids,
///     };
/// }
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// foo = aws.ec2.get_vpcs(tags={
///     "service": "production",
/// })
/// pulumi.export("foo", foo.ids)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = Aws.Ec2.GetVpcs.Invoke(new()
///     {
///         Tags =
///         {
///             { "service", "production" },
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["foo"] = foo.Apply(getVpcsResult => getVpcsResult.Ids),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		foo, err := ec2.GetVpcs(ctx, &ec2.GetVpcsArgs{
/// 			Tags: map[string]string{
/// 				"service": "production",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("foo", foo.Ids)
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
/// data "aws_ec2_getvpcs" "foo" {
///   tags = {
///     "service" = "production"
///   }
/// }
///
/// output "foo" {
///   value = data.aws_ec2_getvpcs.foo.ids
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetVpcsArgs;
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
///         final var foo = Ec2Functions.getVpcs(GetVpcsArgs.builder()
///             .tags(Map.of("service", "production"))
///             .build());
///
///         ctx.export("foo", foo.ids());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   foo:
///     fn::invoke:
///       function: aws:ec2:getVpcs
///       arguments:
///         tags:
///           service: production
/// outputs:
///   foo: ${foo.ids}
/// ```
///
///
/// An example use case would be interpolate the `aws.ec2.getVpcs` output into `count` of an aws.ec2.FlowLog resource.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// export = async () => {
///     const foo = await aws.ec2.getVpcs({});
///     const fooGetVpc = .map(__index => (await aws.ec2.getVpc({
///         id: foo.ids[__index],
///     })));
///     const testFlowLog: aws.ec2.FlowLog[] = [];
/// foo.ids.length.apply(rangeBody => {
///         for (let range = 0; range < rangeBody; range++) {
///             testFlowLog.push(new aws.ec2.FlowLog(`test_flow_log-${range}`, {vpcId: fooGetVpc.apply(fooGetVpc => fooGetVpc[range].id)}));
///         }
///     });
///     return {
///         foo: foo.ids,
///     };
/// }
/// ```
/// ```python
/// import pulumi
/// from typing import Any
/// import pulumi_aws as aws
///
/// foo = aws.ec2.get_vpcs()
/// foo_get_vpc = [aws.ec2.get_vpc(id=foo.ids[__index]) for __index in len(foo.ids).apply(lambda length: range(length))]
/// test_flow_log: list[aws.ec2.FlowLog] = []
/// def create_test_flow_log(range_body):
///     for test_flow_log_range in [{"value": i} for i in range(0, range_body)]:
///         test_flow_log.append(aws.ec2.FlowLog(f"test_flow_log-{test_flow_log_range['value']}", vpc_id=foo_get_vpc.apply(lambda foo_get_vpc: foo_get_vpc[test_flow_log_range["value"]].id)))
///
/// (len(foo.ids)).apply(create_test_flow_log)
/// pulumi.export("foo", foo.ids)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = Aws.Ec2.GetVpcs.Invoke();
///
///     var fooGetVpc = ;
///
///     var testFlowLog = new List<Aws.Ec2.FlowLog>();
///     foo.Apply(getVpcsResult => getVpcsResult.Ids).Length().Apply(rangeBody =>
///     {
///         for (var rangeIndex = 0; rangeIndex < rangeBody; rangeIndex++)
///         {
///             var range = new { Value = rangeIndex };
///             testFlowLog.Add(new Aws.Ec2.FlowLog($"test_flow_log-{range.Value}", new()
///             {
///                 VpcId = fooGetVpc.Apply(fooGetVpc => fooGetVpc[range.Value].Id),
///             }));
///         }
///         return 0;
///     });
///     return new Dictionary<string, object?>
///     {
///         ["foo"] = foo.Apply(getVpcsResult => getVpcsResult.Ids),
///     };
/// });
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
/// data "aws_ec2_getvpcs" "foo" {
/// }
/// data "aws_ec2_getvpc" "invoke_1" {
///   for_each = toset(range(length(data.aws_ec2_getvpcs.foo.ids)))
///   id       = data.aws_ec2_getvpcs.foo.ids[each.value]
/// }
///
/// resource "aws_ec2_flowlog" "test_flow_log" {
///   count  = length(data.aws_ec2_getvpcs.foo.ids)
///   vpc_id = local.fooGetVpc[count.index].id
/// }
/// locals {
///   fooGetVpc = [for __index in range(length(data.aws_ec2_getvpcs.foo.ids)) : data.aws_ec2_getvpc.invoke_1[__index]]
/// }
/// output "foo" {
///   value = data.aws_ec2_getvpcs.foo.ids
/// }
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ec2_get_vpcs_get_vpcs_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVpcsResult> getVpcs(
  GetVpcsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getVpcs:getVpcs',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVpcsResult.fromMap(result);
}

/// Fetches details of a Site-to-Site VPN connection. A Site-to-Site VPN connection is an Internet Protocol security (IPsec) VPN connection between a VPC and an on-premises network.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ec2.getVpnConnection({
///     filters: [{
///         name: "customer-gateway-id",
///         values: ["cgw-1234567890"],
///     }],
/// });
/// export const vpnConnectionId = example.then(example => example.vpnConnectionId);
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.get_vpn_connection(filters=[{
///     "name": "customer-gateway-id",
///     "values": ["cgw-1234567890"],
/// }])
/// pulumi.export("vpnConnectionId", example.vpn_connection_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Ec2.GetVpnConnection.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new Aws.Ec2.Inputs.GetVpnConnectionFilterInputArgs
///             {
///                 Name = "customer-gateway-id",
///                 Values = new[]
///                 {
///                     "cgw-1234567890",
///                 },
///             },
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["vpnConnectionId"] = example.Apply(getVpnConnectionResult => getVpnConnectionResult.VpnConnectionId),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := ec2.LookupVpnConnection(ctx, &ec2.LookupVpnConnectionArgs{
/// 			Filters: []ec2.GetVpnConnectionFilter{
/// 				{
/// 					Name: "customer-gateway-id",
/// 					Values: []string{
/// 						"cgw-1234567890",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("vpnConnectionId", example.VpnConnectionId)
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
/// data "aws_ec2_getvpnconnection" "example" {
///   filters {
///     name   = "customer-gateway-id"
///     values = ["cgw-1234567890"]
///   }
/// }
///
/// output "vpnConnectionId" {
///   value = data.aws_ec2_getvpnconnection.example.vpn_connection_id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetVpnConnectionArgs;
/// import com.pulumi.aws.ec2.inputs.GetVpnConnectionFilterArgs;
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
///         final var example = Ec2Functions.getVpnConnection(GetVpnConnectionArgs.builder()
///             .filters(GetVpnConnectionFilterArgs.builder()
///                 .name("customer-gateway-id")
///                 .values("cgw-1234567890")
///                 .build())
///             .build());
///
///         ctx.export("vpnConnectionId", example.vpnConnectionId());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:ec2:getVpnConnection
///       arguments:
///         filters:
///           - name: customer-gateway-id
///             values:
///               - cgw-1234567890
/// outputs:
///   vpnConnectionId: ${example.vpnConnectionId}
/// ```
///
///
/// ### Find by VPN Connection ID
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ec2.getVpnConnection({
///     vpnConnectionId: "vpn-abcd1234567890",
/// });
/// export const gatewayAssociationState = example.then(example => example.gatewayAssociationState);
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.get_vpn_connection(vpn_connection_id="vpn-abcd1234567890")
/// pulumi.export("gatewayAssociationState", example.gateway_association_state)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Ec2.GetVpnConnection.Invoke(new()
///     {
///         VpnConnectionId = "vpn-abcd1234567890",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["gatewayAssociationState"] = example.Apply(getVpnConnectionResult => getVpnConnectionResult.GatewayAssociationState),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := ec2.LookupVpnConnection(ctx, &ec2.LookupVpnConnectionArgs{
/// 			VpnConnectionId: pulumi.StringRef("vpn-abcd1234567890"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("gatewayAssociationState", example.GatewayAssociationState)
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
/// data "aws_ec2_getvpnconnection" "example" {
///   vpn_connection_id = "vpn-abcd1234567890"
/// }
///
/// output "gatewayAssociationState" {
///   value = data.aws_ec2_getvpnconnection.example.gateway_association_state
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetVpnConnectionArgs;
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
///         final var example = Ec2Functions.getVpnConnection(GetVpnConnectionArgs.builder()
///             .vpnConnectionId("vpn-abcd1234567890")
///             .build());
///
///         ctx.export("gatewayAssociationState", example.gatewayAssociationState());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: aws:ec2:getVpnConnection
///       arguments:
///         vpnConnectionId: vpn-abcd1234567890
/// outputs:
///   gatewayAssociationState: ${example.gatewayAssociationState}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ec2_get_vpn_connection_get_vpn_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVpnConnectionResult> getVpnConnection(
  GetVpnConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getVpnConnection:getVpnConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVpnConnectionResult.fromMap(result);
}

/// The VPN Gateway data source provides details about
/// a specific VPN gateway.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const selected = aws.ec2.getVpnGateway({
///     filters: [{
///         name: "tag:Name",
///         values: ["vpn-gw"],
///     }],
/// });
/// export const vpnGatewayId = selected.then(selected => selected.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// selected = aws.ec2.get_vpn_gateway(filters=[{
///     "name": "tag:Name",
///     "values": ["vpn-gw"],
/// }])
/// pulumi.export("vpnGatewayId", selected.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var selected = Aws.Ec2.GetVpnGateway.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new Aws.Ec2.Inputs.GetVpnGatewayFilterInputArgs
///             {
///                 Name = "tag:Name",
///                 Values = new[]
///                 {
///                     "vpn-gw",
///                 },
///             },
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["vpnGatewayId"] = selected.Apply(getVpnGatewayResult => getVpnGatewayResult.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		selected, err := ec2.LookupVpnGateway(ctx, &ec2.LookupVpnGatewayArgs{
/// 			Filters: []ec2.GetVpnGatewayFilter{
/// 				{
/// 					Name: "tag:Name",
/// 					Values: []string{
/// 						"vpn-gw",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("vpnGatewayId", selected.Id)
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
/// data "aws_ec2_getvpngateway" "selected" {
///   filters {
///     name   = "tag:Name"
///     values = ["vpn-gw"]
///   }
/// }
///
/// output "vpnGatewayId" {
///   value = data.aws_ec2_getvpngateway.selected.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetVpnGatewayArgs;
/// import com.pulumi.aws.ec2.inputs.GetVpnGatewayFilterArgs;
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
///         final var selected = Ec2Functions.getVpnGateway(GetVpnGatewayArgs.builder()
///             .filters(GetVpnGatewayFilterArgs.builder()
///                 .name("tag:Name")
///                 .values("vpn-gw")
///                 .build())
///             .build());
///
///         ctx.export("vpnGatewayId", selected.id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   selected:
///     fn::invoke:
///       function: aws:ec2:getVpnGateway
///       arguments:
///         filters:
///           - name: tag:Name
///             values:
///               - vpn-gw
/// outputs:
///   vpnGatewayId: ${selected.id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_ec2_get_vpn_gateway_get_vpn_gateway_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVpnGatewayResult> getVpnGateway(
  GetVpnGatewayArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getVpnGateway:getVpnGateway',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVpnGatewayResult.fromMap(result);
}
