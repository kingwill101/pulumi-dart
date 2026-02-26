import 'package:pulumi/pulumi.dart';
import 'host_group_args.dart';

/// Hostgroups define the hosts (aka initiators) that can access the specific Google Cloud Netapp Volumes.
/// Hostgroup is a regional resource and independent of the volumes or any other resource
///
///
/// To get more information about HostGroup, see:
///
/// * [API documentation](https://docs.cloud.google.com/netapp/volumes/docs/reference/rest/v1/projects.locations.hostGroups)
/// * How-to Guides
/// * [Documentation](https://docs.cloud.google.com/netapp/volumes/docs/configure-and-use/host-groups/overview)
///
/// ## Example Usage
///
/// ### Netapp Host Group
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const testHostGroup = new gcp.netapp.HostGroup("test_host_group", {
/// name: "test-host-group",
/// location: "us-central1",
/// osType: "LINUX",
/// type: "ISCSI_INITIATOR",
/// hosts: ["iqn.1994-05.com.redhat:8518f79d5366"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// test_host_group = gcp.netapp.HostGroup("test_host_group",
/// name="test-host-group",
/// location="us-central1",
/// os_type="LINUX",
/// type="ISCSI_INITIATOR",
/// hosts=["iqn.1994-05.com.redhat:8518f79d5366"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var testHostGroup = new Gcp.Netapp.HostGroup("test_host_group", new()
/// {
/// Name = "test-host-group",
/// Location = "us-central1",
/// OsType = "LINUX",
/// Type = "ISCSI_INITIATOR",
/// Hosts = new[]
/// {
/// "iqn.1994-05.com.redhat:8518f79d5366",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/netapp"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := netapp.NewHostGroup(ctx, "test_host_group", &netapp.HostGroupArgs{
/// Name:     pulumi.String("test-host-group"),
/// Location: pulumi.String("us-central1"),
/// OsType:   pulumi.String("LINUX"),
/// Type:     pulumi.String("ISCSI_INITIATOR"),
/// Hosts: pulumi.StringArray{
/// pulumi.String("iqn.1994-05.com.redhat:8518f79d5366"),
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
/// import com.pulumi.gcp.netapp.HostGroup;
/// import com.pulumi.gcp.netapp.HostGroupArgs;
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
/// var testHostGroup = new HostGroup("testHostGroup", HostGroupArgs.builder()
/// .name("test-host-group")
/// .location("us-central1")
/// .osType("LINUX")
/// .type("ISCSI_INITIATOR")
/// .hosts("iqn.1994-05.com.redhat:8518f79d5366")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// testHostGroup:
/// type: gcp:netapp:HostGroup
/// name: test_host_group
/// properties:
/// name: test-host-group
/// location: us-central1
/// osType: LINUX
/// type: ISCSI_INITIATOR
/// hosts:
/// - iqn.1994-05.com.redhat:8518f79d5366
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// HostGroup can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/hostGroups/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, HostGroup can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:netapp/hostGroup:HostGroup default projects/{{project}}/locations/{{location}}/hostGroups/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:netapp/hostGroup:HostGroup default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:netapp/hostGroup:HostGroup default {{location}}/{{name}}
/// ```
class HostGroup extends CustomResource {
  /// Create time of the host group. A timestamp in RFC3339 UTC "Zulu" format. Examples: "2023-06-22T09:13:01.617Z".
  late final Output<String> createTime;

  /// An optional description of this resource.
  late final Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// The list of hosts associated with the host group
  late final Output<List<String>> hosts;

  /// Labels as key value pairs. Example: `{ "owner": "Bob", "department": "finance", "purpose": "testing" }`.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// Location (region) of the Host Group.
  late final Output<String> location;

  /// The resource name of the Host Group. Needs to be unique per location.
  late final Output<String> name;

  /// The OS type of the host group. It indicates the type of operating system
  /// used by all of the hosts in the HostGroup. All hosts in a HostGroup must be
  /// of the same OS type. This can be set only when creating a HostGroup.
  /// Possible values are: `LINUX`, `WINDOWS`, `ESXI`.
  late final Output<String> osType;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// The state of the Host Group.
  late final Output<String> state;

  /// Type of the host group.
  /// Possible values are: `ISCSI_INITIATOR`.
  late final Output<String> type;

  HostGroup(
    String name, {
    HostGroupArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:netapp/hostGroup:HostGroup',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = Output.createUnknown<String>();
    this.description = Output.createUnknown<String?>();
    this.effectiveLabels = Output.createUnknown<Map<String, String>>();
    this.hosts = Output.createUnknown<List<String>>();
    this.labels = Output.createUnknown<Map<String, String>?>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.osType = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.pulumiLabels = Output.createUnknown<Map<String, String>>();
    this.state = Output.createUnknown<String>();
    this.type = Output.createUnknown<String>();
  }
}
