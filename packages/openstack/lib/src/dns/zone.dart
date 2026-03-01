import 'package:pulumi/pulumi.dart' as pulumi;
import 'zone_args.dart';

/// Manages a DNS zone in the OpenStack DNS Service.
///
/// ## Example Usage
///
/// ### Automatically detect the correct network
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const exampleCom = new openstack.dns.Zone("example_com", {
///     name: "example.com.",
///     email: "jdoe@example.com",
///     description: "An example zone",
///     ttl: 3000,
///     type: "PRIMARY",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// example_com = openstack.dns.Zone("example_com",
///     name="example.com.",
///     email="jdoe@example.com",
///     description="An example zone",
///     ttl=3000,
///     type="PRIMARY")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleCom = new OpenStack.Dns.Zone("example_com", new()
///     {
///         Name = "example.com.",
///         Email = "jdoe@example.com",
///         Description = "An example zone",
///         Ttl = 3000,
///         Type = "PRIMARY",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/dns"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dns.NewZone(ctx, "example_com", &dns.ZoneArgs{
/// 			Name:        pulumi.String("example.com."),
/// 			Email:       pulumi.String("jdoe@example.com"),
/// 			Description: pulumi.String("An example zone"),
/// 			Ttl:         pulumi.Int(3000),
/// 			Type:        pulumi.String("PRIMARY"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.openstack.dns.Zone;
/// import com.pulumi.openstack.dns.ZoneArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         var exampleCom = new Zone("exampleCom", ZoneArgs.builder()
///             .name("example.com.")
///             .email("jdoe@example.com")
///             .description("An example zone")
///             .ttl(3000)
///             .type("PRIMARY")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleCom:
///     type: openstack:dns:Zone
///     name: example_com
///     properties:
///       name: example.com.
///       email: jdoe@example.com
///       description: An example zone
///       ttl: 3000
///       type: PRIMARY
/// ```
///
///
/// ## Import
///
/// This resource can be imported by specifying the zone ID with optional project ID:
///
/// ```sh
/// $ pulumi import openstack:dns/zone:Zone zone_1 zone_id
/// ```
///
/// ```sh
/// $ pulumi import openstack:dns/zone:Zone zone_1 zone_id/project_id
/// ```
class Zone extends pulumi.CustomResource {
  /// Attributes for the DNS Service scheduler.
  /// Changing this creates a new zone.
  late final pulumi.Output<Map<String, String>?> attributes;
  /// A description of the zone.
  late final pulumi.Output<String?> description;
  /// Disable wait for zone to reach ACTIVE
  /// status. The check is enabled by default. If this argument is true, zone
  /// will be considered as created/updated if OpenStack request returned success.
  late final pulumi.Output<bool?> disableStatusCheck;
  /// The email contact for the zone record.
  late final pulumi.Output<String?> email;
  /// An array of master DNS servers. For when `type` is
  /// `SECONDARY`.
  late final pulumi.Output<List<String>?> masters;
  /// The name of the zone. Note the `.` at the end of the name.
  /// Changing this creates a new DNS zone.
  late final pulumi.Output<String> name;
  /// The ID of the project DNS zone is created
  /// for, sets `X-Auth-Sudo-Tenant-ID` header (requires an assigned
  /// user role in target project).
  late final pulumi.Output<String> projectId;
  /// The region in which to obtain the V2 DNS client.
  /// If omitted, the `region` argument of the provider is used.
  /// Changing this creates a new DNS zone.
  late final pulumi.Output<String> region;
  /// The time to live (TTL) of the zone.
  late final pulumi.Output<int> ttl;
  /// The type of zone. Can either be `PRIMARY` or `SECONDARY`.
  /// Changing this creates a new zone.
  late final pulumi.Output<String> type;
  /// Map of additional options. Changing this creates a
  /// new zone.
  late final pulumi.Output<Map<String, String>?> valueSpecs;

  /// Creates a new [Zone].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Zone]. {@macro pulumi_dns_zone_zone_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Zone(
    String name, {
    ZoneArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:dns/zone:Zone',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.attributes = registerOutput<Map<String, String>?>('attributes');
    this.description = registerOutput<String?>('description');
    this.disableStatusCheck = registerOutput<bool?>('disableStatusCheck');
    this.email = registerOutput<String?>('email');
    this.masters = registerOutput<List<String>?>('masters');
    this.name = registerOutput<String>('name');
    this.projectId = registerOutput<String>('projectId');
    this.region = registerOutput<String>('region');
    this.ttl = registerOutput<int>('ttl');
    this.type = registerOutput<String>('type');
    this.valueSpecs = registerOutput<Map<String, String>?>('valueSpecs');
  }
}
