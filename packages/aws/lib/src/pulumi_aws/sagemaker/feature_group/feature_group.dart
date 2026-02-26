import 'package:pulumi/pulumi.dart';
import '../feature_group_feature_definition/feature_group_feature_definition.dart';
import '../feature_group_offline_store_config/feature_group_offline_store_config.dart';
import '../feature_group_online_store_config/feature_group_online_store_config.dart';
import '../feature_group_throughput_config/feature_group_throughput_config.dart';
import 'feature_group_args.dart';

/// Provides a SageMaker AI Feature Group resource.
///
/// ## Example Usage
///
/// Basic usage:
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.sagemaker.FeatureGroup("example", {
/// featureGroupName: "example",
/// recordIdentifierFeatureName: "example",
/// eventTimeFeatureName: "example",
/// roleArn: test.arn,
/// featureDefinitions: [{
/// featureName: "example",
/// featureType: "String",
/// }],
/// onlineStoreConfig: {
/// enableOnlineStore: true,
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.sagemaker.FeatureGroup("example",
/// feature_group_name="example",
/// record_identifier_feature_name="example",
/// event_time_feature_name="example",
/// role_arn=test["arn"],
/// feature_definitions=[{
/// "feature_name": "example",
/// "feature_type": "String",
/// }],
/// online_store_config={
/// "enable_online_store": True,
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
/// var example = new Aws.Sagemaker.FeatureGroup("example", new()
/// {
/// FeatureGroupName = "example",
/// RecordIdentifierFeatureName = "example",
/// EventTimeFeatureName = "example",
/// RoleArn = test.Arn,
/// FeatureDefinitions = new[]
/// {
/// new Aws.Sagemaker.Inputs.FeatureGroupFeatureDefinitionArgs
/// {
/// FeatureName = "example",
/// FeatureType = "String",
/// },
/// },
/// OnlineStoreConfig = new Aws.Sagemaker.Inputs.FeatureGroupOnlineStoreConfigArgs
/// {
/// EnableOnlineStore = true,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sagemaker"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := sagemaker.NewFeatureGroup(ctx, "example", &sagemaker.FeatureGroupArgs{
/// FeatureGroupName:            pulumi.String("example"),
/// RecordIdentifierFeatureName: pulumi.String("example"),
/// EventTimeFeatureName:        pulumi.String("example"),
/// RoleArn:                     pulumi.Any(test.Arn),
/// FeatureDefinitions: sagemaker.FeatureGroupFeatureDefinitionArray{
/// &sagemaker.FeatureGroupFeatureDefinitionArgs{
/// FeatureName: pulumi.String("example"),
/// FeatureType: pulumi.String("String"),
/// },
/// },
/// OnlineStoreConfig: &sagemaker.FeatureGroupOnlineStoreConfigArgs{
/// EnableOnlineStore: pulumi.Bool(true),
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
/// import com.pulumi.aws.sagemaker.FeatureGroup;
/// import com.pulumi.aws.sagemaker.FeatureGroupArgs;
/// import com.pulumi.aws.sagemaker.inputs.FeatureGroupFeatureDefinitionArgs;
/// import com.pulumi.aws.sagemaker.inputs.FeatureGroupOnlineStoreConfigArgs;
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
/// var example = new FeatureGroup("example", FeatureGroupArgs.builder()
/// .featureGroupName("example")
/// .recordIdentifierFeatureName("example")
/// .eventTimeFeatureName("example")
/// .roleArn(test.arn())
/// .featureDefinitions(FeatureGroupFeatureDefinitionArgs.builder()
/// .featureName("example")
/// .featureType("String")
/// .build())
/// .onlineStoreConfig(FeatureGroupOnlineStoreConfigArgs.builder()
/// .enableOnlineStore(true)
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:sagemaker:FeatureGroup
/// properties:
/// featureGroupName: example
/// recordIdentifierFeatureName: example
/// eventTimeFeatureName: example
/// roleArn: ${test.arn}
/// featureDefinitions:
/// - featureName: example
/// featureType: String
/// onlineStoreConfig:
/// enableOnlineStore: true
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Feature Groups using the <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:sagemaker/featureGroup:FeatureGroup test_feature_group feature_group-foo
/// ```
class FeatureGroup extends CustomResource {
  /// The Amazon Resource Name (ARN) assigned by AWS to this feature_group.
  late final Output<String> arn;

  /// A free-form description of a Feature Group.
  late final Output<String?> description;

  /// The name of the feature that stores the EventTime of a Record in a Feature Group.
  late final Output<String> eventTimeFeatureName;

  /// A list of Feature names and types. See Feature Definition Below.
  late final Output<List<FeatureGroupFeatureDefinition>> featureDefinitions;

  /// The name of the Feature Group. The name must be unique within an AWS Region in an AWS account.
  late final Output<String> featureGroupName;

  /// The Offline Feature Store Configuration. See Offline Store Config Below.
  late final Output<FeatureGroupOfflineStoreConfig?> offlineStoreConfig;

  /// The Online Feature Store Configuration. See Online Store Config Below.
  late final Output<FeatureGroupOnlineStoreConfig?> onlineStoreConfig;

  /// The name of the Feature whose value uniquely identifies a Record defined in the Feature Store. Only the latest record per identifier value will be stored in the Online Store.
  late final Output<String> recordIdentifierFeatureName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The Amazon Resource Name (ARN) of the IAM execution role used to persist data into the Offline Store if an <span pulumi-lang-nodejs="`offlineStoreConfig`" pulumi-lang-dotnet="`OfflineStoreConfig`" pulumi-lang-go="`offlineStoreConfig`" pulumi-lang-python="`offline_store_config`" pulumi-lang-yaml="`offlineStoreConfig`" pulumi-lang-java="`offlineStoreConfig`">`offline_store_config`</span> is provided.
  late final Output<String> roleArn;

  /// Map of resource tags for the resource. .If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;
  late final Output<FeatureGroupThroughputConfig> throughputConfig;

  FeatureGroup(
    String name, {
    FeatureGroupArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:sagemaker/featureGroup:FeatureGroup',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.description = Output.createUnknown<String?>();
    this.eventTimeFeatureName = Output.createUnknown<String>();
    this.featureDefinitions =
        Output.createUnknown<List<FeatureGroupFeatureDefinition>>();
    this.featureGroupName = Output.createUnknown<String>();
    this.offlineStoreConfig =
        Output.createUnknown<FeatureGroupOfflineStoreConfig?>();
    this.onlineStoreConfig =
        Output.createUnknown<FeatureGroupOnlineStoreConfig?>();
    this.recordIdentifierFeatureName = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.roleArn = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.throughputConfig =
        Output.createUnknown<FeatureGroupThroughputConfig>();
  }
}
