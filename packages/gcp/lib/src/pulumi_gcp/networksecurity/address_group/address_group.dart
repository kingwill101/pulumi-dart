import 'package:pulumi/pulumi.dart';
import 'address_group_args.dart';

/// AddressGroup is a resource that specifies how a collection of IP/DNS used in Firewall Policy.
///
///
/// To get more information about AddressGroup, see:
///
/// * [API documentation](https://cloud.google.com/traffic-director/docs/reference/network-security/rest/v1beta1/organizations.locations.addressGroups)
/// * How-to Guides
/// * [Use AddressGroups](https://cloud.google.com/vpc/docs/use-address-groups-firewall-policies)
///
/// ## Example Usage
///
/// ### Network Security Address Groups Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.networksecurity.AddressGroup("default", {
/// name: "my-address-groups",
/// parent: "projects/my-project-name",
/// location: "us-central1",
/// type: "IPV4",
/// capacity: 100,
/// items: ["208.80.154.224/32"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.networksecurity.AddressGroup("default",
/// name="my-address-groups",
/// parent="projects/my-project-name",
/// location="us-central1",
/// type="IPV4",
/// capacity=100,
/// items=["208.80.154.224/32"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var @default = new Gcp.NetworkSecurity.AddressGroup("default", new()
/// {
/// Name = "my-address-groups",
/// Parent = "projects/my-project-name",
/// Location = "us-central1",
/// Type = "IPV4",
/// Capacity = 100,
/// Items = new[]
/// {
/// "208.80.154.224/32",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networksecurity"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := networksecurity.NewAddressGroup(ctx, "default", &networksecurity.AddressGroupArgs{
/// Name:     pulumi.String("my-address-groups"),
/// Parent:   pulumi.String("projects/my-project-name"),
/// Location: pulumi.String("us-central1"),
/// Type:     pulumi.String("IPV4"),
/// Capacity: pulumi.Int(100),
/// Items: pulumi.StringArray{
/// pulumi.String("208.80.154.224/32"),
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
/// import com.pulumi.gcp.networksecurity.AddressGroup;
/// import com.pulumi.gcp.networksecurity.AddressGroupArgs;
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
/// var default_ = new AddressGroup("default", AddressGroupArgs.builder()
/// .name("my-address-groups")
/// .parent("projects/my-project-name")
/// .location("us-central1")
/// .type("IPV4")
/// .capacity(100)
/// .items("208.80.154.224/32")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// default:
/// type: gcp:networksecurity:AddressGroup
/// properties:
/// name: my-address-groups
/// parent: projects/my-project-name
/// location: us-central1
/// type: IPV4
/// capacity: '100'
/// items:
/// - 208.80.154.224/32
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Network Security Address Groups Organization Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.networksecurity.AddressGroup("default", {
/// name: "my-address-groups",
/// parent: "organizations/123456789",
/// location: "us-central1",
/// type: "IPV4",
/// capacity: 100,
/// items: ["208.80.154.224/32"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.networksecurity.AddressGroup("default",
/// name="my-address-groups",
/// parent="organizations/123456789",
/// location="us-central1",
/// type="IPV4",
/// capacity=100,
/// items=["208.80.154.224/32"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var @default = new Gcp.NetworkSecurity.AddressGroup("default", new()
/// {
/// Name = "my-address-groups",
/// Parent = "organizations/123456789",
/// Location = "us-central1",
/// Type = "IPV4",
/// Capacity = 100,
/// Items = new[]
/// {
/// "208.80.154.224/32",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networksecurity"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := networksecurity.NewAddressGroup(ctx, "default", &networksecurity.AddressGroupArgs{
/// Name:     pulumi.String("my-address-groups"),
/// Parent:   pulumi.String("organizations/123456789"),
/// Location: pulumi.String("us-central1"),
/// Type:     pulumi.String("IPV4"),
/// Capacity: pulumi.Int(100),
/// Items: pulumi.StringArray{
/// pulumi.String("208.80.154.224/32"),
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
/// import com.pulumi.gcp.networksecurity.AddressGroup;
/// import com.pulumi.gcp.networksecurity.AddressGroupArgs;
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
/// var default_ = new AddressGroup("default", AddressGroupArgs.builder()
/// .name("my-address-groups")
/// .parent("organizations/123456789")
/// .location("us-central1")
/// .type("IPV4")
/// .capacity(100)
/// .items("208.80.154.224/32")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// default:
/// type: gcp:networksecurity:AddressGroup
/// properties:
/// name: my-address-groups
/// parent: organizations/123456789
/// location: us-central1
/// type: IPV4
/// capacity: '100'
/// items:
/// - 208.80.154.224/32
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Network Security Address Groups Advanced
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.networksecurity.AddressGroup("default", {
/// name: "my-address-groups",
/// parent: "projects/my-project-name",
/// location: "us-central1",
/// description: "my description",
/// type: "IPV4",
/// capacity: 100,
/// items: ["208.80.154.224/32"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.networksecurity.AddressGroup("default",
/// name="my-address-groups",
/// parent="projects/my-project-name",
/// location="us-central1",
/// description="my description",
/// type="IPV4",
/// capacity=100,
/// items=["208.80.154.224/32"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var @default = new Gcp.NetworkSecurity.AddressGroup("default", new()
/// {
/// Name = "my-address-groups",
/// Parent = "projects/my-project-name",
/// Location = "us-central1",
/// Description = "my description",
/// Type = "IPV4",
/// Capacity = 100,
/// Items = new[]
/// {
/// "208.80.154.224/32",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networksecurity"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := networksecurity.NewAddressGroup(ctx, "default", &networksecurity.AddressGroupArgs{
/// Name:        pulumi.String("my-address-groups"),
/// Parent:      pulumi.String("projects/my-project-name"),
/// Location:    pulumi.String("us-central1"),
/// Description: pulumi.String("my description"),
/// Type:        pulumi.String("IPV4"),
/// Capacity:    pulumi.Int(100),
/// Items: pulumi.StringArray{
/// pulumi.String("208.80.154.224/32"),
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
/// import com.pulumi.gcp.networksecurity.AddressGroup;
/// import com.pulumi.gcp.networksecurity.AddressGroupArgs;
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
/// var default_ = new AddressGroup("default", AddressGroupArgs.builder()
/// .name("my-address-groups")
/// .parent("projects/my-project-name")
/// .location("us-central1")
/// .description("my description")
/// .type("IPV4")
/// .capacity(100)
/// .items("208.80.154.224/32")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// default:
/// type: gcp:networksecurity:AddressGroup
/// properties:
/// name: my-address-groups
/// parent: projects/my-project-name
/// location: us-central1
/// description: my description
/// type: IPV4
/// capacity: '100'
/// items:
/// - 208.80.154.224/32
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Network Security Address Groups Cloud Armor
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.networksecurity.AddressGroup("default", {
/// name: "my-address-groups",
/// parent: "projects/my-project-name",
/// location: "global",
/// type: "IPV4",
/// capacity: 100,
/// purposes: ["CLOUD_ARMOR"],
/// items: ["208.80.154.224/32"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.networksecurity.AddressGroup("default",
/// name="my-address-groups",
/// parent="projects/my-project-name",
/// location="global",
/// type="IPV4",
/// capacity=100,
/// purposes=["CLOUD_ARMOR"],
/// items=["208.80.154.224/32"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var @default = new Gcp.NetworkSecurity.AddressGroup("default", new()
/// {
/// Name = "my-address-groups",
/// Parent = "projects/my-project-name",
/// Location = "global",
/// Type = "IPV4",
/// Capacity = 100,
/// Purposes = new[]
/// {
/// "CLOUD_ARMOR",
/// },
/// Items = new[]
/// {
/// "208.80.154.224/32",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networksecurity"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := networksecurity.NewAddressGroup(ctx, "default", &networksecurity.AddressGroupArgs{
/// Name:     pulumi.String("my-address-groups"),
/// Parent:   pulumi.String("projects/my-project-name"),
/// Location: pulumi.String("global"),
/// Type:     pulumi.String("IPV4"),
/// Capacity: pulumi.Int(100),
/// Purposes: pulumi.StringArray{
/// pulumi.String("CLOUD_ARMOR"),
/// },
/// Items: pulumi.StringArray{
/// pulumi.String("208.80.154.224/32"),
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
/// import com.pulumi.gcp.networksecurity.AddressGroup;
/// import com.pulumi.gcp.networksecurity.AddressGroupArgs;
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
/// var default_ = new AddressGroup("default", AddressGroupArgs.builder()
/// .name("my-address-groups")
/// .parent("projects/my-project-name")
/// .location("global")
/// .type("IPV4")
/// .capacity(100)
/// .purposes("CLOUD_ARMOR")
/// .items("208.80.154.224/32")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// default:
/// type: gcp:networksecurity:AddressGroup
/// properties:
/// name: my-address-groups
/// parent: projects/my-project-name
/// location: global
/// type: IPV4
/// capacity: '100'
/// purposes:
/// - CLOUD_ARMOR
/// items:
/// - 208.80.154.224/32
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// AddressGroup can be imported using any of these accepted formats:
///
/// * `{{parent}}/locations/{{location}}/addressGroups/{{name}}`
///
/// When using the `pulumi import` command, AddressGroup can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networksecurity/addressGroup:AddressGroup default {{parent}}/locations/{{location}}/addressGroups/{{name}}
/// ```
class AddressGroup extends CustomResource {
  /// Capacity of the Address Group.
  late final Output<int> capacity;

  /// The timestamp when the resource was created.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z"
  late final Output<String> createTime;

  /// Free-text description of the resource.
  late final Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// List of items.
  late final Output<List<String>?> items;

  /// Set of label tags associated with the AddressGroup resource.
  /// An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// The location of the gateway security policy.
  /// The default value is <span pulumi-lang-nodejs="`global`" pulumi-lang-dotnet="`Global`" pulumi-lang-go="`global`" pulumi-lang-python="`global`" pulumi-lang-yaml="`global`" pulumi-lang-java="`global`">`global`</span>.
  late final Output<String> location;

  /// Name of the AddressGroup resource.
  late final Output<String> name;

  /// The name of the parent this address group belongs to. Format: organizations/{organization_id} or projects/{project_id}.
  late final Output<String?> parent;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// List of supported purposes of the Address Group.
  /// Each value may be one of: `DEFAULT`, `CLOUD_ARMOR`.
  late final Output<List<String>> purposes;

  /// The type of the Address Group. Possible values are "IPV4" or "IPV6".
  /// Possible values are: `IPV4`, `IPV6`.
  late final Output<String> type;

  /// The timestamp when the resource was updated.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final Output<String> updateTime;

  AddressGroup(
    String name, {
    AddressGroupArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:networksecurity/addressGroup:AddressGroup',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.capacity = registerOutput<int>('capacity');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.items = registerOutput<List<String>?>('items');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.parent = registerOutput<String?>('parent');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.purposes = registerOutput<List<String>>('purposes');
    this.type = registerOutput<String>('type');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
