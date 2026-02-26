import 'package:pulumi/pulumi.dart';
import 'tunnel_dest_group_args.dart';

/// Tunnel destination groups represent resources that have the same tunnel access restrictions.
///
///
/// To get more information about TunnelDestGroup, see:
///
/// * [API documentation](https://cloud.google.com/iap/docs/reference/rest/v1/projects.iap_tunnel.locations.destGroups)
/// * How-to Guides
/// * [Set up IAP TCP forwarding with an IP address or hostname in a Google Cloud or non-Google Cloud environment](https://cloud.google.com/iap/docs/tcp-by-host)
///
/// ## Example Usage
///
/// ### Iap Destgroup
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const destGroup = new gcp.iap.TunnelDestGroup("dest_group", {
/// region: "us-central1",
/// groupName: "testgroup_92130",
/// cidrs: [
/// "10.1.0.0/16",
/// "192.168.10.0/24",
/// ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// dest_group = gcp.iap.TunnelDestGroup("dest_group",
/// region="us-central1",
/// group_name="testgroup_92130",
/// cidrs=[
/// "10.1.0.0/16",
/// "192.168.10.0/24",
/// ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var destGroup = new Gcp.Iap.TunnelDestGroup("dest_group", new()
/// {
/// Region = "us-central1",
/// GroupName = "testgroup_92130",
/// Cidrs = new[]
/// {
/// "10.1.0.0/16",
/// "192.168.10.0/24",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iap"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := iap.NewTunnelDestGroup(ctx, "dest_group", &iap.TunnelDestGroupArgs{
/// Region:    pulumi.String("us-central1"),
/// GroupName: pulumi.String("testgroup_92130"),
/// Cidrs: pulumi.StringArray{
/// pulumi.String("10.1.0.0/16"),
/// pulumi.String("192.168.10.0/24"),
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
/// import com.pulumi.gcp.iap.TunnelDestGroup;
/// import com.pulumi.gcp.iap.TunnelDestGroupArgs;
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
/// var destGroup = new TunnelDestGroup("destGroup", TunnelDestGroupArgs.builder()
/// .region("us-central1")
/// .groupName("testgroup_92130")
/// .cidrs(
/// "10.1.0.0/16",
/// "192.168.10.0/24")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// destGroup:
/// type: gcp:iap:TunnelDestGroup
/// name: dest_group
/// properties:
/// region: us-central1
/// groupName: testgroup_92130
/// cidrs:
/// - 10.1.0.0/16
/// - 192.168.10.0/24
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// TunnelDestGroup can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/iap_tunnel/locations/{{region}}/destGroups/{{group_name}}`
///
/// * `{{project}}/iap_tunnel/locations/{{region}}/destGroups/{{group_name}}`
///
/// * `{{project}}/{{region}}/{{group_name}}`
///
/// * `{{region}}/destGroups/{{group_name}}`
///
/// * `{{region}}/{{group_name}}`
///
/// * `{{group_name}}`
///
/// When using the `pulumi import` command, TunnelDestGroup can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:iap/tunnelDestGroup:TunnelDestGroup default projects/{{project}}/iap_tunnel/locations/{{region}}/destGroups/{{group_name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:iap/tunnelDestGroup:TunnelDestGroup default {{project}}/iap_tunnel/locations/{{region}}/destGroups/{{group_name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:iap/tunnelDestGroup:TunnelDestGroup default {{project}}/{{region}}/{{group_name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:iap/tunnelDestGroup:TunnelDestGroup default {{region}}/destGroups/{{group_name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:iap/tunnelDestGroup:TunnelDestGroup default {{region}}/{{group_name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:iap/tunnelDestGroup:TunnelDestGroup default {{group_name}}
/// ```
class TunnelDestGroup extends CustomResource {
  /// List of CIDRs that this group applies to.
  late final Output<List<String>?> cidrs;

  /// List of FQDNs that this group applies to.
  late final Output<List<String>?> fqdns;

  /// Unique tunnel destination group name.
  late final Output<String> groupName;

  /// Full resource name.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The region of the tunnel group. Must be the same as the network resources in the group.
  late final Output<String> region;

  TunnelDestGroup(
    String name, {
    TunnelDestGroupArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:iap/tunnelDestGroup:TunnelDestGroup',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.cidrs = registerOutput<List<String>?>('cidrs');
    this.fqdns = registerOutput<List<String>?>('fqdns');
    this.groupName = registerOutput<String>('groupName');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String>('region');
  }
}
