import 'package:pulumi/pulumi.dart';
import '../resource_policy_disk_consistency_group_policy/resource_policy_disk_consistency_group_policy.dart';
import '../resource_policy_group_placement_policy/resource_policy_group_placement_policy.dart';
import '../resource_policy_instance_schedule_policy/resource_policy_instance_schedule_policy.dart';
import '../resource_policy_snapshot_schedule_policy/resource_policy_snapshot_schedule_policy.dart';
import '../resource_policy_workload_policy/resource_policy_workload_policy.dart';
import 'resource_policy_args.dart';

/// A policy that can be attached to a resource to specify or schedule actions on that resource.
///
///
/// To get more information about ResourcePolicy, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/resourcePolicies)
///
/// ## Example Usage
///
/// ### Resource Policy Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const foo = new gcp.compute.ResourcePolicy("foo", {
/// name: "gce-policy",
/// region: "us-central1",
/// snapshotSchedulePolicy: {
/// schedule: {
/// dailySchedule: {
/// daysInCycle: 1,
/// startTime: "04:00",
/// },
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// foo = gcp.compute.ResourcePolicy("foo",
/// name="gce-policy",
/// region="us-central1",
/// snapshot_schedule_policy={
/// "schedule": {
/// "daily_schedule": {
/// "days_in_cycle": 1,
/// "start_time": "04:00",
/// },
/// },
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
/// var foo = new Gcp.Compute.ResourcePolicy("foo", new()
/// {
/// Name = "gce-policy",
/// Region = "us-central1",
/// SnapshotSchedulePolicy = new Gcp.Compute.Inputs.ResourcePolicySnapshotSchedulePolicyArgs
/// {
/// Schedule = new Gcp.Compute.Inputs.ResourcePolicySnapshotSchedulePolicyScheduleArgs
/// {
/// DailySchedule = new Gcp.Compute.Inputs.ResourcePolicySnapshotSchedulePolicyScheduleDailyScheduleArgs
/// {
/// DaysInCycle = 1,
/// StartTime = "04:00",
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := compute.NewResourcePolicy(ctx, "foo", &compute.ResourcePolicyArgs{
/// Name:   pulumi.String("gce-policy"),
/// Region: pulumi.String("us-central1"),
/// SnapshotSchedulePolicy: &compute.ResourcePolicySnapshotSchedulePolicyArgs{
/// Schedule: &compute.ResourcePolicySnapshotSchedulePolicyScheduleArgs{
/// DailySchedule: &compute.ResourcePolicySnapshotSchedulePolicyScheduleDailyScheduleArgs{
/// DaysInCycle: pulumi.Int(1),
/// StartTime:   pulumi.String("04:00"),
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
/// import com.pulumi.gcp.compute.ResourcePolicy;
/// import com.pulumi.gcp.compute.ResourcePolicyArgs;
/// import com.pulumi.gcp.compute.inputs.ResourcePolicySnapshotSchedulePolicyArgs;
/// import com.pulumi.gcp.compute.inputs.ResourcePolicySnapshotSchedulePolicyScheduleArgs;
/// import com.pulumi.gcp.compute.inputs.ResourcePolicySnapshotSchedulePolicyScheduleDailyScheduleArgs;
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
/// var foo = new ResourcePolicy("foo", ResourcePolicyArgs.builder()
/// .name("gce-policy")
/// .region("us-central1")
/// .snapshotSchedulePolicy(ResourcePolicySnapshotSchedulePolicyArgs.builder()
/// .schedule(ResourcePolicySnapshotSchedulePolicyScheduleArgs.builder()
/// .dailySchedule(ResourcePolicySnapshotSchedulePolicyScheduleDailyScheduleArgs.builder()
/// .daysInCycle(1)
/// .startTime("04:00")
/// .build())
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// foo:
/// type: gcp:compute:ResourcePolicy
/// properties:
/// name: gce-policy
/// region: us-central1
/// snapshotSchedulePolicy:
/// schedule:
/// dailySchedule:
/// daysInCycle: 1
/// startTime: 04:00
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Resource Policy Full
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const bar = new gcp.compute.ResourcePolicy("bar", {
/// name: "gce-policy",
/// region: "us-central1",
/// snapshotSchedulePolicy: {
/// schedule: {
/// hourlySchedule: {
/// hoursInCycle: 20,
/// startTime: "23:00",
/// },
/// },
/// retentionPolicy: {
/// maxRetentionDays: 10,
/// onSourceDiskDelete: "KEEP_AUTO_SNAPSHOTS",
/// },
/// snapshotProperties: {
/// labels: {
/// my_label: "value",
/// },
/// storageLocations: "us",
/// guestFlush: true,
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// bar = gcp.compute.ResourcePolicy("bar",
/// name="gce-policy",
/// region="us-central1",
/// snapshot_schedule_policy={
/// "schedule": {
/// "hourly_schedule": {
/// "hours_in_cycle": 20,
/// "start_time": "23:00",
/// },
/// },
/// "retention_policy": {
/// "max_retention_days": 10,
/// "on_source_disk_delete": "KEEP_AUTO_SNAPSHOTS",
/// },
/// "snapshot_properties": {
/// "labels": {
/// "my_label": "value",
/// },
/// "storage_locations": "us",
/// "guest_flush": True,
/// },
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
/// var bar = new Gcp.Compute.ResourcePolicy("bar", new()
/// {
/// Name = "gce-policy",
/// Region = "us-central1",
/// SnapshotSchedulePolicy = new Gcp.Compute.Inputs.ResourcePolicySnapshotSchedulePolicyArgs
/// {
/// Schedule = new Gcp.Compute.Inputs.ResourcePolicySnapshotSchedulePolicyScheduleArgs
/// {
/// HourlySchedule = new Gcp.Compute.Inputs.ResourcePolicySnapshotSchedulePolicyScheduleHourlyScheduleArgs
/// {
/// HoursInCycle = 20,
/// StartTime = "23:00",
/// },
/// },
/// RetentionPolicy = new Gcp.Compute.Inputs.ResourcePolicySnapshotSchedulePolicyRetentionPolicyArgs
/// {
/// MaxRetentionDays = 10,
/// OnSourceDiskDelete = "KEEP_AUTO_SNAPSHOTS",
/// },
/// SnapshotProperties = new Gcp.Compute.Inputs.ResourcePolicySnapshotSchedulePolicySnapshotPropertiesArgs
/// {
/// Labels =
/// {
/// { "my_label", "value" },
/// },
/// StorageLocations = "us",
/// GuestFlush = true,
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := compute.NewResourcePolicy(ctx, "bar", &compute.ResourcePolicyArgs{
/// Name:   pulumi.String("gce-policy"),
/// Region: pulumi.String("us-central1"),
/// SnapshotSchedulePolicy: &compute.ResourcePolicySnapshotSchedulePolicyArgs{
/// Schedule: &compute.ResourcePolicySnapshotSchedulePolicyScheduleArgs{
/// HourlySchedule: &compute.ResourcePolicySnapshotSchedulePolicyScheduleHourlyScheduleArgs{
/// HoursInCycle: pulumi.Int(20),
/// StartTime:    pulumi.String("23:00"),
/// },
/// },
/// RetentionPolicy: &compute.ResourcePolicySnapshotSchedulePolicyRetentionPolicyArgs{
/// MaxRetentionDays:   pulumi.Int(10),
/// OnSourceDiskDelete: pulumi.String("KEEP_AUTO_SNAPSHOTS"),
/// },
/// SnapshotProperties: &compute.ResourcePolicySnapshotSchedulePolicySnapshotPropertiesArgs{
/// Labels: pulumi.StringMap{
/// "my_label": pulumi.String("value"),
/// },
/// StorageLocations: pulumi.String("us"),
/// GuestFlush:       pulumi.Bool(true),
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
/// import com.pulumi.gcp.compute.ResourcePolicy;
/// import com.pulumi.gcp.compute.ResourcePolicyArgs;
/// import com.pulumi.gcp.compute.inputs.ResourcePolicySnapshotSchedulePolicyArgs;
/// import com.pulumi.gcp.compute.inputs.ResourcePolicySnapshotSchedulePolicyScheduleArgs;
/// import com.pulumi.gcp.compute.inputs.ResourcePolicySnapshotSchedulePolicyScheduleHourlyScheduleArgs;
/// import com.pulumi.gcp.compute.inputs.ResourcePolicySnapshotSchedulePolicyRetentionPolicyArgs;
/// import com.pulumi.gcp.compute.inputs.ResourcePolicySnapshotSchedulePolicySnapshotPropertiesArgs;
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
/// var bar = new ResourcePolicy("bar", ResourcePolicyArgs.builder()
/// .name("gce-policy")
/// .region("us-central1")
/// .snapshotSchedulePolicy(ResourcePolicySnapshotSchedulePolicyArgs.builder()
/// .schedule(ResourcePolicySnapshotSchedulePolicyScheduleArgs.builder()
/// .hourlySchedule(ResourcePolicySnapshotSchedulePolicyScheduleHourlyScheduleArgs.builder()
/// .hoursInCycle(20)
/// .startTime("23:00")
/// .build())
/// .build())
/// .retentionPolicy(ResourcePolicySnapshotSchedulePolicyRetentionPolicyArgs.builder()
/// .maxRetentionDays(10)
/// .onSourceDiskDelete("KEEP_AUTO_SNAPSHOTS")
/// .build())
/// .snapshotProperties(ResourcePolicySnapshotSchedulePolicySnapshotPropertiesArgs.builder()
/// .labels(Map.of("my_label", "value"))
/// .storageLocations("us")
/// .guestFlush(true)
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// bar:
/// type: gcp:compute:ResourcePolicy
/// properties:
/// name: gce-policy
/// region: us-central1
/// snapshotSchedulePolicy:
/// schedule:
/// hourlySchedule:
/// hoursInCycle: 20
/// startTime: 23:00
/// retentionPolicy:
/// maxRetentionDays: 10
/// onSourceDiskDelete: KEEP_AUTO_SNAPSHOTS
/// snapshotProperties:
/// labels:
/// my_label: value
/// storageLocations: us
/// guestFlush: true
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Resource Policy Placement Policy
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const baz = new gcp.compute.ResourcePolicy("baz", {
/// name: "gce-policy",
/// region: "us-central1",
/// groupPlacementPolicy: {
/// vmCount: 2,
/// collocation: "COLLOCATED",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// baz = gcp.compute.ResourcePolicy("baz",
/// name="gce-policy",
/// region="us-central1",
/// group_placement_policy={
/// "vm_count": 2,
/// "collocation": "COLLOCATED",
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
/// var baz = new Gcp.Compute.ResourcePolicy("baz", new()
/// {
/// Name = "gce-policy",
/// Region = "us-central1",
/// GroupPlacementPolicy = new Gcp.Compute.Inputs.ResourcePolicyGroupPlacementPolicyArgs
/// {
/// VmCount = 2,
/// Collocation = "COLLOCATED",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := compute.NewResourcePolicy(ctx, "baz", &compute.ResourcePolicyArgs{
/// Name:   pulumi.String("gce-policy"),
/// Region: pulumi.String("us-central1"),
/// GroupPlacementPolicy: &compute.ResourcePolicyGroupPlacementPolicyArgs{
/// VmCount:     pulumi.Int(2),
/// Collocation: pulumi.String("COLLOCATED"),
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
/// import com.pulumi.gcp.compute.ResourcePolicy;
/// import com.pulumi.gcp.compute.ResourcePolicyArgs;
/// import com.pulumi.gcp.compute.inputs.ResourcePolicyGroupPlacementPolicyArgs;
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
/// var baz = new ResourcePolicy("baz", ResourcePolicyArgs.builder()
/// .name("gce-policy")
/// .region("us-central1")
/// .groupPlacementPolicy(ResourcePolicyGroupPlacementPolicyArgs.builder()
/// .vmCount(2)
/// .collocation("COLLOCATED")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// baz:
/// type: gcp:compute:ResourcePolicy
/// properties:
/// name: gce-policy
/// region: us-central1
/// groupPlacementPolicy:
/// vmCount: 2
/// collocation: COLLOCATED
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Resource Policy Placement Policy Max Distance
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const baz = new gcp.compute.ResourcePolicy("baz", {
/// name: "gce-policy",
/// region: "us-central1",
/// groupPlacementPolicy: {
/// vmCount: 2,
/// collocation: "COLLOCATED",
/// maxDistance: 2,
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// baz = gcp.compute.ResourcePolicy("baz",
/// name="gce-policy",
/// region="us-central1",
/// group_placement_policy={
/// "vm_count": 2,
/// "collocation": "COLLOCATED",
/// "max_distance": 2,
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
/// var baz = new Gcp.Compute.ResourcePolicy("baz", new()
/// {
/// Name = "gce-policy",
/// Region = "us-central1",
/// GroupPlacementPolicy = new Gcp.Compute.Inputs.ResourcePolicyGroupPlacementPolicyArgs
/// {
/// VmCount = 2,
/// Collocation = "COLLOCATED",
/// MaxDistance = 2,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := compute.NewResourcePolicy(ctx, "baz", &compute.ResourcePolicyArgs{
/// Name:   pulumi.String("gce-policy"),
/// Region: pulumi.String("us-central1"),
/// GroupPlacementPolicy: &compute.ResourcePolicyGroupPlacementPolicyArgs{
/// VmCount:     pulumi.Int(2),
/// Collocation: pulumi.String("COLLOCATED"),
/// MaxDistance: pulumi.Int(2),
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
/// import com.pulumi.gcp.compute.ResourcePolicy;
/// import com.pulumi.gcp.compute.ResourcePolicyArgs;
/// import com.pulumi.gcp.compute.inputs.ResourcePolicyGroupPlacementPolicyArgs;
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
/// var baz = new ResourcePolicy("baz", ResourcePolicyArgs.builder()
/// .name("gce-policy")
/// .region("us-central1")
/// .groupPlacementPolicy(ResourcePolicyGroupPlacementPolicyArgs.builder()
/// .vmCount(2)
/// .collocation("COLLOCATED")
/// .maxDistance(2)
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// baz:
/// type: gcp:compute:ResourcePolicy
/// properties:
/// name: gce-policy
/// region: us-central1
/// groupPlacementPolicy:
/// vmCount: 2
/// collocation: COLLOCATED
/// maxDistance: 2
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Resource Policy Instance Schedule Policy
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const hourly = new gcp.compute.ResourcePolicy("hourly", {
/// name: "gce-policy",
/// region: "us-central1",
/// description: "Start and stop instances",
/// instanceSchedulePolicy: {
/// vmStartSchedule: {
/// schedule: "0 * * * *",
/// },
/// vmStopSchedule: {
/// schedule: "15 * * * *",
/// },
/// timeZone: "US/Central",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// hourly = gcp.compute.ResourcePolicy("hourly",
/// name="gce-policy",
/// region="us-central1",
/// description="Start and stop instances",
/// instance_schedule_policy={
/// "vm_start_schedule": {
/// "schedule": "0 * * * *",
/// },
/// "vm_stop_schedule": {
/// "schedule": "15 * * * *",
/// },
/// "time_zone": "US/Central",
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
/// var hourly = new Gcp.Compute.ResourcePolicy("hourly", new()
/// {
/// Name = "gce-policy",
/// Region = "us-central1",
/// Description = "Start and stop instances",
/// InstanceSchedulePolicy = new Gcp.Compute.Inputs.ResourcePolicyInstanceSchedulePolicyArgs
/// {
/// VmStartSchedule = new Gcp.Compute.Inputs.ResourcePolicyInstanceSchedulePolicyVmStartScheduleArgs
/// {
/// Schedule = "0 * * * *",
/// },
/// VmStopSchedule = new Gcp.Compute.Inputs.ResourcePolicyInstanceSchedulePolicyVmStopScheduleArgs
/// {
/// Schedule = "15 * * * *",
/// },
/// TimeZone = "US/Central",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := compute.NewResourcePolicy(ctx, "hourly", &compute.ResourcePolicyArgs{
/// Name:        pulumi.String("gce-policy"),
/// Region:      pulumi.String("us-central1"),
/// Description: pulumi.String("Start and stop instances"),
/// InstanceSchedulePolicy: &compute.ResourcePolicyInstanceSchedulePolicyArgs{
/// VmStartSchedule: &compute.ResourcePolicyInstanceSchedulePolicyVmStartScheduleArgs{
/// Schedule: pulumi.String("0 * * * *"),
/// },
/// VmStopSchedule: &compute.ResourcePolicyInstanceSchedulePolicyVmStopScheduleArgs{
/// Schedule: pulumi.String("15 * * * *"),
/// },
/// TimeZone: pulumi.String("US/Central"),
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
/// import com.pulumi.gcp.compute.ResourcePolicy;
/// import com.pulumi.gcp.compute.ResourcePolicyArgs;
/// import com.pulumi.gcp.compute.inputs.ResourcePolicyInstanceSchedulePolicyArgs;
/// import com.pulumi.gcp.compute.inputs.ResourcePolicyInstanceSchedulePolicyVmStartScheduleArgs;
/// import com.pulumi.gcp.compute.inputs.ResourcePolicyInstanceSchedulePolicyVmStopScheduleArgs;
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
/// var hourly = new ResourcePolicy("hourly", ResourcePolicyArgs.builder()
/// .name("gce-policy")
/// .region("us-central1")
/// .description("Start and stop instances")
/// .instanceSchedulePolicy(ResourcePolicyInstanceSchedulePolicyArgs.builder()
/// .vmStartSchedule(ResourcePolicyInstanceSchedulePolicyVmStartScheduleArgs.builder()
/// .schedule("0 * * * *")
/// .build())
/// .vmStopSchedule(ResourcePolicyInstanceSchedulePolicyVmStopScheduleArgs.builder()
/// .schedule("15 * * * *")
/// .build())
/// .timeZone("US/Central")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// hourly:
/// type: gcp:compute:ResourcePolicy
/// properties:
/// name: gce-policy
/// region: us-central1
/// description: Start and stop instances
/// instanceSchedulePolicy:
/// vmStartSchedule:
/// schedule: 0 * * * *
/// vmStopSchedule:
/// schedule: 15 * * * *
/// timeZone: US/Central
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Resource Policy Snapshot Schedule Chain Name
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const hourly = new gcp.compute.ResourcePolicy("hourly", {
/// name: "gce-policy",
/// region: "us-central1",
/// description: "chain name snapshot",
/// snapshotSchedulePolicy: {
/// schedule: {
/// hourlySchedule: {
/// hoursInCycle: 20,
/// startTime: "23:00",
/// },
/// },
/// retentionPolicy: {
/// maxRetentionDays: 14,
/// onSourceDiskDelete: "KEEP_AUTO_SNAPSHOTS",
/// },
/// snapshotProperties: {
/// labels: {
/// my_label: "value",
/// },
/// storageLocations: "us",
/// guestFlush: true,
/// chainName: "test-schedule-chain-name",
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// hourly = gcp.compute.ResourcePolicy("hourly",
/// name="gce-policy",
/// region="us-central1",
/// description="chain name snapshot",
/// snapshot_schedule_policy={
/// "schedule": {
/// "hourly_schedule": {
/// "hours_in_cycle": 20,
/// "start_time": "23:00",
/// },
/// },
/// "retention_policy": {
/// "max_retention_days": 14,
/// "on_source_disk_delete": "KEEP_AUTO_SNAPSHOTS",
/// },
/// "snapshot_properties": {
/// "labels": {
/// "my_label": "value",
/// },
/// "storage_locations": "us",
/// "guest_flush": True,
/// "chain_name": "test-schedule-chain-name",
/// },
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
/// var hourly = new Gcp.Compute.ResourcePolicy("hourly", new()
/// {
/// Name = "gce-policy",
/// Region = "us-central1",
/// Description = "chain name snapshot",
/// SnapshotSchedulePolicy = new Gcp.Compute.Inputs.ResourcePolicySnapshotSchedulePolicyArgs
/// {
/// Schedule = new Gcp.Compute.Inputs.ResourcePolicySnapshotSchedulePolicyScheduleArgs
/// {
/// HourlySchedule = new Gcp.Compute.Inputs.ResourcePolicySnapshotSchedulePolicyScheduleHourlyScheduleArgs
/// {
/// HoursInCycle = 20,
/// StartTime = "23:00",
/// },
/// },
/// RetentionPolicy = new Gcp.Compute.Inputs.ResourcePolicySnapshotSchedulePolicyRetentionPolicyArgs
/// {
/// MaxRetentionDays = 14,
/// OnSourceDiskDelete = "KEEP_AUTO_SNAPSHOTS",
/// },
/// SnapshotProperties = new Gcp.Compute.Inputs.ResourcePolicySnapshotSchedulePolicySnapshotPropertiesArgs
/// {
/// Labels =
/// {
/// { "my_label", "value" },
/// },
/// StorageLocations = "us",
/// GuestFlush = true,
/// ChainName = "test-schedule-chain-name",
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
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := compute.NewResourcePolicy(ctx, "hourly", &compute.ResourcePolicyArgs{
/// Name:        pulumi.String("gce-policy"),
/// Region:      pulumi.String("us-central1"),
/// Description: pulumi.String("chain name snapshot"),
/// SnapshotSchedulePolicy: &compute.ResourcePolicySnapshotSchedulePolicyArgs{
/// Schedule: &compute.ResourcePolicySnapshotSchedulePolicyScheduleArgs{
/// HourlySchedule: &compute.ResourcePolicySnapshotSchedulePolicyScheduleHourlyScheduleArgs{
/// HoursInCycle: pulumi.Int(20),
/// StartTime:    pulumi.String("23:00"),
/// },
/// },
/// RetentionPolicy: &compute.ResourcePolicySnapshotSchedulePolicyRetentionPolicyArgs{
/// MaxRetentionDays:   pulumi.Int(14),
/// OnSourceDiskDelete: pulumi.String("KEEP_AUTO_SNAPSHOTS"),
/// },
/// SnapshotProperties: &compute.ResourcePolicySnapshotSchedulePolicySnapshotPropertiesArgs{
/// Labels: pulumi.StringMap{
/// "my_label": pulumi.String("value"),
/// },
/// StorageLocations: pulumi.String("us"),
/// GuestFlush:       pulumi.Bool(true),
/// ChainName:        pulumi.String("test-schedule-chain-name"),
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
/// import com.pulumi.gcp.compute.ResourcePolicy;
/// import com.pulumi.gcp.compute.ResourcePolicyArgs;
/// import com.pulumi.gcp.compute.inputs.ResourcePolicySnapshotSchedulePolicyArgs;
/// import com.pulumi.gcp.compute.inputs.ResourcePolicySnapshotSchedulePolicyScheduleArgs;
/// import com.pulumi.gcp.compute.inputs.ResourcePolicySnapshotSchedulePolicyScheduleHourlyScheduleArgs;
/// import com.pulumi.gcp.compute.inputs.ResourcePolicySnapshotSchedulePolicyRetentionPolicyArgs;
/// import com.pulumi.gcp.compute.inputs.ResourcePolicySnapshotSchedulePolicySnapshotPropertiesArgs;
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
/// var hourly = new ResourcePolicy("hourly", ResourcePolicyArgs.builder()
/// .name("gce-policy")
/// .region("us-central1")
/// .description("chain name snapshot")
/// .snapshotSchedulePolicy(ResourcePolicySnapshotSchedulePolicyArgs.builder()
/// .schedule(ResourcePolicySnapshotSchedulePolicyScheduleArgs.builder()
/// .hourlySchedule(ResourcePolicySnapshotSchedulePolicyScheduleHourlyScheduleArgs.builder()
/// .hoursInCycle(20)
/// .startTime("23:00")
/// .build())
/// .build())
/// .retentionPolicy(ResourcePolicySnapshotSchedulePolicyRetentionPolicyArgs.builder()
/// .maxRetentionDays(14)
/// .onSourceDiskDelete("KEEP_AUTO_SNAPSHOTS")
/// .build())
/// .snapshotProperties(ResourcePolicySnapshotSchedulePolicySnapshotPropertiesArgs.builder()
/// .labels(Map.of("my_label", "value"))
/// .storageLocations("us")
/// .guestFlush(true)
/// .chainName("test-schedule-chain-name")
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// hourly:
/// type: gcp:compute:ResourcePolicy
/// properties:
/// name: gce-policy
/// region: us-central1
/// description: chain name snapshot
/// snapshotSchedulePolicy:
/// schedule:
/// hourlySchedule:
/// hoursInCycle: 20
/// startTime: 23:00
/// retentionPolicy:
/// maxRetentionDays: 14
/// onSourceDiskDelete: KEEP_AUTO_SNAPSHOTS
/// snapshotProperties:
/// labels:
/// my_label: value
/// storageLocations: us
/// guestFlush: true
/// chainName: test-schedule-chain-name
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Resource Policy Consistency Group
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const cgroup = new gcp.compute.ResourcePolicy("cgroup", {
/// name: "gce-policy",
/// region: "europe-west1",
/// diskConsistencyGroupPolicy: {
/// enabled: true,
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// cgroup = gcp.compute.ResourcePolicy("cgroup",
/// name="gce-policy",
/// region="europe-west1",
/// disk_consistency_group_policy={
/// "enabled": True,
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
/// var cgroup = new Gcp.Compute.ResourcePolicy("cgroup", new()
/// {
/// Name = "gce-policy",
/// Region = "europe-west1",
/// DiskConsistencyGroupPolicy = new Gcp.Compute.Inputs.ResourcePolicyDiskConsistencyGroupPolicyArgs
/// {
/// Enabled = true,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := compute.NewResourcePolicy(ctx, "cgroup", &compute.ResourcePolicyArgs{
/// Name:   pulumi.String("gce-policy"),
/// Region: pulumi.String("europe-west1"),
/// DiskConsistencyGroupPolicy: &compute.ResourcePolicyDiskConsistencyGroupPolicyArgs{
/// Enabled: pulumi.Bool(true),
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
/// import com.pulumi.gcp.compute.ResourcePolicy;
/// import com.pulumi.gcp.compute.ResourcePolicyArgs;
/// import com.pulumi.gcp.compute.inputs.ResourcePolicyDiskConsistencyGroupPolicyArgs;
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
/// var cgroup = new ResourcePolicy("cgroup", ResourcePolicyArgs.builder()
/// .name("gce-policy")
/// .region("europe-west1")
/// .diskConsistencyGroupPolicy(ResourcePolicyDiskConsistencyGroupPolicyArgs.builder()
/// .enabled(true)
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// cgroup:
/// type: gcp:compute:ResourcePolicy
/// properties:
/// name: gce-policy
/// region: europe-west1
/// diskConsistencyGroupPolicy:
/// enabled: true
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Resource Policy Workload Policy
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const bar = new gcp.compute.ResourcePolicy("bar", {
/// name: "gce-policy",
/// region: "europe-west1",
/// workloadPolicy: {
/// type: "HIGH_AVAILABILITY",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// bar = gcp.compute.ResourcePolicy("bar",
/// name="gce-policy",
/// region="europe-west1",
/// workload_policy={
/// "type": "HIGH_AVAILABILITY",
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
/// var bar = new Gcp.Compute.ResourcePolicy("bar", new()
/// {
/// Name = "gce-policy",
/// Region = "europe-west1",
/// WorkloadPolicy = new Gcp.Compute.Inputs.ResourcePolicyWorkloadPolicyArgs
/// {
/// Type = "HIGH_AVAILABILITY",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := compute.NewResourcePolicy(ctx, "bar", &compute.ResourcePolicyArgs{
/// Name:   pulumi.String("gce-policy"),
/// Region: pulumi.String("europe-west1"),
/// WorkloadPolicy: &compute.ResourcePolicyWorkloadPolicyArgs{
/// Type: pulumi.String("HIGH_AVAILABILITY"),
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
/// import com.pulumi.gcp.compute.ResourcePolicy;
/// import com.pulumi.gcp.compute.ResourcePolicyArgs;
/// import com.pulumi.gcp.compute.inputs.ResourcePolicyWorkloadPolicyArgs;
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
/// var bar = new ResourcePolicy("bar", ResourcePolicyArgs.builder()
/// .name("gce-policy")
/// .region("europe-west1")
/// .workloadPolicy(ResourcePolicyWorkloadPolicyArgs.builder()
/// .type("HIGH_AVAILABILITY")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// bar:
/// type: gcp:compute:ResourcePolicy
/// properties:
/// name: gce-policy
/// region: europe-west1
/// workloadPolicy:
/// type: HIGH_AVAILABILITY
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Resource Policy Workload Policy Accelerator Topology
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const bar = new gcp.compute.ResourcePolicy("bar", {
/// name: "gce-policy",
/// region: "europe-west1",
/// workloadPolicy: {
/// type: "HIGH_THROUGHPUT",
/// acceleratorTopology: "2x2",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// bar = gcp.compute.ResourcePolicy("bar",
/// name="gce-policy",
/// region="europe-west1",
/// workload_policy={
/// "type": "HIGH_THROUGHPUT",
/// "accelerator_topology": "2x2",
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
/// var bar = new Gcp.Compute.ResourcePolicy("bar", new()
/// {
/// Name = "gce-policy",
/// Region = "europe-west1",
/// WorkloadPolicy = new Gcp.Compute.Inputs.ResourcePolicyWorkloadPolicyArgs
/// {
/// Type = "HIGH_THROUGHPUT",
/// AcceleratorTopology = "2x2",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := compute.NewResourcePolicy(ctx, "bar", &compute.ResourcePolicyArgs{
/// Name:   pulumi.String("gce-policy"),
/// Region: pulumi.String("europe-west1"),
/// WorkloadPolicy: &compute.ResourcePolicyWorkloadPolicyArgs{
/// Type:                pulumi.String("HIGH_THROUGHPUT"),
/// AcceleratorTopology: pulumi.String("2x2"),
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
/// import com.pulumi.gcp.compute.ResourcePolicy;
/// import com.pulumi.gcp.compute.ResourcePolicyArgs;
/// import com.pulumi.gcp.compute.inputs.ResourcePolicyWorkloadPolicyArgs;
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
/// var bar = new ResourcePolicy("bar", ResourcePolicyArgs.builder()
/// .name("gce-policy")
/// .region("europe-west1")
/// .workloadPolicy(ResourcePolicyWorkloadPolicyArgs.builder()
/// .type("HIGH_THROUGHPUT")
/// .acceleratorTopology("2x2")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// bar:
/// type: gcp:compute:ResourcePolicy
/// properties:
/// name: gce-policy
/// region: europe-west1
/// workloadPolicy:
/// type: HIGH_THROUGHPUT
/// acceleratorTopology: 2x2
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Resource Policy Workload Policy Max Topology Distance
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const bar = new gcp.compute.ResourcePolicy("bar", {
/// name: "gce-policy",
/// region: "europe-west1",
/// workloadPolicy: {
/// type: "HIGH_THROUGHPUT",
/// maxTopologyDistance: "BLOCK",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// bar = gcp.compute.ResourcePolicy("bar",
/// name="gce-policy",
/// region="europe-west1",
/// workload_policy={
/// "type": "HIGH_THROUGHPUT",
/// "max_topology_distance": "BLOCK",
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
/// var bar = new Gcp.Compute.ResourcePolicy("bar", new()
/// {
/// Name = "gce-policy",
/// Region = "europe-west1",
/// WorkloadPolicy = new Gcp.Compute.Inputs.ResourcePolicyWorkloadPolicyArgs
/// {
/// Type = "HIGH_THROUGHPUT",
/// MaxTopologyDistance = "BLOCK",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := compute.NewResourcePolicy(ctx, "bar", &compute.ResourcePolicyArgs{
/// Name:   pulumi.String("gce-policy"),
/// Region: pulumi.String("europe-west1"),
/// WorkloadPolicy: &compute.ResourcePolicyWorkloadPolicyArgs{
/// Type:                pulumi.String("HIGH_THROUGHPUT"),
/// MaxTopologyDistance: pulumi.String("BLOCK"),
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
/// import com.pulumi.gcp.compute.ResourcePolicy;
/// import com.pulumi.gcp.compute.ResourcePolicyArgs;
/// import com.pulumi.gcp.compute.inputs.ResourcePolicyWorkloadPolicyArgs;
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
/// var bar = new ResourcePolicy("bar", ResourcePolicyArgs.builder()
/// .name("gce-policy")
/// .region("europe-west1")
/// .workloadPolicy(ResourcePolicyWorkloadPolicyArgs.builder()
/// .type("HIGH_THROUGHPUT")
/// .maxTopologyDistance("BLOCK")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// bar:
/// type: gcp:compute:ResourcePolicy
/// properties:
/// name: gce-policy
/// region: europe-west1
/// workloadPolicy:
/// type: HIGH_THROUGHPUT
/// maxTopologyDistance: BLOCK
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Resource Policy Placement Policy Gpu Topology
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const baz = new gcp.compute.ResourcePolicy("baz", {
/// name: "gce-policy",
/// region: "europe-west9",
/// groupPlacementPolicy: {
/// collocation: "COLLOCATED",
/// gpuTopology: "1x72",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// baz = gcp.compute.ResourcePolicy("baz",
/// name="gce-policy",
/// region="europe-west9",
/// group_placement_policy={
/// "collocation": "COLLOCATED",
/// "gpu_topology": "1x72",
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
/// var baz = new Gcp.Compute.ResourcePolicy("baz", new()
/// {
/// Name = "gce-policy",
/// Region = "europe-west9",
/// GroupPlacementPolicy = new Gcp.Compute.Inputs.ResourcePolicyGroupPlacementPolicyArgs
/// {
/// Collocation = "COLLOCATED",
/// GpuTopology = "1x72",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := compute.NewResourcePolicy(ctx, "baz", &compute.ResourcePolicyArgs{
/// Name:   pulumi.String("gce-policy"),
/// Region: pulumi.String("europe-west9"),
/// GroupPlacementPolicy: &compute.ResourcePolicyGroupPlacementPolicyArgs{
/// Collocation: pulumi.String("COLLOCATED"),
/// GpuTopology: pulumi.String("1x72"),
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
/// import com.pulumi.gcp.compute.ResourcePolicy;
/// import com.pulumi.gcp.compute.ResourcePolicyArgs;
/// import com.pulumi.gcp.compute.inputs.ResourcePolicyGroupPlacementPolicyArgs;
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
/// var baz = new ResourcePolicy("baz", ResourcePolicyArgs.builder()
/// .name("gce-policy")
/// .region("europe-west9")
/// .groupPlacementPolicy(ResourcePolicyGroupPlacementPolicyArgs.builder()
/// .collocation("COLLOCATED")
/// .gpuTopology("1x72")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// baz:
/// type: gcp:compute:ResourcePolicy
/// properties:
/// name: gce-policy
/// region: europe-west9
/// groupPlacementPolicy:
/// collocation: COLLOCATED
/// gpuTopology: 1x72
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Resource Policy Placement Policy Tpu Topology
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const baz = new gcp.compute.ResourcePolicy("baz", {
/// name: "gce-policy",
/// region: "us-central1",
/// groupPlacementPolicy: {
/// vmCount: 2,
/// collocation: "COLLOCATED",
/// tpuTopology: "4x4",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// baz = gcp.compute.ResourcePolicy("baz",
/// name="gce-policy",
/// region="us-central1",
/// group_placement_policy={
/// "vm_count": 2,
/// "collocation": "COLLOCATED",
/// "tpu_topology": "4x4",
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
/// var baz = new Gcp.Compute.ResourcePolicy("baz", new()
/// {
/// Name = "gce-policy",
/// Region = "us-central1",
/// GroupPlacementPolicy = new Gcp.Compute.Inputs.ResourcePolicyGroupPlacementPolicyArgs
/// {
/// VmCount = 2,
/// Collocation = "COLLOCATED",
/// TpuTopology = "4x4",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := compute.NewResourcePolicy(ctx, "baz", &compute.ResourcePolicyArgs{
/// Name:   pulumi.String("gce-policy"),
/// Region: pulumi.String("us-central1"),
/// GroupPlacementPolicy: &compute.ResourcePolicyGroupPlacementPolicyArgs{
/// VmCount:     pulumi.Int(2),
/// Collocation: pulumi.String("COLLOCATED"),
/// TpuTopology: pulumi.String("4x4"),
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
/// import com.pulumi.gcp.compute.ResourcePolicy;
/// import com.pulumi.gcp.compute.ResourcePolicyArgs;
/// import com.pulumi.gcp.compute.inputs.ResourcePolicyGroupPlacementPolicyArgs;
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
/// var baz = new ResourcePolicy("baz", ResourcePolicyArgs.builder()
/// .name("gce-policy")
/// .region("us-central1")
/// .groupPlacementPolicy(ResourcePolicyGroupPlacementPolicyArgs.builder()
/// .vmCount(2)
/// .collocation("COLLOCATED")
/// .tpuTopology("4x4")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// baz:
/// type: gcp:compute:ResourcePolicy
/// properties:
/// name: gce-policy
/// region: us-central1
/// groupPlacementPolicy:
/// vmCount: 2
/// collocation: COLLOCATED
/// tpuTopology: 4x4
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ResourcePolicy can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/regions/{{region}}/resourcePolicies/{{name}}`
///
/// * `{{project}}/{{region}}/{{name}}`
///
/// * `{{region}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, ResourcePolicy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/resourcePolicy:ResourcePolicy default projects/{{project}}/regions/{{region}}/resourcePolicies/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/resourcePolicy:ResourcePolicy default {{project}}/{{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/resourcePolicy:ResourcePolicy default {{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/resourcePolicy:ResourcePolicy default {{name}}
/// ```
class ResourcePolicy extends CustomResource {
  /// An optional description of this resource. Provide this property when you create the resource.
  late final Output<String?> description;

  /// Replication consistency group for asynchronous disk replication.
  /// Structure is documented below.
  late final Output<ResourcePolicyDiskConsistencyGroupPolicy?>
      diskConsistencyGroupPolicy;

  /// Resource policy for instances used for placement configuration.
  /// Structure is documented below.
  late final Output<ResourcePolicyGroupPlacementPolicy?> groupPlacementPolicy;

  /// Resource policy for scheduling instance operations.
  /// Structure is documented below.
  late final Output<ResourcePolicyInstanceSchedulePolicy?>
      instanceSchedulePolicy;

  /// The name of the resource, provided by the client when initially creating
  /// the resource. The resource name must be 1-63 characters long, and comply
  /// with RFC1035. Specifically, the name must be 1-63 characters long and
  /// match the regular expression `a-z`? which means the
  /// first character must be a lowercase letter, and all following characters
  /// must be a dash, lowercase letter, or digit, except the last character,
  /// which cannot be a dash.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// Region where resource policy resides.
  late final Output<String> region;

  /// The URI of the created resource.
  late final Output<String> selfLink;

  /// Policy for creating snapshots of persistent disks.
  /// Structure is documented below.
  late final Output<ResourcePolicySnapshotSchedulePolicy?>
      snapshotSchedulePolicy;

  /// Represents the workload policy.
  /// Structure is documented below.
  late final Output<ResourcePolicyWorkloadPolicy?> workloadPolicy;

  ResourcePolicy(
    String name, {
    ResourcePolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:compute/resourcePolicy:ResourcePolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.description = Output.createUnknown<String?>();
    this.diskConsistencyGroupPolicy =
        Output.createUnknown<ResourcePolicyDiskConsistencyGroupPolicy?>();
    this.groupPlacementPolicy =
        Output.createUnknown<ResourcePolicyGroupPlacementPolicy?>();
    this.instanceSchedulePolicy =
        Output.createUnknown<ResourcePolicyInstanceSchedulePolicy?>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.selfLink = Output.createUnknown<String>();
    this.snapshotSchedulePolicy =
        Output.createUnknown<ResourcePolicySnapshotSchedulePolicy?>();
    this.workloadPolicy = Output.createUnknown<ResourcePolicyWorkloadPolicy?>();
  }
}
