import 'package:pulumi/pulumi.dart';
import '../cloud_vm_cluster_properties/cloud_vm_cluster_properties.dart';
import 'cloud_vm_cluster_args.dart';

/// A CloudVmCluster resource.
///
///
/// To get more information about CloudVmCluster, see:
///
/// * [API documentation](https://cloud.google.com/oracle/database/docs/reference/rest/v1/projects.locations.cloudVmClusters)
/// * How-to Guides
/// * [Create VM clusters](https://cloud.google.com/oracle/database/docs/create-clusters)
///
/// ## Example Usage
///
/// ### Oracledatabase Cloud Vmcluster Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const cloudExadataInfrastructures = new gcp.oracledatabase.CloudExadataInfrastructure("cloudExadataInfrastructures", {
/// cloudExadataInfrastructureId: "my-exadata",
/// displayName: "my-exadata displayname",
/// location: "us-east4",
/// project: "my-project",
/// properties: {
/// shape: "Exadata.X9M",
/// computeCount: 2,
/// storageCount: 3,
/// },
/// deletionProtection: true,
/// });
/// const _default = gcp.compute.getNetwork({
/// name: "new",
/// project: "my-project",
/// });
/// const myVmcluster = new gcp.oracledatabase.CloudVmCluster("my_vmcluster", {
/// cloudVmClusterId: "my-instance",
/// displayName: "my-instance displayname",
/// location: "us-east4",
/// project: "my-project",
/// exadataInfrastructure: cloudExadataInfrastructures.id,
/// network: _default.then(_default => _default.id),
/// cidr: "10.5.0.0/24",
/// backupSubnetCidr: "10.6.0.0/24",
/// properties: {
/// licenseType: "LICENSE_INCLUDED",
/// sshPublicKeys: ["ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCz1X2744t+6vRLmE5u6nHi6/QWh8bQDgHmd+OIxRQIGA/IWUtCs2FnaCNZcqvZkaeyjk5v0lTA/n+9jvO42Ipib53athrfVG8gRt8fzPL66C6ZqHq+6zZophhrCdfJh/0G4x9xJh5gdMprlaCR1P8yAaVvhBQSKGc4SiIkyMNBcHJ5YTtMQMTfxaB4G1sHZ6SDAY9a6Cq/zNjDwfPapWLsiP4mRhE5SSjJX6l6EYbkm0JeLQg+AbJiNEPvrvDp1wtTxzlPJtIivthmLMThFxK7+DkrYFuLvN5AHUdo9KTDLvHtDCvV70r8v0gafsrKkM/OE9Jtzoo0e1N/5K/ZdyFRbAkFT4QSF3nwpbmBWLf2Evg//YyEuxnz4CwPqFST2mucnrCCGCVWp1vnHZ0y30nM35njLOmWdRDFy5l27pKUTwLp02y3UYiiZyP7d3/u5pKiN4vC27VuvzprSdJxWoAvluOiDeRh+/oeQDowxoT/Oop8DzB9uJmjktXw8jyMW2+Rpg+ENQqeNgF1OGlEzypaWiRskEFlkpLb4v/s3ZDYkL1oW0Nv/J8LTjTOTEaYt2Udjoe9x2xWiGnQixhdChWuG+MaoWffzUgx1tsVj/DBXijR5DjkPkrA1GA98zd3q8GKEaAdcDenJjHhNYSd4+rE9pIsnYn7fo5X/tFfcQH1XQ== nobody@google.com"],
/// cpuCoreCount: 4,
/// giVersion: "19.0.0.0",
/// hostnamePrefix: "hostname1",
/// },
/// deletionProtection: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// cloud_exadata_infrastructures = gcp.oracledatabase.CloudExadataInfrastructure("cloudExadataInfrastructures",
/// cloud_exadata_infrastructure_id="my-exadata",
/// display_name="my-exadata displayname",
/// location="us-east4",
/// project="my-project",
/// properties={
/// "shape": "Exadata.X9M",
/// "compute_count": 2,
/// "storage_count": 3,
/// },
/// deletion_protection=True)
/// default = gcp.compute.get_network(name="new",
/// project="my-project")
/// my_vmcluster = gcp.oracledatabase.CloudVmCluster("my_vmcluster",
/// cloud_vm_cluster_id="my-instance",
/// display_name="my-instance displayname",
/// location="us-east4",
/// project="my-project",
/// exadata_infrastructure=cloud_exadata_infrastructures.id,
/// network=default.id,
/// cidr="10.5.0.0/24",
/// backup_subnet_cidr="10.6.0.0/24",
/// properties={
/// "license_type": "LICENSE_INCLUDED",
/// "ssh_public_keys": ["ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCz1X2744t+6vRLmE5u6nHi6/QWh8bQDgHmd+OIxRQIGA/IWUtCs2FnaCNZcqvZkaeyjk5v0lTA/n+9jvO42Ipib53athrfVG8gRt8fzPL66C6ZqHq+6zZophhrCdfJh/0G4x9xJh5gdMprlaCR1P8yAaVvhBQSKGc4SiIkyMNBcHJ5YTtMQMTfxaB4G1sHZ6SDAY9a6Cq/zNjDwfPapWLsiP4mRhE5SSjJX6l6EYbkm0JeLQg+AbJiNEPvrvDp1wtTxzlPJtIivthmLMThFxK7+DkrYFuLvN5AHUdo9KTDLvHtDCvV70r8v0gafsrKkM/OE9Jtzoo0e1N/5K/ZdyFRbAkFT4QSF3nwpbmBWLf2Evg//YyEuxnz4CwPqFST2mucnrCCGCVWp1vnHZ0y30nM35njLOmWdRDFy5l27pKUTwLp02y3UYiiZyP7d3/u5pKiN4vC27VuvzprSdJxWoAvluOiDeRh+/oeQDowxoT/Oop8DzB9uJmjktXw8jyMW2+Rpg+ENQqeNgF1OGlEzypaWiRskEFlkpLb4v/s3ZDYkL1oW0Nv/J8LTjTOTEaYt2Udjoe9x2xWiGnQixhdChWuG+MaoWffzUgx1tsVj/DBXijR5DjkPkrA1GA98zd3q8GKEaAdcDenJjHhNYSd4+rE9pIsnYn7fo5X/tFfcQH1XQ== nobody@google.com"],
/// "cpu_core_count": 4,
/// "gi_version": "19.0.0.0",
/// "hostname_prefix": "hostname1",
/// },
/// deletion_protection=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var cloudExadataInfrastructures = new Gcp.OracleDatabase.CloudExadataInfrastructure("cloudExadataInfrastructures", new()
/// {
/// CloudExadataInfrastructureId = "my-exadata",
/// DisplayName = "my-exadata displayname",
/// Location = "us-east4",
/// Project = "my-project",
/// Properties = new Gcp.OracleDatabase.Inputs.CloudExadataInfrastructurePropertiesArgs
/// {
/// Shape = "Exadata.X9M",
/// ComputeCount = 2,
/// StorageCount = 3,
/// },
/// DeletionProtection = true,
/// });
///
/// var @default = Gcp.Compute.GetNetwork.Invoke(new()
/// {
/// Name = "new",
/// Project = "my-project",
/// });
///
/// var myVmcluster = new Gcp.OracleDatabase.CloudVmCluster("my_vmcluster", new()
/// {
/// CloudVmClusterId = "my-instance",
/// DisplayName = "my-instance displayname",
/// Location = "us-east4",
/// Project = "my-project",
/// ExadataInfrastructure = cloudExadataInfrastructures.Id,
/// Network = @default.Apply(@default => @default.Apply(getNetworkResult => getNetworkResult.Id)),
/// Cidr = "10.5.0.0/24",
/// BackupSubnetCidr = "10.6.0.0/24",
/// Properties = new Gcp.OracleDatabase.Inputs.CloudVmClusterPropertiesArgs
/// {
/// LicenseType = "LICENSE_INCLUDED",
/// SshPublicKeys = new[]
/// {
/// "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCz1X2744t+6vRLmE5u6nHi6/QWh8bQDgHmd+OIxRQIGA/IWUtCs2FnaCNZcqvZkaeyjk5v0lTA/n+9jvO42Ipib53athrfVG8gRt8fzPL66C6ZqHq+6zZophhrCdfJh/0G4x9xJh5gdMprlaCR1P8yAaVvhBQSKGc4SiIkyMNBcHJ5YTtMQMTfxaB4G1sHZ6SDAY9a6Cq/zNjDwfPapWLsiP4mRhE5SSjJX6l6EYbkm0JeLQg+AbJiNEPvrvDp1wtTxzlPJtIivthmLMThFxK7+DkrYFuLvN5AHUdo9KTDLvHtDCvV70r8v0gafsrKkM/OE9Jtzoo0e1N/5K/ZdyFRbAkFT4QSF3nwpbmBWLf2Evg//YyEuxnz4CwPqFST2mucnrCCGCVWp1vnHZ0y30nM35njLOmWdRDFy5l27pKUTwLp02y3UYiiZyP7d3/u5pKiN4vC27VuvzprSdJxWoAvluOiDeRh+/oeQDowxoT/Oop8DzB9uJmjktXw8jyMW2+Rpg+ENQqeNgF1OGlEzypaWiRskEFlkpLb4v/s3ZDYkL1oW0Nv/J8LTjTOTEaYt2Udjoe9x2xWiGnQixhdChWuG+MaoWffzUgx1tsVj/DBXijR5DjkPkrA1GA98zd3q8GKEaAdcDenJjHhNYSd4+rE9pIsnYn7fo5X/tFfcQH1XQ== nobody@google.com",
/// },
/// CpuCoreCount = 4,
/// GiVersion = "19.0.0.0",
/// HostnamePrefix = "hostname1",
/// },
/// DeletionProtection = true,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/oracledatabase"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// cloudExadataInfrastructures, err := oracledatabase.NewCloudExadataInfrastructure(ctx, "cloudExadataInfrastructures", &oracledatabase.CloudExadataInfrastructureArgs{
/// CloudExadataInfrastructureId: pulumi.String("my-exadata"),
/// DisplayName:                  pulumi.String("my-exadata displayname"),
/// Location:                     pulumi.String("us-east4"),
/// Project:                      pulumi.String("my-project"),
/// Properties: &oracledatabase.CloudExadataInfrastructurePropertiesArgs{
/// Shape:        pulumi.String("Exadata.X9M"),
/// ComputeCount: pulumi.Int(2),
/// StorageCount: pulumi.Int(3),
/// },
/// DeletionProtection: pulumi.Bool(true),
/// })
/// if err != nil {
/// return err
/// }
/// _default, err := compute.LookupNetwork(ctx, &compute.LookupNetworkArgs{
/// Name:    "new",
/// Project: pulumi.StringRef("my-project"),
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = oracledatabase.NewCloudVmCluster(ctx, "my_vmcluster", &oracledatabase.CloudVmClusterArgs{
/// CloudVmClusterId:      pulumi.String("my-instance"),
/// DisplayName:           pulumi.String("my-instance displayname"),
/// Location:              pulumi.String("us-east4"),
/// Project:               pulumi.String("my-project"),
/// ExadataInfrastructure: cloudExadataInfrastructures.ID(),
/// Network:               pulumi.String(_default.Id),
/// Cidr:                  pulumi.String("10.5.0.0/24"),
/// BackupSubnetCidr:      pulumi.String("10.6.0.0/24"),
/// Properties: &oracledatabase.CloudVmClusterPropertiesArgs{
/// LicenseType: pulumi.String("LICENSE_INCLUDED"),
/// SshPublicKeys: pulumi.StringArray{
/// pulumi.String("ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCz1X2744t+6vRLmE5u6nHi6/QWh8bQDgHmd+OIxRQIGA/IWUtCs2FnaCNZcqvZkaeyjk5v0lTA/n+9jvO42Ipib53athrfVG8gRt8fzPL66C6ZqHq+6zZophhrCdfJh/0G4x9xJh5gdMprlaCR1P8yAaVvhBQSKGc4SiIkyMNBcHJ5YTtMQMTfxaB4G1sHZ6SDAY9a6Cq/zNjDwfPapWLsiP4mRhE5SSjJX6l6EYbkm0JeLQg+AbJiNEPvrvDp1wtTxzlPJtIivthmLMThFxK7+DkrYFuLvN5AHUdo9KTDLvHtDCvV70r8v0gafsrKkM/OE9Jtzoo0e1N/5K/ZdyFRbAkFT4QSF3nwpbmBWLf2Evg//YyEuxnz4CwPqFST2mucnrCCGCVWp1vnHZ0y30nM35njLOmWdRDFy5l27pKUTwLp02y3UYiiZyP7d3/u5pKiN4vC27VuvzprSdJxWoAvluOiDeRh+/oeQDowxoT/Oop8DzB9uJmjktXw8jyMW2+Rpg+ENQqeNgF1OGlEzypaWiRskEFlkpLb4v/s3ZDYkL1oW0Nv/J8LTjTOTEaYt2Udjoe9x2xWiGnQixhdChWuG+MaoWffzUgx1tsVj/DBXijR5DjkPkrA1GA98zd3q8GKEaAdcDenJjHhNYSd4+rE9pIsnYn7fo5X/tFfcQH1XQ== nobody@google.com"),
/// },
/// CpuCoreCount:   pulumi.Int(4),
/// GiVersion:      pulumi.String("19.0.0.0"),
/// HostnamePrefix: pulumi.String("hostname1"),
/// },
/// DeletionProtection: pulumi.Bool(true),
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
/// import com.pulumi.gcp.oracledatabase.CloudExadataInfrastructure;
/// import com.pulumi.gcp.oracledatabase.CloudExadataInfrastructureArgs;
/// import com.pulumi.gcp.oracledatabase.inputs.CloudExadataInfrastructurePropertiesArgs;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetNetworkArgs;
/// import com.pulumi.gcp.oracledatabase.CloudVmCluster;
/// import com.pulumi.gcp.oracledatabase.CloudVmClusterArgs;
/// import com.pulumi.gcp.oracledatabase.inputs.CloudVmClusterPropertiesArgs;
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
/// var cloudExadataInfrastructures = new CloudExadataInfrastructure("cloudExadataInfrastructures", CloudExadataInfrastructureArgs.builder()
/// .cloudExadataInfrastructureId("my-exadata")
/// .displayName("my-exadata displayname")
/// .location("us-east4")
/// .project("my-project")
/// .properties(CloudExadataInfrastructurePropertiesArgs.builder()
/// .shape("Exadata.X9M")
/// .computeCount(2)
/// .storageCount(3)
/// .build())
/// .deletionProtection(true)
/// .build());
///
/// final var default = ComputeFunctions.getNetwork(GetNetworkArgs.builder()
/// .name("new")
/// .project("my-project")
/// .build());
///
/// var myVmcluster = new CloudVmCluster("myVmcluster", CloudVmClusterArgs.builder()
/// .cloudVmClusterId("my-instance")
/// .displayName("my-instance displayname")
/// .location("us-east4")
/// .project("my-project")
/// .exadataInfrastructure(cloudExadataInfrastructures.id())
/// .network(default_.id())
/// .cidr("10.5.0.0/24")
/// .backupSubnetCidr("10.6.0.0/24")
/// .properties(CloudVmClusterPropertiesArgs.builder()
/// .licenseType("LICENSE_INCLUDED")
/// .sshPublicKeys("ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCz1X2744t+6vRLmE5u6nHi6/QWh8bQDgHmd+OIxRQIGA/IWUtCs2FnaCNZcqvZkaeyjk5v0lTA/n+9jvO42Ipib53athrfVG8gRt8fzPL66C6ZqHq+6zZophhrCdfJh/0G4x9xJh5gdMprlaCR1P8yAaVvhBQSKGc4SiIkyMNBcHJ5YTtMQMTfxaB4G1sHZ6SDAY9a6Cq/zNjDwfPapWLsiP4mRhE5SSjJX6l6EYbkm0JeLQg+AbJiNEPvrvDp1wtTxzlPJtIivthmLMThFxK7+DkrYFuLvN5AHUdo9KTDLvHtDCvV70r8v0gafsrKkM/OE9Jtzoo0e1N/5K/ZdyFRbAkFT4QSF3nwpbmBWLf2Evg//YyEuxnz4CwPqFST2mucnrCCGCVWp1vnHZ0y30nM35njLOmWdRDFy5l27pKUTwLp02y3UYiiZyP7d3/u5pKiN4vC27VuvzprSdJxWoAvluOiDeRh+/oeQDowxoT/Oop8DzB9uJmjktXw8jyMW2+Rpg+ENQqeNgF1OGlEzypaWiRskEFlkpLb4v/s3ZDYkL1oW0Nv/J8LTjTOTEaYt2Udjoe9x2xWiGnQixhdChWuG+MaoWffzUgx1tsVj/DBXijR5DjkPkrA1GA98zd3q8GKEaAdcDenJjHhNYSd4+rE9pIsnYn7fo5X/tFfcQH1XQ== nobody@google.com")
/// .cpuCoreCount(4)
/// .giVersion("19.0.0.0")
/// .hostnamePrefix("hostname1")
/// .build())
/// .deletionProtection(true)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// myVmcluster:
/// type: gcp:oracledatabase:CloudVmCluster
/// name: my_vmcluster
/// properties:
/// cloudVmClusterId: my-instance
/// displayName: my-instance displayname
/// location: us-east4
/// project: my-project
/// exadataInfrastructure: ${cloudExadataInfrastructures.id}
/// network: ${default.id}
/// cidr: 10.5.0.0/24
/// backupSubnetCidr: 10.6.0.0/24
/// properties:
/// licenseType: LICENSE_INCLUDED
/// sshPublicKeys:
/// - ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCz1X2744t+6vRLmE5u6nHi6/QWh8bQDgHmd+OIxRQIGA/IWUtCs2FnaCNZcqvZkaeyjk5v0lTA/n+9jvO42Ipib53athrfVG8gRt8fzPL66C6ZqHq+6zZophhrCdfJh/0G4x9xJh5gdMprlaCR1P8yAaVvhBQSKGc4SiIkyMNBcHJ5YTtMQMTfxaB4G1sHZ6SDAY9a6Cq/zNjDwfPapWLsiP4mRhE5SSjJX6l6EYbkm0JeLQg+AbJiNEPvrvDp1wtTxzlPJtIivthmLMThFxK7+DkrYFuLvN5AHUdo9KTDLvHtDCvV70r8v0gafsrKkM/OE9Jtzoo0e1N/5K/ZdyFRbAkFT4QSF3nwpbmBWLf2Evg//YyEuxnz4CwPqFST2mucnrCCGCVWp1vnHZ0y30nM35njLOmWdRDFy5l27pKUTwLp02y3UYiiZyP7d3/u5pKiN4vC27VuvzprSdJxWoAvluOiDeRh+/oeQDowxoT/Oop8DzB9uJmjktXw8jyMW2+Rpg+ENQqeNgF1OGlEzypaWiRskEFlkpLb4v/s3ZDYkL1oW0Nv/J8LTjTOTEaYt2Udjoe9x2xWiGnQixhdChWuG+MaoWffzUgx1tsVj/DBXijR5DjkPkrA1GA98zd3q8GKEaAdcDenJjHhNYSd4+rE9pIsnYn7fo5X/tFfcQH1XQ== nobody@google.com
/// cpuCoreCount: '4'
/// giVersion: 19.0.0.0
/// hostnamePrefix: hostname1
/// deletionProtection: 'true'
/// cloudExadataInfrastructures:
/// type: gcp:oracledatabase:CloudExadataInfrastructure
/// properties:
/// cloudExadataInfrastructureId: my-exadata
/// displayName: my-exadata displayname
/// location: us-east4
/// project: my-project
/// properties:
/// shape: Exadata.X9M
/// computeCount: '2'
/// storageCount: '3'
/// deletionProtection: 'true'
/// variables:
/// default:
/// fn::invoke:
/// function: gcp:compute:getNetwork
/// arguments:
/// name: new
/// project: my-project
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Oracledatabase Cloud Vmcluster Odbnetwork
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const cloudExadataInfrastructures = new gcp.oracledatabase.CloudExadataInfrastructure("cloudExadataInfrastructures", {
/// cloudExadataInfrastructureId: "my-exadata",
/// displayName: "my-exadata displayname",
/// location: "europe-west2",
/// project: "my-project",
/// properties: {
/// shape: "Exadata.X9M",
/// computeCount: 2,
/// storageCount: 3,
/// },
/// deletionProtection: true,
/// });
/// const myVmcluster = new gcp.oracledatabase.CloudVmCluster("my_vmcluster", {
/// cloudVmClusterId: "my-instance",
/// displayName: "my-instance displayname",
/// location: "europe-west2",
/// project: "my-project",
/// exadataInfrastructure: cloudExadataInfrastructures.id,
/// odbNetwork: "projects/my-project/locations/europe-west2/odbNetworks/my-odbnetwork",
/// odbSubnet: "projects/my-project/locations/europe-west2/odbNetworks/my-odbnetwork/odbSubnets/my-odbsubnet",
/// backupOdbSubnet: "projects/my-project/locations/europe-west2/odbNetworks/my-odbnetwork/odbSubnets/my-backup-odbsubnet",
/// properties: {
/// licenseType: "LICENSE_INCLUDED",
/// sshPublicKeys: ["ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCz1X2744t+6vRLmE5u6nHi6/QWh8bQDgHmd+OIxRQIGA/IWUtCs2FnaCNZcqvZkaeyjk5v0lTA/n+9jvO42Ipib53athrfVG8gRt8fzPL66C6ZqHq+6zZophhrCdfJh/0G4x9xJh5gdMprlaCR1P8yAaVvhBQSKGc4SiIkyMNBcHJ5YTtMQMTfxaB4G1sHZ6SDAY9a6Cq/zNjDwfPapWLsiP4mRhE5SSjJX6l6EYbkm0JeLQg+AbJiNEPvrvDp1wtTxzlPJtIivthmLMThFxK7+DkrYFuLvN5AHUdo9KTDLvHtDCvV70r8v0gafsrKkM/OE9Jtzoo0e1N/5K/ZdyFRbAkFT4QSF3nwpbmBWLf2Evg//YyEuxnz4CwPqFST2mucnrCCGCVWp1vnHZ0y30nM35njLOmWdRDFy5l27pKUTwLp02y3UYiiZyP7d3/u5pKiN4vC27VuvzprSdJxWoAvluOiDeRh+/oeQDowxoT/Oop8DzB9uJmjktXw8jyMW2+Rpg+ENQqeNgF1OGlEzypaWiRskEFlkpLb4v/s3ZDYkL1oW0Nv/J8LTjTOTEaYt2Udjoe9x2xWiGnQixhdChWuG+MaoWffzUgx1tsVj/DBXijR5DjkPkrA1GA98zd3q8GKEaAdcDenJjHhNYSd4+rE9pIsnYn7fo5X/tFfcQH1XQ== nobody@google.com"],
/// cpuCoreCount: 4,
/// giVersion: "19.0.0.0",
/// hostnamePrefix: "hostname1",
/// },
/// deletionProtection: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// cloud_exadata_infrastructures = gcp.oracledatabase.CloudExadataInfrastructure("cloudExadataInfrastructures",
/// cloud_exadata_infrastructure_id="my-exadata",
/// display_name="my-exadata displayname",
/// location="europe-west2",
/// project="my-project",
/// properties={
/// "shape": "Exadata.X9M",
/// "compute_count": 2,
/// "storage_count": 3,
/// },
/// deletion_protection=True)
/// my_vmcluster = gcp.oracledatabase.CloudVmCluster("my_vmcluster",
/// cloud_vm_cluster_id="my-instance",
/// display_name="my-instance displayname",
/// location="europe-west2",
/// project="my-project",
/// exadata_infrastructure=cloud_exadata_infrastructures.id,
/// odb_network="projects/my-project/locations/europe-west2/odbNetworks/my-odbnetwork",
/// odb_subnet="projects/my-project/locations/europe-west2/odbNetworks/my-odbnetwork/odbSubnets/my-odbsubnet",
/// backup_odb_subnet="projects/my-project/locations/europe-west2/odbNetworks/my-odbnetwork/odbSubnets/my-backup-odbsubnet",
/// properties={
/// "license_type": "LICENSE_INCLUDED",
/// "ssh_public_keys": ["ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCz1X2744t+6vRLmE5u6nHi6/QWh8bQDgHmd+OIxRQIGA/IWUtCs2FnaCNZcqvZkaeyjk5v0lTA/n+9jvO42Ipib53athrfVG8gRt8fzPL66C6ZqHq+6zZophhrCdfJh/0G4x9xJh5gdMprlaCR1P8yAaVvhBQSKGc4SiIkyMNBcHJ5YTtMQMTfxaB4G1sHZ6SDAY9a6Cq/zNjDwfPapWLsiP4mRhE5SSjJX6l6EYbkm0JeLQg+AbJiNEPvrvDp1wtTxzlPJtIivthmLMThFxK7+DkrYFuLvN5AHUdo9KTDLvHtDCvV70r8v0gafsrKkM/OE9Jtzoo0e1N/5K/ZdyFRbAkFT4QSF3nwpbmBWLf2Evg//YyEuxnz4CwPqFST2mucnrCCGCVWp1vnHZ0y30nM35njLOmWdRDFy5l27pKUTwLp02y3UYiiZyP7d3/u5pKiN4vC27VuvzprSdJxWoAvluOiDeRh+/oeQDowxoT/Oop8DzB9uJmjktXw8jyMW2+Rpg+ENQqeNgF1OGlEzypaWiRskEFlkpLb4v/s3ZDYkL1oW0Nv/J8LTjTOTEaYt2Udjoe9x2xWiGnQixhdChWuG+MaoWffzUgx1tsVj/DBXijR5DjkPkrA1GA98zd3q8GKEaAdcDenJjHhNYSd4+rE9pIsnYn7fo5X/tFfcQH1XQ== nobody@google.com"],
/// "cpu_core_count": 4,
/// "gi_version": "19.0.0.0",
/// "hostname_prefix": "hostname1",
/// },
/// deletion_protection=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var cloudExadataInfrastructures = new Gcp.OracleDatabase.CloudExadataInfrastructure("cloudExadataInfrastructures", new()
/// {
/// CloudExadataInfrastructureId = "my-exadata",
/// DisplayName = "my-exadata displayname",
/// Location = "europe-west2",
/// Project = "my-project",
/// Properties = new Gcp.OracleDatabase.Inputs.CloudExadataInfrastructurePropertiesArgs
/// {
/// Shape = "Exadata.X9M",
/// ComputeCount = 2,
/// StorageCount = 3,
/// },
/// DeletionProtection = true,
/// });
///
/// var myVmcluster = new Gcp.OracleDatabase.CloudVmCluster("my_vmcluster", new()
/// {
/// CloudVmClusterId = "my-instance",
/// DisplayName = "my-instance displayname",
/// Location = "europe-west2",
/// Project = "my-project",
/// ExadataInfrastructure = cloudExadataInfrastructures.Id,
/// OdbNetwork = "projects/my-project/locations/europe-west2/odbNetworks/my-odbnetwork",
/// OdbSubnet = "projects/my-project/locations/europe-west2/odbNetworks/my-odbnetwork/odbSubnets/my-odbsubnet",
/// BackupOdbSubnet = "projects/my-project/locations/europe-west2/odbNetworks/my-odbnetwork/odbSubnets/my-backup-odbsubnet",
/// Properties = new Gcp.OracleDatabase.Inputs.CloudVmClusterPropertiesArgs
/// {
/// LicenseType = "LICENSE_INCLUDED",
/// SshPublicKeys = new[]
/// {
/// "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCz1X2744t+6vRLmE5u6nHi6/QWh8bQDgHmd+OIxRQIGA/IWUtCs2FnaCNZcqvZkaeyjk5v0lTA/n+9jvO42Ipib53athrfVG8gRt8fzPL66C6ZqHq+6zZophhrCdfJh/0G4x9xJh5gdMprlaCR1P8yAaVvhBQSKGc4SiIkyMNBcHJ5YTtMQMTfxaB4G1sHZ6SDAY9a6Cq/zNjDwfPapWLsiP4mRhE5SSjJX6l6EYbkm0JeLQg+AbJiNEPvrvDp1wtTxzlPJtIivthmLMThFxK7+DkrYFuLvN5AHUdo9KTDLvHtDCvV70r8v0gafsrKkM/OE9Jtzoo0e1N/5K/ZdyFRbAkFT4QSF3nwpbmBWLf2Evg//YyEuxnz4CwPqFST2mucnrCCGCVWp1vnHZ0y30nM35njLOmWdRDFy5l27pKUTwLp02y3UYiiZyP7d3/u5pKiN4vC27VuvzprSdJxWoAvluOiDeRh+/oeQDowxoT/Oop8DzB9uJmjktXw8jyMW2+Rpg+ENQqeNgF1OGlEzypaWiRskEFlkpLb4v/s3ZDYkL1oW0Nv/J8LTjTOTEaYt2Udjoe9x2xWiGnQixhdChWuG+MaoWffzUgx1tsVj/DBXijR5DjkPkrA1GA98zd3q8GKEaAdcDenJjHhNYSd4+rE9pIsnYn7fo5X/tFfcQH1XQ== nobody@google.com",
/// },
/// CpuCoreCount = 4,
/// GiVersion = "19.0.0.0",
/// HostnamePrefix = "hostname1",
/// },
/// DeletionProtection = true,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/oracledatabase"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// cloudExadataInfrastructures, err := oracledatabase.NewCloudExadataInfrastructure(ctx, "cloudExadataInfrastructures", &oracledatabase.CloudExadataInfrastructureArgs{
/// CloudExadataInfrastructureId: pulumi.String("my-exadata"),
/// DisplayName:                  pulumi.String("my-exadata displayname"),
/// Location:                     pulumi.String("europe-west2"),
/// Project:                      pulumi.String("my-project"),
/// Properties: &oracledatabase.CloudExadataInfrastructurePropertiesArgs{
/// Shape:        pulumi.String("Exadata.X9M"),
/// ComputeCount: pulumi.Int(2),
/// StorageCount: pulumi.Int(3),
/// },
/// DeletionProtection: pulumi.Bool(true),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = oracledatabase.NewCloudVmCluster(ctx, "my_vmcluster", &oracledatabase.CloudVmClusterArgs{
/// CloudVmClusterId:      pulumi.String("my-instance"),
/// DisplayName:           pulumi.String("my-instance displayname"),
/// Location:              pulumi.String("europe-west2"),
/// Project:               pulumi.String("my-project"),
/// ExadataInfrastructure: cloudExadataInfrastructures.ID(),
/// OdbNetwork:            pulumi.String("projects/my-project/locations/europe-west2/odbNetworks/my-odbnetwork"),
/// OdbSubnet:             pulumi.String("projects/my-project/locations/europe-west2/odbNetworks/my-odbnetwork/odbSubnets/my-odbsubnet"),
/// BackupOdbSubnet:       pulumi.String("projects/my-project/locations/europe-west2/odbNetworks/my-odbnetwork/odbSubnets/my-backup-odbsubnet"),
/// Properties: &oracledatabase.CloudVmClusterPropertiesArgs{
/// LicenseType: pulumi.String("LICENSE_INCLUDED"),
/// SshPublicKeys: pulumi.StringArray{
/// pulumi.String("ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCz1X2744t+6vRLmE5u6nHi6/QWh8bQDgHmd+OIxRQIGA/IWUtCs2FnaCNZcqvZkaeyjk5v0lTA/n+9jvO42Ipib53athrfVG8gRt8fzPL66C6ZqHq+6zZophhrCdfJh/0G4x9xJh5gdMprlaCR1P8yAaVvhBQSKGc4SiIkyMNBcHJ5YTtMQMTfxaB4G1sHZ6SDAY9a6Cq/zNjDwfPapWLsiP4mRhE5SSjJX6l6EYbkm0JeLQg+AbJiNEPvrvDp1wtTxzlPJtIivthmLMThFxK7+DkrYFuLvN5AHUdo9KTDLvHtDCvV70r8v0gafsrKkM/OE9Jtzoo0e1N/5K/ZdyFRbAkFT4QSF3nwpbmBWLf2Evg//YyEuxnz4CwPqFST2mucnrCCGCVWp1vnHZ0y30nM35njLOmWdRDFy5l27pKUTwLp02y3UYiiZyP7d3/u5pKiN4vC27VuvzprSdJxWoAvluOiDeRh+/oeQDowxoT/Oop8DzB9uJmjktXw8jyMW2+Rpg+ENQqeNgF1OGlEzypaWiRskEFlkpLb4v/s3ZDYkL1oW0Nv/J8LTjTOTEaYt2Udjoe9x2xWiGnQixhdChWuG+MaoWffzUgx1tsVj/DBXijR5DjkPkrA1GA98zd3q8GKEaAdcDenJjHhNYSd4+rE9pIsnYn7fo5X/tFfcQH1XQ== nobody@google.com"),
/// },
/// CpuCoreCount:   pulumi.Int(4),
/// GiVersion:      pulumi.String("19.0.0.0"),
/// HostnamePrefix: pulumi.String("hostname1"),
/// },
/// DeletionProtection: pulumi.Bool(true),
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
/// import com.pulumi.gcp.oracledatabase.CloudExadataInfrastructure;
/// import com.pulumi.gcp.oracledatabase.CloudExadataInfrastructureArgs;
/// import com.pulumi.gcp.oracledatabase.inputs.CloudExadataInfrastructurePropertiesArgs;
/// import com.pulumi.gcp.oracledatabase.CloudVmCluster;
/// import com.pulumi.gcp.oracledatabase.CloudVmClusterArgs;
/// import com.pulumi.gcp.oracledatabase.inputs.CloudVmClusterPropertiesArgs;
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
/// var cloudExadataInfrastructures = new CloudExadataInfrastructure("cloudExadataInfrastructures", CloudExadataInfrastructureArgs.builder()
/// .cloudExadataInfrastructureId("my-exadata")
/// .displayName("my-exadata displayname")
/// .location("europe-west2")
/// .project("my-project")
/// .properties(CloudExadataInfrastructurePropertiesArgs.builder()
/// .shape("Exadata.X9M")
/// .computeCount(2)
/// .storageCount(3)
/// .build())
/// .deletionProtection(true)
/// .build());
///
/// var myVmcluster = new CloudVmCluster("myVmcluster", CloudVmClusterArgs.builder()
/// .cloudVmClusterId("my-instance")
/// .displayName("my-instance displayname")
/// .location("europe-west2")
/// .project("my-project")
/// .exadataInfrastructure(cloudExadataInfrastructures.id())
/// .odbNetwork("projects/my-project/locations/europe-west2/odbNetworks/my-odbnetwork")
/// .odbSubnet("projects/my-project/locations/europe-west2/odbNetworks/my-odbnetwork/odbSubnets/my-odbsubnet")
/// .backupOdbSubnet("projects/my-project/locations/europe-west2/odbNetworks/my-odbnetwork/odbSubnets/my-backup-odbsubnet")
/// .properties(CloudVmClusterPropertiesArgs.builder()
/// .licenseType("LICENSE_INCLUDED")
/// .sshPublicKeys("ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCz1X2744t+6vRLmE5u6nHi6/QWh8bQDgHmd+OIxRQIGA/IWUtCs2FnaCNZcqvZkaeyjk5v0lTA/n+9jvO42Ipib53athrfVG8gRt8fzPL66C6ZqHq+6zZophhrCdfJh/0G4x9xJh5gdMprlaCR1P8yAaVvhBQSKGc4SiIkyMNBcHJ5YTtMQMTfxaB4G1sHZ6SDAY9a6Cq/zNjDwfPapWLsiP4mRhE5SSjJX6l6EYbkm0JeLQg+AbJiNEPvrvDp1wtTxzlPJtIivthmLMThFxK7+DkrYFuLvN5AHUdo9KTDLvHtDCvV70r8v0gafsrKkM/OE9Jtzoo0e1N/5K/ZdyFRbAkFT4QSF3nwpbmBWLf2Evg//YyEuxnz4CwPqFST2mucnrCCGCVWp1vnHZ0y30nM35njLOmWdRDFy5l27pKUTwLp02y3UYiiZyP7d3/u5pKiN4vC27VuvzprSdJxWoAvluOiDeRh+/oeQDowxoT/Oop8DzB9uJmjktXw8jyMW2+Rpg+ENQqeNgF1OGlEzypaWiRskEFlkpLb4v/s3ZDYkL1oW0Nv/J8LTjTOTEaYt2Udjoe9x2xWiGnQixhdChWuG+MaoWffzUgx1tsVj/DBXijR5DjkPkrA1GA98zd3q8GKEaAdcDenJjHhNYSd4+rE9pIsnYn7fo5X/tFfcQH1XQ== nobody@google.com")
/// .cpuCoreCount(4)
/// .giVersion("19.0.0.0")
/// .hostnamePrefix("hostname1")
/// .build())
/// .deletionProtection(true)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// myVmcluster:
/// type: gcp:oracledatabase:CloudVmCluster
/// name: my_vmcluster
/// properties:
/// cloudVmClusterId: my-instance
/// displayName: my-instance displayname
/// location: europe-west2
/// project: my-project
/// exadataInfrastructure: ${cloudExadataInfrastructures.id}
/// odbNetwork: projects/my-project/locations/europe-west2/odbNetworks/my-odbnetwork
/// odbSubnet: projects/my-project/locations/europe-west2/odbNetworks/my-odbnetwork/odbSubnets/my-odbsubnet
/// backupOdbSubnet: projects/my-project/locations/europe-west2/odbNetworks/my-odbnetwork/odbSubnets/my-backup-odbsubnet
/// properties:
/// licenseType: LICENSE_INCLUDED
/// sshPublicKeys:
/// - ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCz1X2744t+6vRLmE5u6nHi6/QWh8bQDgHmd+OIxRQIGA/IWUtCs2FnaCNZcqvZkaeyjk5v0lTA/n+9jvO42Ipib53athrfVG8gRt8fzPL66C6ZqHq+6zZophhrCdfJh/0G4x9xJh5gdMprlaCR1P8yAaVvhBQSKGc4SiIkyMNBcHJ5YTtMQMTfxaB4G1sHZ6SDAY9a6Cq/zNjDwfPapWLsiP4mRhE5SSjJX6l6EYbkm0JeLQg+AbJiNEPvrvDp1wtTxzlPJtIivthmLMThFxK7+DkrYFuLvN5AHUdo9KTDLvHtDCvV70r8v0gafsrKkM/OE9Jtzoo0e1N/5K/ZdyFRbAkFT4QSF3nwpbmBWLf2Evg//YyEuxnz4CwPqFST2mucnrCCGCVWp1vnHZ0y30nM35njLOmWdRDFy5l27pKUTwLp02y3UYiiZyP7d3/u5pKiN4vC27VuvzprSdJxWoAvluOiDeRh+/oeQDowxoT/Oop8DzB9uJmjktXw8jyMW2+Rpg+ENQqeNgF1OGlEzypaWiRskEFlkpLb4v/s3ZDYkL1oW0Nv/J8LTjTOTEaYt2Udjoe9x2xWiGnQixhdChWuG+MaoWffzUgx1tsVj/DBXijR5DjkPkrA1GA98zd3q8GKEaAdcDenJjHhNYSd4+rE9pIsnYn7fo5X/tFfcQH1XQ== nobody@google.com
/// cpuCoreCount: '4'
/// giVersion: 19.0.0.0
/// hostnamePrefix: hostname1
/// deletionProtection: 'true'
/// cloudExadataInfrastructures:
/// type: gcp:oracledatabase:CloudExadataInfrastructure
/// properties:
/// cloudExadataInfrastructureId: my-exadata
/// displayName: my-exadata displayname
/// location: europe-west2
/// project: my-project
/// properties:
/// shape: Exadata.X9M
/// computeCount: '2'
/// storageCount: '3'
/// deletionProtection: 'true'
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Oracledatabase Cloud Vmcluster Full
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const cloudExadataInfrastructures = new gcp.oracledatabase.CloudExadataInfrastructure("cloudExadataInfrastructures", {
/// cloudExadataInfrastructureId: "my-exadata",
/// displayName: "my-exadata displayname",
/// location: "us-east4",
/// project: "my-project",
/// properties: {
/// shape: "Exadata.X9M",
/// computeCount: 2,
/// storageCount: 3,
/// },
/// deletionProtection: true,
/// });
/// const _default = gcp.compute.getNetwork({
/// name: "new",
/// project: "my-project",
/// });
/// const mydbserver = gcp.oracledatabase.getDbServersOutput({
/// location: "us-east4",
/// project: "my-project",
/// cloudExadataInfrastructure: cloudExadataInfrastructures.cloudExadataInfrastructureId,
/// });
/// const myVmcluster = new gcp.oracledatabase.CloudVmCluster("my_vmcluster", {
/// cloudVmClusterId: "my-instance",
/// displayName: "my-instance displayname",
/// location: "us-east4",
/// project: "my-project",
/// exadataInfrastructure: cloudExadataInfrastructures.id,
/// network: _default.then(_default => _default.id),
/// cidr: "10.5.0.0/24",
/// backupSubnetCidr: "10.6.0.0/24",
/// labels: {
/// "label-one": "value-one",
/// },
/// properties: {
/// licenseType: "LICENSE_INCLUDED",
/// sshPublicKeys: ["ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCz1X2744t+6vRLmE5u6nHi6/QWh8bQDgHmd+OIxRQIGA/IWUtCs2FnaCNZcqvZkaeyjk5v0lTA/n+9jvO42Ipib53athrfVG8gRt8fzPL66C6ZqHq+6zZophhrCdfJh/0G4x9xJh5gdMprlaCR1P8yAaVvhBQSKGc4SiIkyMNBcHJ5YTtMQMTfxaB4G1sHZ6SDAY9a6Cq/zNjDwfPapWLsiP4mRhE5SSjJX6l6EYbkm0JeLQg+AbJiNEPvrvDp1wtTxzlPJtIivthmLMThFxK7+DkrYFuLvN5AHUdo9KTDLvHtDCvV70r8v0gafsrKkM/OE9Jtzoo0e1N/5K/ZdyFRbAkFT4QSF3nwpbmBWLf2Evg//YyEuxnz4CwPqFST2mucnrCCGCVWp1vnHZ0y30nM35njLOmWdRDFy5l27pKUTwLp02y3UYiiZyP7d3/u5pKiN4vC27VuvzprSdJxWoAvluOiDeRh+/oeQDowxoT/Oop8DzB9uJmjktXw8jyMW2+Rpg+ENQqeNgF1OGlEzypaWiRskEFlkpLb4v/s3ZDYkL1oW0Nv/J8LTjTOTEaYt2Udjoe9x2xWiGnQixhdChWuG+MaoWffzUgx1tsVj/DBXijR5DjkPkrA1GA98zd3q8GKEaAdcDenJjHhNYSd4+rE9pIsnYn7fo5X/tFfcQH1XQ== nobody@google.com"],
/// cpuCoreCount: 4,
/// giVersion: "19.0.0.0",
/// timeZone: {
/// id: "UTC",
/// },
/// nodeCount: 2,
/// ocpuCount: 4,
/// dataStorageSizeTb: 2,
/// dbNodeStorageSizeGb: 120,
/// dbServerOcids: [
/// mydbserver.apply(mydbserver => mydbserver.dbServers?.[0]?.properties?.[0]?.ocid),
/// mydbserver.apply(mydbserver => mydbserver.dbServers?.[1]?.properties?.[0]?.ocid),
/// ],
/// diskRedundancy: "HIGH",
/// sparseDiskgroupEnabled: false,
/// localBackupEnabled: false,
/// clusterName: "pq-ppat4",
/// hostnamePrefix: "hostname1",
/// diagnosticsDataCollectionOptions: {
/// diagnosticsEventsEnabled: true,
/// healthMonitoringEnabled: true,
/// incidentLogsEnabled: true,
/// },
/// memorySizeGb: 60,
/// },
/// deletionProtection: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// cloud_exadata_infrastructures = gcp.oracledatabase.CloudExadataInfrastructure("cloudExadataInfrastructures",
/// cloud_exadata_infrastructure_id="my-exadata",
/// display_name="my-exadata displayname",
/// location="us-east4",
/// project="my-project",
/// properties={
/// "shape": "Exadata.X9M",
/// "compute_count": 2,
/// "storage_count": 3,
/// },
/// deletion_protection=True)
/// default = gcp.compute.get_network(name="new",
/// project="my-project")
/// mydbserver = gcp.oracledatabase.get_db_servers_output(location="us-east4",
/// project="my-project",
/// cloud_exadata_infrastructure=cloud_exadata_infrastructures.cloud_exadata_infrastructure_id)
/// my_vmcluster = gcp.oracledatabase.CloudVmCluster("my_vmcluster",
/// cloud_vm_cluster_id="my-instance",
/// display_name="my-instance displayname",
/// location="us-east4",
/// project="my-project",
/// exadata_infrastructure=cloud_exadata_infrastructures.id,
/// network=default.id,
/// cidr="10.5.0.0/24",
/// backup_subnet_cidr="10.6.0.0/24",
/// labels={
/// "label-one": "value-one",
/// },
/// properties={
/// "license_type": "LICENSE_INCLUDED",
/// "ssh_public_keys": ["ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCz1X2744t+6vRLmE5u6nHi6/QWh8bQDgHmd+OIxRQIGA/IWUtCs2FnaCNZcqvZkaeyjk5v0lTA/n+9jvO42Ipib53athrfVG8gRt8fzPL66C6ZqHq+6zZophhrCdfJh/0G4x9xJh5gdMprlaCR1P8yAaVvhBQSKGc4SiIkyMNBcHJ5YTtMQMTfxaB4G1sHZ6SDAY9a6Cq/zNjDwfPapWLsiP4mRhE5SSjJX6l6EYbkm0JeLQg+AbJiNEPvrvDp1wtTxzlPJtIivthmLMThFxK7+DkrYFuLvN5AHUdo9KTDLvHtDCvV70r8v0gafsrKkM/OE9Jtzoo0e1N/5K/ZdyFRbAkFT4QSF3nwpbmBWLf2Evg//YyEuxnz4CwPqFST2mucnrCCGCVWp1vnHZ0y30nM35njLOmWdRDFy5l27pKUTwLp02y3UYiiZyP7d3/u5pKiN4vC27VuvzprSdJxWoAvluOiDeRh+/oeQDowxoT/Oop8DzB9uJmjktXw8jyMW2+Rpg+ENQqeNgF1OGlEzypaWiRskEFlkpLb4v/s3ZDYkL1oW0Nv/J8LTjTOTEaYt2Udjoe9x2xWiGnQixhdChWuG+MaoWffzUgx1tsVj/DBXijR5DjkPkrA1GA98zd3q8GKEaAdcDenJjHhNYSd4+rE9pIsnYn7fo5X/tFfcQH1XQ== nobody@google.com"],
/// "cpu_core_count": 4,
/// "gi_version": "19.0.0.0",
/// "time_zone": {
/// "id": "UTC",
/// },
/// "node_count": 2,
/// "ocpu_count": 4,
/// "data_storage_size_tb": 2,
/// "db_node_storage_size_gb": 120,
/// "db_server_ocids": [
/// mydbserver.db_servers[0].properties[0].ocid,
/// mydbserver.db_servers[1].properties[0].ocid,
/// ],
/// "disk_redundancy": "HIGH",
/// "sparse_diskgroup_enabled": False,
/// "local_backup_enabled": False,
/// "cluster_name": "pq-ppat4",
/// "hostname_prefix": "hostname1",
/// "diagnostics_data_collection_options": {
/// "diagnostics_events_enabled": True,
/// "health_monitoring_enabled": True,
/// "incident_logs_enabled": True,
/// },
/// "memory_size_gb": 60,
/// },
/// deletion_protection=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var cloudExadataInfrastructures = new Gcp.OracleDatabase.CloudExadataInfrastructure("cloudExadataInfrastructures", new()
/// {
/// CloudExadataInfrastructureId = "my-exadata",
/// DisplayName = "my-exadata displayname",
/// Location = "us-east4",
/// Project = "my-project",
/// Properties = new Gcp.OracleDatabase.Inputs.CloudExadataInfrastructurePropertiesArgs
/// {
/// Shape = "Exadata.X9M",
/// ComputeCount = 2,
/// StorageCount = 3,
/// },
/// DeletionProtection = true,
/// });
///
/// var @default = Gcp.Compute.GetNetwork.Invoke(new()
/// {
/// Name = "new",
/// Project = "my-project",
/// });
///
/// var mydbserver = Gcp.OracleDatabase.GetDbServers.Invoke(new()
/// {
/// Location = "us-east4",
/// Project = "my-project",
/// CloudExadataInfrastructure = cloudExadataInfrastructures.CloudExadataInfrastructureId,
/// });
///
/// var myVmcluster = new Gcp.OracleDatabase.CloudVmCluster("my_vmcluster", new()
/// {
/// CloudVmClusterId = "my-instance",
/// DisplayName = "my-instance displayname",
/// Location = "us-east4",
/// Project = "my-project",
/// ExadataInfrastructure = cloudExadataInfrastructures.Id,
/// Network = @default.Apply(@default => @default.Apply(getNetworkResult => getNetworkResult.Id)),
/// Cidr = "10.5.0.0/24",
/// BackupSubnetCidr = "10.6.0.0/24",
/// Labels =
/// {
/// { "label-one", "value-one" },
/// },
/// Properties = new Gcp.OracleDatabase.Inputs.CloudVmClusterPropertiesArgs
/// {
/// LicenseType = "LICENSE_INCLUDED",
/// SshPublicKeys = new[]
/// {
/// "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCz1X2744t+6vRLmE5u6nHi6/QWh8bQDgHmd+OIxRQIGA/IWUtCs2FnaCNZcqvZkaeyjk5v0lTA/n+9jvO42Ipib53athrfVG8gRt8fzPL66C6ZqHq+6zZophhrCdfJh/0G4x9xJh5gdMprlaCR1P8yAaVvhBQSKGc4SiIkyMNBcHJ5YTtMQMTfxaB4G1sHZ6SDAY9a6Cq/zNjDwfPapWLsiP4mRhE5SSjJX6l6EYbkm0JeLQg+AbJiNEPvrvDp1wtTxzlPJtIivthmLMThFxK7+DkrYFuLvN5AHUdo9KTDLvHtDCvV70r8v0gafsrKkM/OE9Jtzoo0e1N/5K/ZdyFRbAkFT4QSF3nwpbmBWLf2Evg//YyEuxnz4CwPqFST2mucnrCCGCVWp1vnHZ0y30nM35njLOmWdRDFy5l27pKUTwLp02y3UYiiZyP7d3/u5pKiN4vC27VuvzprSdJxWoAvluOiDeRh+/oeQDowxoT/Oop8DzB9uJmjktXw8jyMW2+Rpg+ENQqeNgF1OGlEzypaWiRskEFlkpLb4v/s3ZDYkL1oW0Nv/J8LTjTOTEaYt2Udjoe9x2xWiGnQixhdChWuG+MaoWffzUgx1tsVj/DBXijR5DjkPkrA1GA98zd3q8GKEaAdcDenJjHhNYSd4+rE9pIsnYn7fo5X/tFfcQH1XQ== nobody@google.com",
/// },
/// CpuCoreCount = 4,
/// GiVersion = "19.0.0.0",
/// TimeZone = new Gcp.OracleDatabase.Inputs.CloudVmClusterPropertiesTimeZoneArgs
/// {
/// Id = "UTC",
/// },
/// NodeCount = 2,
/// OcpuCount = 4,
/// DataStorageSizeTb = 2,
/// DbNodeStorageSizeGb = 120,
/// DbServerOcids = new[]
/// {
/// mydbserver.Apply(getDbServersResult => getDbServersResult.DbServers[0]?.Properties[0]?.Ocid),
/// mydbserver.Apply(getDbServersResult => getDbServersResult.DbServers[1]?.Properties[0]?.Ocid),
/// },
/// DiskRedundancy = "HIGH",
/// SparseDiskgroupEnabled = false,
/// LocalBackupEnabled = false,
/// ClusterName = "pq-ppat4",
/// HostnamePrefix = "hostname1",
/// DiagnosticsDataCollectionOptions = new Gcp.OracleDatabase.Inputs.CloudVmClusterPropertiesDiagnosticsDataCollectionOptionsArgs
/// {
/// DiagnosticsEventsEnabled = true,
/// HealthMonitoringEnabled = true,
/// IncidentLogsEnabled = true,
/// },
/// MemorySizeGb = 60,
/// },
/// DeletionProtection = true,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/oracledatabase"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// cloudExadataInfrastructures, err := oracledatabase.NewCloudExadataInfrastructure(ctx, "cloudExadataInfrastructures", &oracledatabase.CloudExadataInfrastructureArgs{
/// CloudExadataInfrastructureId: pulumi.String("my-exadata"),
/// DisplayName:                  pulumi.String("my-exadata displayname"),
/// Location:                     pulumi.String("us-east4"),
/// Project:                      pulumi.String("my-project"),
/// Properties: &oracledatabase.CloudExadataInfrastructurePropertiesArgs{
/// Shape:        pulumi.String("Exadata.X9M"),
/// ComputeCount: pulumi.Int(2),
/// StorageCount: pulumi.Int(3),
/// },
/// DeletionProtection: pulumi.Bool(true),
/// })
/// if err != nil {
/// return err
/// }
/// _default, err := compute.LookupNetwork(ctx, &compute.LookupNetworkArgs{
/// Name:    "new",
/// Project: pulumi.StringRef("my-project"),
/// }, nil)
/// if err != nil {
/// return err
/// }
/// mydbserver := oracledatabase.GetDbServersOutput(ctx, oracledatabase.GetDbServersOutputArgs{
/// Location:                   pulumi.String("us-east4"),
/// Project:                    pulumi.String("my-project"),
/// CloudExadataInfrastructure: cloudExadataInfrastructures.CloudExadataInfrastructureId,
/// }, nil)
/// _, err = oracledatabase.NewCloudVmCluster(ctx, "my_vmcluster", &oracledatabase.CloudVmClusterArgs{
/// CloudVmClusterId:      pulumi.String("my-instance"),
/// DisplayName:           pulumi.String("my-instance displayname"),
/// Location:              pulumi.String("us-east4"),
/// Project:               pulumi.String("my-project"),
/// ExadataInfrastructure: cloudExadataInfrastructures.ID(),
/// Network:               pulumi.String(_default.Id),
/// Cidr:                  pulumi.String("10.5.0.0/24"),
/// BackupSubnetCidr:      pulumi.String("10.6.0.0/24"),
/// Labels: pulumi.StringMap{
/// "label-one": pulumi.String("value-one"),
/// },
/// Properties: &oracledatabase.CloudVmClusterPropertiesArgs{
/// LicenseType: pulumi.String("LICENSE_INCLUDED"),
/// SshPublicKeys: pulumi.StringArray{
/// pulumi.String("ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCz1X2744t+6vRLmE5u6nHi6/QWh8bQDgHmd+OIxRQIGA/IWUtCs2FnaCNZcqvZkaeyjk5v0lTA/n+9jvO42Ipib53athrfVG8gRt8fzPL66C6ZqHq+6zZophhrCdfJh/0G4x9xJh5gdMprlaCR1P8yAaVvhBQSKGc4SiIkyMNBcHJ5YTtMQMTfxaB4G1sHZ6SDAY9a6Cq/zNjDwfPapWLsiP4mRhE5SSjJX6l6EYbkm0JeLQg+AbJiNEPvrvDp1wtTxzlPJtIivthmLMThFxK7+DkrYFuLvN5AHUdo9KTDLvHtDCvV70r8v0gafsrKkM/OE9Jtzoo0e1N/5K/ZdyFRbAkFT4QSF3nwpbmBWLf2Evg//YyEuxnz4CwPqFST2mucnrCCGCVWp1vnHZ0y30nM35njLOmWdRDFy5l27pKUTwLp02y3UYiiZyP7d3/u5pKiN4vC27VuvzprSdJxWoAvluOiDeRh+/oeQDowxoT/Oop8DzB9uJmjktXw8jyMW2+Rpg+ENQqeNgF1OGlEzypaWiRskEFlkpLb4v/s3ZDYkL1oW0Nv/J8LTjTOTEaYt2Udjoe9x2xWiGnQixhdChWuG+MaoWffzUgx1tsVj/DBXijR5DjkPkrA1GA98zd3q8GKEaAdcDenJjHhNYSd4+rE9pIsnYn7fo5X/tFfcQH1XQ== nobody@google.com"),
/// },
/// CpuCoreCount: pulumi.Int(4),
/// GiVersion:    pulumi.String("19.0.0.0"),
/// TimeZone: &oracledatabase.CloudVmClusterPropertiesTimeZoneArgs{
/// Id: pulumi.String("UTC"),
/// },
/// NodeCount:           pulumi.Int(2),
/// OcpuCount:           pulumi.Float64(4),
/// DataStorageSizeTb:   pulumi.Float64(2),
/// DbNodeStorageSizeGb: pulumi.Int(120),
/// DbServerOcids: pulumi.StringArray{
/// mydbserver.ApplyT(func(mydbserver oracledatabase.GetDbServersResult) (*string, error) {
/// return &mydbserver.DbServers[0].Properties[0].Ocid, nil
/// }).(pulumi.StringPtrOutput),
/// mydbserver.ApplyT(func(mydbserver oracledatabase.GetDbServersResult) (*string, error) {
/// return &mydbserver.DbServers[1].Properties[0].Ocid, nil
/// }).(pulumi.StringPtrOutput),
/// },
/// DiskRedundancy:         pulumi.String("HIGH"),
/// SparseDiskgroupEnabled: pulumi.Bool(false),
/// LocalBackupEnabled:     pulumi.Bool(false),
/// ClusterName:            pulumi.String("pq-ppat4"),
/// HostnamePrefix:         pulumi.String("hostname1"),
/// DiagnosticsDataCollectionOptions: &oracledatabase.CloudVmClusterPropertiesDiagnosticsDataCollectionOptionsArgs{
/// DiagnosticsEventsEnabled: pulumi.Bool(true),
/// HealthMonitoringEnabled:  pulumi.Bool(true),
/// IncidentLogsEnabled:      pulumi.Bool(true),
/// },
/// MemorySizeGb: pulumi.Int(60),
/// },
/// DeletionProtection: pulumi.Bool(true),
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
/// import com.pulumi.gcp.oracledatabase.CloudExadataInfrastructure;
/// import com.pulumi.gcp.oracledatabase.CloudExadataInfrastructureArgs;
/// import com.pulumi.gcp.oracledatabase.inputs.CloudExadataInfrastructurePropertiesArgs;
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetNetworkArgs;
/// import com.pulumi.gcp.oracledatabase.OracledatabaseFunctions;
/// import com.pulumi.gcp.oracledatabase.inputs.GetDbServersArgs;
/// import com.pulumi.gcp.oracledatabase.CloudVmCluster;
/// import com.pulumi.gcp.oracledatabase.CloudVmClusterArgs;
/// import com.pulumi.gcp.oracledatabase.inputs.CloudVmClusterPropertiesArgs;
/// import com.pulumi.gcp.oracledatabase.inputs.CloudVmClusterPropertiesTimeZoneArgs;
/// import com.pulumi.gcp.oracledatabase.inputs.CloudVmClusterPropertiesDiagnosticsDataCollectionOptionsArgs;
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
/// var cloudExadataInfrastructures = new CloudExadataInfrastructure("cloudExadataInfrastructures", CloudExadataInfrastructureArgs.builder()
/// .cloudExadataInfrastructureId("my-exadata")
/// .displayName("my-exadata displayname")
/// .location("us-east4")
/// .project("my-project")
/// .properties(CloudExadataInfrastructurePropertiesArgs.builder()
/// .shape("Exadata.X9M")
/// .computeCount(2)
/// .storageCount(3)
/// .build())
/// .deletionProtection(true)
/// .build());
///
/// final var default = ComputeFunctions.getNetwork(GetNetworkArgs.builder()
/// .name("new")
/// .project("my-project")
/// .build());
///
/// final var mydbserver = OracledatabaseFunctions.getDbServers(GetDbServersArgs.builder()
/// .location("us-east4")
/// .project("my-project")
/// .cloudExadataInfrastructure(cloudExadataInfrastructures.cloudExadataInfrastructureId())
/// .build());
///
/// var myVmcluster = new CloudVmCluster("myVmcluster", CloudVmClusterArgs.builder()
/// .cloudVmClusterId("my-instance")
/// .displayName("my-instance displayname")
/// .location("us-east4")
/// .project("my-project")
/// .exadataInfrastructure(cloudExadataInfrastructures.id())
/// .network(default_.id())
/// .cidr("10.5.0.0/24")
/// .backupSubnetCidr("10.6.0.0/24")
/// .labels(Map.of("label-one", "value-one"))
/// .properties(CloudVmClusterPropertiesArgs.builder()
/// .licenseType("LICENSE_INCLUDED")
/// .sshPublicKeys("ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCz1X2744t+6vRLmE5u6nHi6/QWh8bQDgHmd+OIxRQIGA/IWUtCs2FnaCNZcqvZkaeyjk5v0lTA/n+9jvO42Ipib53athrfVG8gRt8fzPL66C6ZqHq+6zZophhrCdfJh/0G4x9xJh5gdMprlaCR1P8yAaVvhBQSKGc4SiIkyMNBcHJ5YTtMQMTfxaB4G1sHZ6SDAY9a6Cq/zNjDwfPapWLsiP4mRhE5SSjJX6l6EYbkm0JeLQg+AbJiNEPvrvDp1wtTxzlPJtIivthmLMThFxK7+DkrYFuLvN5AHUdo9KTDLvHtDCvV70r8v0gafsrKkM/OE9Jtzoo0e1N/5K/ZdyFRbAkFT4QSF3nwpbmBWLf2Evg//YyEuxnz4CwPqFST2mucnrCCGCVWp1vnHZ0y30nM35njLOmWdRDFy5l27pKUTwLp02y3UYiiZyP7d3/u5pKiN4vC27VuvzprSdJxWoAvluOiDeRh+/oeQDowxoT/Oop8DzB9uJmjktXw8jyMW2+Rpg+ENQqeNgF1OGlEzypaWiRskEFlkpLb4v/s3ZDYkL1oW0Nv/J8LTjTOTEaYt2Udjoe9x2xWiGnQixhdChWuG+MaoWffzUgx1tsVj/DBXijR5DjkPkrA1GA98zd3q8GKEaAdcDenJjHhNYSd4+rE9pIsnYn7fo5X/tFfcQH1XQ== nobody@google.com")
/// .cpuCoreCount(4)
/// .giVersion("19.0.0.0")
/// .timeZone(CloudVmClusterPropertiesTimeZoneArgs.builder()
/// .id("UTC")
/// .build())
/// .nodeCount(2)
/// .ocpuCount(4.0)
/// .dataStorageSizeTb(2.0)
/// .dbNodeStorageSizeGb(120)
/// .dbServerOcids(
/// mydbserver.applyValue(_mydbserver -> _mydbserver.dbServers()[0].properties()[0].ocid()),
/// mydbserver.applyValue(_mydbserver -> _mydbserver.dbServers()[1].properties()[0].ocid()))
/// .diskRedundancy("HIGH")
/// .sparseDiskgroupEnabled(false)
/// .localBackupEnabled(false)
/// .clusterName("pq-ppat4")
/// .hostnamePrefix("hostname1")
/// .diagnosticsDataCollectionOptions(CloudVmClusterPropertiesDiagnosticsDataCollectionOptionsArgs.builder()
/// .diagnosticsEventsEnabled(true)
/// .healthMonitoringEnabled(true)
/// .incidentLogsEnabled(true)
/// .build())
/// .memorySizeGb(60)
/// .build())
/// .deletionProtection(true)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// myVmcluster:
/// type: gcp:oracledatabase:CloudVmCluster
/// name: my_vmcluster
/// properties:
/// cloudVmClusterId: my-instance
/// displayName: my-instance displayname
/// location: us-east4
/// project: my-project
/// exadataInfrastructure: ${cloudExadataInfrastructures.id}
/// network: ${default.id}
/// cidr: 10.5.0.0/24
/// backupSubnetCidr: 10.6.0.0/24
/// labels:
/// label-one: value-one
/// properties:
/// licenseType: LICENSE_INCLUDED
/// sshPublicKeys:
/// - ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCz1X2744t+6vRLmE5u6nHi6/QWh8bQDgHmd+OIxRQIGA/IWUtCs2FnaCNZcqvZkaeyjk5v0lTA/n+9jvO42Ipib53athrfVG8gRt8fzPL66C6ZqHq+6zZophhrCdfJh/0G4x9xJh5gdMprlaCR1P8yAaVvhBQSKGc4SiIkyMNBcHJ5YTtMQMTfxaB4G1sHZ6SDAY9a6Cq/zNjDwfPapWLsiP4mRhE5SSjJX6l6EYbkm0JeLQg+AbJiNEPvrvDp1wtTxzlPJtIivthmLMThFxK7+DkrYFuLvN5AHUdo9KTDLvHtDCvV70r8v0gafsrKkM/OE9Jtzoo0e1N/5K/ZdyFRbAkFT4QSF3nwpbmBWLf2Evg//YyEuxnz4CwPqFST2mucnrCCGCVWp1vnHZ0y30nM35njLOmWdRDFy5l27pKUTwLp02y3UYiiZyP7d3/u5pKiN4vC27VuvzprSdJxWoAvluOiDeRh+/oeQDowxoT/Oop8DzB9uJmjktXw8jyMW2+Rpg+ENQqeNgF1OGlEzypaWiRskEFlkpLb4v/s3ZDYkL1oW0Nv/J8LTjTOTEaYt2Udjoe9x2xWiGnQixhdChWuG+MaoWffzUgx1tsVj/DBXijR5DjkPkrA1GA98zd3q8GKEaAdcDenJjHhNYSd4+rE9pIsnYn7fo5X/tFfcQH1XQ== nobody@google.com
/// cpuCoreCount: '4'
/// giVersion: 19.0.0.0
/// timeZone:
/// id: UTC
/// nodeCount: '2'
/// ocpuCount: '4.0'
/// dataStorageSizeTb: 2
/// dbNodeStorageSizeGb: 120
/// dbServerOcids:
/// - ${mydbserver.dbServers[0].properties[0].ocid}
/// - ${mydbserver.dbServers[1].properties[0].ocid}
/// diskRedundancy: HIGH
/// sparseDiskgroupEnabled: false
/// localBackupEnabled: false
/// clusterName: pq-ppat4
/// hostnamePrefix: hostname1
/// diagnosticsDataCollectionOptions:
/// diagnosticsEventsEnabled: true
/// healthMonitoringEnabled: true
/// incidentLogsEnabled: true
/// memorySizeGb: 60
/// deletionProtection: 'true'
/// cloudExadataInfrastructures:
/// type: gcp:oracledatabase:CloudExadataInfrastructure
/// properties:
/// cloudExadataInfrastructureId: my-exadata
/// displayName: my-exadata displayname
/// location: us-east4
/// project: my-project
/// properties:
/// shape: Exadata.X9M
/// computeCount: '2'
/// storageCount: '3'
/// deletionProtection: 'true'
/// variables:
/// default:
/// fn::invoke:
/// function: gcp:compute:getNetwork
/// arguments:
/// name: new
/// project: my-project
/// mydbserver:
/// fn::invoke:
/// function: gcp:oracledatabase:getDbServers
/// arguments:
/// location: us-east4
/// project: my-project
/// cloudExadataInfrastructure: ${cloudExadataInfrastructures.cloudExadataInfrastructureId}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// CloudVmCluster can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/cloudVmClusters/{{cloud_vm_cluster_id}}`
///
/// * `{{project}}/{{location}}/{{cloud_vm_cluster_id}}`
///
/// * `{{location}}/{{cloud_vm_cluster_id}}`
///
/// When using the `pulumi import` command, CloudVmCluster can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:oracledatabase/cloudVmCluster:CloudVmCluster default projects/{{project}}/locations/{{location}}/cloudVmClusters/{{cloud_vm_cluster_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:oracledatabase/cloudVmCluster:CloudVmCluster default {{project}}/{{location}}/{{cloud_vm_cluster_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:oracledatabase/cloudVmCluster:CloudVmCluster default {{location}}/{{cloud_vm_cluster_id}}
/// ```
class CloudVmCluster extends CustomResource {
  /// The name of the backup OdbSubnet associated with the VM Cluster.
  /// Format:
  /// projects/{project}/locations/{location}/odbNetworks/{odb_network}/odbSubnets/{odb_subnet}
  late final Output<String> backupOdbSubnet;

  /// CIDR range of the backup subnet.
  late final Output<String?> backupSubnetCidr;

  /// Network settings. CIDR to use for cluster IP allocation.
  late final Output<String?> cidr;

  /// The ID of the VM Cluster to create. This value is restricted
  /// to (^a-z?$) and must be a maximum of 63
  /// characters in length. The value must start with a letter and end with
  /// a letter or a number.
  late final Output<String> cloudVmClusterId;

  /// The date and time that the VM cluster was created.
  late final Output<String> createTime;
  late final Output<bool?> deletionProtection;

  /// User friendly name for this resource.
  late final Output<String?> displayName;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// The name of the Exadata Infrastructure resource on which VM cluster
  /// resource is created, in the following format:
  /// projects/{project}/locations/{region}/cloudExadataInfrastuctures/{cloud_extradata_infrastructure}
  late final Output<String> exadataInfrastructure;

  /// GCP location where Oracle Exadata is hosted. It is same as GCP Oracle zone
  /// of Exadata infrastructure.
  late final Output<String> gcpOracleZone;

  /// Labels or tags associated with the VM Cluster.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// Resource ID segment making up resource <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. See documentation for resource type `oracledatabase.googleapis.com/DbNode`.
  late final Output<String> location;

  /// Identifier. The name of the VM Cluster resource with the format:
  /// projects/{project}/locations/{region}/cloudVmClusters/{cloud_vm_cluster}
  late final Output<String> name;

  /// The name of the VPC network.
  /// Format: projects/{project}/global/networks/{network}
  late final Output<String?> network;

  /// The name of the OdbNetwork associated with the VM Cluster.
  /// Format:
  /// projects/{project}/locations/{location}/odbNetworks/{odb_network}
  /// It is optional but if specified, this should match the parent ODBNetwork of
  /// the<span pulumi-lang-nodejs=" odbSubnet " pulumi-lang-dotnet=" OdbSubnet " pulumi-lang-go=" odbSubnet " pulumi-lang-python=" odb_subnet " pulumi-lang-yaml=" odbSubnet " pulumi-lang-java=" odbSubnet "> odb_subnet </span>and backup_odb_subnet.
  late final Output<String> odbNetwork;

  /// The name of the OdbSubnet associated with the VM Cluster for
  /// IP allocation. Format:
  /// projects/{project}/locations/{location}/odbNetworks/{odb_network}/odbSubnets/{odb_subnet}
  late final Output<String> odbSubnet;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// Various properties and settings associated with Exadata VM cluster.
  /// Structure is documented below.
  late final Output<CloudVmClusterProperties?> properties;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  CloudVmCluster(
    String name, {
    CloudVmClusterArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:oracledatabase/cloudVmCluster:CloudVmCluster',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.backupOdbSubnet = registerOutput<String>('backupOdbSubnet');
    this.backupSubnetCidr = registerOutput<String?>('backupSubnetCidr');
    this.cidr = registerOutput<String?>('cidr');
    this.cloudVmClusterId = registerOutput<String>('cloudVmClusterId');
    this.createTime = registerOutput<String>('createTime');
    this.deletionProtection = registerOutput<bool?>('deletionProtection');
    this.displayName = registerOutput<String?>('displayName');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.exadataInfrastructure =
        registerOutput<String>('exadataInfrastructure');
    this.gcpOracleZone = registerOutput<String>('gcpOracleZone');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.network = registerOutput<String?>('network');
    this.odbNetwork = registerOutput<String>('odbNetwork');
    this.odbSubnet = registerOutput<String>('odbSubnet');
    this.project = registerOutput<String>('project');
    this.properties = registerOutput<CloudVmClusterProperties?>('properties');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
  }
}
