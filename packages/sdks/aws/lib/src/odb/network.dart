import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_args.dart';
import 'network_state.dart';
import 'network_timeouts.dart';

/// Resource for managing odb Network resource in AWS for Oracle Database@AWS.
///
/// ## Example Usage
///
/// ### Disabled S3 and Zero-ETL Access
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.odb.Network("example", {
///     displayName: "odb-my-net",
///     availabilityZoneId: "use1-az6",
///     clientSubnetCidr: "10.2.0.0/24",
///     backupSubnetCidr: "10.2.1.0/24",
///     s3Access: "DISABLED",
///     zeroEtlAccess: "DISABLED",
///     tags: {
///         env: "dev",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.odb.Network("example",
///     display_name="odb-my-net",
///     availability_zone_id="use1-az6",
///     client_subnet_cidr="10.2.0.0/24",
///     backup_subnet_cidr="10.2.1.0/24",
///     s3_access="DISABLED",
///     zero_etl_access="DISABLED",
///     tags={
///         "env": "dev",
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
///     var example = new Aws.Odb.Network("example", new()
///     {
///         DisplayName = "odb-my-net",
///         AvailabilityZoneId = "use1-az6",
///         ClientSubnetCidr = "10.2.0.0/24",
///         BackupSubnetCidr = "10.2.1.0/24",
///         S3Access = "DISABLED",
///         ZeroEtlAccess = "DISABLED",
///         Tags =
///         {
///             { "env", "dev" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/odb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := odb.NewNetwork(ctx, "example", &odb.NetworkArgs{
/// 			DisplayName:        pulumi.String("odb-my-net"),
/// 			AvailabilityZoneId: pulumi.String("use1-az6"),
/// 			ClientSubnetCidr:   pulumi.String("10.2.0.0/24"),
/// 			BackupSubnetCidr:   pulumi.String("10.2.1.0/24"),
/// 			S3Access:           pulumi.String("DISABLED"),
/// 			ZeroEtlAccess:      pulumi.String("DISABLED"),
/// 			Tags: pulumi.StringMap{
/// 				"env": pulumi.String("dev"),
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
/// resource "aws_odb_network" "example" {
///   display_name         = "odb-my-net"
///   availability_zone_id = "use1-az6"
///   client_subnet_cidr   = "10.2.0.0/24"
///   backup_subnet_cidr   = "10.2.1.0/24"
///   s3_access            = "DISABLED"
///   zero_etl_access      = "DISABLED"
///   tags = {
///     "env" = "dev"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.odb.Network;
/// import com.pulumi.aws.odb.NetworkArgs;
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
///         var example = new Network("example", NetworkArgs.builder()
///             .displayName("odb-my-net")
///             .availabilityZoneId("use1-az6")
///             .clientSubnetCidr("10.2.0.0/24")
///             .backupSubnetCidr("10.2.1.0/24")
///             .s3Access("DISABLED")
///             .zeroEtlAccess("DISABLED")
///             .tags(Map.of("env", "dev"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:odb:Network
///     properties:
///       displayName: odb-my-net
///       availabilityZoneId: use1-az6
///       clientSubnetCidr: 10.2.0.0/24
///       backupSubnetCidr: 10.2.1.0/24
///       s3Access: DISABLED
///       zeroEtlAccess: DISABLED
///       tags:
///         env: dev
/// ```
///
///
/// ### Enabled S3 and Zero-ETL Access
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.odb.Network("example", {
///     displayName: "odb-my-net",
///     availabilityZoneId: "use1-az6",
///     clientSubnetCidr: "10.2.0.0/24",
///     backupSubnetCidr: "10.2.1.0/24",
///     s3Access: "ENABLED",
///     zeroEtlAccess: "ENABLED",
///     tags: {
///         env: "dev",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.odb.Network("example",
///     display_name="odb-my-net",
///     availability_zone_id="use1-az6",
///     client_subnet_cidr="10.2.0.0/24",
///     backup_subnet_cidr="10.2.1.0/24",
///     s3_access="ENABLED",
///     zero_etl_access="ENABLED",
///     tags={
///         "env": "dev",
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
///     var example = new Aws.Odb.Network("example", new()
///     {
///         DisplayName = "odb-my-net",
///         AvailabilityZoneId = "use1-az6",
///         ClientSubnetCidr = "10.2.0.0/24",
///         BackupSubnetCidr = "10.2.1.0/24",
///         S3Access = "ENABLED",
///         ZeroEtlAccess = "ENABLED",
///         Tags =
///         {
///             { "env", "dev" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/odb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := odb.NewNetwork(ctx, "example", &odb.NetworkArgs{
/// 			DisplayName:        pulumi.String("odb-my-net"),
/// 			AvailabilityZoneId: pulumi.String("use1-az6"),
/// 			ClientSubnetCidr:   pulumi.String("10.2.0.0/24"),
/// 			BackupSubnetCidr:   pulumi.String("10.2.1.0/24"),
/// 			S3Access:           pulumi.String("ENABLED"),
/// 			ZeroEtlAccess:      pulumi.String("ENABLED"),
/// 			Tags: pulumi.StringMap{
/// 				"env": pulumi.String("dev"),
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
/// resource "aws_odb_network" "example" {
///   display_name         = "odb-my-net"
///   availability_zone_id = "use1-az6"
///   client_subnet_cidr   = "10.2.0.0/24"
///   backup_subnet_cidr   = "10.2.1.0/24"
///   s3_access            = "ENABLED"
///   zero_etl_access      = "ENABLED"
///   tags = {
///     "env" = "dev"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.odb.Network;
/// import com.pulumi.aws.odb.NetworkArgs;
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
///         var example = new Network("example", NetworkArgs.builder()
///             .displayName("odb-my-net")
///             .availabilityZoneId("use1-az6")
///             .clientSubnetCidr("10.2.0.0/24")
///             .backupSubnetCidr("10.2.1.0/24")
///             .s3Access("ENABLED")
///             .zeroEtlAccess("ENABLED")
///             .tags(Map.of("env", "dev"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:odb:Network
///     properties:
///       displayName: odb-my-net
///       availabilityZoneId: use1-az6
///       clientSubnetCidr: 10.2.0.0/24
///       backupSubnetCidr: 10.2.1.0/24
///       s3Access: ENABLED
///       zeroEtlAccess: ENABLED
///       tags:
///         env: dev
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Odb Network using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:odb/network:Network example example
/// ```
class Network extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) of the odb network resource.
  late final pulumi.Output<String> arn;
  /// Name of the Availability Zone (AZ) where the odb network is located. Changing this will force terraform to create new resource. Make sure `availabilityZone` maps correctly with `availabilityZoneId`.
  late final pulumi.Output<String> availabilityZone;
  /// AZ ID of the AZ where the ODB network is located. Changing this will force terraform to create new resource.
  late final pulumi.Output<String> availabilityZoneId;
  /// CIDR range of the backup subnet for the ODB network. Changing this will force terraform to create new resource.
  late final pulumi.Output<String> backupSubnetCidr;
  /// CIDR notation for the network resource. Changing this will force terraform to create new resource.
  late final pulumi.Output<String> clientSubnetCidr;
  /// Date and time when the ODB network was created.
  late final pulumi.Output<String> createdAt;
  /// List of regions enabled for cross-region restore in the ODB network.
  late final pulumi.Output<List<String>> crossRegionS3RestoreSourcesAccesses;
  /// Name of the custom domain that the network is located. `customDomainName` and `defaultDnsPrefix` both can't be given. Changing this will force terraform to create new resource.
  late final pulumi.Output<String?> customDomainName;
  /// Default DNS prefix for the network resource. Changing this will force terraform to create new resource.
  late final pulumi.Output<String?> defaultDnsPrefix;
  /// If set to true deletes associated OCI resources. Default false.
  late final pulumi.Output<bool> deleteAssociatedResources;
  /// User-friendly name for the odb network. Changing this will force terraform to create a new resource.
  late final pulumi.Output<String> displayName;
  /// List of EC2 placement group IDs associated with the ODB network.
  late final pulumi.Output<List<String>> ec2PlacementGroupIds;
  /// Configuration for KMS access from the ODB network.
  late final pulumi.Output<String> kmsAccess;
  /// Endpoint policy for KMS access from the ODB network.
  late final pulumi.Output<String?> kmsPolicyDocument;
  /// Managed services configuration for the ODB network. See `managedServices` Block below.
  late final pulumi.Output<List<Map<String, dynamic>>> managedServices;
  /// DNS resolver endpoints in OCI for forwarding DNS queries for the `ociPrivateZone` domain. See `ociDnsForwardingConfigs` Block below.
  late final pulumi.Output<List<Map<String, dynamic>>> ociDnsForwardingConfigs;
  /// Unique identifier of the OCI network anchor for the ODB network.
  late final pulumi.Output<String> ociNetworkAnchorId;
  /// URL of the OCI network anchor for the ODB network.
  late final pulumi.Output<String> ociNetworkAnchorUrl;
  /// Name of the OCI resource anchor for the ODB network.
  late final pulumi.Output<String> ociResourceAnchorName;
  /// Unique identifier Oracle Cloud ID (OCID) of the OCI VCN for the ODB network.
  late final pulumi.Output<String> ociVcnId;
  /// URL of the OCI VCN for the ODB network.
  late final pulumi.Output<String> ociVcnUrl;
  /// List of CIDR ranges from the peered VPC that are allowed access to the ODB network. See the [ODB network peering documentation](https://docs.aws.amazon.com/odb/latest/UserGuide/network-peering.html) for more information.
  late final pulumi.Output<List<String>> peeredCidrs;
  /// Amount of progress made on the current operation on the ODB network, expressed as a percentage.
  late final pulumi.Output<double> percentProgress;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Configuration for Amazon S3 access from the ODB network.
  late final pulumi.Output<String> s3Access;
  /// Endpoint policy for Amazon S3 access from the ODB network.
  late final pulumi.Output<String?> s3PolicyDocument;
  /// Status of the Zero-ETL access.
  late final pulumi.Output<String> status;
  /// Additional information about the current status of the ODB network.
  late final pulumi.Output<String> statusReason;
  /// Configuration for STS access from the ODB network.
  late final pulumi.Output<String> stsAccess;
  /// Endpoint policy for STS access from the ODB network.
  late final pulumi.Output<String?> stsPolicyDocument;
  /// Map of tags to assign to the exadata infrastructure. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<NetworkTimeouts?> timeouts;
  /// Configuration for Zero-ETL access from the ODB network.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> zeroEtlAccess;

  /// Creates a new [Network].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Network]. {@macro pulumi_odb_network_network_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Network(
    String name, {
    NetworkArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:odb/network:Network',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    availabilityZone = registerOutput<String>('availabilityZone');
    availabilityZoneId = registerOutput<String>('availabilityZoneId');
    backupSubnetCidr = registerOutput<String>('backupSubnetCidr');
    clientSubnetCidr = registerOutput<String>('clientSubnetCidr');
    createdAt = registerOutput<String>('createdAt');
    crossRegionS3RestoreSourcesAccesses = registerOutput<List<String>>('crossRegionS3RestoreSourcesAccesses');
    customDomainName = registerOutput<String?>('customDomainName');
    defaultDnsPrefix = registerOutput<String?>('defaultDnsPrefix');
    deleteAssociatedResources = registerOutput<bool>('deleteAssociatedResources');
    displayName = registerOutput<String>('displayName');
    ec2PlacementGroupIds = registerOutput<List<String>>('ec2PlacementGroupIds');
    kmsAccess = registerOutput<String>('kmsAccess');
    kmsPolicyDocument = registerOutput<String?>('kmsPolicyDocument');
    managedServices = registerOutput<List<Map<String, dynamic>>>('managedServices');
    ociDnsForwardingConfigs = registerOutput<List<Map<String, dynamic>>>('ociDnsForwardingConfigs');
    ociNetworkAnchorId = registerOutput<String>('ociNetworkAnchorId');
    ociNetworkAnchorUrl = registerOutput<String>('ociNetworkAnchorUrl');
    ociResourceAnchorName = registerOutput<String>('ociResourceAnchorName');
    ociVcnId = registerOutput<String>('ociVcnId');
    ociVcnUrl = registerOutput<String>('ociVcnUrl');
    peeredCidrs = registerOutput<List<String>>('peeredCidrs');
    percentProgress = registerOutput<double>('percentProgress');
    region = registerOutput<String>('region');
    s3Access = registerOutput<String>('s3Access');
    s3PolicyDocument = registerOutput<String?>('s3PolicyDocument');
    status = registerOutput<String>('status');
    statusReason = registerOutput<String>('statusReason');
    stsAccess = registerOutput<String>('stsAccess');
    stsPolicyDocument = registerOutput<String?>('stsPolicyDocument');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    timeouts = registerOutput<NetworkTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NetworkTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    zeroEtlAccess = registerOutput<String>('zeroEtlAccess');
  }

  /// Gets an existing [Network] resource's state with the given [name] and [id].
  static Network get(
    String name,
    pulumi.Input<String> id, {
    NetworkState? state,
  }) {
    return Network._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Network._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:odb/network:Network',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    availabilityZone = registerOutput<String>('availabilityZone');
    availabilityZoneId = registerOutput<String>('availabilityZoneId');
    backupSubnetCidr = registerOutput<String>('backupSubnetCidr');
    clientSubnetCidr = registerOutput<String>('clientSubnetCidr');
    createdAt = registerOutput<String>('createdAt');
    crossRegionS3RestoreSourcesAccesses = registerOutput<List<String>>('crossRegionS3RestoreSourcesAccesses');
    customDomainName = registerOutput<String?>('customDomainName');
    defaultDnsPrefix = registerOutput<String?>('defaultDnsPrefix');
    deleteAssociatedResources = registerOutput<bool>('deleteAssociatedResources');
    displayName = registerOutput<String>('displayName');
    ec2PlacementGroupIds = registerOutput<List<String>>('ec2PlacementGroupIds');
    kmsAccess = registerOutput<String>('kmsAccess');
    kmsPolicyDocument = registerOutput<String?>('kmsPolicyDocument');
    managedServices = registerOutput<List<Map<String, dynamic>>>('managedServices');
    ociDnsForwardingConfigs = registerOutput<List<Map<String, dynamic>>>('ociDnsForwardingConfigs');
    ociNetworkAnchorId = registerOutput<String>('ociNetworkAnchorId');
    ociNetworkAnchorUrl = registerOutput<String>('ociNetworkAnchorUrl');
    ociResourceAnchorName = registerOutput<String>('ociResourceAnchorName');
    ociVcnId = registerOutput<String>('ociVcnId');
    ociVcnUrl = registerOutput<String>('ociVcnUrl');
    peeredCidrs = registerOutput<List<String>>('peeredCidrs');
    percentProgress = registerOutput<double>('percentProgress');
    region = registerOutput<String>('region');
    s3Access = registerOutput<String>('s3Access');
    s3PolicyDocument = registerOutput<String?>('s3PolicyDocument');
    status = registerOutput<String>('status');
    statusReason = registerOutput<String>('statusReason');
    stsAccess = registerOutput<String>('stsAccess');
    stsPolicyDocument = registerOutput<String?>('stsPolicyDocument');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    timeouts = registerOutput<NetworkTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NetworkTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    zeroEtlAccess = registerOutput<String>('zeroEtlAccess');
  }
}
