import 'package:pulumi/pulumi.dart';
import '../cluster_automated_backup_policy/cluster_automated_backup_policy.dart';
import '../cluster_backup_source/cluster_backup_source.dart';
import '../cluster_continuous_backup_config/cluster_continuous_backup_config.dart';
import '../cluster_continuous_backup_info/cluster_continuous_backup_info.dart';
import '../cluster_encryption_config/cluster_encryption_config.dart';
import '../cluster_encryption_info/cluster_encryption_info.dart';
import '../cluster_initial_user/cluster_initial_user.dart';
import '../cluster_maintenance_update_policy/cluster_maintenance_update_policy.dart';
import '../cluster_migration_source/cluster_migration_source.dart';
import '../cluster_network_config/cluster_network_config.dart';
import '../cluster_psc_config/cluster_psc_config.dart';
import '../cluster_restore_backup_source/cluster_restore_backup_source.dart';
import '../cluster_restore_continuous_backup_source/cluster_restore_continuous_backup_source.dart';
import '../cluster_secondary_config/cluster_secondary_config.dart';
import '../cluster_trial_metadata/cluster_trial_metadata.dart';
import 'cluster_args.dart';

/// ## Example Usage
///
/// ### Alloydb Cluster Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const defaultNetwork = new gcp.compute.Network("default", {name: "alloydb-cluster"});
/// const _default = new gcp.alloydb.Cluster("default", {
/// clusterId: "alloydb-cluster",
/// location: "us-central1",
/// networkConfig: {
/// network: defaultNetwork.id,
/// },
/// deletionProtection: false,
/// });
/// const project = gcp.organizations.getProject({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default_network = gcp.compute.Network("default", name="alloydb-cluster")
/// default = gcp.alloydb.Cluster("default",
/// cluster_id="alloydb-cluster",
/// location="us-central1",
/// network_config={
/// "network": default_network.id,
/// },
/// deletion_protection=False)
/// project = gcp.organizations.get_project()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var defaultNetwork = new Gcp.Compute.Network("default", new()
/// {
/// Name = "alloydb-cluster",
/// });
///
/// var @default = new Gcp.Alloydb.Cluster("default", new()
/// {
/// ClusterId = "alloydb-cluster",
/// Location = "us-central1",
/// NetworkConfig = new Gcp.Alloydb.Inputs.ClusterNetworkConfigArgs
/// {
/// Network = defaultNetwork.Id,
/// },
/// DeletionProtection = false,
/// });
///
/// var project = Gcp.Organizations.GetProject.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/alloydb"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// defaultNetwork, err := compute.NewNetwork(ctx, "default", &compute.NetworkArgs{
/// Name: pulumi.String("alloydb-cluster"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = alloydb.NewCluster(ctx, "default", &alloydb.ClusterArgs{
/// ClusterId: pulumi.String("alloydb-cluster"),
/// Location:  pulumi.String("us-central1"),
/// NetworkConfig: &alloydb.ClusterNetworkConfigArgs{
/// Network: defaultNetwork.ID(),
/// },
/// DeletionProtection: pulumi.Bool(false),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
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
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.alloydb.Cluster;
/// import com.pulumi.gcp.alloydb.ClusterArgs;
/// import com.pulumi.gcp.alloydb.inputs.ClusterNetworkConfigArgs;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
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
/// var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
/// .name("alloydb-cluster")
/// .build());
///
/// var default_ = new Cluster("default", ClusterArgs.builder()
/// .clusterId("alloydb-cluster")
/// .location("us-central1")
/// .networkConfig(ClusterNetworkConfigArgs.builder()
/// .network(defaultNetwork.id())
/// .build())
/// .deletionProtection(false)
/// .build());
///
/// final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// default:
/// type: gcp:alloydb:Cluster
/// properties:
/// clusterId: alloydb-cluster
/// location: us-central1
/// networkConfig:
/// network: ${defaultNetwork.id}
/// deletionProtection: false
/// defaultNetwork:
/// type: gcp:compute:Network
/// name: default
/// properties:
/// name: alloydb-cluster
/// variables:
/// project:
/// fn::invoke:
/// function: gcp:organizations:getProject
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Alloydb Cluster Before Upgrade
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = gcp.compute.getNetwork({
/// name: "alloydb-network",
/// });
/// const defaultCluster = new gcp.alloydb.Cluster("default", {
/// clusterId: "alloydb-cluster",
/// location: "us-central1",
/// networkConfig: {
/// network: _default.then(_default => _default.id),
/// },
/// databaseVersion: "POSTGRES_14",
/// initialUser: {
/// password: "alloydb-cluster",
/// },
/// deletionProtection: false,
/// });
/// const defaultInstance = new gcp.alloydb.Instance("default", {
/// cluster: defaultCluster.name,
/// instanceId: "alloydb-instance",
/// instanceType: "PRIMARY",
/// machineConfig: {
/// cpuCount: 2,
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.get_network(name="alloydb-network")
/// default_cluster = gcp.alloydb.Cluster("default",
/// cluster_id="alloydb-cluster",
/// location="us-central1",
/// network_config={
/// "network": default.id,
/// },
/// database_version="POSTGRES_14",
/// initial_user={
/// "password": "alloydb-cluster",
/// },
/// deletion_protection=False)
/// default_instance = gcp.alloydb.Instance("default",
/// cluster=default_cluster.name,
/// instance_id="alloydb-instance",
/// instance_type="PRIMARY",
/// machine_config={
/// "cpu_count": 2,
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var @default = Gcp.Compute.GetNetwork.Invoke(new()
/// {
/// Name = "alloydb-network",
/// });
///
/// var defaultCluster = new Gcp.Alloydb.Cluster("default", new()
/// {
/// ClusterId = "alloydb-cluster",
/// Location = "us-central1",
/// NetworkConfig = new Gcp.Alloydb.Inputs.ClusterNetworkConfigArgs
/// {
/// Network = @default.Apply(@default => @default.Apply(getNetworkResult => getNetworkResult.Id)),
/// },
/// DatabaseVersion = "POSTGRES_14",
/// InitialUser = new Gcp.Alloydb.Inputs.ClusterInitialUserArgs
/// {
/// Password = "alloydb-cluster",
/// },
/// DeletionProtection = false,
/// });
///
/// var defaultInstance = new Gcp.Alloydb.Instance("default", new()
/// {
/// Cluster = defaultCluster.Name,
/// InstanceId = "alloydb-instance",
/// InstanceType = "PRIMARY",
/// MachineConfig = new Gcp.Alloydb.Inputs.InstanceMachineConfigArgs
/// {
/// CpuCount = 2,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/alloydb"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _default, err := compute.LookupNetwork(ctx, &compute.LookupNetworkArgs{
/// Name: "alloydb-network",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// defaultCluster, err := alloydb.NewCluster(ctx, "default", &alloydb.ClusterArgs{
/// ClusterId: pulumi.String("alloydb-cluster"),
/// Location:  pulumi.String("us-central1"),
/// NetworkConfig: &alloydb.ClusterNetworkConfigArgs{
/// Network: pulumi.String(_default.Id),
/// },
/// DatabaseVersion: pulumi.String("POSTGRES_14"),
/// InitialUser: &alloydb.ClusterInitialUserArgs{
/// Password: pulumi.String("alloydb-cluster"),
/// },
/// DeletionProtection: pulumi.Bool(false),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = alloydb.NewInstance(ctx, "default", &alloydb.InstanceArgs{
/// Cluster:      defaultCluster.Name,
/// InstanceId:   pulumi.String("alloydb-instance"),
/// InstanceType: pulumi.String("PRIMARY"),
/// MachineConfig: &alloydb.InstanceMachineConfigArgs{
/// CpuCount: pulumi.Int(2),
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
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetNetworkArgs;
/// import com.pulumi.gcp.alloydb.Cluster;
/// import com.pulumi.gcp.alloydb.ClusterArgs;
/// import com.pulumi.gcp.alloydb.inputs.ClusterNetworkConfigArgs;
/// import com.pulumi.gcp.alloydb.inputs.ClusterInitialUserArgs;
/// import com.pulumi.gcp.alloydb.Instance;
/// import com.pulumi.gcp.alloydb.InstanceArgs;
/// import com.pulumi.gcp.alloydb.inputs.InstanceMachineConfigArgs;
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
/// final var default = ComputeFunctions.getNetwork(GetNetworkArgs.builder()
/// .name("alloydb-network")
/// .build());
///
/// var defaultCluster = new Cluster("defaultCluster", ClusterArgs.builder()
/// .clusterId("alloydb-cluster")
/// .location("us-central1")
/// .networkConfig(ClusterNetworkConfigArgs.builder()
/// .network(default_.id())
/// .build())
/// .databaseVersion("POSTGRES_14")
/// .initialUser(ClusterInitialUserArgs.builder()
/// .password("alloydb-cluster")
/// .build())
/// .deletionProtection(false)
/// .build());
///
/// var defaultInstance = new Instance("defaultInstance", InstanceArgs.builder()
/// .cluster(defaultCluster.name())
/// .instanceId("alloydb-instance")
/// .instanceType("PRIMARY")
/// .machineConfig(InstanceMachineConfigArgs.builder()
/// .cpuCount(2)
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// defaultInstance:
/// type: gcp:alloydb:Instance
/// name: default
/// properties:
/// cluster: ${defaultCluster.name}
/// instanceId: alloydb-instance
/// instanceType: PRIMARY
/// machineConfig:
/// cpuCount: 2
/// defaultCluster:
/// type: gcp:alloydb:Cluster
/// name: default
/// properties:
/// clusterId: alloydb-cluster
/// location: us-central1
/// networkConfig:
/// network: ${default.id}
/// databaseVersion: POSTGRES_14
/// initialUser:
/// password: alloydb-cluster
/// deletionProtection: false
/// variables:
/// default:
/// fn::invoke:
/// function: gcp:compute:getNetwork
/// arguments:
/// name: alloydb-network
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Alloydb Cluster After Upgrade
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = gcp.compute.getNetwork({
/// name: "alloydb-network",
/// });
/// const defaultCluster = new gcp.alloydb.Cluster("default", {
/// clusterId: "alloydb-cluster",
/// location: "us-central1",
/// networkConfig: {
/// network: _default.then(_default => _default.id),
/// },
/// databaseVersion: "POSTGRES_15",
/// initialUser: {
/// password: "alloydb-cluster",
/// },
/// deletionProtection: false,
/// });
/// const defaultInstance = new gcp.alloydb.Instance("default", {
/// cluster: defaultCluster.name,
/// instanceId: "alloydb-instance",
/// instanceType: "PRIMARY",
/// machineConfig: {
/// cpuCount: 2,
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.get_network(name="alloydb-network")
/// default_cluster = gcp.alloydb.Cluster("default",
/// cluster_id="alloydb-cluster",
/// location="us-central1",
/// network_config={
/// "network": default.id,
/// },
/// database_version="POSTGRES_15",
/// initial_user={
/// "password": "alloydb-cluster",
/// },
/// deletion_protection=False)
/// default_instance = gcp.alloydb.Instance("default",
/// cluster=default_cluster.name,
/// instance_id="alloydb-instance",
/// instance_type="PRIMARY",
/// machine_config={
/// "cpu_count": 2,
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var @default = Gcp.Compute.GetNetwork.Invoke(new()
/// {
/// Name = "alloydb-network",
/// });
///
/// var defaultCluster = new Gcp.Alloydb.Cluster("default", new()
/// {
/// ClusterId = "alloydb-cluster",
/// Location = "us-central1",
/// NetworkConfig = new Gcp.Alloydb.Inputs.ClusterNetworkConfigArgs
/// {
/// Network = @default.Apply(@default => @default.Apply(getNetworkResult => getNetworkResult.Id)),
/// },
/// DatabaseVersion = "POSTGRES_15",
/// InitialUser = new Gcp.Alloydb.Inputs.ClusterInitialUserArgs
/// {
/// Password = "alloydb-cluster",
/// },
/// DeletionProtection = false,
/// });
///
/// var defaultInstance = new Gcp.Alloydb.Instance("default", new()
/// {
/// Cluster = defaultCluster.Name,
/// InstanceId = "alloydb-instance",
/// InstanceType = "PRIMARY",
/// MachineConfig = new Gcp.Alloydb.Inputs.InstanceMachineConfigArgs
/// {
/// CpuCount = 2,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/alloydb"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _default, err := compute.LookupNetwork(ctx, &compute.LookupNetworkArgs{
/// Name: "alloydb-network",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// defaultCluster, err := alloydb.NewCluster(ctx, "default", &alloydb.ClusterArgs{
/// ClusterId: pulumi.String("alloydb-cluster"),
/// Location:  pulumi.String("us-central1"),
/// NetworkConfig: &alloydb.ClusterNetworkConfigArgs{
/// Network: pulumi.String(_default.Id),
/// },
/// DatabaseVersion: pulumi.String("POSTGRES_15"),
/// InitialUser: &alloydb.ClusterInitialUserArgs{
/// Password: pulumi.String("alloydb-cluster"),
/// },
/// DeletionProtection: pulumi.Bool(false),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = alloydb.NewInstance(ctx, "default", &alloydb.InstanceArgs{
/// Cluster:      defaultCluster.Name,
/// InstanceId:   pulumi.String("alloydb-instance"),
/// InstanceType: pulumi.String("PRIMARY"),
/// MachineConfig: &alloydb.InstanceMachineConfigArgs{
/// CpuCount: pulumi.Int(2),
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
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetNetworkArgs;
/// import com.pulumi.gcp.alloydb.Cluster;
/// import com.pulumi.gcp.alloydb.ClusterArgs;
/// import com.pulumi.gcp.alloydb.inputs.ClusterNetworkConfigArgs;
/// import com.pulumi.gcp.alloydb.inputs.ClusterInitialUserArgs;
/// import com.pulumi.gcp.alloydb.Instance;
/// import com.pulumi.gcp.alloydb.InstanceArgs;
/// import com.pulumi.gcp.alloydb.inputs.InstanceMachineConfigArgs;
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
/// final var default = ComputeFunctions.getNetwork(GetNetworkArgs.builder()
/// .name("alloydb-network")
/// .build());
///
/// var defaultCluster = new Cluster("defaultCluster", ClusterArgs.builder()
/// .clusterId("alloydb-cluster")
/// .location("us-central1")
/// .networkConfig(ClusterNetworkConfigArgs.builder()
/// .network(default_.id())
/// .build())
/// .databaseVersion("POSTGRES_15")
/// .initialUser(ClusterInitialUserArgs.builder()
/// .password("alloydb-cluster")
/// .build())
/// .deletionProtection(false)
/// .build());
///
/// var defaultInstance = new Instance("defaultInstance", InstanceArgs.builder()
/// .cluster(defaultCluster.name())
/// .instanceId("alloydb-instance")
/// .instanceType("PRIMARY")
/// .machineConfig(InstanceMachineConfigArgs.builder()
/// .cpuCount(2)
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// defaultInstance:
/// type: gcp:alloydb:Instance
/// name: default
/// properties:
/// cluster: ${defaultCluster.name}
/// instanceId: alloydb-instance
/// instanceType: PRIMARY
/// machineConfig:
/// cpuCount: 2
/// defaultCluster:
/// type: gcp:alloydb:Cluster
/// name: default
/// properties:
/// clusterId: alloydb-cluster
/// location: us-central1
/// networkConfig:
/// network: ${default.id}
/// databaseVersion: POSTGRES_15
/// initialUser:
/// password: alloydb-cluster
/// deletionProtection: false
/// variables:
/// default:
/// fn::invoke:
/// function: gcp:compute:getNetwork
/// arguments:
/// name: alloydb-network
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Alloydb Cluster Full
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.Network("default", {name: "alloydb-cluster-full"});
/// const full = new gcp.alloydb.Cluster("full", {
/// clusterId: "alloydb-cluster-full",
/// location: "us-central1",
/// networkConfig: {
/// network: _default.id,
/// },
/// databaseVersion: "POSTGRES_15",
/// initialUser: {
/// user: "alloydb-cluster-full",
/// password: "alloydb-cluster-full",
/// },
/// continuousBackupConfig: {
/// enabled: true,
/// recoveryWindowDays: 14,
/// },
/// automatedBackupPolicy: {
/// location: "us-central1",
/// backupWindow: "1800s",
/// enabled: true,
/// weeklySchedule: {
/// daysOfWeeks: ["MONDAY"],
/// startTimes: [{
/// hours: 23,
/// minutes: 0,
/// seconds: 0,
/// nanos: 0,
/// }],
/// },
/// quantityBasedRetention: {
/// count: 1,
/// },
/// labels: {
/// test: "alloydb-cluster-full",
/// },
/// },
/// labels: {
/// test: "alloydb-cluster-full",
/// },
/// deletionProtection: false,
/// });
/// const project = gcp.organizations.getProject({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.Network("default", name="alloydb-cluster-full")
/// full = gcp.alloydb.Cluster("full",
/// cluster_id="alloydb-cluster-full",
/// location="us-central1",
/// network_config={
/// "network": default.id,
/// },
/// database_version="POSTGRES_15",
/// initial_user={
/// "user": "alloydb-cluster-full",
/// "password": "alloydb-cluster-full",
/// },
/// continuous_backup_config={
/// "enabled": True,
/// "recovery_window_days": 14,
/// },
/// automated_backup_policy={
/// "location": "us-central1",
/// "backup_window": "1800s",
/// "enabled": True,
/// "weekly_schedule": {
/// "days_of_weeks": ["MONDAY"],
/// "start_times": [{
/// "hours": 23,
/// "minutes": 0,
/// "seconds": 0,
/// "nanos": 0,
/// }],
/// },
/// "quantity_based_retention": {
/// "count": 1,
/// },
/// "labels": {
/// "test": "alloydb-cluster-full",
/// },
/// },
/// labels={
/// "test": "alloydb-cluster-full",
/// },
/// deletion_protection=False)
/// project = gcp.organizations.get_project()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var @default = new Gcp.Compute.Network("default", new()
/// {
/// Name = "alloydb-cluster-full",
/// });
///
/// var full = new Gcp.Alloydb.Cluster("full", new()
/// {
/// ClusterId = "alloydb-cluster-full",
/// Location = "us-central1",
/// NetworkConfig = new Gcp.Alloydb.Inputs.ClusterNetworkConfigArgs
/// {
/// Network = @default.Id,
/// },
/// DatabaseVersion = "POSTGRES_15",
/// InitialUser = new Gcp.Alloydb.Inputs.ClusterInitialUserArgs
/// {
/// User = "alloydb-cluster-full",
/// Password = "alloydb-cluster-full",
/// },
/// ContinuousBackupConfig = new Gcp.Alloydb.Inputs.ClusterContinuousBackupConfigArgs
/// {
/// Enabled = true,
/// RecoveryWindowDays = 14,
/// },
/// AutomatedBackupPolicy = new Gcp.Alloydb.Inputs.ClusterAutomatedBackupPolicyArgs
/// {
/// Location = "us-central1",
/// BackupWindow = "1800s",
/// Enabled = true,
/// WeeklySchedule = new Gcp.Alloydb.Inputs.ClusterAutomatedBackupPolicyWeeklyScheduleArgs
/// {
/// DaysOfWeeks = new[]
/// {
/// "MONDAY",
/// },
/// StartTimes = new[]
/// {
/// new Gcp.Alloydb.Inputs.ClusterAutomatedBackupPolicyWeeklyScheduleStartTimeArgs
/// {
/// Hours = 23,
/// Minutes = 0,
/// Seconds = 0,
/// Nanos = 0,
/// },
/// },
/// },
/// QuantityBasedRetention = new Gcp.Alloydb.Inputs.ClusterAutomatedBackupPolicyQuantityBasedRetentionArgs
/// {
/// Count = 1,
/// },
/// Labels =
/// {
/// { "test", "alloydb-cluster-full" },
/// },
/// },
/// Labels =
/// {
/// { "test", "alloydb-cluster-full" },
/// },
/// DeletionProtection = false,
/// });
///
/// var project = Gcp.Organizations.GetProject.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/alloydb"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _default, err := compute.NewNetwork(ctx, "default", &compute.NetworkArgs{
/// Name: pulumi.String("alloydb-cluster-full"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = alloydb.NewCluster(ctx, "full", &alloydb.ClusterArgs{
/// ClusterId: pulumi.String("alloydb-cluster-full"),
/// Location:  pulumi.String("us-central1"),
/// NetworkConfig: &alloydb.ClusterNetworkConfigArgs{
/// Network: _default.ID(),
/// },
/// DatabaseVersion: pulumi.String("POSTGRES_15"),
/// InitialUser: &alloydb.ClusterInitialUserArgs{
/// User:     pulumi.String("alloydb-cluster-full"),
/// Password: pulumi.String("alloydb-cluster-full"),
/// },
/// ContinuousBackupConfig: &alloydb.ClusterContinuousBackupConfigArgs{
/// Enabled:            pulumi.Bool(true),
/// RecoveryWindowDays: pulumi.Int(14),
/// },
/// AutomatedBackupPolicy: &alloydb.ClusterAutomatedBackupPolicyArgs{
/// Location:     pulumi.String("us-central1"),
/// BackupWindow: pulumi.String("1800s"),
/// Enabled:      pulumi.Bool(true),
/// WeeklySchedule: &alloydb.ClusterAutomatedBackupPolicyWeeklyScheduleArgs{
/// DaysOfWeeks: pulumi.StringArray{
/// pulumi.String("MONDAY"),
/// },
/// StartTimes: alloydb.ClusterAutomatedBackupPolicyWeeklyScheduleStartTimeArray{
/// &alloydb.ClusterAutomatedBackupPolicyWeeklyScheduleStartTimeArgs{
/// Hours:   pulumi.Int(23),
/// Minutes: pulumi.Int(0),
/// Seconds: pulumi.Int(0),
/// Nanos:   pulumi.Int(0),
/// },
/// },
/// },
/// QuantityBasedRetention: &alloydb.ClusterAutomatedBackupPolicyQuantityBasedRetentionArgs{
/// Count: pulumi.Int(1),
/// },
/// Labels: pulumi.StringMap{
/// "test": pulumi.String("alloydb-cluster-full"),
/// },
/// },
/// Labels: pulumi.StringMap{
/// "test": pulumi.String("alloydb-cluster-full"),
/// },
/// DeletionProtection: pulumi.Bool(false),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
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
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.alloydb.Cluster;
/// import com.pulumi.gcp.alloydb.ClusterArgs;
/// import com.pulumi.gcp.alloydb.inputs.ClusterNetworkConfigArgs;
/// import com.pulumi.gcp.alloydb.inputs.ClusterInitialUserArgs;
/// import com.pulumi.gcp.alloydb.inputs.ClusterContinuousBackupConfigArgs;
/// import com.pulumi.gcp.alloydb.inputs.ClusterAutomatedBackupPolicyArgs;
/// import com.pulumi.gcp.alloydb.inputs.ClusterAutomatedBackupPolicyWeeklyScheduleArgs;
/// import com.pulumi.gcp.alloydb.inputs.ClusterAutomatedBackupPolicyQuantityBasedRetentionArgs;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
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
/// var default_ = new Network("default", NetworkArgs.builder()
/// .name("alloydb-cluster-full")
/// .build());
///
/// var full = new Cluster("full", ClusterArgs.builder()
/// .clusterId("alloydb-cluster-full")
/// .location("us-central1")
/// .networkConfig(ClusterNetworkConfigArgs.builder()
/// .network(default_.id())
/// .build())
/// .databaseVersion("POSTGRES_15")
/// .initialUser(ClusterInitialUserArgs.builder()
/// .user("alloydb-cluster-full")
/// .password("alloydb-cluster-full")
/// .build())
/// .continuousBackupConfig(ClusterContinuousBackupConfigArgs.builder()
/// .enabled(true)
/// .recoveryWindowDays(14)
/// .build())
/// .automatedBackupPolicy(ClusterAutomatedBackupPolicyArgs.builder()
/// .location("us-central1")
/// .backupWindow("1800s")
/// .enabled(true)
/// .weeklySchedule(ClusterAutomatedBackupPolicyWeeklyScheduleArgs.builder()
/// .daysOfWeeks("MONDAY")
/// .startTimes(ClusterAutomatedBackupPolicyWeeklyScheduleStartTimeArgs.builder()
/// .hours(23)
/// .minutes(0)
/// .seconds(0)
/// .nanos(0)
/// .build())
/// .build())
/// .quantityBasedRetention(ClusterAutomatedBackupPolicyQuantityBasedRetentionArgs.builder()
/// .count(1)
/// .build())
/// .labels(Map.of("test", "alloydb-cluster-full"))
/// .build())
/// .labels(Map.of("test", "alloydb-cluster-full"))
/// .deletionProtection(false)
/// .build());
///
/// final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// full:
/// type: gcp:alloydb:Cluster
/// properties:
/// clusterId: alloydb-cluster-full
/// location: us-central1
/// networkConfig:
/// network: ${default.id}
/// databaseVersion: POSTGRES_15
/// initialUser:
/// user: alloydb-cluster-full
/// password: alloydb-cluster-full
/// continuousBackupConfig:
/// enabled: true
/// recoveryWindowDays: 14
/// automatedBackupPolicy:
/// location: us-central1
/// backupWindow: 1800s
/// enabled: true
/// weeklySchedule:
/// daysOfWeeks:
/// - MONDAY
/// startTimes:
/// - hours: 23
/// minutes: 0
/// seconds: 0
/// nanos: 0
/// quantityBasedRetention:
/// count: 1
/// labels:
/// test: alloydb-cluster-full
/// labels:
/// test: alloydb-cluster-full
/// deletionProtection: false
/// default:
/// type: gcp:compute:Network
/// properties:
/// name: alloydb-cluster-full
/// variables:
/// project:
/// fn::invoke:
/// function: gcp:organizations:getProject
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Alloydb Cluster Restore
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = gcp.compute.getNetwork({
/// name: "alloydb-network",
/// });
/// const source = new gcp.alloydb.Cluster("source", {
/// clusterId: "alloydb-source-cluster",
/// location: "us-central1",
/// network: _default.then(_default => _default.id),
/// initialUser: {
/// password: "alloydb-source-cluster",
/// },
/// deletionProtection: false,
/// });
/// const privateIpAlloc = new gcp.compute.GlobalAddress("private_ip_alloc", {
/// name: "alloydb-source-cluster",
/// addressType: "INTERNAL",
/// purpose: "VPC_PEERING",
/// prefixLength: 16,
/// network: _default.then(_default => _default.id),
/// });
/// const vpcConnection = new gcp.servicenetworking.Connection("vpc_connection", {
/// network: _default.then(_default => _default.id),
/// service: "servicenetworking.googleapis.com",
/// reservedPeeringRanges: [privateIpAlloc.name],
/// });
/// const sourceInstance = new gcp.alloydb.Instance("source", {
/// cluster: source.name,
/// instanceId: "alloydb-instance",
/// instanceType: "PRIMARY",
/// machineConfig: {
/// cpuCount: 2,
/// },
/// }, {
/// dependsOn: [vpcConnection],
/// });
/// const sourceBackup = new gcp.alloydb.Backup("source", {
/// backupId: "alloydb-backup",
/// location: "us-central1",
/// clusterName: source.name,
/// }, {
/// dependsOn: [sourceInstance],
/// });
/// const restoredFromBackup = new gcp.alloydb.Cluster("restored_from_backup", {
/// clusterId: "alloydb-backup-restored",
/// location: "us-central1",
/// networkConfig: {
/// network: _default.then(_default => _default.id),
/// },
/// restoreBackupSource: {
/// backupName: sourceBackup.name,
/// },
/// deletionProtection: false,
/// });
/// const restoredViaPitr = new gcp.alloydb.Cluster("restored_via_pitr", {
/// clusterId: "alloydb-pitr-restored",
/// location: "us-central1",
/// networkConfig: {
/// network: _default.then(_default => _default.id),
/// },
/// restoreContinuousBackupSource: {
/// cluster: source.name,
/// pointInTime: "2023-08-03T19:19:00.094Z",
/// },
/// deletionProtection: false,
/// });
/// const project = gcp.organizations.getProject({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.get_network(name="alloydb-network")
/// source = gcp.alloydb.Cluster("source",
/// cluster_id="alloydb-source-cluster",
/// location="us-central1",
/// network=default.id,
/// initial_user={
/// "password": "alloydb-source-cluster",
/// },
/// deletion_protection=False)
/// private_ip_alloc = gcp.compute.GlobalAddress("private_ip_alloc",
/// name="alloydb-source-cluster",
/// address_type="INTERNAL",
/// purpose="VPC_PEERING",
/// prefix_length=16,
/// network=default.id)
/// vpc_connection = gcp.servicenetworking.Connection("vpc_connection",
/// network=default.id,
/// service="servicenetworking.googleapis.com",
/// reserved_peering_ranges=[private_ip_alloc.name])
/// source_instance = gcp.alloydb.Instance("source",
/// cluster=source.name,
/// instance_id="alloydb-instance",
/// instance_type="PRIMARY",
/// machine_config={
/// "cpu_count": 2,
/// },
/// opts = pulumi.ResourceOptions(depends_on=[vpc_connection]))
/// source_backup = gcp.alloydb.Backup("source",
/// backup_id="alloydb-backup",
/// location="us-central1",
/// cluster_name=source.name,
/// opts = pulumi.ResourceOptions(depends_on=[source_instance]))
/// restored_from_backup = gcp.alloydb.Cluster("restored_from_backup",
/// cluster_id="alloydb-backup-restored",
/// location="us-central1",
/// network_config={
/// "network": default.id,
/// },
/// restore_backup_source={
/// "backup_name": source_backup.name,
/// },
/// deletion_protection=False)
/// restored_via_pitr = gcp.alloydb.Cluster("restored_via_pitr",
/// cluster_id="alloydb-pitr-restored",
/// location="us-central1",
/// network_config={
/// "network": default.id,
/// },
/// restore_continuous_backup_source={
/// "cluster": source.name,
/// "point_in_time": "2023-08-03T19:19:00.094Z",
/// },
/// deletion_protection=False)
/// project = gcp.organizations.get_project()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var @default = Gcp.Compute.GetNetwork.Invoke(new()
/// {
/// Name = "alloydb-network",
/// });
///
/// var source = new Gcp.Alloydb.Cluster("source", new()
/// {
/// ClusterId = "alloydb-source-cluster",
/// Location = "us-central1",
/// Network = @default.Apply(@default => @default.Apply(getNetworkResult => getNetworkResult.Id)),
/// InitialUser = new Gcp.Alloydb.Inputs.ClusterInitialUserArgs
/// {
/// Password = "alloydb-source-cluster",
/// },
/// DeletionProtection = false,
/// });
///
/// var privateIpAlloc = new Gcp.Compute.GlobalAddress("private_ip_alloc", new()
/// {
/// Name = "alloydb-source-cluster",
/// AddressType = "INTERNAL",
/// Purpose = "VPC_PEERING",
/// PrefixLength = 16,
/// Network = @default.Apply(@default => @default.Apply(getNetworkResult => getNetworkResult.Id)),
/// });
///
/// var vpcConnection = new Gcp.ServiceNetworking.Connection("vpc_connection", new()
/// {
/// Network = @default.Apply(@default => @default.Apply(getNetworkResult => getNetworkResult.Id)),
/// Service = "servicenetworking.googleapis.com",
/// ReservedPeeringRanges = new[]
/// {
/// privateIpAlloc.Name,
/// },
/// });
///
/// var sourceInstance = new Gcp.Alloydb.Instance("source", new()
/// {
/// Cluster = source.Name,
/// InstanceId = "alloydb-instance",
/// InstanceType = "PRIMARY",
/// MachineConfig = new Gcp.Alloydb.Inputs.InstanceMachineConfigArgs
/// {
/// CpuCount = 2,
/// },
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// vpcConnection,
/// },
/// });
///
/// var sourceBackup = new Gcp.Alloydb.Backup("source", new()
/// {
/// BackupId = "alloydb-backup",
/// Location = "us-central1",
/// ClusterName = source.Name,
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// sourceInstance,
/// },
/// });
///
/// var restoredFromBackup = new Gcp.Alloydb.Cluster("restored_from_backup", new()
/// {
/// ClusterId = "alloydb-backup-restored",
/// Location = "us-central1",
/// NetworkConfig = new Gcp.Alloydb.Inputs.ClusterNetworkConfigArgs
/// {
/// Network = @default.Apply(@default => @default.Apply(getNetworkResult => getNetworkResult.Id)),
/// },
/// RestoreBackupSource = new Gcp.Alloydb.Inputs.ClusterRestoreBackupSourceArgs
/// {
/// BackupName = sourceBackup.Name,
/// },
/// DeletionProtection = false,
/// });
///
/// var restoredViaPitr = new Gcp.Alloydb.Cluster("restored_via_pitr", new()
/// {
/// ClusterId = "alloydb-pitr-restored",
/// Location = "us-central1",
/// NetworkConfig = new Gcp.Alloydb.Inputs.ClusterNetworkConfigArgs
/// {
/// Network = @default.Apply(@default => @default.Apply(getNetworkResult => getNetworkResult.Id)),
/// },
/// RestoreContinuousBackupSource = new Gcp.Alloydb.Inputs.ClusterRestoreContinuousBackupSourceArgs
/// {
/// Cluster = source.Name,
/// PointInTime = "2023-08-03T19:19:00.094Z",
/// },
/// DeletionProtection = false,
/// });
///
/// var project = Gcp.Organizations.GetProject.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/alloydb"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/servicenetworking"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _default, err := compute.LookupNetwork(ctx, &compute.LookupNetworkArgs{
/// Name: "alloydb-network",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// source, err := alloydb.NewCluster(ctx, "source", &alloydb.ClusterArgs{
/// ClusterId: pulumi.String("alloydb-source-cluster"),
/// Location:  pulumi.String("us-central1"),
/// Network:   _default.Id,
/// InitialUser: &alloydb.ClusterInitialUserArgs{
/// Password: pulumi.String("alloydb-source-cluster"),
/// },
/// DeletionProtection: pulumi.Bool(false),
/// })
/// if err != nil {
/// return err
/// }
/// privateIpAlloc, err := compute.NewGlobalAddress(ctx, "private_ip_alloc", &compute.GlobalAddressArgs{
/// Name:         pulumi.String("alloydb-source-cluster"),
/// AddressType:  pulumi.String("INTERNAL"),
/// Purpose:      pulumi.String("VPC_PEERING"),
/// PrefixLength: pulumi.Int(16),
/// Network:      pulumi.String(_default.Id),
/// })
/// if err != nil {
/// return err
/// }
/// vpcConnection, err := servicenetworking.NewConnection(ctx, "vpc_connection", &servicenetworking.ConnectionArgs{
/// Network: pulumi.String(_default.Id),
/// Service: pulumi.String("servicenetworking.googleapis.com"),
/// ReservedPeeringRanges: pulumi.StringArray{
/// privateIpAlloc.Name,
/// },
/// })
/// if err != nil {
/// return err
/// }
/// sourceInstance, err := alloydb.NewInstance(ctx, "source", &alloydb.InstanceArgs{
/// Cluster:      source.Name,
/// InstanceId:   pulumi.String("alloydb-instance"),
/// InstanceType: pulumi.String("PRIMARY"),
/// MachineConfig: &alloydb.InstanceMachineConfigArgs{
/// CpuCount: pulumi.Int(2),
/// },
/// }, pulumi.DependsOn([]pulumi.Resource{
/// vpcConnection,
/// }))
/// if err != nil {
/// return err
/// }
/// sourceBackup, err := alloydb.NewBackup(ctx, "source", &alloydb.BackupArgs{
/// BackupId:    pulumi.String("alloydb-backup"),
/// Location:    pulumi.String("us-central1"),
/// ClusterName: source.Name,
/// }, pulumi.DependsOn([]pulumi.Resource{
/// sourceInstance,
/// }))
/// if err != nil {
/// return err
/// }
/// _, err = alloydb.NewCluster(ctx, "restored_from_backup", &alloydb.ClusterArgs{
/// ClusterId: pulumi.String("alloydb-backup-restored"),
/// Location:  pulumi.String("us-central1"),
/// NetworkConfig: &alloydb.ClusterNetworkConfigArgs{
/// Network: pulumi.String(_default.Id),
/// },
/// RestoreBackupSource: &alloydb.ClusterRestoreBackupSourceArgs{
/// BackupName: sourceBackup.Name,
/// },
/// DeletionProtection: pulumi.Bool(false),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = alloydb.NewCluster(ctx, "restored_via_pitr", &alloydb.ClusterArgs{
/// ClusterId: pulumi.String("alloydb-pitr-restored"),
/// Location:  pulumi.String("us-central1"),
/// NetworkConfig: &alloydb.ClusterNetworkConfigArgs{
/// Network: pulumi.String(_default.Id),
/// },
/// RestoreContinuousBackupSource: &alloydb.ClusterRestoreContinuousBackupSourceArgs{
/// Cluster:     source.Name,
/// PointInTime: pulumi.String("2023-08-03T19:19:00.094Z"),
/// },
/// DeletionProtection: pulumi.Bool(false),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
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
/// import com.pulumi.gcp.compute.ComputeFunctions;
/// import com.pulumi.gcp.compute.inputs.GetNetworkArgs;
/// import com.pulumi.gcp.alloydb.Cluster;
/// import com.pulumi.gcp.alloydb.ClusterArgs;
/// import com.pulumi.gcp.alloydb.inputs.ClusterInitialUserArgs;
/// import com.pulumi.gcp.compute.GlobalAddress;
/// import com.pulumi.gcp.compute.GlobalAddressArgs;
/// import com.pulumi.gcp.servicenetworking.Connection;
/// import com.pulumi.gcp.servicenetworking.ConnectionArgs;
/// import com.pulumi.gcp.alloydb.Instance;
/// import com.pulumi.gcp.alloydb.InstanceArgs;
/// import com.pulumi.gcp.alloydb.inputs.InstanceMachineConfigArgs;
/// import com.pulumi.gcp.alloydb.Backup;
/// import com.pulumi.gcp.alloydb.BackupArgs;
/// import com.pulumi.gcp.alloydb.inputs.ClusterNetworkConfigArgs;
/// import com.pulumi.gcp.alloydb.inputs.ClusterRestoreBackupSourceArgs;
/// import com.pulumi.gcp.alloydb.inputs.ClusterRestoreContinuousBackupSourceArgs;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
/// final var default = ComputeFunctions.getNetwork(GetNetworkArgs.builder()
/// .name("alloydb-network")
/// .build());
///
/// var source = new Cluster("source", ClusterArgs.builder()
/// .clusterId("alloydb-source-cluster")
/// .location("us-central1")
/// .network(default_.id())
/// .initialUser(ClusterInitialUserArgs.builder()
/// .password("alloydb-source-cluster")
/// .build())
/// .deletionProtection(false)
/// .build());
///
/// var privateIpAlloc = new GlobalAddress("privateIpAlloc", GlobalAddressArgs.builder()
/// .name("alloydb-source-cluster")
/// .addressType("INTERNAL")
/// .purpose("VPC_PEERING")
/// .prefixLength(16)
/// .network(default_.id())
/// .build());
///
/// var vpcConnection = new Connection("vpcConnection", ConnectionArgs.builder()
/// .network(default_.id())
/// .service("servicenetworking.googleapis.com")
/// .reservedPeeringRanges(privateIpAlloc.name())
/// .build());
///
/// var sourceInstance = new Instance("sourceInstance", InstanceArgs.builder()
/// .cluster(source.name())
/// .instanceId("alloydb-instance")
/// .instanceType("PRIMARY")
/// .machineConfig(InstanceMachineConfigArgs.builder()
/// .cpuCount(2)
/// .build())
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(vpcConnection)
/// .build());
///
/// var sourceBackup = new Backup("sourceBackup", BackupArgs.builder()
/// .backupId("alloydb-backup")
/// .location("us-central1")
/// .clusterName(source.name())
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(sourceInstance)
/// .build());
///
/// var restoredFromBackup = new Cluster("restoredFromBackup", ClusterArgs.builder()
/// .clusterId("alloydb-backup-restored")
/// .location("us-central1")
/// .networkConfig(ClusterNetworkConfigArgs.builder()
/// .network(default_.id())
/// .build())
/// .restoreBackupSource(ClusterRestoreBackupSourceArgs.builder()
/// .backupName(sourceBackup.name())
/// .build())
/// .deletionProtection(false)
/// .build());
///
/// var restoredViaPitr = new Cluster("restoredViaPitr", ClusterArgs.builder()
/// .clusterId("alloydb-pitr-restored")
/// .location("us-central1")
/// .networkConfig(ClusterNetworkConfigArgs.builder()
/// .network(default_.id())
/// .build())
/// .restoreContinuousBackupSource(ClusterRestoreContinuousBackupSourceArgs.builder()
/// .cluster(source.name())
/// .pointInTime("2023-08-03T19:19:00.094Z")
/// .build())
/// .deletionProtection(false)
/// .build());
///
/// final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// source:
/// type: gcp:alloydb:Cluster
/// properties:
/// clusterId: alloydb-source-cluster
/// location: us-central1
/// network: ${default.id}
/// initialUser:
/// password: alloydb-source-cluster
/// deletionProtection: false
/// sourceInstance:
/// type: gcp:alloydb:Instance
/// name: source
/// properties:
/// cluster: ${source.name}
/// instanceId: alloydb-instance
/// instanceType: PRIMARY
/// machineConfig:
/// cpuCount: 2
/// options:
/// dependsOn:
/// - ${vpcConnection}
/// sourceBackup:
/// type: gcp:alloydb:Backup
/// name: source
/// properties:
/// backupId: alloydb-backup
/// location: us-central1
/// clusterName: ${source.name}
/// options:
/// dependsOn:
/// - ${sourceInstance}
/// restoredFromBackup:
/// type: gcp:alloydb:Cluster
/// name: restored_from_backup
/// properties:
/// clusterId: alloydb-backup-restored
/// location: us-central1
/// networkConfig:
/// network: ${default.id}
/// restoreBackupSource:
/// backupName: ${sourceBackup.name}
/// deletionProtection: false
/// restoredViaPitr:
/// type: gcp:alloydb:Cluster
/// name: restored_via_pitr
/// properties:
/// clusterId: alloydb-pitr-restored
/// location: us-central1
/// networkConfig:
/// network: ${default.id}
/// restoreContinuousBackupSource:
/// cluster: ${source.name}
/// pointInTime: 2023-08-03T19:19:00.094Z
/// deletionProtection: false
/// privateIpAlloc:
/// type: gcp:compute:GlobalAddress
/// name: private_ip_alloc
/// properties:
/// name: alloydb-source-cluster
/// addressType: INTERNAL
/// purpose: VPC_PEERING
/// prefixLength: 16
/// network: ${default.id}
/// vpcConnection:
/// type: gcp:servicenetworking:Connection
/// name: vpc_connection
/// properties:
/// network: ${default.id}
/// service: servicenetworking.googleapis.com
/// reservedPeeringRanges:
/// - ${privateIpAlloc.name}
/// variables:
/// project:
/// fn::invoke:
/// function: gcp:organizations:getProject
/// arguments: {}
/// default:
/// fn::invoke:
/// function: gcp:compute:getNetwork
/// arguments:
/// name: alloydb-network
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Alloydb Secondary Cluster Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.Network("default", {name: "alloydb-secondary-cluster"});
/// const primary = new gcp.alloydb.Cluster("primary", {
/// clusterId: "alloydb-primary-cluster",
/// location: "us-central1",
/// networkConfig: {
/// network: _default.id,
/// },
/// deletionProtection: false,
/// });
/// const privateIpAlloc = new gcp.compute.GlobalAddress("private_ip_alloc", {
/// name: "alloydb-secondary-cluster",
/// addressType: "INTERNAL",
/// purpose: "VPC_PEERING",
/// prefixLength: 16,
/// network: _default.id,
/// });
/// const vpcConnection = new gcp.servicenetworking.Connection("vpc_connection", {
/// network: _default.id,
/// service: "servicenetworking.googleapis.com",
/// reservedPeeringRanges: [privateIpAlloc.name],
/// });
/// const primaryInstance = new gcp.alloydb.Instance("primary", {
/// cluster: primary.name,
/// instanceId: "alloydb-primary-instance",
/// instanceType: "PRIMARY",
/// machineConfig: {
/// cpuCount: 2,
/// },
/// }, {
/// dependsOn: [vpcConnection],
/// });
/// const secondary = new gcp.alloydb.Cluster("secondary", {
/// clusterId: "alloydb-secondary-cluster",
/// location: "us-east1",
/// networkConfig: {
/// network: _default.id,
/// },
/// clusterType: "SECONDARY",
/// continuousBackupConfig: {
/// enabled: false,
/// },
/// secondaryConfig: {
/// primaryClusterName: primary.name,
/// },
/// deletionProtection: false,
/// }, {
/// dependsOn: [primaryInstance],
/// });
/// const project = gcp.organizations.getProject({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.Network("default", name="alloydb-secondary-cluster")
/// primary = gcp.alloydb.Cluster("primary",
/// cluster_id="alloydb-primary-cluster",
/// location="us-central1",
/// network_config={
/// "network": default.id,
/// },
/// deletion_protection=False)
/// private_ip_alloc = gcp.compute.GlobalAddress("private_ip_alloc",
/// name="alloydb-secondary-cluster",
/// address_type="INTERNAL",
/// purpose="VPC_PEERING",
/// prefix_length=16,
/// network=default.id)
/// vpc_connection = gcp.servicenetworking.Connection("vpc_connection",
/// network=default.id,
/// service="servicenetworking.googleapis.com",
/// reserved_peering_ranges=[private_ip_alloc.name])
/// primary_instance = gcp.alloydb.Instance("primary",
/// cluster=primary.name,
/// instance_id="alloydb-primary-instance",
/// instance_type="PRIMARY",
/// machine_config={
/// "cpu_count": 2,
/// },
/// opts = pulumi.ResourceOptions(depends_on=[vpc_connection]))
/// secondary = gcp.alloydb.Cluster("secondary",
/// cluster_id="alloydb-secondary-cluster",
/// location="us-east1",
/// network_config={
/// "network": default.id,
/// },
/// cluster_type="SECONDARY",
/// continuous_backup_config={
/// "enabled": False,
/// },
/// secondary_config={
/// "primary_cluster_name": primary.name,
/// },
/// deletion_protection=False,
/// opts = pulumi.ResourceOptions(depends_on=[primary_instance]))
/// project = gcp.organizations.get_project()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var @default = new Gcp.Compute.Network("default", new()
/// {
/// Name = "alloydb-secondary-cluster",
/// });
///
/// var primary = new Gcp.Alloydb.Cluster("primary", new()
/// {
/// ClusterId = "alloydb-primary-cluster",
/// Location = "us-central1",
/// NetworkConfig = new Gcp.Alloydb.Inputs.ClusterNetworkConfigArgs
/// {
/// Network = @default.Id,
/// },
/// DeletionProtection = false,
/// });
///
/// var privateIpAlloc = new Gcp.Compute.GlobalAddress("private_ip_alloc", new()
/// {
/// Name = "alloydb-secondary-cluster",
/// AddressType = "INTERNAL",
/// Purpose = "VPC_PEERING",
/// PrefixLength = 16,
/// Network = @default.Id,
/// });
///
/// var vpcConnection = new Gcp.ServiceNetworking.Connection("vpc_connection", new()
/// {
/// Network = @default.Id,
/// Service = "servicenetworking.googleapis.com",
/// ReservedPeeringRanges = new[]
/// {
/// privateIpAlloc.Name,
/// },
/// });
///
/// var primaryInstance = new Gcp.Alloydb.Instance("primary", new()
/// {
/// Cluster = primary.Name,
/// InstanceId = "alloydb-primary-instance",
/// InstanceType = "PRIMARY",
/// MachineConfig = new Gcp.Alloydb.Inputs.InstanceMachineConfigArgs
/// {
/// CpuCount = 2,
/// },
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// vpcConnection,
/// },
/// });
///
/// var secondary = new Gcp.Alloydb.Cluster("secondary", new()
/// {
/// ClusterId = "alloydb-secondary-cluster",
/// Location = "us-east1",
/// NetworkConfig = new Gcp.Alloydb.Inputs.ClusterNetworkConfigArgs
/// {
/// Network = @default.Id,
/// },
/// ClusterType = "SECONDARY",
/// ContinuousBackupConfig = new Gcp.Alloydb.Inputs.ClusterContinuousBackupConfigArgs
/// {
/// Enabled = false,
/// },
/// SecondaryConfig = new Gcp.Alloydb.Inputs.ClusterSecondaryConfigArgs
/// {
/// PrimaryClusterName = primary.Name,
/// },
/// DeletionProtection = false,
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// primaryInstance,
/// },
/// });
///
/// var project = Gcp.Organizations.GetProject.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/alloydb"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/servicenetworking"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _default, err := compute.NewNetwork(ctx, "default", &compute.NetworkArgs{
/// Name: pulumi.String("alloydb-secondary-cluster"),
/// })
/// if err != nil {
/// return err
/// }
/// primary, err := alloydb.NewCluster(ctx, "primary", &alloydb.ClusterArgs{
/// ClusterId: pulumi.String("alloydb-primary-cluster"),
/// Location:  pulumi.String("us-central1"),
/// NetworkConfig: &alloydb.ClusterNetworkConfigArgs{
/// Network: _default.ID(),
/// },
/// DeletionProtection: pulumi.Bool(false),
/// })
/// if err != nil {
/// return err
/// }
/// privateIpAlloc, err := compute.NewGlobalAddress(ctx, "private_ip_alloc", &compute.GlobalAddressArgs{
/// Name:         pulumi.String("alloydb-secondary-cluster"),
/// AddressType:  pulumi.String("INTERNAL"),
/// Purpose:      pulumi.String("VPC_PEERING"),
/// PrefixLength: pulumi.Int(16),
/// Network:      _default.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// vpcConnection, err := servicenetworking.NewConnection(ctx, "vpc_connection", &servicenetworking.ConnectionArgs{
/// Network: _default.ID(),
/// Service: pulumi.String("servicenetworking.googleapis.com"),
/// ReservedPeeringRanges: pulumi.StringArray{
/// privateIpAlloc.Name,
/// },
/// })
/// if err != nil {
/// return err
/// }
/// primaryInstance, err := alloydb.NewInstance(ctx, "primary", &alloydb.InstanceArgs{
/// Cluster:      primary.Name,
/// InstanceId:   pulumi.String("alloydb-primary-instance"),
/// InstanceType: pulumi.String("PRIMARY"),
/// MachineConfig: &alloydb.InstanceMachineConfigArgs{
/// CpuCount: pulumi.Int(2),
/// },
/// }, pulumi.DependsOn([]pulumi.Resource{
/// vpcConnection,
/// }))
/// if err != nil {
/// return err
/// }
/// _, err = alloydb.NewCluster(ctx, "secondary", &alloydb.ClusterArgs{
/// ClusterId: pulumi.String("alloydb-secondary-cluster"),
/// Location:  pulumi.String("us-east1"),
/// NetworkConfig: &alloydb.ClusterNetworkConfigArgs{
/// Network: _default.ID(),
/// },
/// ClusterType: pulumi.String("SECONDARY"),
/// ContinuousBackupConfig: &alloydb.ClusterContinuousBackupConfigArgs{
/// Enabled: pulumi.Bool(false),
/// },
/// SecondaryConfig: &alloydb.ClusterSecondaryConfigArgs{
/// PrimaryClusterName: primary.Name,
/// },
/// DeletionProtection: pulumi.Bool(false),
/// }, pulumi.DependsOn([]pulumi.Resource{
/// primaryInstance,
/// }))
/// if err != nil {
/// return err
/// }
/// _, err = organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
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
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.alloydb.Cluster;
/// import com.pulumi.gcp.alloydb.ClusterArgs;
/// import com.pulumi.gcp.alloydb.inputs.ClusterNetworkConfigArgs;
/// import com.pulumi.gcp.compute.GlobalAddress;
/// import com.pulumi.gcp.compute.GlobalAddressArgs;
/// import com.pulumi.gcp.servicenetworking.Connection;
/// import com.pulumi.gcp.servicenetworking.ConnectionArgs;
/// import com.pulumi.gcp.alloydb.Instance;
/// import com.pulumi.gcp.alloydb.InstanceArgs;
/// import com.pulumi.gcp.alloydb.inputs.InstanceMachineConfigArgs;
/// import com.pulumi.gcp.alloydb.inputs.ClusterContinuousBackupConfigArgs;
/// import com.pulumi.gcp.alloydb.inputs.ClusterSecondaryConfigArgs;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
/// var default_ = new Network("default", NetworkArgs.builder()
/// .name("alloydb-secondary-cluster")
/// .build());
///
/// var primary = new Cluster("primary", ClusterArgs.builder()
/// .clusterId("alloydb-primary-cluster")
/// .location("us-central1")
/// .networkConfig(ClusterNetworkConfigArgs.builder()
/// .network(default_.id())
/// .build())
/// .deletionProtection(false)
/// .build());
///
/// var privateIpAlloc = new GlobalAddress("privateIpAlloc", GlobalAddressArgs.builder()
/// .name("alloydb-secondary-cluster")
/// .addressType("INTERNAL")
/// .purpose("VPC_PEERING")
/// .prefixLength(16)
/// .network(default_.id())
/// .build());
///
/// var vpcConnection = new Connection("vpcConnection", ConnectionArgs.builder()
/// .network(default_.id())
/// .service("servicenetworking.googleapis.com")
/// .reservedPeeringRanges(privateIpAlloc.name())
/// .build());
///
/// var primaryInstance = new Instance("primaryInstance", InstanceArgs.builder()
/// .cluster(primary.name())
/// .instanceId("alloydb-primary-instance")
/// .instanceType("PRIMARY")
/// .machineConfig(InstanceMachineConfigArgs.builder()
/// .cpuCount(2)
/// .build())
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(vpcConnection)
/// .build());
///
/// var secondary = new Cluster("secondary", ClusterArgs.builder()
/// .clusterId("alloydb-secondary-cluster")
/// .location("us-east1")
/// .networkConfig(ClusterNetworkConfigArgs.builder()
/// .network(default_.id())
/// .build())
/// .clusterType("SECONDARY")
/// .continuousBackupConfig(ClusterContinuousBackupConfigArgs.builder()
/// .enabled(false)
/// .build())
/// .secondaryConfig(ClusterSecondaryConfigArgs.builder()
/// .primaryClusterName(primary.name())
/// .build())
/// .deletionProtection(false)
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(primaryInstance)
/// .build());
///
/// final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// primary:
/// type: gcp:alloydb:Cluster
/// properties:
/// clusterId: alloydb-primary-cluster
/// location: us-central1
/// networkConfig:
/// network: ${default.id}
/// deletionProtection: false
/// primaryInstance:
/// type: gcp:alloydb:Instance
/// name: primary
/// properties:
/// cluster: ${primary.name}
/// instanceId: alloydb-primary-instance
/// instanceType: PRIMARY
/// machineConfig:
/// cpuCount: 2
/// options:
/// dependsOn:
/// - ${vpcConnection}
/// secondary:
/// type: gcp:alloydb:Cluster
/// properties:
/// clusterId: alloydb-secondary-cluster
/// location: us-east1
/// networkConfig:
/// network: ${default.id}
/// clusterType: SECONDARY
/// continuousBackupConfig:
/// enabled: false
/// secondaryConfig:
/// primaryClusterName: ${primary.name}
/// deletionProtection: false
/// options:
/// dependsOn:
/// - ${primaryInstance}
/// default:
/// type: gcp:compute:Network
/// properties:
/// name: alloydb-secondary-cluster
/// privateIpAlloc:
/// type: gcp:compute:GlobalAddress
/// name: private_ip_alloc
/// properties:
/// name: alloydb-secondary-cluster
/// addressType: INTERNAL
/// purpose: VPC_PEERING
/// prefixLength: 16
/// network: ${default.id}
/// vpcConnection:
/// type: gcp:servicenetworking:Connection
/// name: vpc_connection
/// properties:
/// network: ${default.id}
/// service: servicenetworking.googleapis.com
/// reservedPeeringRanges:
/// - ${privateIpAlloc.name}
/// variables:
/// project:
/// fn::invoke:
/// function: gcp:organizations:getProject
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Cluster can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/clusters/{{cluster_id}}`
///
/// * `{{project}}/{{location}}/{{cluster_id}}`
///
/// * `{{location}}/{{cluster_id}}`
///
/// * `{{cluster_id}}`
///
/// When using the `pulumi import` command, Cluster can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:alloydb/cluster:Cluster default projects/{{project}}/locations/{{location}}/clusters/{{cluster_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:alloydb/cluster:Cluster default {{project}}/{{location}}/{{cluster_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:alloydb/cluster:Cluster default {{location}}/{{cluster_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:alloydb/cluster:Cluster default {{cluster_id}}
/// ```
class Cluster extends CustomResource {
  /// Annotations to allow client tools to store small amount of arbitrary data. This is distinct from labels. https://google.aip.dev/128
  /// An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveAnnotations`" pulumi-lang-dotnet="`EffectiveAnnotations`" pulumi-lang-go="`effectiveAnnotations`" pulumi-lang-python="`effective_annotations`" pulumi-lang-yaml="`effectiveAnnotations`" pulumi-lang-java="`effectiveAnnotations`">`effective_annotations`</span> for all of the annotations present on the resource.
  late final Output<Map<String, String>?> annotations;

  /// The automated backup policy for this cluster. AutomatedBackupPolicy is disabled by default.
  /// Structure is documented below.
  late final Output<ClusterAutomatedBackupPolicy> automatedBackupPolicy;

  /// Cluster created from backup.
  /// Structure is documented below.
  late final Output<List<ClusterBackupSource>> backupSources;

  /// The ID of the alloydb cluster.
  late final Output<String> clusterId;

  /// The type of cluster. If not set, defaults to PRIMARY.
  /// Default value is `PRIMARY`.
  /// Possible values are: `PRIMARY`, `SECONDARY`.
  late final Output<String?> clusterType;

  /// The continuous backup config for this cluster.
  /// If no policy is provided then the default policy will be used. The default policy takes one backup a day and retains backups for 14 days.
  /// Structure is documented below.
  late final Output<ClusterContinuousBackupConfig> continuousBackupConfig;

  /// ContinuousBackupInfo describes the continuous backup properties of a cluster.
  /// Structure is documented below.
  late final Output<List<ClusterContinuousBackupInfo>> continuousBackupInfos;

  /// The database engine major version. This is an optional field and it's populated at the Cluster creation time.
  /// Note: Changing this field to a higer version results in upgrading the AlloyDB cluster which is an irreversible change.
  late final Output<String> databaseVersion;

  /// Policy to determine if the cluster should be deleted forcefully.
  /// Deleting a cluster forcefully, deletes the cluster and all its associated instances within the cluster.
  /// Deleting a Secondary cluster with a secondary instance REQUIRES setting<span pulumi-lang-nodejs=" deletionPolicy " pulumi-lang-dotnet=" DeletionPolicy " pulumi-lang-go=" deletionPolicy " pulumi-lang-python=" deletion_policy " pulumi-lang-yaml=" deletionPolicy " pulumi-lang-java=" deletionPolicy "> deletion_policy </span>= "FORCE" otherwise an error is returned. This is needed as there is no support to delete just the secondary instance, and the only way to delete secondary instance is to delete the associated secondary cluster forcefully which also deletes the secondary instance.
  /// Possible values: DEFAULT, FORCE
  late final Output<String?> deletionPolicy;
  late final Output<bool?> deletionProtection;

  /// User-settable and human-readable display name for the Cluster.
  late final Output<String?> displayName;
  late final Output<Map<String, String>> effectiveAnnotations;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// EncryptionConfig describes the encryption config of a cluster or a backup that is encrypted with a CMEK (customer-managed encryption key).
  /// Structure is documented below.
  late final Output<ClusterEncryptionConfig?> encryptionConfig;

  /// (Output)
  /// Output only. The encryption information for the WALs and backups required for ContinuousBackup.
  /// Structure is documented below.
  late final Output<List<ClusterEncryptionInfo>> encryptionInfos;

  /// For Resource freshness validation (https://google.aip.dev/154)
  late final Output<String?> etag;

  /// Initial user to setup during cluster creation. If unset for new Clusters, a postgres role with null password is created. You will need to create additional users or set the password in order to log in.
  /// Structure is documented below.
  late final Output<ClusterInitialUser?> initialUser;

  /// User-defined labels for the alloydb cluster.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// The location where the alloydb cluster should reside.
  late final Output<String> location;

  /// MaintenanceUpdatePolicy defines the policy for system updates.
  /// Structure is documented below.
  late final Output<ClusterMaintenanceUpdatePolicy?> maintenanceUpdatePolicy;

  /// Cluster created via DMS migration.
  /// Structure is documented below.
  late final Output<List<ClusterMigrationSource>> migrationSources;

  /// The name of the cluster resource.
  late final Output<String> name;

  /// Metadata related to network configuration.
  /// Structure is documented below.
  late final Output<ClusterNetworkConfig> networkConfig;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// Configuration for Private Service Connect (PSC) for the cluster.
  /// Structure is documented below.
  late final Output<ClusterPscConfig?> pscConfig;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// Output only. Reconciling (https://google.aip.dev/128#reconciliation).
  /// Set to true if the current state of Cluster does not match the user's intended state, and the service is actively updating the resource to reconcile them.
  /// This can happen due to user-triggered updates or system actions like failover or maintenance.
  late final Output<bool> reconciling;

  /// The source when restoring from a backup. Conflicts with 'restore_continuous_backup_source', both can't be set together.
  /// Structure is documented below.
  late final Output<ClusterRestoreBackupSource?> restoreBackupSource;

  /// The source when restoring via point in time recovery (PITR). Conflicts with 'restore_backup_source', both can't be set together.
  /// Structure is documented below.
  late final Output<ClusterRestoreContinuousBackupSource?>
      restoreContinuousBackupSource;

  /// Configuration of the secondary cluster for Cross Region Replication. This should be set if and only if the cluster is of type SECONDARY.
  /// Structure is documented below.
  late final Output<ClusterSecondaryConfig?> secondaryConfig;

  /// Set to true to skip awaiting on the major version upgrade of the cluster.
  /// Possible values: true, false
  /// Default value: "true"
  late final Output<bool?> skipAwaitMajorVersionUpgrade;

  /// Output only. The current serving state of the cluster.
  late final Output<String> state;

  /// The subscrition type of cluster.
  /// Possible values are: `TRIAL`, `STANDARD`.
  late final Output<String> subscriptionType;

  /// Contains information and all metadata related to TRIAL clusters.
  /// Structure is documented below.
  late final Output<List<ClusterTrialMetadata>> trialMetadatas;

  /// The system-generated UID of the resource.
  late final Output<String> uid;

  Cluster(
    String name, {
    ClusterArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:alloydb/cluster:Cluster',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.annotations = registerOutput<Map<String, String>?>('annotations');
    this.automatedBackupPolicy =
        registerOutput<ClusterAutomatedBackupPolicy>('automatedBackupPolicy');
    this.backupSources =
        registerOutput<List<ClusterBackupSource>>('backupSources');
    this.clusterId = registerOutput<String>('clusterId');
    this.clusterType = registerOutput<String?>('clusterType');
    this.continuousBackupConfig =
        registerOutput<ClusterContinuousBackupConfig>('continuousBackupConfig');
    this.continuousBackupInfos =
        registerOutput<List<ClusterContinuousBackupInfo>>(
            'continuousBackupInfos');
    this.databaseVersion = registerOutput<String>('databaseVersion');
    this.deletionPolicy = registerOutput<String?>('deletionPolicy');
    this.deletionProtection = registerOutput<bool?>('deletionProtection');
    this.displayName = registerOutput<String?>('displayName');
    this.effectiveAnnotations =
        registerOutput<Map<String, String>>('effectiveAnnotations');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.encryptionConfig =
        registerOutput<ClusterEncryptionConfig?>('encryptionConfig');
    this.encryptionInfos =
        registerOutput<List<ClusterEncryptionInfo>>('encryptionInfos');
    this.etag = registerOutput<String?>('etag');
    this.initialUser = registerOutput<ClusterInitialUser?>('initialUser');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.maintenanceUpdatePolicy =
        registerOutput<ClusterMaintenanceUpdatePolicy?>(
            'maintenanceUpdatePolicy');
    this.migrationSources =
        registerOutput<List<ClusterMigrationSource>>('migrationSources');
    this.name = registerOutput<String>('name');
    this.networkConfig = registerOutput<ClusterNetworkConfig>('networkConfig');
    this.project = registerOutput<String>('project');
    this.pscConfig = registerOutput<ClusterPscConfig?>('pscConfig');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.reconciling = registerOutput<bool>('reconciling');
    this.restoreBackupSource =
        registerOutput<ClusterRestoreBackupSource?>('restoreBackupSource');
    this.restoreContinuousBackupSource =
        registerOutput<ClusterRestoreContinuousBackupSource?>(
            'restoreContinuousBackupSource');
    this.secondaryConfig =
        registerOutput<ClusterSecondaryConfig?>('secondaryConfig');
    this.skipAwaitMajorVersionUpgrade =
        registerOutput<bool?>('skipAwaitMajorVersionUpgrade');
    this.state = registerOutput<String>('state');
    this.subscriptionType = registerOutput<String>('subscriptionType');
    this.trialMetadatas =
        registerOutput<List<ClusterTrialMetadata>>('trialMetadatas');
    this.uid = registerOutput<String>('uid');
  }
}
