import 'package:pulumi/pulumi.dart';
import '../core_network_edge/core_network_edge.dart';
import '../core_network_segment/core_network_segment.dart';
import 'core_network_args.dart';

/// Manages a Network Manager Core Network.
///
/// Use this resource to create and manage a core network within a global network.
///
/// ## Example Usage
///
/// ### Basic
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.networkmanager.CoreNetwork("example", {globalNetworkId: exampleAwsNetworkmanagerGlobalNetwork.id});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.networkmanager.CoreNetwork("example", global_network_id=example_aws_networkmanager_global_network["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.NetworkManager.CoreNetwork("example", new()
/// {
/// GlobalNetworkId = exampleAwsNetworkmanagerGlobalNetwork.Id,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/networkmanager"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := networkmanager.NewCoreNetwork(ctx, "example", &networkmanager.CoreNetworkArgs{
/// GlobalNetworkId: pulumi.Any(exampleAwsNetworkmanagerGlobalNetwork.Id),
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
/// import com.pulumi.aws.networkmanager.CoreNetwork;
/// import com.pulumi.aws.networkmanager.CoreNetworkArgs;
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
/// var example = new CoreNetwork("example", CoreNetworkArgs.builder()
/// .globalNetworkId(exampleAwsNetworkmanagerGlobalNetwork.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:networkmanager:CoreNetwork
/// properties:
/// globalNetworkId: ${exampleAwsNetworkmanagerGlobalNetwork.id}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### With description
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.networkmanager.CoreNetwork("example", {
/// globalNetworkId: exampleAwsNetworkmanagerGlobalNetwork.id,
/// description: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.networkmanager.CoreNetwork("example",
/// global_network_id=example_aws_networkmanager_global_network["id"],
/// description="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.NetworkManager.CoreNetwork("example", new()
/// {
/// GlobalNetworkId = exampleAwsNetworkmanagerGlobalNetwork.Id,
/// Description = "example",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/networkmanager"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := networkmanager.NewCoreNetwork(ctx, "example", &networkmanager.CoreNetworkArgs{
/// GlobalNetworkId: pulumi.Any(exampleAwsNetworkmanagerGlobalNetwork.Id),
/// Description:     pulumi.String("example"),
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
/// import com.pulumi.aws.networkmanager.CoreNetwork;
/// import com.pulumi.aws.networkmanager.CoreNetworkArgs;
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
/// var example = new CoreNetwork("example", CoreNetworkArgs.builder()
/// .globalNetworkId(exampleAwsNetworkmanagerGlobalNetwork.id())
/// .description("example")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:networkmanager:CoreNetwork
/// properties:
/// globalNetworkId: ${exampleAwsNetworkmanagerGlobalNetwork.id}
/// description: example
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### With tags
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.networkmanager.CoreNetwork("example", {
/// globalNetworkId: exampleAwsNetworkmanagerGlobalNetwork.id,
/// tags: {
/// hello: "world",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.networkmanager.CoreNetwork("example",
/// global_network_id=example_aws_networkmanager_global_network["id"],
/// tags={
/// "hello": "world",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.NetworkManager.CoreNetwork("example", new()
/// {
/// GlobalNetworkId = exampleAwsNetworkmanagerGlobalNetwork.Id,
/// Tags =
/// {
/// { "hello", "world" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/networkmanager"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := networkmanager.NewCoreNetwork(ctx, "example", &networkmanager.CoreNetworkArgs{
/// GlobalNetworkId: pulumi.Any(exampleAwsNetworkmanagerGlobalNetwork.Id),
/// Tags: pulumi.StringMap{
/// "hello": pulumi.String("world"),
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
/// import com.pulumi.aws.networkmanager.CoreNetwork;
/// import com.pulumi.aws.networkmanager.CoreNetworkArgs;
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
/// var example = new CoreNetwork("example", CoreNetworkArgs.builder()
/// .globalNetworkId(exampleAwsNetworkmanagerGlobalNetwork.id())
/// .tags(Map.of("hello", "world"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:networkmanager:CoreNetwork
/// properties:
/// globalNetworkId: ${exampleAwsNetworkmanagerGlobalNetwork.id}
/// tags:
/// hello: world
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### With VPC Attachment (Single Region)
///
/// The example below illustrates the scenario where your policy document has static routes pointing to VPC attachments and you want to attach your VPCs to the core network before applying the desired policy document. Set the <span pulumi-lang-nodejs="`createBasePolicy`" pulumi-lang-dotnet="`CreateBasePolicy`" pulumi-lang-go="`createBasePolicy`" pulumi-lang-python="`create_base_policy`" pulumi-lang-yaml="`createBasePolicy`" pulumi-lang-java="`createBasePolicy`">`create_base_policy`</span> argument to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> if your core network does not currently have any `LIVE` policies (e.g. this is the first `pulumi up` with the core network resource), since a `LIVE` policy is required before VPCs can be attached to the core network. Otherwise, if your core network already has a `LIVE` policy, you may exclude the <span pulumi-lang-nodejs="`createBasePolicy`" pulumi-lang-dotnet="`CreateBasePolicy`" pulumi-lang-go="`createBasePolicy`" pulumi-lang-python="`create_base_policy`" pulumi-lang-yaml="`createBasePolicy`" pulumi-lang-java="`createBasePolicy`">`create_base_policy`</span> argument. There are 2 options to implement this:
///
/// - Option 1: Use the <span pulumi-lang-nodejs="`basePolicyDocument`" pulumi-lang-dotnet="`BasePolicyDocument`" pulumi-lang-go="`basePolicyDocument`" pulumi-lang-python="`base_policy_document`" pulumi-lang-yaml="`basePolicyDocument`" pulumi-lang-java="`basePolicyDocument`">`base_policy_document`</span> argument that allows the most customizations to a base policy. Use this to customize the <span pulumi-lang-nodejs="`edgeLocations`" pulumi-lang-dotnet="`EdgeLocations`" pulumi-lang-go="`edgeLocations`" pulumi-lang-python="`edge_locations`" pulumi-lang-yaml="`edgeLocations`" pulumi-lang-java="`edgeLocations`">`edge_locations`</span> <span pulumi-lang-nodejs="`asn`" pulumi-lang-dotnet="`Asn`" pulumi-lang-go="`asn`" pulumi-lang-python="`asn`" pulumi-lang-yaml="`asn`" pulumi-lang-java="`asn`">`asn`</span>. In the example below, `us-west-2` and ASN <span pulumi-lang-nodejs="`65500`" pulumi-lang-dotnet="`65500`" pulumi-lang-go="`65500`" pulumi-lang-python="`65500`" pulumi-lang-yaml="`65500`" pulumi-lang-java="`65500`">`65500`</span> are used in the base policy.
/// - Option 2: Use the <span pulumi-lang-nodejs="`createBasePolicy`" pulumi-lang-dotnet="`CreateBasePolicy`" pulumi-lang-go="`createBasePolicy`" pulumi-lang-python="`create_base_policy`" pulumi-lang-yaml="`createBasePolicy`" pulumi-lang-java="`createBasePolicy`">`create_base_policy`</span> argument only. This creates a base policy in the region specified in the <span pulumi-lang-nodejs="`provider`" pulumi-lang-dotnet="`Provider`" pulumi-lang-go="`provider`" pulumi-lang-python="`provider`" pulumi-lang-yaml="`provider`" pulumi-lang-java="`provider`">`provider`</span> block.
///
/// ### Option 1 - using<span pulumi-lang-nodejs=" basePolicyDocument
/// " pulumi-lang-dotnet=" BasePolicyDocument
/// " pulumi-lang-go=" basePolicyDocument
/// " pulumi-lang-python=" base_policy_document
/// " pulumi-lang-yaml=" basePolicyDocument
/// " pulumi-lang-java=" basePolicyDocument
/// "> base_policy_document
/// </span>
/// If you require a custom ASN for the edge location, please use the <span pulumi-lang-nodejs="`basePolicyDocument`" pulumi-lang-dotnet="`BasePolicyDocument`" pulumi-lang-go="`basePolicyDocument`" pulumi-lang-python="`base_policy_document`" pulumi-lang-yaml="`basePolicyDocument`" pulumi-lang-java="`basePolicyDocument`">`base_policy_document`</span> argument to pass a specific ASN. For example:
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const exampleGlobalNetwork = new aws.networkmanager.GlobalNetwork("example", {});
/// const base = aws.networkmanager.getCoreNetworkPolicyDocument({
/// coreNetworkConfigurations: [{
/// asnRanges: ["65022-65534"],
/// edgeLocations: [{
/// location: "us-west-2",
/// asn: "65500",
/// }],
/// }],
/// segments: [{
/// name: "segment",
/// }],
/// });
/// const exampleCoreNetwork = new aws.networkmanager.CoreNetwork("example", {
/// globalNetworkId: exampleGlobalNetwork.id,
/// basePolicyDocument: base.then(base => base.json),
/// createBasePolicy: true,
/// });
/// const exampleVpcAttachment = new aws.networkmanager.VpcAttachment("example", {
/// coreNetworkId: exampleCoreNetwork.id,
/// subnetArns: exampleAwsSubnet.map(__item => __item.arn),
/// vpcArn: exampleAwsVpc.arn,
/// });
/// const example = aws.networkmanager.getCoreNetworkPolicyDocumentOutput({
/// coreNetworkConfigurations: [{
/// asnRanges: ["65022-65534"],
/// edgeLocations: [{
/// location: "us-west-2",
/// asn: "65500",
/// }],
/// }],
/// segments: [{
/// name: "segment",
/// }],
/// segmentActions: [{
/// action: "create-route",
/// segment: "segment",
/// destinationCidrBlocks: ["0.0.0.0/0"],
/// destinations: [exampleVpcAttachment.id],
/// }],
/// });
/// const exampleCoreNetworkPolicyAttachment = new aws.networkmanager.CoreNetworkPolicyAttachment("example", {
/// coreNetworkId: exampleCoreNetwork.id,
/// policyDocument: example.apply(example => example.json),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_global_network = aws.networkmanager.GlobalNetwork("example")
/// base = aws.networkmanager.get_core_network_policy_document(core_network_configurations=[{
/// "asn_ranges": ["65022-65534"],
/// "edge_locations": [{
/// "location": "us-west-2",
/// "asn": "65500",
/// }],
/// }],
/// segments=[{
/// "name": "segment",
/// }])
/// example_core_network = aws.networkmanager.CoreNetwork("example",
/// global_network_id=example_global_network.id,
/// base_policy_document=base.json,
/// create_base_policy=True)
/// example_vpc_attachment = aws.networkmanager.VpcAttachment("example",
/// core_network_id=example_core_network.id,
/// subnet_arns=[__item["arn"] for __item in example_aws_subnet],
/// vpc_arn=example_aws_vpc["arn"])
/// example = aws.networkmanager.get_core_network_policy_document_output(core_network_configurations=[{
/// "asn_ranges": ["65022-65534"],
/// "edge_locations": [{
/// "location": "us-west-2",
/// "asn": "65500",
/// }],
/// }],
/// segments=[{
/// "name": "segment",
/// }],
/// segment_actions=[{
/// "action": "create-route",
/// "segment": "segment",
/// "destination_cidr_blocks": ["0.0.0.0/0"],
/// "destinations": [example_vpc_attachment.id],
/// }])
/// example_core_network_policy_attachment = aws.networkmanager.CoreNetworkPolicyAttachment("example",
/// core_network_id=example_core_network.id,
/// policy_document=example.json)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var exampleGlobalNetwork = new Aws.NetworkManager.GlobalNetwork("example");
///
/// var @base = Aws.NetworkManager.GetCoreNetworkPolicyDocument.Invoke(new()
/// {
/// CoreNetworkConfigurations = new[]
/// {
/// new Aws.NetworkManager.Inputs.GetCoreNetworkPolicyDocumentCoreNetworkConfigurationInputArgs
/// {
/// AsnRanges = new[]
/// {
/// "65022-65534",
/// },
/// EdgeLocations = new[]
/// {
/// new Aws.NetworkManager.Inputs.GetCoreNetworkPolicyDocumentCoreNetworkConfigurationEdgeLocationInputArgs
/// {
/// Location = "us-west-2",
/// Asn = "65500",
/// },
/// },
/// },
/// },
/// Segments = new[]
/// {
/// new Aws.NetworkManager.Inputs.GetCoreNetworkPolicyDocumentSegmentInputArgs
/// {
/// Name = "segment",
/// },
/// },
/// });
///
/// var exampleCoreNetwork = new Aws.NetworkManager.CoreNetwork("example", new()
/// {
/// GlobalNetworkId = exampleGlobalNetwork.Id,
/// BasePolicyDocument = @base.Apply(@base => @base.Apply(getCoreNetworkPolicyDocumentResult => getCoreNetworkPolicyDocumentResult.Json)),
/// CreateBasePolicy = true,
/// });
///
/// var exampleVpcAttachment = new Aws.NetworkManager.VpcAttachment("example", new()
/// {
/// CoreNetworkId = exampleCoreNetwork.Id,
/// SubnetArns = exampleAwsSubnet.Select(__item => __item.Arn).ToList(),
/// VpcArn = exampleAwsVpc.Arn,
/// });
///
/// var example = Aws.NetworkManager.GetCoreNetworkPolicyDocument.Invoke(new()
/// {
/// CoreNetworkConfigurations = new[]
/// {
/// new Aws.NetworkManager.Inputs.GetCoreNetworkPolicyDocumentCoreNetworkConfigurationInputArgs
/// {
/// AsnRanges = new[]
/// {
/// "65022-65534",
/// },
/// EdgeLocations = new[]
/// {
/// new Aws.NetworkManager.Inputs.GetCoreNetworkPolicyDocumentCoreNetworkConfigurationEdgeLocationInputArgs
/// {
/// Location = "us-west-2",
/// Asn = "65500",
/// },
/// },
/// },
/// },
/// Segments = new[]
/// {
/// new Aws.NetworkManager.Inputs.GetCoreNetworkPolicyDocumentSegmentInputArgs
/// {
/// Name = "segment",
/// },
/// },
/// SegmentActions = new[]
/// {
/// new Aws.NetworkManager.Inputs.GetCoreNetworkPolicyDocumentSegmentActionInputArgs
/// {
/// Action = "create-route",
/// Segment = "segment",
/// DestinationCidrBlocks = new[]
/// {
/// "0.0.0.0/0",
/// },
/// Destinations = new[]
/// {
/// exampleVpcAttachment.Id,
/// },
/// },
/// },
/// });
///
/// var exampleCoreNetworkPolicyAttachment = new Aws.NetworkManager.CoreNetworkPolicyAttachment("example", new()
/// {
/// CoreNetworkId = exampleCoreNetwork.Id,
/// PolicyDocument = example.Apply(getCoreNetworkPolicyDocumentResult => getCoreNetworkPolicyDocumentResult.Json),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/networkmanager"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// exampleGlobalNetwork, err := networkmanager.NewGlobalNetwork(ctx, "example", nil)
/// if err != nil {
/// return err
/// }
/// base, err := networkmanager.GetCoreNetworkPolicyDocument(ctx, &networkmanager.GetCoreNetworkPolicyDocumentArgs{
/// CoreNetworkConfigurations: []networkmanager.GetCoreNetworkPolicyDocumentCoreNetworkConfiguration{
/// {
/// AsnRanges: []string{
/// "65022-65534",
/// },
/// EdgeLocations: []networkmanager.GetCoreNetworkPolicyDocumentCoreNetworkConfigurationEdgeLocation{
/// {
/// Location: "us-west-2",
/// Asn: pulumi.StringRef("65500"),
/// },
/// },
/// },
/// },
/// Segments: []networkmanager.GetCoreNetworkPolicyDocumentSegment{
/// {
/// Name: "segment",
/// },
/// },
/// }, nil);
/// if err != nil {
/// return err
/// }
/// exampleCoreNetwork, err := networkmanager.NewCoreNetwork(ctx, "example", &networkmanager.CoreNetworkArgs{
/// GlobalNetworkId: exampleGlobalNetwork.ID(),
/// BasePolicyDocument: pulumi.String(base.Json),
/// CreateBasePolicy: pulumi.Bool(true),
/// })
/// if err != nil {
/// return err
/// }
/// var splat0 []interface{}
/// for _, val0 := range exampleAwsSubnet {
/// splat0 = append(splat0, val0.Arn)
/// }
/// exampleVpcAttachment, err := networkmanager.NewVpcAttachment(ctx, "example", &networkmanager.VpcAttachmentArgs{
/// CoreNetworkId: exampleCoreNetwork.ID(),
/// SubnetArns: toPulumiArray(splat0),
/// VpcArn: pulumi.Any(exampleAwsVpc.Arn),
/// })
/// if err != nil {
/// return err
/// }
/// example := networkmanager.GetCoreNetworkPolicyDocumentOutput(ctx, networkmanager.GetCoreNetworkPolicyDocumentOutputArgs{
/// CoreNetworkConfigurations: networkmanager.GetCoreNetworkPolicyDocumentCoreNetworkConfigurationArray{
/// &networkmanager.GetCoreNetworkPolicyDocumentCoreNetworkConfigurationArgs{
/// AsnRanges: pulumi.StringArray{
/// pulumi.String("65022-65534"),
/// },
/// EdgeLocations: networkmanager.GetCoreNetworkPolicyDocumentCoreNetworkConfigurationEdgeLocationArray{
/// &networkmanager.GetCoreNetworkPolicyDocumentCoreNetworkConfigurationEdgeLocationArgs{
/// Location: pulumi.String("us-west-2"),
/// Asn: pulumi.String("65500"),
/// },
/// },
/// },
/// },
/// Segments: networkmanager.GetCoreNetworkPolicyDocumentSegmentArray{
/// &networkmanager.GetCoreNetworkPolicyDocumentSegmentArgs{
/// Name: pulumi.String("segment"),
/// },
/// },
/// SegmentActions: networkmanager.GetCoreNetworkPolicyDocumentSegmentActionArray{
/// &networkmanager.GetCoreNetworkPolicyDocumentSegmentActionArgs{
/// Action: pulumi.String("create-route"),
/// Segment: pulumi.String("segment"),
/// DestinationCidrBlocks: pulumi.StringArray{
/// pulumi.String("0.0.0.0/0"),
/// },
/// Destinations: pulumi.StringArray{
/// exampleVpcAttachment.ID(),
/// },
/// },
/// },
/// }, nil);
/// _, err = networkmanager.NewCoreNetworkPolicyAttachment(ctx, "example", &networkmanager.CoreNetworkPolicyAttachmentArgs{
/// CoreNetworkId: exampleCoreNetwork.ID(),
/// PolicyDocument: pulumi.String(example.ApplyT(func(example networkmanager.GetCoreNetworkPolicyDocumentResult) (*string, error) {
/// return &example.Json, nil
/// }).(pulumi.StringPtrOutput)),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// func toPulumiArray(arr []) pulumi.Array {
/// var pulumiArr pulumi.Array
/// for _, v := range arr {
/// pulumiArr = append(pulumiArr, pulumi.(v))
/// }
/// return pulumiArr
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.networkmanager.GlobalNetwork;
/// import com.pulumi.aws.networkmanager.NetworkmanagerFunctions;
/// import com.pulumi.aws.networkmanager.inputs.GetCoreNetworkPolicyDocumentArgs;
/// import com.pulumi.aws.networkmanager.CoreNetwork;
/// import com.pulumi.aws.networkmanager.CoreNetworkArgs;
/// import com.pulumi.aws.networkmanager.VpcAttachment;
/// import com.pulumi.aws.networkmanager.VpcAttachmentArgs;
/// import com.pulumi.aws.networkmanager.CoreNetworkPolicyAttachment;
/// import com.pulumi.aws.networkmanager.CoreNetworkPolicyAttachmentArgs;
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
/// var exampleGlobalNetwork = new GlobalNetwork("exampleGlobalNetwork");
///
/// final var base = NetworkmanagerFunctions.getCoreNetworkPolicyDocument(GetCoreNetworkPolicyDocumentArgs.builder()
/// .coreNetworkConfigurations(GetCoreNetworkPolicyDocumentCoreNetworkConfigurationArgs.builder()
/// .asnRanges("65022-65534")
/// .edgeLocations(GetCoreNetworkPolicyDocumentCoreNetworkConfigurationEdgeLocationArgs.builder()
/// .location("us-west-2")
/// .asn("65500")
/// .build())
/// .build())
/// .segments(GetCoreNetworkPolicyDocumentSegmentArgs.builder()
/// .name("segment")
/// .build())
/// .build());
///
/// var exampleCoreNetwork = new CoreNetwork("exampleCoreNetwork", CoreNetworkArgs.builder()
/// .globalNetworkId(exampleGlobalNetwork.id())
/// .basePolicyDocument(base.json())
/// .createBasePolicy(true)
/// .build());
///
/// var exampleVpcAttachment = new VpcAttachment("exampleVpcAttachment", VpcAttachmentArgs.builder()
/// .coreNetworkId(exampleCoreNetwork.id())
/// .subnetArns(exampleAwsSubnet.stream().map(element -> element.arn()).collect(toList()))
/// .vpcArn(exampleAwsVpc.arn())
/// .build());
///
/// final var example = NetworkmanagerFunctions.getCoreNetworkPolicyDocument(GetCoreNetworkPolicyDocumentArgs.builder()
/// .coreNetworkConfigurations(GetCoreNetworkPolicyDocumentCoreNetworkConfigurationArgs.builder()
/// .asnRanges("65022-65534")
/// .edgeLocations(GetCoreNetworkPolicyDocumentCoreNetworkConfigurationEdgeLocationArgs.builder()
/// .location("us-west-2")
/// .asn("65500")
/// .build())
/// .build())
/// .segments(GetCoreNetworkPolicyDocumentSegmentArgs.builder()
/// .name("segment")
/// .build())
/// .segmentActions(GetCoreNetworkPolicyDocumentSegmentActionArgs.builder()
/// .action("create-route")
/// .segment("segment")
/// .destinationCidrBlocks("0.0.0.0/0")
/// .destinations(exampleVpcAttachment.id())
/// .build())
/// .build());
///
/// var exampleCoreNetworkPolicyAttachment = new CoreNetworkPolicyAttachment("exampleCoreNetworkPolicyAttachment", CoreNetworkPolicyAttachmentArgs.builder()
/// .coreNetworkId(exampleCoreNetwork.id())
/// .policyDocument(example.applyValue(_example -> _example.json()))
/// .build());
///
/// }
/// }
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Option 2 -<span pulumi-lang-nodejs=" createBasePolicy " pulumi-lang-dotnet=" CreateBasePolicy " pulumi-lang-go=" createBasePolicy " pulumi-lang-python=" create_base_policy " pulumi-lang-yaml=" createBasePolicy " pulumi-lang-java=" createBasePolicy "> create_base_policy </span>only
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const exampleGlobalNetwork = new aws.networkmanager.GlobalNetwork("example", {});
/// const exampleCoreNetwork = new aws.networkmanager.CoreNetwork("example", {
/// globalNetworkId: exampleGlobalNetwork.id,
/// createBasePolicy: true,
/// });
/// const exampleVpcAttachment = new aws.networkmanager.VpcAttachment("example", {
/// coreNetworkId: exampleCoreNetwork.id,
/// subnetArns: exampleAwsSubnet.map(__item => __item.arn),
/// vpcArn: exampleAwsVpc.arn,
/// });
/// const example = aws.networkmanager.getCoreNetworkPolicyDocumentOutput({
/// coreNetworkConfigurations: [{
/// asnRanges: ["65022-65534"],
/// edgeLocations: [{
/// location: "us-west-2",
/// }],
/// }],
/// segments: [{
/// name: "segment",
/// }],
/// segmentActions: [{
/// action: "create-route",
/// segment: "segment",
/// destinationCidrBlocks: ["0.0.0.0/0"],
/// destinations: [exampleVpcAttachment.id],
/// }],
/// });
/// const exampleCoreNetworkPolicyAttachment = new aws.networkmanager.CoreNetworkPolicyAttachment("example", {
/// coreNetworkId: exampleCoreNetwork.id,
/// policyDocument: example.apply(example => example.json),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_global_network = aws.networkmanager.GlobalNetwork("example")
/// example_core_network = aws.networkmanager.CoreNetwork("example",
/// global_network_id=example_global_network.id,
/// create_base_policy=True)
/// example_vpc_attachment = aws.networkmanager.VpcAttachment("example",
/// core_network_id=example_core_network.id,
/// subnet_arns=[__item["arn"] for __item in example_aws_subnet],
/// vpc_arn=example_aws_vpc["arn"])
/// example = aws.networkmanager.get_core_network_policy_document_output(core_network_configurations=[{
/// "asn_ranges": ["65022-65534"],
/// "edge_locations": [{
/// "location": "us-west-2",
/// }],
/// }],
/// segments=[{
/// "name": "segment",
/// }],
/// segment_actions=[{
/// "action": "create-route",
/// "segment": "segment",
/// "destination_cidr_blocks": ["0.0.0.0/0"],
/// "destinations": [example_vpc_attachment.id],
/// }])
/// example_core_network_policy_attachment = aws.networkmanager.CoreNetworkPolicyAttachment("example",
/// core_network_id=example_core_network.id,
/// policy_document=example.json)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var exampleGlobalNetwork = new Aws.NetworkManager.GlobalNetwork("example");
///
/// var exampleCoreNetwork = new Aws.NetworkManager.CoreNetwork("example", new()
/// {
/// GlobalNetworkId = exampleGlobalNetwork.Id,
/// CreateBasePolicy = true,
/// });
///
/// var exampleVpcAttachment = new Aws.NetworkManager.VpcAttachment("example", new()
/// {
/// CoreNetworkId = exampleCoreNetwork.Id,
/// SubnetArns = exampleAwsSubnet.Select(__item => __item.Arn).ToList(),
/// VpcArn = exampleAwsVpc.Arn,
/// });
///
/// var example = Aws.NetworkManager.GetCoreNetworkPolicyDocument.Invoke(new()
/// {
/// CoreNetworkConfigurations = new[]
/// {
/// new Aws.NetworkManager.Inputs.GetCoreNetworkPolicyDocumentCoreNetworkConfigurationInputArgs
/// {
/// AsnRanges = new[]
/// {
/// "65022-65534",
/// },
/// EdgeLocations = new[]
/// {
/// new Aws.NetworkManager.Inputs.GetCoreNetworkPolicyDocumentCoreNetworkConfigurationEdgeLocationInputArgs
/// {
/// Location = "us-west-2",
/// },
/// },
/// },
/// },
/// Segments = new[]
/// {
/// new Aws.NetworkManager.Inputs.GetCoreNetworkPolicyDocumentSegmentInputArgs
/// {
/// Name = "segment",
/// },
/// },
/// SegmentActions = new[]
/// {
/// new Aws.NetworkManager.Inputs.GetCoreNetworkPolicyDocumentSegmentActionInputArgs
/// {
/// Action = "create-route",
/// Segment = "segment",
/// DestinationCidrBlocks = new[]
/// {
/// "0.0.0.0/0",
/// },
/// Destinations = new[]
/// {
/// exampleVpcAttachment.Id,
/// },
/// },
/// },
/// });
///
/// var exampleCoreNetworkPolicyAttachment = new Aws.NetworkManager.CoreNetworkPolicyAttachment("example", new()
/// {
/// CoreNetworkId = exampleCoreNetwork.Id,
/// PolicyDocument = example.Apply(getCoreNetworkPolicyDocumentResult => getCoreNetworkPolicyDocumentResult.Json),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/networkmanager"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// exampleGlobalNetwork, err := networkmanager.NewGlobalNetwork(ctx, "example", nil)
/// if err != nil {
/// return err
/// }
/// exampleCoreNetwork, err := networkmanager.NewCoreNetwork(ctx, "example", &networkmanager.CoreNetworkArgs{
/// GlobalNetworkId: exampleGlobalNetwork.ID(),
/// CreateBasePolicy: pulumi.Bool(true),
/// })
/// if err != nil {
/// return err
/// }
/// var splat0 []interface{}
/// for _, val0 := range exampleAwsSubnet {
/// splat0 = append(splat0, val0.Arn)
/// }
/// exampleVpcAttachment, err := networkmanager.NewVpcAttachment(ctx, "example", &networkmanager.VpcAttachmentArgs{
/// CoreNetworkId: exampleCoreNetwork.ID(),
/// SubnetArns: toPulumiArray(splat0),
/// VpcArn: pulumi.Any(exampleAwsVpc.Arn),
/// })
/// if err != nil {
/// return err
/// }
/// example := networkmanager.GetCoreNetworkPolicyDocumentOutput(ctx, networkmanager.GetCoreNetworkPolicyDocumentOutputArgs{
/// CoreNetworkConfigurations: networkmanager.GetCoreNetworkPolicyDocumentCoreNetworkConfigurationArray{
/// &networkmanager.GetCoreNetworkPolicyDocumentCoreNetworkConfigurationArgs{
/// AsnRanges: pulumi.StringArray{
/// pulumi.String("65022-65534"),
/// },
/// EdgeLocations: networkmanager.GetCoreNetworkPolicyDocumentCoreNetworkConfigurationEdgeLocationArray{
/// &networkmanager.GetCoreNetworkPolicyDocumentCoreNetworkConfigurationEdgeLocationArgs{
/// Location: pulumi.String("us-west-2"),
/// },
/// },
/// },
/// },
/// Segments: networkmanager.GetCoreNetworkPolicyDocumentSegmentArray{
/// &networkmanager.GetCoreNetworkPolicyDocumentSegmentArgs{
/// Name: pulumi.String("segment"),
/// },
/// },
/// SegmentActions: networkmanager.GetCoreNetworkPolicyDocumentSegmentActionArray{
/// &networkmanager.GetCoreNetworkPolicyDocumentSegmentActionArgs{
/// Action: pulumi.String("create-route"),
/// Segment: pulumi.String("segment"),
/// DestinationCidrBlocks: pulumi.StringArray{
/// pulumi.String("0.0.0.0/0"),
/// },
/// Destinations: pulumi.StringArray{
/// exampleVpcAttachment.ID(),
/// },
/// },
/// },
/// }, nil);
/// _, err = networkmanager.NewCoreNetworkPolicyAttachment(ctx, "example", &networkmanager.CoreNetworkPolicyAttachmentArgs{
/// CoreNetworkId: exampleCoreNetwork.ID(),
/// PolicyDocument: pulumi.String(example.ApplyT(func(example networkmanager.GetCoreNetworkPolicyDocumentResult) (*string, error) {
/// return &example.Json, nil
/// }).(pulumi.StringPtrOutput)),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// func toPulumiArray(arr []) pulumi.Array {
/// var pulumiArr pulumi.Array
/// for _, v := range arr {
/// pulumiArr = append(pulumiArr, pulumi.(v))
/// }
/// return pulumiArr
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.networkmanager.GlobalNetwork;
/// import com.pulumi.aws.networkmanager.CoreNetwork;
/// import com.pulumi.aws.networkmanager.CoreNetworkArgs;
/// import com.pulumi.aws.networkmanager.VpcAttachment;
/// import com.pulumi.aws.networkmanager.VpcAttachmentArgs;
/// import com.pulumi.aws.networkmanager.NetworkmanagerFunctions;
/// import com.pulumi.aws.networkmanager.inputs.GetCoreNetworkPolicyDocumentArgs;
/// import com.pulumi.aws.networkmanager.CoreNetworkPolicyAttachment;
/// import com.pulumi.aws.networkmanager.CoreNetworkPolicyAttachmentArgs;
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
/// var exampleGlobalNetwork = new GlobalNetwork("exampleGlobalNetwork");
///
/// var exampleCoreNetwork = new CoreNetwork("exampleCoreNetwork", CoreNetworkArgs.builder()
/// .globalNetworkId(exampleGlobalNetwork.id())
/// .createBasePolicy(true)
/// .build());
///
/// var exampleVpcAttachment = new VpcAttachment("exampleVpcAttachment", VpcAttachmentArgs.builder()
/// .coreNetworkId(exampleCoreNetwork.id())
/// .subnetArns(exampleAwsSubnet.stream().map(element -> element.arn()).collect(toList()))
/// .vpcArn(exampleAwsVpc.arn())
/// .build());
///
/// final var example = NetworkmanagerFunctions.getCoreNetworkPolicyDocument(GetCoreNetworkPolicyDocumentArgs.builder()
/// .coreNetworkConfigurations(GetCoreNetworkPolicyDocumentCoreNetworkConfigurationArgs.builder()
/// .asnRanges("65022-65534")
/// .edgeLocations(GetCoreNetworkPolicyDocumentCoreNetworkConfigurationEdgeLocationArgs.builder()
/// .location("us-west-2")
/// .build())
/// .build())
/// .segments(GetCoreNetworkPolicyDocumentSegmentArgs.builder()
/// .name("segment")
/// .build())
/// .segmentActions(GetCoreNetworkPolicyDocumentSegmentActionArgs.builder()
/// .action("create-route")
/// .segment("segment")
/// .destinationCidrBlocks("0.0.0.0/0")
/// .destinations(exampleVpcAttachment.id())
/// .build())
/// .build());
///
/// var exampleCoreNetworkPolicyAttachment = new CoreNetworkPolicyAttachment("exampleCoreNetworkPolicyAttachment", CoreNetworkPolicyAttachmentArgs.builder()
/// .coreNetworkId(exampleCoreNetwork.id())
/// .policyDocument(example.applyValue(_example -> _example.json()))
/// .build());
///
/// }
/// }
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### With VPC Attachment (Multi-Region)
///
/// The example below illustrates the scenario where your policy document has static routes pointing to VPC attachments and you want to attach your VPCs to the core network before applying the desired policy document. Set the <span pulumi-lang-nodejs="`createBasePolicy`" pulumi-lang-dotnet="`CreateBasePolicy`" pulumi-lang-go="`createBasePolicy`" pulumi-lang-python="`create_base_policy`" pulumi-lang-yaml="`createBasePolicy`" pulumi-lang-java="`createBasePolicy`">`create_base_policy`</span> argument of the <span pulumi-lang-nodejs="`aws.networkmanager.CoreNetwork`" pulumi-lang-dotnet="`aws.networkmanager.CoreNetwork`" pulumi-lang-go="`networkmanager.CoreNetwork`" pulumi-lang-python="`networkmanager.CoreNetwork`" pulumi-lang-yaml="`aws.networkmanager.CoreNetwork`" pulumi-lang-java="`aws.networkmanager.CoreNetwork`">`aws.networkmanager.CoreNetwork`</span> resource to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> if your core network does not currently have any `LIVE` policies (e.g. this is the first `pulumi up` with the core network resource), since a `LIVE` policy is required before VPCs can be attached to the core network. Otherwise, if your core network already has a `LIVE` policy, you may exclude the <span pulumi-lang-nodejs="`createBasePolicy`" pulumi-lang-dotnet="`CreateBasePolicy`" pulumi-lang-go="`createBasePolicy`" pulumi-lang-python="`create_base_policy`" pulumi-lang-yaml="`createBasePolicy`" pulumi-lang-java="`createBasePolicy`">`create_base_policy`</span> argument. For multi-region in a core network that does not yet have a `LIVE` policy, there are 2 options:
///
/// - Option 1: Use the <span pulumi-lang-nodejs="`basePolicyDocument`" pulumi-lang-dotnet="`BasePolicyDocument`" pulumi-lang-go="`basePolicyDocument`" pulumi-lang-python="`base_policy_document`" pulumi-lang-yaml="`basePolicyDocument`" pulumi-lang-java="`basePolicyDocument`">`base_policy_document`</span> argument that allows the most customizations to a base policy. Use this to customize the <span pulumi-lang-nodejs="`edgeLocations`" pulumi-lang-dotnet="`EdgeLocations`" pulumi-lang-go="`edgeLocations`" pulumi-lang-python="`edge_locations`" pulumi-lang-yaml="`edgeLocations`" pulumi-lang-java="`edgeLocations`">`edge_locations`</span> <span pulumi-lang-nodejs="`asn`" pulumi-lang-dotnet="`Asn`" pulumi-lang-go="`asn`" pulumi-lang-python="`asn`" pulumi-lang-yaml="`asn`" pulumi-lang-java="`asn`">`asn`</span>. In the example below, `us-west-2`, `us-east-1` and specific ASNs are used in the base policy.
/// - Option 2: Pass a list of regions to the <span pulumi-lang-nodejs="`aws.networkmanager.CoreNetwork`" pulumi-lang-dotnet="`aws.networkmanager.CoreNetwork`" pulumi-lang-go="`networkmanager.CoreNetwork`" pulumi-lang-python="`networkmanager.CoreNetwork`" pulumi-lang-yaml="`aws.networkmanager.CoreNetwork`" pulumi-lang-java="`aws.networkmanager.CoreNetwork`">`aws.networkmanager.CoreNetwork`</span> <span pulumi-lang-nodejs="`basePolicyRegions`" pulumi-lang-dotnet="`BasePolicyRegions`" pulumi-lang-go="`basePolicyRegions`" pulumi-lang-python="`base_policy_regions`" pulumi-lang-yaml="`basePolicyRegions`" pulumi-lang-java="`basePolicyRegions`">`base_policy_regions`</span> argument. In the example below, `us-west-2` and `us-east-1` are specified in the base policy.
///
/// ### Option 1 - using<span pulumi-lang-nodejs=" basePolicyDocument
/// " pulumi-lang-dotnet=" BasePolicyDocument
/// " pulumi-lang-go=" basePolicyDocument
/// " pulumi-lang-python=" base_policy_document
/// " pulumi-lang-yaml=" basePolicyDocument
/// " pulumi-lang-java=" basePolicyDocument
/// "> base_policy_document
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const exampleGlobalNetwork = new aws.networkmanager.GlobalNetwork("example", {});
/// const base = aws.networkmanager.getCoreNetworkPolicyDocument({
/// coreNetworkConfigurations: [{
/// asnRanges: ["65022-65534"],
/// edgeLocations: [
/// {
/// location: "us-west-2",
/// asn: "65500",
/// },
/// {
/// location: "us-east-1",
/// asn: "65501",
/// },
/// ],
/// }],
/// segments: [{
/// name: "segment",
/// }],
/// });
/// const exampleCoreNetwork = new aws.networkmanager.CoreNetwork("example", {
/// globalNetworkId: exampleGlobalNetwork.id,
/// basePolicyDocument: base.then(base => base.json),
/// createBasePolicy: true,
/// });
/// const exampleUsWest2 = new aws.networkmanager.VpcAttachment("example_us_west_2", {
/// coreNetworkId: exampleCoreNetwork.id,
/// subnetArns: exampleUsWest2AwsSubnet.map(__item => __item.arn),
/// vpcArn: exampleUsWest2AwsVpc.arn,
/// });
/// const exampleUsEast1 = new aws.networkmanager.VpcAttachment("example_us_east_1", {
/// coreNetworkId: exampleCoreNetwork.id,
/// subnetArns: exampleUsEast1AwsSubnet.map(__item => __item.arn),
/// vpcArn: exampleUsEast1AwsVpc.arn,
/// });
/// const example = aws.networkmanager.getCoreNetworkPolicyDocumentOutput({
/// coreNetworkConfigurations: [{
/// asnRanges: ["65022-65534"],
/// edgeLocations: [
/// {
/// location: "us-west-2",
/// asn: "65500",
/// },
/// {
/// location: "us-east-1",
/// asn: "65501",
/// },
/// ],
/// }],
/// segments: [
/// {
/// name: "segment",
/// },
/// {
/// name: "segment2",
/// },
/// ],
/// segmentActions: [
/// {
/// action: "create-route",
/// segment: "segment",
/// destinationCidrBlocks: ["10.0.0.0/16"],
/// destinations: [exampleUsWest2.id],
/// },
/// {
/// action: "create-route",
/// segment: "segment",
/// destinationCidrBlocks: ["10.1.0.0/16"],
/// destinations: [exampleUsEast1.id],
/// },
/// ],
/// });
/// const exampleCoreNetworkPolicyAttachment = new aws.networkmanager.CoreNetworkPolicyAttachment("example", {
/// coreNetworkId: exampleCoreNetwork.id,
/// policyDocument: example.apply(example => example.json),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_global_network = aws.networkmanager.GlobalNetwork("example")
/// base = aws.networkmanager.get_core_network_policy_document(core_network_configurations=[{
/// "asn_ranges": ["65022-65534"],
/// "edge_locations": [
/// {
/// "location": "us-west-2",
/// "asn": "65500",
/// },
/// {
/// "location": "us-east-1",
/// "asn": "65501",
/// },
/// ],
/// }],
/// segments=[{
/// "name": "segment",
/// }])
/// example_core_network = aws.networkmanager.CoreNetwork("example",
/// global_network_id=example_global_network.id,
/// base_policy_document=base.json,
/// create_base_policy=True)
/// example_us_west2 = aws.networkmanager.VpcAttachment("example_us_west_2",
/// core_network_id=example_core_network.id,
/// subnet_arns=[__item["arn"] for __item in example_us_west2_aws_subnet],
/// vpc_arn=example_us_west2_aws_vpc["arn"])
/// example_us_east1 = aws.networkmanager.VpcAttachment("example_us_east_1",
/// core_network_id=example_core_network.id,
/// subnet_arns=[__item["arn"] for __item in example_us_east1_aws_subnet],
/// vpc_arn=example_us_east1_aws_vpc["arn"])
/// example = aws.networkmanager.get_core_network_policy_document_output(core_network_configurations=[{
/// "asn_ranges": ["65022-65534"],
/// "edge_locations": [
/// {
/// "location": "us-west-2",
/// "asn": "65500",
/// },
/// {
/// "location": "us-east-1",
/// "asn": "65501",
/// },
/// ],
/// }],
/// segments=[
/// {
/// "name": "segment",
/// },
/// {
/// "name": "segment2",
/// },
/// ],
/// segment_actions=[
/// {
/// "action": "create-route",
/// "segment": "segment",
/// "destination_cidr_blocks": ["10.0.0.0/16"],
/// "destinations": [example_us_west2.id],
/// },
/// {
/// "action": "create-route",
/// "segment": "segment",
/// "destination_cidr_blocks": ["10.1.0.0/16"],
/// "destinations": [example_us_east1.id],
/// },
/// ])
/// example_core_network_policy_attachment = aws.networkmanager.CoreNetworkPolicyAttachment("example",
/// core_network_id=example_core_network.id,
/// policy_document=example.json)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var exampleGlobalNetwork = new Aws.NetworkManager.GlobalNetwork("example");
///
/// var @base = Aws.NetworkManager.GetCoreNetworkPolicyDocument.Invoke(new()
/// {
/// CoreNetworkConfigurations = new[]
/// {
/// new Aws.NetworkManager.Inputs.GetCoreNetworkPolicyDocumentCoreNetworkConfigurationInputArgs
/// {
/// AsnRanges = new[]
/// {
/// "65022-65534",
/// },
/// EdgeLocations = new[]
/// {
/// new Aws.NetworkManager.Inputs.GetCoreNetworkPolicyDocumentCoreNetworkConfigurationEdgeLocationInputArgs
/// {
/// Location = "us-west-2",
/// Asn = "65500",
/// },
/// new Aws.NetworkManager.Inputs.GetCoreNetworkPolicyDocumentCoreNetworkConfigurationEdgeLocationInputArgs
/// {
/// Location = "us-east-1",
/// Asn = "65501",
/// },
/// },
/// },
/// },
/// Segments = new[]
/// {
/// new Aws.NetworkManager.Inputs.GetCoreNetworkPolicyDocumentSegmentInputArgs
/// {
/// Name = "segment",
/// },
/// },
/// });
///
/// var exampleCoreNetwork = new Aws.NetworkManager.CoreNetwork("example", new()
/// {
/// GlobalNetworkId = exampleGlobalNetwork.Id,
/// BasePolicyDocument = @base.Apply(@base => @base.Apply(getCoreNetworkPolicyDocumentResult => getCoreNetworkPolicyDocumentResult.Json)),
/// CreateBasePolicy = true,
/// });
///
/// var exampleUsWest2 = new Aws.NetworkManager.VpcAttachment("example_us_west_2", new()
/// {
/// CoreNetworkId = exampleCoreNetwork.Id,
/// SubnetArns = exampleUsWest2AwsSubnet.Select(__item => __item.Arn).ToList(),
/// VpcArn = exampleUsWest2AwsVpc.Arn,
/// });
///
/// var exampleUsEast1 = new Aws.NetworkManager.VpcAttachment("example_us_east_1", new()
/// {
/// CoreNetworkId = exampleCoreNetwork.Id,
/// SubnetArns = exampleUsEast1AwsSubnet.Select(__item => __item.Arn).ToList(),
/// VpcArn = exampleUsEast1AwsVpc.Arn,
/// });
///
/// var example = Aws.NetworkManager.GetCoreNetworkPolicyDocument.Invoke(new()
/// {
/// CoreNetworkConfigurations = new[]
/// {
/// new Aws.NetworkManager.Inputs.GetCoreNetworkPolicyDocumentCoreNetworkConfigurationInputArgs
/// {
/// AsnRanges = new[]
/// {
/// "65022-65534",
/// },
/// EdgeLocations = new[]
/// {
/// new Aws.NetworkManager.Inputs.GetCoreNetworkPolicyDocumentCoreNetworkConfigurationEdgeLocationInputArgs
/// {
/// Location = "us-west-2",
/// Asn = "65500",
/// },
/// new Aws.NetworkManager.Inputs.GetCoreNetworkPolicyDocumentCoreNetworkConfigurationEdgeLocationInputArgs
/// {
/// Location = "us-east-1",
/// Asn = "65501",
/// },
/// },
/// },
/// },
/// Segments = new[]
/// {
/// new Aws.NetworkManager.Inputs.GetCoreNetworkPolicyDocumentSegmentInputArgs
/// {
/// Name = "segment",
/// },
/// new Aws.NetworkManager.Inputs.GetCoreNetworkPolicyDocumentSegmentInputArgs
/// {
/// Name = "segment2",
/// },
/// },
/// SegmentActions = new[]
/// {
/// new Aws.NetworkManager.Inputs.GetCoreNetworkPolicyDocumentSegmentActionInputArgs
/// {
/// Action = "create-route",
/// Segment = "segment",
/// DestinationCidrBlocks = new[]
/// {
/// "10.0.0.0/16",
/// },
/// Destinations = new[]
/// {
/// exampleUsWest2.Id,
/// },
/// },
/// new Aws.NetworkManager.Inputs.GetCoreNetworkPolicyDocumentSegmentActionInputArgs
/// {
/// Action = "create-route",
/// Segment = "segment",
/// DestinationCidrBlocks = new[]
/// {
/// "10.1.0.0/16",
/// },
/// Destinations = new[]
/// {
/// exampleUsEast1.Id,
/// },
/// },
/// },
/// });
///
/// var exampleCoreNetworkPolicyAttachment = new Aws.NetworkManager.CoreNetworkPolicyAttachment("example", new()
/// {
/// CoreNetworkId = exampleCoreNetwork.Id,
/// PolicyDocument = example.Apply(getCoreNetworkPolicyDocumentResult => getCoreNetworkPolicyDocumentResult.Json),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/networkmanager"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// exampleGlobalNetwork, err := networkmanager.NewGlobalNetwork(ctx, "example", nil)
/// if err != nil {
/// return err
/// }
/// base, err := networkmanager.GetCoreNetworkPolicyDocument(ctx, &networkmanager.GetCoreNetworkPolicyDocumentArgs{
/// CoreNetworkConfigurations: []networkmanager.GetCoreNetworkPolicyDocumentCoreNetworkConfiguration{
/// {
/// AsnRanges: []string{
/// "65022-65534",
/// },
/// EdgeLocations: []networkmanager.GetCoreNetworkPolicyDocumentCoreNetworkConfigurationEdgeLocation{
/// {
/// Location: "us-west-2",
/// Asn: pulumi.StringRef("65500"),
/// },
/// {
/// Location: "us-east-1",
/// Asn: pulumi.StringRef("65501"),
/// },
/// },
/// },
/// },
/// Segments: []networkmanager.GetCoreNetworkPolicyDocumentSegment{
/// {
/// Name: "segment",
/// },
/// },
/// }, nil);
/// if err != nil {
/// return err
/// }
/// exampleCoreNetwork, err := networkmanager.NewCoreNetwork(ctx, "example", &networkmanager.CoreNetworkArgs{
/// GlobalNetworkId: exampleGlobalNetwork.ID(),
/// BasePolicyDocument: pulumi.String(base.Json),
/// CreateBasePolicy: pulumi.Bool(true),
/// })
/// if err != nil {
/// return err
/// }
/// var splat0 []interface{}
/// for _, val0 := range exampleUsWest2AwsSubnet {
/// splat0 = append(splat0, val0.Arn)
/// }
/// exampleUsWest2, err := networkmanager.NewVpcAttachment(ctx, "example_us_west_2", &networkmanager.VpcAttachmentArgs{
/// CoreNetworkId: exampleCoreNetwork.ID(),
/// SubnetArns: toPulumiArray(splat0),
/// VpcArn: pulumi.Any(exampleUsWest2AwsVpc.Arn),
/// })
/// if err != nil {
/// return err
/// }
/// var splat1 []interface{}
/// for _, val0 := range exampleUsEast1AwsSubnet {
/// splat1 = append(splat1, val0.Arn)
/// }
/// exampleUsEast1, err := networkmanager.NewVpcAttachment(ctx, "example_us_east_1", &networkmanager.VpcAttachmentArgs{
/// CoreNetworkId: exampleCoreNetwork.ID(),
/// SubnetArns: toPulumiArray(splat1),
/// VpcArn: pulumi.Any(exampleUsEast1AwsVpc.Arn),
/// })
/// if err != nil {
/// return err
/// }
/// example := networkmanager.GetCoreNetworkPolicyDocumentOutput(ctx, networkmanager.GetCoreNetworkPolicyDocumentOutputArgs{
/// CoreNetworkConfigurations: networkmanager.GetCoreNetworkPolicyDocumentCoreNetworkConfigurationArray{
/// &networkmanager.GetCoreNetworkPolicyDocumentCoreNetworkConfigurationArgs{
/// AsnRanges: pulumi.StringArray{
/// pulumi.String("65022-65534"),
/// },
/// EdgeLocations: networkmanager.GetCoreNetworkPolicyDocumentCoreNetworkConfigurationEdgeLocationArray{
/// &networkmanager.GetCoreNetworkPolicyDocumentCoreNetworkConfigurationEdgeLocationArgs{
/// Location: pulumi.String("us-west-2"),
/// Asn: pulumi.String("65500"),
/// },
/// &networkmanager.GetCoreNetworkPolicyDocumentCoreNetworkConfigurationEdgeLocationArgs{
/// Location: pulumi.String("us-east-1"),
/// Asn: pulumi.String("65501"),
/// },
/// },
/// },
/// },
/// Segments: networkmanager.GetCoreNetworkPolicyDocumentSegmentArray{
/// &networkmanager.GetCoreNetworkPolicyDocumentSegmentArgs{
/// Name: pulumi.String("segment"),
/// },
/// &networkmanager.GetCoreNetworkPolicyDocumentSegmentArgs{
/// Name: pulumi.String("segment2"),
/// },
/// },
/// SegmentActions: networkmanager.GetCoreNetworkPolicyDocumentSegmentActionArray{
/// &networkmanager.GetCoreNetworkPolicyDocumentSegmentActionArgs{
/// Action: pulumi.String("create-route"),
/// Segment: pulumi.String("segment"),
/// DestinationCidrBlocks: pulumi.StringArray{
/// pulumi.String("10.0.0.0/16"),
/// },
/// Destinations: pulumi.StringArray{
/// exampleUsWest2.ID(),
/// },
/// },
/// &networkmanager.GetCoreNetworkPolicyDocumentSegmentActionArgs{
/// Action: pulumi.String("create-route"),
/// Segment: pulumi.String("segment"),
/// DestinationCidrBlocks: pulumi.StringArray{
/// pulumi.String("10.1.0.0/16"),
/// },
/// Destinations: pulumi.StringArray{
/// exampleUsEast1.ID(),
/// },
/// },
/// },
/// }, nil);
/// _, err = networkmanager.NewCoreNetworkPolicyAttachment(ctx, "example", &networkmanager.CoreNetworkPolicyAttachmentArgs{
/// CoreNetworkId: exampleCoreNetwork.ID(),
/// PolicyDocument: pulumi.String(example.ApplyT(func(example networkmanager.GetCoreNetworkPolicyDocumentResult) (*string, error) {
/// return &example.Json, nil
/// }).(pulumi.StringPtrOutput)),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// func toPulumiArray(arr []) pulumi.Array {
/// var pulumiArr pulumi.Array
/// for _, v := range arr {
/// pulumiArr = append(pulumiArr, pulumi.(v))
/// }
/// return pulumiArr
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.networkmanager.GlobalNetwork;
/// import com.pulumi.aws.networkmanager.NetworkmanagerFunctions;
/// import com.pulumi.aws.networkmanager.inputs.GetCoreNetworkPolicyDocumentArgs;
/// import com.pulumi.aws.networkmanager.CoreNetwork;
/// import com.pulumi.aws.networkmanager.CoreNetworkArgs;
/// import com.pulumi.aws.networkmanager.VpcAttachment;
/// import com.pulumi.aws.networkmanager.VpcAttachmentArgs;
/// import com.pulumi.aws.networkmanager.CoreNetworkPolicyAttachment;
/// import com.pulumi.aws.networkmanager.CoreNetworkPolicyAttachmentArgs;
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
/// var exampleGlobalNetwork = new GlobalNetwork("exampleGlobalNetwork");
///
/// final var base = NetworkmanagerFunctions.getCoreNetworkPolicyDocument(GetCoreNetworkPolicyDocumentArgs.builder()
/// .coreNetworkConfigurations(GetCoreNetworkPolicyDocumentCoreNetworkConfigurationArgs.builder()
/// .asnRanges("65022-65534")
/// .edgeLocations(
/// GetCoreNetworkPolicyDocumentCoreNetworkConfigurationEdgeLocationArgs.builder()
/// .location("us-west-2")
/// .asn("65500")
/// .build(),
/// GetCoreNetworkPolicyDocumentCoreNetworkConfigurationEdgeLocationArgs.builder()
/// .location("us-east-1")
/// .asn("65501")
/// .build())
/// .build())
/// .segments(GetCoreNetworkPolicyDocumentSegmentArgs.builder()
/// .name("segment")
/// .build())
/// .build());
///
/// var exampleCoreNetwork = new CoreNetwork("exampleCoreNetwork", CoreNetworkArgs.builder()
/// .globalNetworkId(exampleGlobalNetwork.id())
/// .basePolicyDocument(base.json())
/// .createBasePolicy(true)
/// .build());
///
/// var exampleUsWest2 = new VpcAttachment("exampleUsWest2", VpcAttachmentArgs.builder()
/// .coreNetworkId(exampleCoreNetwork.id())
/// .subnetArns(exampleUsWest2AwsSubnet.stream().map(element -> element.arn()).collect(toList()))
/// .vpcArn(exampleUsWest2AwsVpc.arn())
/// .build());
///
/// var exampleUsEast1 = new VpcAttachment("exampleUsEast1", VpcAttachmentArgs.builder()
/// .coreNetworkId(exampleCoreNetwork.id())
/// .subnetArns(exampleUsEast1AwsSubnet.stream().map(element -> element.arn()).collect(toList()))
/// .vpcArn(exampleUsEast1AwsVpc.arn())
/// .build());
///
/// final var example = NetworkmanagerFunctions.getCoreNetworkPolicyDocument(GetCoreNetworkPolicyDocumentArgs.builder()
/// .coreNetworkConfigurations(GetCoreNetworkPolicyDocumentCoreNetworkConfigurationArgs.builder()
/// .asnRanges("65022-65534")
/// .edgeLocations(
/// GetCoreNetworkPolicyDocumentCoreNetworkConfigurationEdgeLocationArgs.builder()
/// .location("us-west-2")
/// .asn("65500")
/// .build(),
/// GetCoreNetworkPolicyDocumentCoreNetworkConfigurationEdgeLocationArgs.builder()
/// .location("us-east-1")
/// .asn("65501")
/// .build())
/// .build())
/// .segments(
/// GetCoreNetworkPolicyDocumentSegmentArgs.builder()
/// .name("segment")
/// .build(),
/// GetCoreNetworkPolicyDocumentSegmentArgs.builder()
/// .name("segment2")
/// .build())
/// .segmentActions(
/// GetCoreNetworkPolicyDocumentSegmentActionArgs.builder()
/// .action("create-route")
/// .segment("segment")
/// .destinationCidrBlocks("10.0.0.0/16")
/// .destinations(exampleUsWest2.id())
/// .build(),
/// GetCoreNetworkPolicyDocumentSegmentActionArgs.builder()
/// .action("create-route")
/// .segment("segment")
/// .destinationCidrBlocks("10.1.0.0/16")
/// .destinations(exampleUsEast1.id())
/// .build())
/// .build());
///
/// var exampleCoreNetworkPolicyAttachment = new CoreNetworkPolicyAttachment("exampleCoreNetworkPolicyAttachment", CoreNetworkPolicyAttachmentArgs.builder()
/// .coreNetworkId(exampleCoreNetwork.id())
/// .policyDocument(example.applyValue(_example -> _example.json()))
/// .build());
///
/// }
/// }
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Option 2 - using<span pulumi-lang-nodejs=" basePolicyRegions
/// " pulumi-lang-dotnet=" BasePolicyRegions
/// " pulumi-lang-go=" basePolicyRegions
/// " pulumi-lang-python=" base_policy_regions
/// " pulumi-lang-yaml=" basePolicyRegions
/// " pulumi-lang-java=" basePolicyRegions
/// "> base_policy_regions
/// </span>
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const exampleGlobalNetwork = new aws.networkmanager.GlobalNetwork("example", {});
/// const exampleCoreNetwork = new aws.networkmanager.CoreNetwork("example", {
/// globalNetworkId: exampleGlobalNetwork.id,
/// basePolicyRegions: [
/// "us-west-2",
/// "us-east-1",
/// ],
/// createBasePolicy: true,
/// });
/// const exampleUsWest2 = new aws.networkmanager.VpcAttachment("example_us_west_2", {
/// coreNetworkId: exampleCoreNetwork.id,
/// subnetArns: exampleUsWest2AwsSubnet.map(__item => __item.arn),
/// vpcArn: exampleUsWest2AwsVpc.arn,
/// });
/// const exampleUsEast1 = new aws.networkmanager.VpcAttachment("example_us_east_1", {
/// coreNetworkId: exampleCoreNetwork.id,
/// subnetArns: exampleUsEast1AwsSubnet.map(__item => __item.arn),
/// vpcArn: exampleUsEast1AwsVpc.arn,
/// });
/// const example = aws.networkmanager.getCoreNetworkPolicyDocumentOutput({
/// coreNetworkConfigurations: [{
/// asnRanges: ["65022-65534"],
/// edgeLocations: [
/// {
/// location: "us-west-2",
/// },
/// {
/// location: "us-east-1",
/// },
/// ],
/// }],
/// segments: [
/// {
/// name: "segment",
/// },
/// {
/// name: "segment2",
/// },
/// ],
/// segmentActions: [
/// {
/// action: "create-route",
/// segment: "segment",
/// destinationCidrBlocks: ["10.0.0.0/16"],
/// destinations: [exampleUsWest2.id],
/// },
/// {
/// action: "create-route",
/// segment: "segment",
/// destinationCidrBlocks: ["10.1.0.0/16"],
/// destinations: [exampleUsEast1.id],
/// },
/// ],
/// });
/// const exampleCoreNetworkPolicyAttachment = new aws.networkmanager.CoreNetworkPolicyAttachment("example", {
/// coreNetworkId: exampleCoreNetwork.id,
/// policyDocument: example.apply(example => example.json),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_global_network = aws.networkmanager.GlobalNetwork("example")
/// example_core_network = aws.networkmanager.CoreNetwork("example",
/// global_network_id=example_global_network.id,
/// base_policy_regions=[
/// "us-west-2",
/// "us-east-1",
/// ],
/// create_base_policy=True)
/// example_us_west2 = aws.networkmanager.VpcAttachment("example_us_west_2",
/// core_network_id=example_core_network.id,
/// subnet_arns=[__item["arn"] for __item in example_us_west2_aws_subnet],
/// vpc_arn=example_us_west2_aws_vpc["arn"])
/// example_us_east1 = aws.networkmanager.VpcAttachment("example_us_east_1",
/// core_network_id=example_core_network.id,
/// subnet_arns=[__item["arn"] for __item in example_us_east1_aws_subnet],
/// vpc_arn=example_us_east1_aws_vpc["arn"])
/// example = aws.networkmanager.get_core_network_policy_document_output(core_network_configurations=[{
/// "asn_ranges": ["65022-65534"],
/// "edge_locations": [
/// {
/// "location": "us-west-2",
/// },
/// {
/// "location": "us-east-1",
/// },
/// ],
/// }],
/// segments=[
/// {
/// "name": "segment",
/// },
/// {
/// "name": "segment2",
/// },
/// ],
/// segment_actions=[
/// {
/// "action": "create-route",
/// "segment": "segment",
/// "destination_cidr_blocks": ["10.0.0.0/16"],
/// "destinations": [example_us_west2.id],
/// },
/// {
/// "action": "create-route",
/// "segment": "segment",
/// "destination_cidr_blocks": ["10.1.0.0/16"],
/// "destinations": [example_us_east1.id],
/// },
/// ])
/// example_core_network_policy_attachment = aws.networkmanager.CoreNetworkPolicyAttachment("example",
/// core_network_id=example_core_network.id,
/// policy_document=example.json)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var exampleGlobalNetwork = new Aws.NetworkManager.GlobalNetwork("example");
///
/// var exampleCoreNetwork = new Aws.NetworkManager.CoreNetwork("example", new()
/// {
/// GlobalNetworkId = exampleGlobalNetwork.Id,
/// BasePolicyRegions = new[]
/// {
/// "us-west-2",
/// "us-east-1",
/// },
/// CreateBasePolicy = true,
/// });
///
/// var exampleUsWest2 = new Aws.NetworkManager.VpcAttachment("example_us_west_2", new()
/// {
/// CoreNetworkId = exampleCoreNetwork.Id,
/// SubnetArns = exampleUsWest2AwsSubnet.Select(__item => __item.Arn).ToList(),
/// VpcArn = exampleUsWest2AwsVpc.Arn,
/// });
///
/// var exampleUsEast1 = new Aws.NetworkManager.VpcAttachment("example_us_east_1", new()
/// {
/// CoreNetworkId = exampleCoreNetwork.Id,
/// SubnetArns = exampleUsEast1AwsSubnet.Select(__item => __item.Arn).ToList(),
/// VpcArn = exampleUsEast1AwsVpc.Arn,
/// });
///
/// var example = Aws.NetworkManager.GetCoreNetworkPolicyDocument.Invoke(new()
/// {
/// CoreNetworkConfigurations = new[]
/// {
/// new Aws.NetworkManager.Inputs.GetCoreNetworkPolicyDocumentCoreNetworkConfigurationInputArgs
/// {
/// AsnRanges = new[]
/// {
/// "65022-65534",
/// },
/// EdgeLocations = new[]
/// {
/// new Aws.NetworkManager.Inputs.GetCoreNetworkPolicyDocumentCoreNetworkConfigurationEdgeLocationInputArgs
/// {
/// Location = "us-west-2",
/// },
/// new Aws.NetworkManager.Inputs.GetCoreNetworkPolicyDocumentCoreNetworkConfigurationEdgeLocationInputArgs
/// {
/// Location = "us-east-1",
/// },
/// },
/// },
/// },
/// Segments = new[]
/// {
/// new Aws.NetworkManager.Inputs.GetCoreNetworkPolicyDocumentSegmentInputArgs
/// {
/// Name = "segment",
/// },
/// new Aws.NetworkManager.Inputs.GetCoreNetworkPolicyDocumentSegmentInputArgs
/// {
/// Name = "segment2",
/// },
/// },
/// SegmentActions = new[]
/// {
/// new Aws.NetworkManager.Inputs.GetCoreNetworkPolicyDocumentSegmentActionInputArgs
/// {
/// Action = "create-route",
/// Segment = "segment",
/// DestinationCidrBlocks = new[]
/// {
/// "10.0.0.0/16",
/// },
/// Destinations = new[]
/// {
/// exampleUsWest2.Id,
/// },
/// },
/// new Aws.NetworkManager.Inputs.GetCoreNetworkPolicyDocumentSegmentActionInputArgs
/// {
/// Action = "create-route",
/// Segment = "segment",
/// DestinationCidrBlocks = new[]
/// {
/// "10.1.0.0/16",
/// },
/// Destinations = new[]
/// {
/// exampleUsEast1.Id,
/// },
/// },
/// },
/// });
///
/// var exampleCoreNetworkPolicyAttachment = new Aws.NetworkManager.CoreNetworkPolicyAttachment("example", new()
/// {
/// CoreNetworkId = exampleCoreNetwork.Id,
/// PolicyDocument = example.Apply(getCoreNetworkPolicyDocumentResult => getCoreNetworkPolicyDocumentResult.Json),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/networkmanager"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// exampleGlobalNetwork, err := networkmanager.NewGlobalNetwork(ctx, "example", nil)
/// if err != nil {
/// return err
/// }
/// exampleCoreNetwork, err := networkmanager.NewCoreNetwork(ctx, "example", &networkmanager.CoreNetworkArgs{
/// GlobalNetworkId: exampleGlobalNetwork.ID(),
/// BasePolicyRegions: pulumi.StringArray{
/// pulumi.String("us-west-2"),
/// pulumi.String("us-east-1"),
/// },
/// CreateBasePolicy: pulumi.Bool(true),
/// })
/// if err != nil {
/// return err
/// }
/// var splat0 []interface{}
/// for _, val0 := range exampleUsWest2AwsSubnet {
/// splat0 = append(splat0, val0.Arn)
/// }
/// exampleUsWest2, err := networkmanager.NewVpcAttachment(ctx, "example_us_west_2", &networkmanager.VpcAttachmentArgs{
/// CoreNetworkId: exampleCoreNetwork.ID(),
/// SubnetArns: toPulumiArray(splat0),
/// VpcArn: pulumi.Any(exampleUsWest2AwsVpc.Arn),
/// })
/// if err != nil {
/// return err
/// }
/// var splat1 []interface{}
/// for _, val0 := range exampleUsEast1AwsSubnet {
/// splat1 = append(splat1, val0.Arn)
/// }
/// exampleUsEast1, err := networkmanager.NewVpcAttachment(ctx, "example_us_east_1", &networkmanager.VpcAttachmentArgs{
/// CoreNetworkId: exampleCoreNetwork.ID(),
/// SubnetArns: toPulumiArray(splat1),
/// VpcArn: pulumi.Any(exampleUsEast1AwsVpc.Arn),
/// })
/// if err != nil {
/// return err
/// }
/// example := networkmanager.GetCoreNetworkPolicyDocumentOutput(ctx, networkmanager.GetCoreNetworkPolicyDocumentOutputArgs{
/// CoreNetworkConfigurations: networkmanager.GetCoreNetworkPolicyDocumentCoreNetworkConfigurationArray{
/// &networkmanager.GetCoreNetworkPolicyDocumentCoreNetworkConfigurationArgs{
/// AsnRanges: pulumi.StringArray{
/// pulumi.String("65022-65534"),
/// },
/// EdgeLocations: networkmanager.GetCoreNetworkPolicyDocumentCoreNetworkConfigurationEdgeLocationArray{
/// &networkmanager.GetCoreNetworkPolicyDocumentCoreNetworkConfigurationEdgeLocationArgs{
/// Location: pulumi.String("us-west-2"),
/// },
/// &networkmanager.GetCoreNetworkPolicyDocumentCoreNetworkConfigurationEdgeLocationArgs{
/// Location: pulumi.String("us-east-1"),
/// },
/// },
/// },
/// },
/// Segments: networkmanager.GetCoreNetworkPolicyDocumentSegmentArray{
/// &networkmanager.GetCoreNetworkPolicyDocumentSegmentArgs{
/// Name: pulumi.String("segment"),
/// },
/// &networkmanager.GetCoreNetworkPolicyDocumentSegmentArgs{
/// Name: pulumi.String("segment2"),
/// },
/// },
/// SegmentActions: networkmanager.GetCoreNetworkPolicyDocumentSegmentActionArray{
/// &networkmanager.GetCoreNetworkPolicyDocumentSegmentActionArgs{
/// Action: pulumi.String("create-route"),
/// Segment: pulumi.String("segment"),
/// DestinationCidrBlocks: pulumi.StringArray{
/// pulumi.String("10.0.0.0/16"),
/// },
/// Destinations: pulumi.StringArray{
/// exampleUsWest2.ID(),
/// },
/// },
/// &networkmanager.GetCoreNetworkPolicyDocumentSegmentActionArgs{
/// Action: pulumi.String("create-route"),
/// Segment: pulumi.String("segment"),
/// DestinationCidrBlocks: pulumi.StringArray{
/// pulumi.String("10.1.0.0/16"),
/// },
/// Destinations: pulumi.StringArray{
/// exampleUsEast1.ID(),
/// },
/// },
/// },
/// }, nil);
/// _, err = networkmanager.NewCoreNetworkPolicyAttachment(ctx, "example", &networkmanager.CoreNetworkPolicyAttachmentArgs{
/// CoreNetworkId: exampleCoreNetwork.ID(),
/// PolicyDocument: pulumi.String(example.ApplyT(func(example networkmanager.GetCoreNetworkPolicyDocumentResult) (*string, error) {
/// return &example.Json, nil
/// }).(pulumi.StringPtrOutput)),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// func toPulumiArray(arr []) pulumi.Array {
/// var pulumiArr pulumi.Array
/// for _, v := range arr {
/// pulumiArr = append(pulumiArr, pulumi.(v))
/// }
/// return pulumiArr
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.networkmanager.GlobalNetwork;
/// import com.pulumi.aws.networkmanager.CoreNetwork;
/// import com.pulumi.aws.networkmanager.CoreNetworkArgs;
/// import com.pulumi.aws.networkmanager.VpcAttachment;
/// import com.pulumi.aws.networkmanager.VpcAttachmentArgs;
/// import com.pulumi.aws.networkmanager.NetworkmanagerFunctions;
/// import com.pulumi.aws.networkmanager.inputs.GetCoreNetworkPolicyDocumentArgs;
/// import com.pulumi.aws.networkmanager.CoreNetworkPolicyAttachment;
/// import com.pulumi.aws.networkmanager.CoreNetworkPolicyAttachmentArgs;
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
/// var exampleGlobalNetwork = new GlobalNetwork("exampleGlobalNetwork");
///
/// var exampleCoreNetwork = new CoreNetwork("exampleCoreNetwork", CoreNetworkArgs.builder()
/// .globalNetworkId(exampleGlobalNetwork.id())
/// .basePolicyRegions(
/// "us-west-2",
/// "us-east-1")
/// .createBasePolicy(true)
/// .build());
///
/// var exampleUsWest2 = new VpcAttachment("exampleUsWest2", VpcAttachmentArgs.builder()
/// .coreNetworkId(exampleCoreNetwork.id())
/// .subnetArns(exampleUsWest2AwsSubnet.stream().map(element -> element.arn()).collect(toList()))
/// .vpcArn(exampleUsWest2AwsVpc.arn())
/// .build());
///
/// var exampleUsEast1 = new VpcAttachment("exampleUsEast1", VpcAttachmentArgs.builder()
/// .coreNetworkId(exampleCoreNetwork.id())
/// .subnetArns(exampleUsEast1AwsSubnet.stream().map(element -> element.arn()).collect(toList()))
/// .vpcArn(exampleUsEast1AwsVpc.arn())
/// .build());
///
/// final var example = NetworkmanagerFunctions.getCoreNetworkPolicyDocument(GetCoreNetworkPolicyDocumentArgs.builder()
/// .coreNetworkConfigurations(GetCoreNetworkPolicyDocumentCoreNetworkConfigurationArgs.builder()
/// .asnRanges("65022-65534")
/// .edgeLocations(
/// GetCoreNetworkPolicyDocumentCoreNetworkConfigurationEdgeLocationArgs.builder()
/// .location("us-west-2")
/// .build(),
/// GetCoreNetworkPolicyDocumentCoreNetworkConfigurationEdgeLocationArgs.builder()
/// .location("us-east-1")
/// .build())
/// .build())
/// .segments(
/// GetCoreNetworkPolicyDocumentSegmentArgs.builder()
/// .name("segment")
/// .build(),
/// GetCoreNetworkPolicyDocumentSegmentArgs.builder()
/// .name("segment2")
/// .build())
/// .segmentActions(
/// GetCoreNetworkPolicyDocumentSegmentActionArgs.builder()
/// .action("create-route")
/// .segment("segment")
/// .destinationCidrBlocks("10.0.0.0/16")
/// .destinations(exampleUsWest2.id())
/// .build(),
/// GetCoreNetworkPolicyDocumentSegmentActionArgs.builder()
/// .action("create-route")
/// .segment("segment")
/// .destinationCidrBlocks("10.1.0.0/16")
/// .destinations(exampleUsEast1.id())
/// .build())
/// .build());
///
/// var exampleCoreNetworkPolicyAttachment = new CoreNetworkPolicyAttachment("exampleCoreNetworkPolicyAttachment", CoreNetworkPolicyAttachmentArgs.builder()
/// .coreNetworkId(exampleCoreNetwork.id())
/// .policyDocument(example.applyValue(_example -> _example.json()))
/// .build());
///
/// }
/// }
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.networkmanager.CoreNetwork`" pulumi-lang-dotnet="`aws.networkmanager.CoreNetwork`" pulumi-lang-go="`networkmanager.CoreNetwork`" pulumi-lang-python="`networkmanager.CoreNetwork`" pulumi-lang-yaml="`aws.networkmanager.CoreNetwork`" pulumi-lang-java="`aws.networkmanager.CoreNetwork`">`aws.networkmanager.CoreNetwork`</span> using the core network ID. For example:
///
/// ```sh
/// $ pulumi import aws:networkmanager/coreNetwork:CoreNetwork example core-network-0d47f6t230mz46dy4
/// ```
class CoreNetwork extends CustomResource {
  /// Core Network ARN.
  late final Output<String> arn;

  /// Sets the base policy document for the core network. Refer to the [Core network policies documentation](https://docs.aws.amazon.com/network-manager/latest/cloudwan/cloudwan-policy-change-sets.html) for more information.
  late final Output<String?> basePolicyDocument;

  /// List of regions to add to the base policy. The base policy created by setting the <span pulumi-lang-nodejs="`createBasePolicy`" pulumi-lang-dotnet="`CreateBasePolicy`" pulumi-lang-go="`createBasePolicy`" pulumi-lang-python="`create_base_policy`" pulumi-lang-yaml="`createBasePolicy`" pulumi-lang-java="`createBasePolicy`">`create_base_policy`</span> argument to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> requires one or more regions to be set in the `edge-locations`, <span pulumi-lang-nodejs="`location`" pulumi-lang-dotnet="`Location`" pulumi-lang-go="`location`" pulumi-lang-python="`location`" pulumi-lang-yaml="`location`" pulumi-lang-java="`location`">`location`</span> key. If <span pulumi-lang-nodejs="`basePolicyRegions`" pulumi-lang-dotnet="`BasePolicyRegions`" pulumi-lang-go="`basePolicyRegions`" pulumi-lang-python="`base_policy_regions`" pulumi-lang-yaml="`basePolicyRegions`" pulumi-lang-java="`basePolicyRegions`">`base_policy_regions`</span> is not specified, the region used in the base policy defaults to the region specified in the <span pulumi-lang-nodejs="`provider`" pulumi-lang-dotnet="`Provider`" pulumi-lang-go="`provider`" pulumi-lang-python="`provider`" pulumi-lang-yaml="`provider`" pulumi-lang-java="`provider`">`provider`</span> block.
  late final Output<List<String>?> basePolicyRegions;

  /// Whether to create a base policy when a core network is created or updated. A base policy is created and set to `LIVE` to allow attachments to the core network (e.g. VPC Attachments) before applying a policy document provided using the <span pulumi-lang-nodejs="`aws.networkmanager.CoreNetworkPolicyAttachment`" pulumi-lang-dotnet="`aws.networkmanager.CoreNetworkPolicyAttachment`" pulumi-lang-go="`networkmanager.CoreNetworkPolicyAttachment`" pulumi-lang-python="`networkmanager.CoreNetworkPolicyAttachment`" pulumi-lang-yaml="`aws.networkmanager.CoreNetworkPolicyAttachment`" pulumi-lang-java="`aws.networkmanager.CoreNetworkPolicyAttachment`">`aws.networkmanager.CoreNetworkPolicyAttachment`</span> resource. This base policy is needed if your core network does not have any `LIVE` policies and your policy document has static routes pointing to VPC attachments and you want to attach your VPCs to the core network before applying the desired policy document. Valid values are <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> or <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>. An example of this Pulumi snippet can be found above for VPC Attachment in a single region and for VPC Attachment multi-region. An example base policy is shown below. This base policy is overridden with the policy that you specify in the <span pulumi-lang-nodejs="`aws.networkmanager.CoreNetworkPolicyAttachment`" pulumi-lang-dotnet="`aws.networkmanager.CoreNetworkPolicyAttachment`" pulumi-lang-go="`networkmanager.CoreNetworkPolicyAttachment`" pulumi-lang-python="`networkmanager.CoreNetworkPolicyAttachment`" pulumi-lang-yaml="`aws.networkmanager.CoreNetworkPolicyAttachment`" pulumi-lang-java="`aws.networkmanager.CoreNetworkPolicyAttachment`">`aws.networkmanager.CoreNetworkPolicyAttachment`</span> resource.
  ///
  /// ```json
  /// {
  /// "version": "2021.12",
  /// "core-network-configuration": {
  /// "asn-ranges": [
  /// "64512-65534"
  /// ],
  /// "vpn-ecmp-support": false,
  /// "edge-locations": [
  /// {
  /// "location": "us-east-1"
  /// }
  /// ]
  /// },
  /// "segments": [
  /// {
  /// "name": "segment",
  /// "description": "base-policy",
  /// "isolate-attachments": false,
  /// "require-attachment-acceptance": false
  /// }
  /// ]
  /// }
  /// ```
  late final Output<bool?> createBasePolicy;

  /// Timestamp when a core network was created.
  late final Output<String> createdAt;

  /// Description of the Core Network.
  late final Output<String?> description;

  /// One or more blocks detailing the edges within a core network. Detailed below.
  late final Output<List<CoreNetworkEdge>> edges;

  /// ID of the global network that a core network will be a part of.
  ///
  /// The following arguments are optional:
  late final Output<String> globalNetworkId;

  /// One or more blocks detailing the segments within a core network. Detailed below.
  late final Output<List<CoreNetworkSegment>> segments;

  /// Current state of a core network.
  late final Output<String> state;

  /// Key-value tags for the Core Network. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  CoreNetwork(
    String name, {
    CoreNetworkArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:networkmanager/coreNetwork:CoreNetwork',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.basePolicyDocument = Output.createUnknown<String?>();
    this.basePolicyRegions = Output.createUnknown<List<String>?>();
    this.createBasePolicy = Output.createUnknown<bool?>();
    this.createdAt = Output.createUnknown<String>();
    this.description = Output.createUnknown<String?>();
    this.edges = Output.createUnknown<List<CoreNetworkEdge>>();
    this.globalNetworkId = Output.createUnknown<String>();
    this.segments = Output.createUnknown<List<CoreNetworkSegment>>();
    this.state = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
  }
}
