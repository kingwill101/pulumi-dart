import 'package:pulumi/pulumi.dart';
import 'get_core_network_policy_document_args.dart';
import 'get_core_network_policy_document_result.dart';

/// Generates a Core Network policy document in JSON format for use with resources that expect core network policy documents such as <span pulumi-lang-nodejs="`awsccNetworkmanagerCoreNetwork`" pulumi-lang-dotnet="`AwsccNetworkmanagerCoreNetwork`" pulumi-lang-go="`awsccNetworkmanagerCoreNetwork`" pulumi-lang-python="`awscc_networkmanager_core_network`" pulumi-lang-yaml="`awsccNetworkmanagerCoreNetwork`" pulumi-lang-java="`awsccNetworkmanagerCoreNetwork`">`awscc_networkmanager_core_network`</span>. It follows the API definition from the [core-network-policy documentation](https://docs.aws.amazon.com/vpc/latest/cloudwan/cloudwan-policies-json.html).
///
/// Using this data source to generate policy documents is *optional*. It is also valid to use literal JSON strings in your configuration or to use the <span pulumi-lang-nodejs="`file`" pulumi-lang-dotnet="`File`" pulumi-lang-go="`file`" pulumi-lang-python="`file`" pulumi-lang-yaml="`file`" pulumi-lang-java="`file`">`file`</span> interpolation function to read a raw JSON policy document from a file.
///
///
///
/// ## Example Usage
///
/// ### Basic Example
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.networkmanager.getCoreNetworkPolicyDocument({
/// coreNetworkConfigurations: [{
/// vpnEcmpSupport: false,
/// asnRanges: ["64512-64555"],
/// edgeLocations: [
/// {
/// location: "us-east-1",
/// asn: "64512",
/// },
/// {
/// location: "eu-central-1",
/// asn: "64513",
/// },
/// ],
/// }],
/// segments: [
/// {
/// name: "shared",
/// description: "Segment for shared services",
/// requireAttachmentAcceptance: true,
/// },
/// {
/// name: "prod",
/// description: "Segment for prod services",
/// requireAttachmentAcceptance: true,
/// },
/// ],
/// segmentActions: [{
/// action: "share",
/// mode: "attachment-route",
/// segment: "shared",
/// shareWiths: ["*"],
/// }],
/// attachmentPolicies: [
/// {
/// ruleNumber: 100,
/// conditionLogic: "or",
/// conditions: [{
/// type: "tag-value",
/// operator: "equals",
/// key: "segment",
/// value: "shared",
/// }],
/// action: {
/// associationMethod: "constant",
/// segment: "shared",
/// },
/// },
/// {
/// ruleNumber: 200,
/// conditionLogic: "or",
/// conditions: [{
/// type: "tag-value",
/// operator: "equals",
/// key: "segment",
/// value: "prod",
/// }],
/// action: {
/// associationMethod: "constant",
/// segment: "prod",
/// },
/// },
/// ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.networkmanager.get_core_network_policy_document(core_network_configurations=[{
/// "vpn_ecmp_support": False,
/// "asn_ranges": ["64512-64555"],
/// "edge_locations": [
/// {
/// "location": "us-east-1",
/// "asn": "64512",
/// },
/// {
/// "location": "eu-central-1",
/// "asn": "64513",
/// },
/// ],
/// }],
/// segments=[
/// {
/// "name": "shared",
/// "description": "Segment for shared services",
/// "require_attachment_acceptance": True,
/// },
/// {
/// "name": "prod",
/// "description": "Segment for prod services",
/// "require_attachment_acceptance": True,
/// },
/// ],
/// segment_actions=[{
/// "action": "share",
/// "mode": "attachment-route",
/// "segment": "shared",
/// "share_withs": ["*"],
/// }],
/// attachment_policies=[
/// {
/// "rule_number": 100,
/// "condition_logic": "or",
/// "conditions": [{
/// "type": "tag-value",
/// "operator": "equals",
/// "key": "segment",
/// "value": "shared",
/// }],
/// "action": {
/// "association_method": "constant",
/// "segment": "shared",
/// },
/// },
/// {
/// "rule_number": 200,
/// "condition_logic": "or",
/// "conditions": [{
/// "type": "tag-value",
/// "operator": "equals",
/// "key": "segment",
/// "value": "prod",
/// }],
/// "action": {
/// "association_method": "constant",
/// "segment": "prod",
/// },
/// },
/// ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var test = Aws.NetworkManager.GetCoreNetworkPolicyDocument.Invoke(new()
/// {
/// CoreNetworkConfigurations = new[]
/// {
/// new Aws.NetworkManager.Inputs.GetCoreNetworkPolicyDocumentCoreNetworkConfigurationInputArgs
/// {
/// VpnEcmpSupport = false,
/// AsnRanges = new[]
/// {
/// "64512-64555",
/// },
/// EdgeLocations = new[]
/// {
/// new Aws.NetworkManager.Inputs.GetCoreNetworkPolicyDocumentCoreNetworkConfigurationEdgeLocationInputArgs
/// {
/// Location = "us-east-1",
/// Asn = "64512",
/// },
/// new Aws.NetworkManager.Inputs.GetCoreNetworkPolicyDocumentCoreNetworkConfigurationEdgeLocationInputArgs
/// {
/// Location = "eu-central-1",
/// Asn = "64513",
/// },
/// },
/// },
/// },
/// Segments = new[]
/// {
/// new Aws.NetworkManager.Inputs.GetCoreNetworkPolicyDocumentSegmentInputArgs
/// {
/// Name = "shared",
/// Description = "Segment for shared services",
/// RequireAttachmentAcceptance = true,
/// },
/// new Aws.NetworkManager.Inputs.GetCoreNetworkPolicyDocumentSegmentInputArgs
/// {
/// Name = "prod",
/// Description = "Segment for prod services",
/// RequireAttachmentAcceptance = true,
/// },
/// },
/// SegmentActions = new[]
/// {
/// new Aws.NetworkManager.Inputs.GetCoreNetworkPolicyDocumentSegmentActionInputArgs
/// {
/// Action = "share",
/// Mode = "attachment-route",
/// Segment = "shared",
/// ShareWiths = new[]
/// {
/// "*",
/// },
/// },
/// },
/// AttachmentPolicies = new[]
/// {
/// new Aws.NetworkManager.Inputs.GetCoreNetworkPolicyDocumentAttachmentPolicyInputArgs
/// {
/// RuleNumber = 100,
/// ConditionLogic = "or",
/// Conditions = new[]
/// {
/// new Aws.NetworkManager.Inputs.GetCoreNetworkPolicyDocumentAttachmentPolicyConditionInputArgs
/// {
/// Type = "tag-value",
/// Operator = "equals",
/// Key = "segment",
/// Value = "shared",
/// },
/// },
/// Action = new Aws.NetworkManager.Inputs.GetCoreNetworkPolicyDocumentAttachmentPolicyActionInputArgs
/// {
/// AssociationMethod = "constant",
/// Segment = "shared",
/// },
/// },
/// new Aws.NetworkManager.Inputs.GetCoreNetworkPolicyDocumentAttachmentPolicyInputArgs
/// {
/// RuleNumber = 200,
/// ConditionLogic = "or",
/// Conditions = new[]
/// {
/// new Aws.NetworkManager.Inputs.GetCoreNetworkPolicyDocumentAttachmentPolicyConditionInputArgs
/// {
/// Type = "tag-value",
/// Operator = "equals",
/// Key = "segment",
/// Value = "prod",
/// },
/// },
/// Action = new Aws.NetworkManager.Inputs.GetCoreNetworkPolicyDocumentAttachmentPolicyActionInputArgs
/// {
/// AssociationMethod = "constant",
/// Segment = "prod",
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/networkmanager"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := networkmanager.GetCoreNetworkPolicyDocument(ctx, &networkmanager.GetCoreNetworkPolicyDocumentArgs{
/// CoreNetworkConfigurations: []networkmanager.GetCoreNetworkPolicyDocumentCoreNetworkConfiguration{
/// {
/// VpnEcmpSupport: pulumi.BoolRef(false),
/// AsnRanges: []string{
/// "64512-64555",
/// },
/// EdgeLocations: []networkmanager.GetCoreNetworkPolicyDocumentCoreNetworkConfigurationEdgeLocation{
/// {
/// Location: "us-east-1",
/// Asn:      pulumi.StringRef("64512"),
/// },
/// {
/// Location: "eu-central-1",
/// Asn:      pulumi.StringRef("64513"),
/// },
/// },
/// },
/// },
/// Segments: []networkmanager.GetCoreNetworkPolicyDocumentSegment{
/// {
/// Name:                        "shared",
/// Description:                 pulumi.StringRef("Segment for shared services"),
/// RequireAttachmentAcceptance: pulumi.BoolRef(true),
/// },
/// {
/// Name:                        "prod",
/// Description:                 pulumi.StringRef("Segment for prod services"),
/// RequireAttachmentAcceptance: pulumi.BoolRef(true),
/// },
/// },
/// SegmentActions: []networkmanager.GetCoreNetworkPolicyDocumentSegmentAction{
/// {
/// Action:  "share",
/// Mode:    pulumi.StringRef("attachment-route"),
/// Segment: "shared",
/// ShareWiths: []string{
/// "*",
/// },
/// },
/// },
/// AttachmentPolicies: []networkmanager.GetCoreNetworkPolicyDocumentAttachmentPolicy{
/// {
/// RuleNumber:     100,
/// ConditionLogic: pulumi.StringRef("or"),
/// Conditions: []networkmanager.GetCoreNetworkPolicyDocumentAttachmentPolicyCondition{
/// {
/// Type:     "tag-value",
/// Operator: pulumi.StringRef("equals"),
/// Key:      pulumi.StringRef("segment"),
/// Value:    pulumi.StringRef("shared"),
/// },
/// },
/// Action: {
/// AssociationMethod: pulumi.StringRef("constant"),
/// Segment:           pulumi.StringRef("shared"),
/// },
/// },
/// {
/// RuleNumber:     200,
/// ConditionLogic: pulumi.StringRef("or"),
/// Conditions: []networkmanager.GetCoreNetworkPolicyDocumentAttachmentPolicyCondition{
/// {
/// Type:     "tag-value",
/// Operator: pulumi.StringRef("equals"),
/// Key:      pulumi.StringRef("segment"),
/// Value:    pulumi.StringRef("prod"),
/// },
/// },
/// Action: {
/// AssociationMethod: pulumi.StringRef("constant"),
/// Segment:           pulumi.StringRef("prod"),
/// },
/// },
/// },
/// }, nil)
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
/// import com.pulumi.aws.networkmanager.NetworkmanagerFunctions;
/// import com.pulumi.aws.networkmanager.inputs.GetCoreNetworkPolicyDocumentArgs;
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
/// final var test = NetworkmanagerFunctions.getCoreNetworkPolicyDocument(GetCoreNetworkPolicyDocumentArgs.builder()
/// .coreNetworkConfigurations(GetCoreNetworkPolicyDocumentCoreNetworkConfigurationArgs.builder()
/// .vpnEcmpSupport(false)
/// .asnRanges("64512-64555")
/// .edgeLocations(
/// GetCoreNetworkPolicyDocumentCoreNetworkConfigurationEdgeLocationArgs.builder()
/// .location("us-east-1")
/// .asn("64512")
/// .build(),
/// GetCoreNetworkPolicyDocumentCoreNetworkConfigurationEdgeLocationArgs.builder()
/// .location("eu-central-1")
/// .asn("64513")
/// .build())
/// .build())
/// .segments(
/// GetCoreNetworkPolicyDocumentSegmentArgs.builder()
/// .name("shared")
/// .description("Segment for shared services")
/// .requireAttachmentAcceptance(true)
/// .build(),
/// GetCoreNetworkPolicyDocumentSegmentArgs.builder()
/// .name("prod")
/// .description("Segment for prod services")
/// .requireAttachmentAcceptance(true)
/// .build())
/// .segmentActions(GetCoreNetworkPolicyDocumentSegmentActionArgs.builder()
/// .action("share")
/// .mode("attachment-route")
/// .segment("shared")
/// .shareWiths("*")
/// .build())
/// .attachmentPolicies(
/// GetCoreNetworkPolicyDocumentAttachmentPolicyArgs.builder()
/// .ruleNumber(100)
/// .conditionLogic("or")
/// .conditions(GetCoreNetworkPolicyDocumentAttachmentPolicyConditionArgs.builder()
/// .type("tag-value")
/// .operator("equals")
/// .key("segment")
/// .value("shared")
/// .build())
/// .action(GetCoreNetworkPolicyDocumentAttachmentPolicyActionArgs.builder()
/// .associationMethod("constant")
/// .segment("shared")
/// .build())
/// .build(),
/// GetCoreNetworkPolicyDocumentAttachmentPolicyArgs.builder()
/// .ruleNumber(200)
/// .conditionLogic("or")
/// .conditions(GetCoreNetworkPolicyDocumentAttachmentPolicyConditionArgs.builder()
/// .type("tag-value")
/// .operator("equals")
/// .key("segment")
/// .value("prod")
/// .build())
/// .action(GetCoreNetworkPolicyDocumentAttachmentPolicyActionArgs.builder()
/// .associationMethod("constant")
/// .segment("prod")
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// test:
/// fn::invoke:
/// function: aws:networkmanager:getCoreNetworkPolicyDocument
/// arguments:
/// coreNetworkConfigurations:
/// - vpnEcmpSupport: false
/// asnRanges:
/// - 64512-64555
/// edgeLocations:
/// - location: us-east-1
/// asn: 64512
/// - location: eu-central-1
/// asn: 64513
/// segments:
/// - name: shared
/// description: Segment for shared services
/// requireAttachmentAcceptance: true
/// - name: prod
/// description: Segment for prod services
/// requireAttachmentAcceptance: true
/// segmentActions:
/// - action: share
/// mode: attachment-route
/// segment: shared
/// shareWiths:
/// - '*'
/// attachmentPolicies:
/// - ruleNumber: 100
/// conditionLogic: or
/// conditions:
/// - type: tag-value
/// operator: equals
/// key: segment
/// value: shared
/// action:
/// associationMethod: constant
/// segment: shared
/// - ruleNumber: 200
/// conditionLogic: or
/// conditions:
/// - type: tag-value
/// operator: equals
/// key: segment
/// value: prod
/// action:
/// associationMethod: constant
/// segment: prod
/// ```
/// <!--End PulumiCodeChooser -->
///
/// `data.aws_networkmanager_core_network_policy_document.test.json` will evaluate to:
///
/// ```json
/// {
/// "version": "2021.12",
/// "core-network-configuration": {
/// "asn-ranges": [
/// "64512-64555"
/// ],
/// "vpn-ecmp-support": false,
/// "edge-locations": [
/// {
/// "location": "us-east-1",
/// "asn": 64512
/// },
/// {
/// "location": "eu-central-1",
/// "asn": 64513
/// }
/// ]
/// },
/// "segments": [
/// {
/// "name": "shared",
/// "description": "Segment for shared services",
/// "require-attachment-acceptance": true
/// },
/// {
/// "name": "prod",
/// "description": "Segment for prod services",
/// "require-attachment-acceptance": true
/// }
/// ],
/// "attachment-policies": [
/// {
/// "rule-number": 100,
/// "action": {
/// "association-method": "constant",
/// "segment": "shared"
/// },
/// "conditions": [
/// {
/// "type": "tag-value",
/// "operator": "equals",
/// "key": "segment",
/// "value": "shared"
/// }
/// ],
/// "condition-logic": "or"
/// },
/// {
/// "rule-number": 200,
/// "action": {
/// "association-method": "constant",
/// "segment": "prod"
/// },
/// "conditions": [
/// {
/// "type": "tag-value",
/// "operator": "equals",
/// "key": "segment",
/// "value": "prod"
/// }
/// ],
/// "condition-logic": "or"
/// }
/// ],
/// "segment-actions": [
/// {
/// "action": "share",
/// "mode": "attachment-route",
/// "segment": "shared",
/// "share-with": "*"
/// }
/// ]
/// }
/// ```
Future<GetCoreNetworkPolicyDocumentResult> getCoreNetworkPolicyDocument(
  GetCoreNetworkPolicyDocumentArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:networkmanager/getCoreNetworkPolicyDocument:getCoreNetworkPolicyDocument',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetCoreNetworkPolicyDocumentResult.fromMap(result);
}
