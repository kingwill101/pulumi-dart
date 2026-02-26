import 'package:pulumi/pulumi.dart';
import '../dx_gateway_attachment_timeouts/dx_gateway_attachment_timeouts.dart';
import 'dx_gateway_attachment_args.dart';

/// Manages a Network Manager Direct Connect Gateway Attachment.
///
/// Use this resource to create and manage a Direct Connect Gateway attachment to a Cloud WAN core network.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.networkmanager.DxGatewayAttachment("test", {
/// coreNetworkId: testAwsNetworkmanagerCoreNetworkPolicyAttachment.coreNetworkId,
/// directConnectGatewayArn: `arn:aws:directconnect::${current.accountId}:dx-gateway/${testAwsDxGateway.id}`,
/// edgeLocations: [currentAwsRegion.region],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.networkmanager.DxGatewayAttachment("test",
/// core_network_id=test_aws_networkmanager_core_network_policy_attachment["coreNetworkId"],
/// direct_connect_gateway_arn=f"arn:aws:directconnect::{current['accountId']}:dx-gateway/{test_aws_dx_gateway['id']}",
/// edge_locations=[current_aws_region["region"]])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var test = new Aws.NetworkManager.DxGatewayAttachment("test", new()
/// {
/// CoreNetworkId = testAwsNetworkmanagerCoreNetworkPolicyAttachment.CoreNetworkId,
/// DirectConnectGatewayArn = $"arn:aws:directconnect::{current.AccountId}:dx-gateway/{testAwsDxGateway.Id}",
/// EdgeLocations = new[]
/// {
/// currentAwsRegion.Region,
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
/// _, err := networkmanager.NewDxGatewayAttachment(ctx, "test", &networkmanager.DxGatewayAttachmentArgs{
/// CoreNetworkId:           pulumi.Any(testAwsNetworkmanagerCoreNetworkPolicyAttachment.CoreNetworkId),
/// DirectConnectGatewayArn: pulumi.Sprintf("arn:aws:directconnect::%v:dx-gateway/%v", current.AccountId, testAwsDxGateway.Id),
/// EdgeLocations: pulumi.StringArray{
/// currentAwsRegion.Region,
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
/// import com.pulumi.aws.networkmanager.DxGatewayAttachment;
/// import com.pulumi.aws.networkmanager.DxGatewayAttachmentArgs;
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
/// var test = new DxGatewayAttachment("test", DxGatewayAttachmentArgs.builder()
/// .coreNetworkId(testAwsNetworkmanagerCoreNetworkPolicyAttachment.coreNetworkId())
/// .directConnectGatewayArn(String.format("arn:aws:directconnect::%s:dx-gateway/%s", current.accountId(),testAwsDxGateway.id()))
/// .edgeLocations(currentAwsRegion.region())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// test:
/// type: aws:networkmanager:DxGatewayAttachment
/// properties:
/// coreNetworkId: ${testAwsNetworkmanagerCoreNetworkPolicyAttachment.coreNetworkId}
/// directConnectGatewayArn: arn:aws:directconnect::${current.accountId}:dx-gateway/${testAwsDxGateway.id}
/// edgeLocations:
/// - ${currentAwsRegion.region}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Network Manager DX Gateway Attachment using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:networkmanager/dxGatewayAttachment:DxGatewayAttachment example attachment-1a2b3c4d5e6f7g
/// ```
class DxGatewayAttachment extends CustomResource {
  /// ARN of the attachment.
  late final Output<String> arn;

  /// Policy rule number associated with the attachment.
  late final Output<int> attachmentPolicyRuleNumber;

  /// Type of attachment.
  late final Output<String> attachmentType;

  /// ARN of the core network for the attachment.
  late final Output<String> coreNetworkArn;

  /// ID of the Cloud WAN core network to which the Direct Connect gateway attachment should be attached.
  late final Output<String> coreNetworkId;

  /// ARN of the Direct Connect gateway attachment.
  late final Output<String> directConnectGatewayArn;

  /// One or more core network edge locations to associate with the Direct Connect gateway attachment.
  ///
  /// The following arguments are optional:
  late final Output<List<String>> edgeLocations;

  /// ID of the attachment account owner.
  late final Output<String> ownerAccountId;

  /// The routing policy label to apply to the Direct Connect Gateway attachment for traffic routing decisions. Maximum length of 256 characters. Changing this value will force recreation of the resource.
  late final Output<String?> routingPolicyLabel;

  /// Name of the segment attachment.
  late final Output<String> segmentName;

  /// State of the attachment.
  late final Output<String> state;

  /// Key-value tags for the attachment. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;
  late final Output<DxGatewayAttachmentTimeouts?> timeouts;

  DxGatewayAttachment(
    String name, {
    DxGatewayAttachmentArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:networkmanager/dxGatewayAttachment:DxGatewayAttachment',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.attachmentPolicyRuleNumber =
        registerOutput<int>('attachmentPolicyRuleNumber');
    this.attachmentType = registerOutput<String>('attachmentType');
    this.coreNetworkArn = registerOutput<String>('coreNetworkArn');
    this.coreNetworkId = registerOutput<String>('coreNetworkId');
    this.directConnectGatewayArn =
        registerOutput<String>('directConnectGatewayArn');
    this.edgeLocations = registerOutput<List<String>>('edgeLocations');
    this.ownerAccountId = registerOutput<String>('ownerAccountId');
    this.routingPolicyLabel = registerOutput<String?>('routingPolicyLabel');
    this.segmentName = registerOutput<String>('segmentName');
    this.state = registerOutput<String>('state');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<DxGatewayAttachmentTimeouts?>('timeouts');
  }
}
