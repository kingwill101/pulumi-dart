import 'package:pulumi/pulumi.dart';
import 'hosting_channel_args.dart';

/// A `Channel` represents a stream of releases for a site. All sites have a default
/// <span pulumi-lang-nodejs="`live`" pulumi-lang-dotnet="`Live`" pulumi-lang-go="`live`" pulumi-lang-python="`live`" pulumi-lang-yaml="`live`" pulumi-lang-java="`live`">`live`</span> channel that serves content to the Firebase-provided subdomains and any
/// connected custom domains.
///
/// To get more information about Channel, see:
///
/// * [API documentation](https://firebase.google.com/docs/reference/hosting/rest/v1beta1/sites.channels)
/// * How-to Guides
/// * [Official Documentation](https://firebase.google.com/docs/hosting)
///
/// ## Example Usage
///
/// ### Firebasehosting Channel Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.firebase.HostingSite("default", {
/// project: "my-project-name",
/// siteId: "site-with-channel",
/// });
/// const defaultHostingChannel = new gcp.firebase.HostingChannel("default", {
/// siteId: _default.siteId,
/// channelId: "channel-basic",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.firebase.HostingSite("default",
/// project="my-project-name",
/// site_id="site-with-channel")
/// default_hosting_channel = gcp.firebase.HostingChannel("default",
/// site_id=default.site_id,
/// channel_id="channel-basic")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var @default = new Gcp.Firebase.HostingSite("default", new()
/// {
/// Project = "my-project-name",
/// SiteId = "site-with-channel",
/// });
///
/// var defaultHostingChannel = new Gcp.Firebase.HostingChannel("default", new()
/// {
/// SiteId = @default.SiteId,
/// ChannelId = "channel-basic",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/firebase"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _default, err := firebase.NewHostingSite(ctx, "default", &firebase.HostingSiteArgs{
/// Project: pulumi.String("my-project-name"),
/// SiteId:  pulumi.String("site-with-channel"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = firebase.NewHostingChannel(ctx, "default", &firebase.HostingChannelArgs{
/// SiteId:    _default.SiteId,
/// ChannelId: pulumi.String("channel-basic"),
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
/// import com.pulumi.gcp.firebase.HostingSite;
/// import com.pulumi.gcp.firebase.HostingSiteArgs;
/// import com.pulumi.gcp.firebase.HostingChannel;
/// import com.pulumi.gcp.firebase.HostingChannelArgs;
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
/// var default_ = new HostingSite("default", HostingSiteArgs.builder()
/// .project("my-project-name")
/// .siteId("site-with-channel")
/// .build());
///
/// var defaultHostingChannel = new HostingChannel("defaultHostingChannel", HostingChannelArgs.builder()
/// .siteId(default_.siteId())
/// .channelId("channel-basic")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// default:
/// type: gcp:firebase:HostingSite
/// properties:
/// project: my-project-name
/// siteId: site-with-channel
/// defaultHostingChannel:
/// type: gcp:firebase:HostingChannel
/// name: default
/// properties:
/// siteId: ${default.siteId}
/// channelId: channel-basic
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Firebasehosting Channel Full
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.firebase.HostingSite("default", {
/// project: "my-project-name",
/// siteId: "site-with-channel",
/// });
/// const full = new gcp.firebase.HostingChannel("full", {
/// siteId: _default.siteId,
/// channelId: "channel-full",
/// ttl: "86400s",
/// retainedReleaseCount: 20,
/// labels: {
/// "some-key": "some-value",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.firebase.HostingSite("default",
/// project="my-project-name",
/// site_id="site-with-channel")
/// full = gcp.firebase.HostingChannel("full",
/// site_id=default.site_id,
/// channel_id="channel-full",
/// ttl="86400s",
/// retained_release_count=20,
/// labels={
/// "some-key": "some-value",
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
/// var @default = new Gcp.Firebase.HostingSite("default", new()
/// {
/// Project = "my-project-name",
/// SiteId = "site-with-channel",
/// });
///
/// var full = new Gcp.Firebase.HostingChannel("full", new()
/// {
/// SiteId = @default.SiteId,
/// ChannelId = "channel-full",
/// Ttl = "86400s",
/// RetainedReleaseCount = 20,
/// Labels =
/// {
/// { "some-key", "some-value" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/firebase"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _default, err := firebase.NewHostingSite(ctx, "default", &firebase.HostingSiteArgs{
/// Project: pulumi.String("my-project-name"),
/// SiteId:  pulumi.String("site-with-channel"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = firebase.NewHostingChannel(ctx, "full", &firebase.HostingChannelArgs{
/// SiteId:               _default.SiteId,
/// ChannelId:            pulumi.String("channel-full"),
/// Ttl:                  pulumi.String("86400s"),
/// RetainedReleaseCount: pulumi.Int(20),
/// Labels: pulumi.StringMap{
/// "some-key": pulumi.String("some-value"),
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
/// import com.pulumi.gcp.firebase.HostingSite;
/// import com.pulumi.gcp.firebase.HostingSiteArgs;
/// import com.pulumi.gcp.firebase.HostingChannel;
/// import com.pulumi.gcp.firebase.HostingChannelArgs;
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
/// var default_ = new HostingSite("default", HostingSiteArgs.builder()
/// .project("my-project-name")
/// .siteId("site-with-channel")
/// .build());
///
/// var full = new HostingChannel("full", HostingChannelArgs.builder()
/// .siteId(default_.siteId())
/// .channelId("channel-full")
/// .ttl("86400s")
/// .retainedReleaseCount(20)
/// .labels(Map.of("some-key", "some-value"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// default:
/// type: gcp:firebase:HostingSite
/// properties:
/// project: my-project-name
/// siteId: site-with-channel
/// full:
/// type: gcp:firebase:HostingChannel
/// properties:
/// siteId: ${default.siteId}
/// channelId: channel-full
/// ttl: 86400s
/// retainedReleaseCount: 20
/// labels:
/// some-key: some-value
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Channel can be imported using any of these accepted formats:
///
/// * `sites/{{site_id}}/channels/{{channel_id}}`
///
/// * `{{site_id}}/{{channel_id}}`
///
/// When using the `pulumi import` command, Channel can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:firebase/hostingChannel:HostingChannel default sites/{{site_id}}/channels/{{channel_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebase/hostingChannel:HostingChannel default {{site_id}}/{{channel_id}}
/// ```
class HostingChannel extends CustomResource {
  /// Required. Immutable. A unique ID within the site that identifies the channel.
  late final Output<String> channelId;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// The time at which the channel will be automatically deleted. If null, the channel
  /// will not be automatically deleted. This field is present in the output whether it's
  /// set directly or via the <span pulumi-lang-nodejs="`ttl`" pulumi-lang-dotnet="`Ttl`" pulumi-lang-go="`ttl`" pulumi-lang-python="`ttl`" pulumi-lang-yaml="`ttl`" pulumi-lang-java="`ttl`">`ttl`</span> field.
  late final Output<String> expireTime;

  /// Text labels used for extra metadata and/or filtering
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// The fully-qualified resource name for the channel, in the format:
  /// sites/SITE_ID/channels/CHANNEL_ID
  late final Output<String> name;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// The number of previous releases to retain on the channel for rollback or other
  /// purposes. Must be a number between 1-100. Defaults to 10 for new channels.
  late final Output<int> retainedReleaseCount;

  /// Required. The ID of the site in which to create this channel.
  late final Output<String> siteId;

  /// Input only. A time-to-live for this channel. Sets <span pulumi-lang-nodejs="`expireTime`" pulumi-lang-dotnet="`ExpireTime`" pulumi-lang-go="`expireTime`" pulumi-lang-python="`expire_time`" pulumi-lang-yaml="`expireTime`" pulumi-lang-java="`expireTime`">`expire_time`</span> to the provided
  /// duration past the time of the request. A duration in seconds with up to nine fractional
  /// digits, terminated by 's'. Example: "86400s" (one day).
  late final Output<String?> ttl;

  HostingChannel(
    String name, {
    HostingChannelArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:firebase/hostingChannel:HostingChannel',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.channelId = Output.createUnknown<String>();
    this.effectiveLabels = Output.createUnknown<Map<String, String>>();
    this.expireTime = Output.createUnknown<String>();
    this.labels = Output.createUnknown<Map<String, String>?>();
    this.name = Output.createUnknown<String>();
    this.pulumiLabels = Output.createUnknown<Map<String, String>>();
    this.retainedReleaseCount = Output.createUnknown<int>();
    this.siteId = Output.createUnknown<String>();
    this.ttl = Output.createUnknown<String?>();
  }
}
