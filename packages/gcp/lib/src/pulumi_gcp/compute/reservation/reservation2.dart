import 'package:pulumi/pulumi.dart';
import '../reservation_delete_after_duration/reservation_delete_after_duration.dart';
import '../reservation_reservation_sharing_policy/reservation_reservation_sharing_policy.dart';
import '../reservation_resource_status/reservation_resource_status.dart';
import '../reservation_share_settings/reservation_share_settings.dart';
import '../reservation_specific_reservation/reservation_specific_reservation.dart';
import 'reservation_args2.dart';

/// Represents a reservation resource. A reservation ensures that capacity is
/// held in a specific zone even if the reserved VMs are not running.
///
/// Reservations apply only to Compute Engine, Cloud Dataproc, and Google
/// Kubernetes Engine VM usage.Reservations do not apply to `f1-micro` or
/// `g1-small` machine types, preemptible VMs, sole tenant nodes, or other
/// services not listed above
/// like Cloud SQL and Dataflow.
///
///
/// To get more information about Reservation, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/reservations)
/// * How-to Guides
/// * [Reserving zonal resources](https://cloud.google.com/compute/docs/instances/reserving-zonal-resources)
///
/// ## Example Usage
///
/// ### Reservation Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const gceReservation = new gcp.compute.Reservation("gce_reservation", {
/// name: "gce-reservation",
/// zone: "us-central1-a",
/// specificReservation: {
/// count: 1,
/// instanceProperties: {
/// minCpuPlatform: "Intel Cascade Lake",
/// machineType: "n2-standard-2",
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// gce_reservation = gcp.compute.Reservation("gce_reservation",
/// name="gce-reservation",
/// zone="us-central1-a",
/// specific_reservation={
/// "count": 1,
/// "instance_properties": {
/// "min_cpu_platform": "Intel Cascade Lake",
/// "machine_type": "n2-standard-2",
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
/// var gceReservation = new Gcp.Compute.Reservation("gce_reservation", new()
/// {
/// Name = "gce-reservation",
/// Zone = "us-central1-a",
/// SpecificReservation = new Gcp.Compute.Inputs.ReservationSpecificReservationArgs
/// {
/// Count = 1,
/// InstanceProperties = new Gcp.Compute.Inputs.ReservationSpecificReservationInstancePropertiesArgs
/// {
/// MinCpuPlatform = "Intel Cascade Lake",
/// MachineType = "n2-standard-2",
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
/// _, err := compute.NewReservation(ctx, "gce_reservation", &compute.ReservationArgs{
/// Name: pulumi.String("gce-reservation"),
/// Zone: pulumi.String("us-central1-a"),
/// SpecificReservation: &compute.ReservationSpecificReservationArgs{
/// Count: pulumi.Int(1),
/// InstanceProperties: &compute.ReservationSpecificReservationInstancePropertiesArgs{
/// MinCpuPlatform: pulumi.String("Intel Cascade Lake"),
/// MachineType:    pulumi.String("n2-standard-2"),
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
/// import com.pulumi.gcp.compute.Reservation;
/// import com.pulumi.gcp.compute.ReservationArgs;
/// import com.pulumi.gcp.compute.inputs.ReservationSpecificReservationArgs;
/// import com.pulumi.gcp.compute.inputs.ReservationSpecificReservationInstancePropertiesArgs;
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
/// var gceReservation = new Reservation("gceReservation", ReservationArgs.builder()
/// .name("gce-reservation")
/// .zone("us-central1-a")
/// .specificReservation(ReservationSpecificReservationArgs.builder()
/// .count(1)
/// .instanceProperties(ReservationSpecificReservationInstancePropertiesArgs.builder()
/// .minCpuPlatform("Intel Cascade Lake")
/// .machineType("n2-standard-2")
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// gceReservation:
/// type: gcp:compute:Reservation
/// name: gce_reservation
/// properties:
/// name: gce-reservation
/// zone: us-central1-a
/// specificReservation:
/// count: 1
/// instanceProperties:
/// minCpuPlatform: Intel Cascade Lake
/// machineType: n2-standard-2
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Reservation Basic Beta
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const gceReservation = new gcp.compute.Reservation("gce_reservation", {
/// name: "gce-reservation",
/// zone: "us-central1-a",
/// specificReservation: {
/// count: 1,
/// instanceProperties: {
/// minCpuPlatform: "Intel Cascade Lake",
/// machineType: "n2-standard-2",
/// maintenanceInterval: "PERIODIC",
/// },
/// },
/// enableEmergentMaintenance: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// gce_reservation = gcp.compute.Reservation("gce_reservation",
/// name="gce-reservation",
/// zone="us-central1-a",
/// specific_reservation={
/// "count": 1,
/// "instance_properties": {
/// "min_cpu_platform": "Intel Cascade Lake",
/// "machine_type": "n2-standard-2",
/// "maintenance_interval": "PERIODIC",
/// },
/// },
/// enable_emergent_maintenance=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var gceReservation = new Gcp.Compute.Reservation("gce_reservation", new()
/// {
/// Name = "gce-reservation",
/// Zone = "us-central1-a",
/// SpecificReservation = new Gcp.Compute.Inputs.ReservationSpecificReservationArgs
/// {
/// Count = 1,
/// InstanceProperties = new Gcp.Compute.Inputs.ReservationSpecificReservationInstancePropertiesArgs
/// {
/// MinCpuPlatform = "Intel Cascade Lake",
/// MachineType = "n2-standard-2",
/// MaintenanceInterval = "PERIODIC",
/// },
/// },
/// EnableEmergentMaintenance = true,
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
/// _, err := compute.NewReservation(ctx, "gce_reservation", &compute.ReservationArgs{
/// Name: pulumi.String("gce-reservation"),
/// Zone: pulumi.String("us-central1-a"),
/// SpecificReservation: &compute.ReservationSpecificReservationArgs{
/// Count: pulumi.Int(1),
/// InstanceProperties: &compute.ReservationSpecificReservationInstancePropertiesArgs{
/// MinCpuPlatform:      pulumi.String("Intel Cascade Lake"),
/// MachineType:         pulumi.String("n2-standard-2"),
/// MaintenanceInterval: pulumi.String("PERIODIC"),
/// },
/// },
/// EnableEmergentMaintenance: pulumi.Bool(true),
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
/// import com.pulumi.gcp.compute.Reservation;
/// import com.pulumi.gcp.compute.ReservationArgs;
/// import com.pulumi.gcp.compute.inputs.ReservationSpecificReservationArgs;
/// import com.pulumi.gcp.compute.inputs.ReservationSpecificReservationInstancePropertiesArgs;
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
/// var gceReservation = new Reservation("gceReservation", ReservationArgs.builder()
/// .name("gce-reservation")
/// .zone("us-central1-a")
/// .specificReservation(ReservationSpecificReservationArgs.builder()
/// .count(1)
/// .instanceProperties(ReservationSpecificReservationInstancePropertiesArgs.builder()
/// .minCpuPlatform("Intel Cascade Lake")
/// .machineType("n2-standard-2")
/// .maintenanceInterval("PERIODIC")
/// .build())
/// .build())
/// .enableEmergentMaintenance(true)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// gceReservation:
/// type: gcp:compute:Reservation
/// name: gce_reservation
/// properties:
/// name: gce-reservation
/// zone: us-central1-a
/// specificReservation:
/// count: 1
/// instanceProperties:
/// minCpuPlatform: Intel Cascade Lake
/// machineType: n2-standard-2
/// maintenanceInterval: PERIODIC
/// enableEmergentMaintenance: true
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Reservation Source Instance Template
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myImage = gcp.compute.getImage({
/// family: "debian-11",
/// project: "debian-cloud",
/// });
/// const foobar = new gcp.compute.InstanceTemplate("foobar", {
/// name: "instance-template",
/// machineType: "n2-standard-2",
/// canIpForward: false,
/// tags: [
/// "foo",
/// "bar",
/// ],
/// disks: [{
/// sourceImage: myImage.then(myImage => myImage.selfLink),
/// autoDelete: true,
/// boot: true,
/// }],
/// networkInterfaces: [{
/// network: "default",
/// }],
/// scheduling: {
/// preemptible: false,
/// automaticRestart: true,
/// },
/// metadata: {
/// foo: "bar",
/// },
/// serviceAccount: {
/// scopes: [
/// "userinfo-email",
/// "compute-ro",
/// "storage-ro",
/// ],
/// },
/// labels: {
/// my_label: "foobar",
/// },
/// });
/// const gceReservationSourceInstanceTemplate = new gcp.compute.Reservation("gce_reservation_source_instance_template", {
/// name: "gce-reservation-source-instance-template",
/// zone: "us-central1-a",
/// specificReservation: {
/// count: 1,
/// sourceInstanceTemplate: foobar.selfLink,
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_image = gcp.compute.get_image(family="debian-11",
/// project="debian-cloud")
/// foobar = gcp.compute.InstanceTemplate("foobar",
/// name="instance-template",
/// machine_type="n2-standard-2",
/// can_ip_forward=False,
/// tags=[
/// "foo",
/// "bar",
/// ],
/// disks=[{
/// "source_image": my_image.self_link,
/// "auto_delete": True,
/// "boot": True,
/// }],
/// network_interfaces=[{
/// "network": "default",
/// }],
/// scheduling={
/// "preemptible": False,
/// "automatic_restart": True,
/// },
/// metadata={
/// "foo": "bar",
/// },
/// service_account={
/// "scopes": [
/// "userinfo-email",
/// "compute-ro",
/// "storage-ro",
/// ],
/// },
/// labels={
/// "my_label": "foobar",
/// })
/// gce_reservation_source_instance_template = gcp.compute.Reservation("gce_reservation_source_instance_template",
/// name="gce-reservation-source-instance-template",
/// zone="us-central1-a",
/// specific_reservation={
/// "count": 1,
/// "source_instance_template": foobar.self_link,
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
/// var myImage = Gcp.Compute.GetImage.Invoke(new()
/// {
/// Family = "debian-11",
/// Project = "debian-cloud",
/// });
///
/// var foobar = new Gcp.Compute.InstanceTemplate("foobar", new()
/// {
/// Name = "instance-template",
/// MachineType = "n2-standard-2",
/// CanIpForward = false,
/// Tags = new[]
/// {
/// "foo",
/// "bar",
/// },
/// Disks = new[]
/// {
/// new Gcp.Compute.Inputs.InstanceTemplateDiskArgs
/// {
/// SourceImage = myImage.Apply(getImageResult => getImageResult.SelfLink),
/// AutoDelete = true,
/// Boot = true,
/// },
/// },
/// NetworkInterfaces = new[]
/// {
/// new Gcp.Compute.Inputs.InstanceTemplateNetworkInterfaceArgs
/// {
/// Network = "default",
/// },
/// },
/// Scheduling = new Gcp.Compute.Inputs.InstanceTemplateSchedulingArgs
/// {
/// Preemptible = false,
/// AutomaticRestart = true,
/// },
/// Metadata =
/// {
/// { "foo", "bar" },
/// },
/// ServiceAccount = new Gcp.Compute.Inputs.InstanceTemplateServiceAccountArgs
/// {
/// Scopes = new[]
/// {
/// "userinfo-email",
/// "compute-ro",
/// "storage-ro",
/// },
/// },
/// Labels =
/// {
/// { "my_label", "foobar" },
/// },
/// });
///
/// var gceReservationSourceInstanceTemplate = new Gcp.Compute.Reservation("gce_reservation_source_instance_template", new()
/// {
/// Name = "gce-reservation-source-instance-template",
/// Zone = "us-central1-a",
/// SpecificReservation = new Gcp.Compute.Inputs.ReservationSpecificReservationArgs
/// {
/// Count = 1,
/// SourceInstanceTemplate = foobar.SelfLink,
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
/// myImage, err := compute.LookupImage(ctx, &compute.LookupImageArgs{
/// Family:  pulumi.StringRef("debian-11"),
/// Project: pulumi.StringRef("debian-cloud"),
/// }, nil)
/// if err != nil {
/// return err
/// }
/// foobar, err := compute.NewInstanceTemplate(ctx, "foobar", &compute.InstanceTemplateArgs{
/// Name:         pulumi.String("instance-template"),
/// MachineType:  pulumi.String("n2-standard-2"),
/// CanIpForward: pulumi.Bool(false),
/// Tags: pulumi.StringArray{
/// pulumi.String("foo"),
/// pulumi.String("bar"),
/// },
/// Disks: compute.InstanceTemplateDiskArray{
/// &compute.InstanceTemplateDiskArgs{
/// SourceImage: pulumi.String(myImage.SelfLink),
/// AutoDelete:  pulumi.Bool(true),
/// Boot:        pulumi.Bool(true),
/// },
/// },
/// NetworkInterfaces: compute.InstanceTemplateNetworkInterfaceArray{
/// &compute.InstanceTemplateNetworkInterfaceArgs{
/// Network: pulumi.String("default"),
/// },
/// },
/// Scheduling: &compute.InstanceTemplateSchedulingArgs{
/// Preemptible:      pulumi.Bool(false),
/// AutomaticRestart: pulumi.Bool(true),
/// },
/// Metadata: pulumi.StringMap{
/// "foo": pulumi.String("bar"),
/// },
/// ServiceAccount: &compute.InstanceTemplateServiceAccountArgs{
/// Scopes: pulumi.StringArray{
/// pulumi.String("userinfo-email"),
/// pulumi.String("compute-ro"),
/// pulumi.String("storage-ro"),
/// },
/// },
/// Labels: pulumi.StringMap{
/// "my_label": pulumi.String("foobar"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = compute.NewReservation(ctx, "gce_reservation_source_instance_template", &compute.ReservationArgs{
/// Name: pulumi.String("gce-reservation-source-instance-template"),
/// Zone: pulumi.String("us-central1-a"),
/// SpecificReservation: &compute.ReservationSpecificReservationArgs{
/// Count:                  pulumi.Int(1),
/// SourceInstanceTemplate: foobar.SelfLink,
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
/// import com.pulumi.gcp.compute.inputs.GetImageArgs;
/// import com.pulumi.gcp.compute.InstanceTemplate;
/// import com.pulumi.gcp.compute.InstanceTemplateArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceTemplateDiskArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceTemplateNetworkInterfaceArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceTemplateSchedulingArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceTemplateServiceAccountArgs;
/// import com.pulumi.gcp.compute.Reservation;
/// import com.pulumi.gcp.compute.ReservationArgs;
/// import com.pulumi.gcp.compute.inputs.ReservationSpecificReservationArgs;
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
/// final var myImage = ComputeFunctions.getImage(GetImageArgs.builder()
/// .family("debian-11")
/// .project("debian-cloud")
/// .build());
///
/// var foobar = new InstanceTemplate("foobar", InstanceTemplateArgs.builder()
/// .name("instance-template")
/// .machineType("n2-standard-2")
/// .canIpForward(false)
/// .tags(
/// "foo",
/// "bar")
/// .disks(InstanceTemplateDiskArgs.builder()
/// .sourceImage(myImage.selfLink())
/// .autoDelete(true)
/// .boot(true)
/// .build())
/// .networkInterfaces(InstanceTemplateNetworkInterfaceArgs.builder()
/// .network("default")
/// .build())
/// .scheduling(InstanceTemplateSchedulingArgs.builder()
/// .preemptible(false)
/// .automaticRestart(true)
/// .build())
/// .metadata(Map.of("foo", "bar"))
/// .serviceAccount(InstanceTemplateServiceAccountArgs.builder()
/// .scopes(
/// "userinfo-email",
/// "compute-ro",
/// "storage-ro")
/// .build())
/// .labels(Map.of("my_label", "foobar"))
/// .build());
///
/// var gceReservationSourceInstanceTemplate = new Reservation("gceReservationSourceInstanceTemplate", ReservationArgs.builder()
/// .name("gce-reservation-source-instance-template")
/// .zone("us-central1-a")
/// .specificReservation(ReservationSpecificReservationArgs.builder()
/// .count(1)
/// .sourceInstanceTemplate(foobar.selfLink())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// foobar:
/// type: gcp:compute:InstanceTemplate
/// properties:
/// name: instance-template
/// machineType: n2-standard-2
/// canIpForward: false
/// tags:
/// - foo
/// - bar
/// disks:
/// - sourceImage: ${myImage.selfLink}
/// autoDelete: true
/// boot: true
/// networkInterfaces:
/// - network: default
/// scheduling:
/// preemptible: false
/// automaticRestart: true
/// metadata:
/// foo: bar
/// serviceAccount:
/// scopes:
/// - userinfo-email
/// - compute-ro
/// - storage-ro
/// labels:
/// my_label: foobar
/// gceReservationSourceInstanceTemplate:
/// type: gcp:compute:Reservation
/// name: gce_reservation_source_instance_template
/// properties:
/// name: gce-reservation-source-instance-template
/// zone: us-central1-a
/// specificReservation:
/// count: 1
/// sourceInstanceTemplate: ${foobar.selfLink}
/// variables:
/// myImage:
/// fn::invoke:
/// function: gcp:compute:getImage
/// arguments:
/// family: debian-11
/// project: debian-cloud
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Reservation Sharing Policy
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myImage = gcp.compute.getImage({
/// family: "debian-11",
/// project: "debian-cloud",
/// });
/// const foobar = new gcp.compute.InstanceTemplate("foobar", {
/// name: "instance-template",
/// machineType: "g2-standard-4",
/// canIpForward: false,
/// tags: [
/// "foo",
/// "bar",
/// ],
/// disks: [{
/// sourceImage: myImage.then(myImage => myImage.selfLink),
/// autoDelete: true,
/// boot: true,
/// }],
/// networkInterfaces: [{
/// network: "default",
/// }],
/// scheduling: {
/// preemptible: false,
/// automaticRestart: true,
/// },
/// metadata: {
/// foo: "bar",
/// },
/// serviceAccount: {
/// scopes: [
/// "userinfo-email",
/// "compute-ro",
/// "storage-ro",
/// ],
/// },
/// labels: {
/// my_label: "foobar",
/// },
/// });
/// const gceReservationSharingPolicy = new gcp.compute.Reservation("gce_reservation_sharing_policy", {
/// name: "gce-reservation-sharing-policy",
/// zone: "us-central1-b",
/// specificReservation: {
/// count: 2,
/// sourceInstanceTemplate: foobar.selfLink,
/// },
/// reservationSharingPolicy: {
/// serviceShareType: "ALLOW_ALL",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_image = gcp.compute.get_image(family="debian-11",
/// project="debian-cloud")
/// foobar = gcp.compute.InstanceTemplate("foobar",
/// name="instance-template",
/// machine_type="g2-standard-4",
/// can_ip_forward=False,
/// tags=[
/// "foo",
/// "bar",
/// ],
/// disks=[{
/// "source_image": my_image.self_link,
/// "auto_delete": True,
/// "boot": True,
/// }],
/// network_interfaces=[{
/// "network": "default",
/// }],
/// scheduling={
/// "preemptible": False,
/// "automatic_restart": True,
/// },
/// metadata={
/// "foo": "bar",
/// },
/// service_account={
/// "scopes": [
/// "userinfo-email",
/// "compute-ro",
/// "storage-ro",
/// ],
/// },
/// labels={
/// "my_label": "foobar",
/// })
/// gce_reservation_sharing_policy = gcp.compute.Reservation("gce_reservation_sharing_policy",
/// name="gce-reservation-sharing-policy",
/// zone="us-central1-b",
/// specific_reservation={
/// "count": 2,
/// "source_instance_template": foobar.self_link,
/// },
/// reservation_sharing_policy={
/// "service_share_type": "ALLOW_ALL",
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
/// var myImage = Gcp.Compute.GetImage.Invoke(new()
/// {
/// Family = "debian-11",
/// Project = "debian-cloud",
/// });
///
/// var foobar = new Gcp.Compute.InstanceTemplate("foobar", new()
/// {
/// Name = "instance-template",
/// MachineType = "g2-standard-4",
/// CanIpForward = false,
/// Tags = new[]
/// {
/// "foo",
/// "bar",
/// },
/// Disks = new[]
/// {
/// new Gcp.Compute.Inputs.InstanceTemplateDiskArgs
/// {
/// SourceImage = myImage.Apply(getImageResult => getImageResult.SelfLink),
/// AutoDelete = true,
/// Boot = true,
/// },
/// },
/// NetworkInterfaces = new[]
/// {
/// new Gcp.Compute.Inputs.InstanceTemplateNetworkInterfaceArgs
/// {
/// Network = "default",
/// },
/// },
/// Scheduling = new Gcp.Compute.Inputs.InstanceTemplateSchedulingArgs
/// {
/// Preemptible = false,
/// AutomaticRestart = true,
/// },
/// Metadata =
/// {
/// { "foo", "bar" },
/// },
/// ServiceAccount = new Gcp.Compute.Inputs.InstanceTemplateServiceAccountArgs
/// {
/// Scopes = new[]
/// {
/// "userinfo-email",
/// "compute-ro",
/// "storage-ro",
/// },
/// },
/// Labels =
/// {
/// { "my_label", "foobar" },
/// },
/// });
///
/// var gceReservationSharingPolicy = new Gcp.Compute.Reservation("gce_reservation_sharing_policy", new()
/// {
/// Name = "gce-reservation-sharing-policy",
/// Zone = "us-central1-b",
/// SpecificReservation = new Gcp.Compute.Inputs.ReservationSpecificReservationArgs
/// {
/// Count = 2,
/// SourceInstanceTemplate = foobar.SelfLink,
/// },
/// ReservationSharingPolicy = new Gcp.Compute.Inputs.ReservationReservationSharingPolicyArgs
/// {
/// ServiceShareType = "ALLOW_ALL",
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
/// myImage, err := compute.LookupImage(ctx, &compute.LookupImageArgs{
/// Family:  pulumi.StringRef("debian-11"),
/// Project: pulumi.StringRef("debian-cloud"),
/// }, nil)
/// if err != nil {
/// return err
/// }
/// foobar, err := compute.NewInstanceTemplate(ctx, "foobar", &compute.InstanceTemplateArgs{
/// Name:         pulumi.String("instance-template"),
/// MachineType:  pulumi.String("g2-standard-4"),
/// CanIpForward: pulumi.Bool(false),
/// Tags: pulumi.StringArray{
/// pulumi.String("foo"),
/// pulumi.String("bar"),
/// },
/// Disks: compute.InstanceTemplateDiskArray{
/// &compute.InstanceTemplateDiskArgs{
/// SourceImage: pulumi.String(myImage.SelfLink),
/// AutoDelete:  pulumi.Bool(true),
/// Boot:        pulumi.Bool(true),
/// },
/// },
/// NetworkInterfaces: compute.InstanceTemplateNetworkInterfaceArray{
/// &compute.InstanceTemplateNetworkInterfaceArgs{
/// Network: pulumi.String("default"),
/// },
/// },
/// Scheduling: &compute.InstanceTemplateSchedulingArgs{
/// Preemptible:      pulumi.Bool(false),
/// AutomaticRestart: pulumi.Bool(true),
/// },
/// Metadata: pulumi.StringMap{
/// "foo": pulumi.String("bar"),
/// },
/// ServiceAccount: &compute.InstanceTemplateServiceAccountArgs{
/// Scopes: pulumi.StringArray{
/// pulumi.String("userinfo-email"),
/// pulumi.String("compute-ro"),
/// pulumi.String("storage-ro"),
/// },
/// },
/// Labels: pulumi.StringMap{
/// "my_label": pulumi.String("foobar"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = compute.NewReservation(ctx, "gce_reservation_sharing_policy", &compute.ReservationArgs{
/// Name: pulumi.String("gce-reservation-sharing-policy"),
/// Zone: pulumi.String("us-central1-b"),
/// SpecificReservation: &compute.ReservationSpecificReservationArgs{
/// Count:                  pulumi.Int(2),
/// SourceInstanceTemplate: foobar.SelfLink,
/// },
/// ReservationSharingPolicy: &compute.ReservationReservationSharingPolicyArgs{
/// ServiceShareType: pulumi.String("ALLOW_ALL"),
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
/// import com.pulumi.gcp.compute.inputs.GetImageArgs;
/// import com.pulumi.gcp.compute.InstanceTemplate;
/// import com.pulumi.gcp.compute.InstanceTemplateArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceTemplateDiskArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceTemplateNetworkInterfaceArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceTemplateSchedulingArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceTemplateServiceAccountArgs;
/// import com.pulumi.gcp.compute.Reservation;
/// import com.pulumi.gcp.compute.ReservationArgs;
/// import com.pulumi.gcp.compute.inputs.ReservationSpecificReservationArgs;
/// import com.pulumi.gcp.compute.inputs.ReservationReservationSharingPolicyArgs;
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
/// final var myImage = ComputeFunctions.getImage(GetImageArgs.builder()
/// .family("debian-11")
/// .project("debian-cloud")
/// .build());
///
/// var foobar = new InstanceTemplate("foobar", InstanceTemplateArgs.builder()
/// .name("instance-template")
/// .machineType("g2-standard-4")
/// .canIpForward(false)
/// .tags(
/// "foo",
/// "bar")
/// .disks(InstanceTemplateDiskArgs.builder()
/// .sourceImage(myImage.selfLink())
/// .autoDelete(true)
/// .boot(true)
/// .build())
/// .networkInterfaces(InstanceTemplateNetworkInterfaceArgs.builder()
/// .network("default")
/// .build())
/// .scheduling(InstanceTemplateSchedulingArgs.builder()
/// .preemptible(false)
/// .automaticRestart(true)
/// .build())
/// .metadata(Map.of("foo", "bar"))
/// .serviceAccount(InstanceTemplateServiceAccountArgs.builder()
/// .scopes(
/// "userinfo-email",
/// "compute-ro",
/// "storage-ro")
/// .build())
/// .labels(Map.of("my_label", "foobar"))
/// .build());
///
/// var gceReservationSharingPolicy = new Reservation("gceReservationSharingPolicy", ReservationArgs.builder()
/// .name("gce-reservation-sharing-policy")
/// .zone("us-central1-b")
/// .specificReservation(ReservationSpecificReservationArgs.builder()
/// .count(2)
/// .sourceInstanceTemplate(foobar.selfLink())
/// .build())
/// .reservationSharingPolicy(ReservationReservationSharingPolicyArgs.builder()
/// .serviceShareType("ALLOW_ALL")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// foobar:
/// type: gcp:compute:InstanceTemplate
/// properties:
/// name: instance-template
/// machineType: g2-standard-4
/// canIpForward: false
/// tags:
/// - foo
/// - bar
/// disks:
/// - sourceImage: ${myImage.selfLink}
/// autoDelete: true
/// boot: true
/// networkInterfaces:
/// - network: default
/// scheduling:
/// preemptible: false
/// automaticRestart: true
/// metadata:
/// foo: bar
/// serviceAccount:
/// scopes:
/// - userinfo-email
/// - compute-ro
/// - storage-ro
/// labels:
/// my_label: foobar
/// gceReservationSharingPolicy:
/// type: gcp:compute:Reservation
/// name: gce_reservation_sharing_policy
/// properties:
/// name: gce-reservation-sharing-policy
/// zone: us-central1-b
/// specificReservation:
/// count: 2
/// sourceInstanceTemplate: ${foobar.selfLink}
/// reservationSharingPolicy:
/// serviceShareType: ALLOW_ALL
/// variables:
/// myImage:
/// fn::invoke:
/// function: gcp:compute:getImage
/// arguments:
/// family: debian-11
/// project: debian-cloud
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Reservation can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/zones/{{zone}}/reservations/{{name}}`
///
/// * `{{project}}/{{zone}}/{{name}}`
///
/// * `{{zone}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Reservation can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/reservation:Reservation default projects/{{project}}/zones/{{zone}}/reservations/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/reservation:Reservation default {{project}}/{{zone}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/reservation:Reservation default {{zone}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/reservation:Reservation default {{name}}
/// ```
class Reservation2 extends CustomResource {
  /// List of all reservation block names in the parent reservation.
  late final Output<List<String>> blockNames;

  /// Full or partial URL to a parent commitment. This field displays for
  /// reservations that are tied to a commitment.
  late final Output<String> commitment;

  /// Creation timestamp in RFC3339 text format.
  late final Output<String> creationTimestamp;

  /// Duration after which the reservation will be auto-deleted by Compute Engine. Cannot be used with delete_at_time.
  /// Structure is documented below.
  late final Output<ReservationDeleteAfterDuration?> deleteAfterDuration;

  /// Absolute time in future when the reservation will be auto-deleted by Compute Engine. Timestamp is represented in RFC3339 text format.
  /// Cannot be used with delete_after_duration.
  late final Output<String> deleteAtTime;

  /// An optional description of this resource.
  late final Output<String?> description;

  /// Indicates if this group of VMs have emergent maintenance enabled.
  late final Output<bool?> enableEmergentMaintenance;

  /// Type of the resource. Always compute#reservations for reservations.
  late final Output<String> kind;

  /// Full or partial URL to parent commitments. This field displays for reservations that are tied to multiple commitments.
  late final Output<List<String>> linkedCommitments;

  /// Name of the resource. Provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035. Specifically, the name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// (Output)
  /// The number of reservation blocks associated with this reservation.
  late final Output<int> reservationBlockCount;

  /// Sharing policy for reservations with Google Cloud managed services.
  /// Structure is documented below.
  late final Output<ReservationReservationSharingPolicy>
      reservationSharingPolicy;

  /// Status information for Reservation resource.
  /// Structure is documented below.
  late final Output<List<ReservationResourceStatus>> resourceStatuses;

  /// Reserved for future use.
  late final Output<bool> satisfiesPzs;

  /// The URI of the created resource.
  late final Output<String> selfLink;

  /// The share setting for reservations.
  /// Structure is documented below.
  late final Output<ReservationShareSettings> shareSettings;

  /// Reservation for instances with specific machine shapes.
  /// Structure is documented below.
  late final Output<ReservationSpecificReservation> specificReservation;

  /// When set to true, only VMs that target this reservation by name can
  /// consume this reservation. Otherwise, it can be consumed by VMs with
  /// affinity for any reservation. Defaults to false.
  late final Output<bool?> specificReservationRequired;

  /// The status of the reservation.
  late final Output<String> status;

  /// The zone where the reservation is made.
  late final Output<String> zone;

  Reservation2(
    String name, {
    ReservationArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:compute/reservation:Reservation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.blockNames = registerOutput<List<String>>('blockNames');
    this.commitment = registerOutput<String>('commitment');
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.deleteAfterDuration =
        registerOutput<ReservationDeleteAfterDuration?>('deleteAfterDuration');
    this.deleteAtTime = registerOutput<String>('deleteAtTime');
    this.description = registerOutput<String?>('description');
    this.enableEmergentMaintenance =
        registerOutput<bool?>('enableEmergentMaintenance');
    this.kind = registerOutput<String>('kind');
    this.linkedCommitments = registerOutput<List<String>>('linkedCommitments');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.reservationBlockCount = registerOutput<int>('reservationBlockCount');
    this.reservationSharingPolicy =
        registerOutput<ReservationReservationSharingPolicy>(
            'reservationSharingPolicy');
    this.resourceStatuses =
        registerOutput<List<ReservationResourceStatus>>('resourceStatuses');
    this.satisfiesPzs = registerOutput<bool>('satisfiesPzs');
    this.selfLink = registerOutput<String>('selfLink');
    this.shareSettings =
        registerOutput<ReservationShareSettings>('shareSettings');
    this.specificReservation =
        registerOutput<ReservationSpecificReservation>('specificReservation');
    this.specificReservationRequired =
        registerOutput<bool?>('specificReservationRequired');
    this.status = registerOutput<String>('status');
    this.zone = registerOutput<String>('zone');
  }
}
