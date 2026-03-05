import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_watch_alarm_args.dart';
import 'cloud_watch_alarm_properties_response.dart';
import 'system_data_response.dart';

/// A Microsoft.AwsConnector resource
///
/// Uses Azure REST API version 2024-12-01. In version 2.x of the Azure Native provider, it used API version 2024-12-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CloudWatchAlarms_CreateOrReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var cloudWatchAlarm = new AzureNative.AwsConnector.CloudWatchAlarm("cloudWatchAlarm", new()
///     {
///         Location = "nbymldrgacokglzmyglynjohhnj",
///         Name = "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///         Properties = new AzureNative.AwsConnector.Inputs.CloudWatchAlarmPropertiesArgs
///         {
///             Arn = "uhqszqzfmdpnmiwu",
///             AwsAccountId = "qcoqhrkbfdowqmkzarqbtwcprj",
///             AwsProperties = new AzureNative.AwsConnector.Inputs.AwsCloudWatchAlarmPropertiesArgs
///             {
///                 ActionsEnabled = true,
///                 AlarmActions = new[]
///                 {
///                     "ydnvbaggrnyxwzika",
///                 },
///                 AlarmDescription = "idvyiwmbllvlfvjcibommfbp",
///                 AlarmName = "ooriavzb",
///                 Arn = "twsifnftkdrfzflvvsuka",
///                 ComparisonOperator = "qo",
///                 DatapointsToAlarm = 30,
///                 Dimensions = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.DimensionArgs
///                     {
///                         Value = "lnphxdrevivdil",
///                     },
///                 },
///                 EvaluateLowSampleCountPercentile = "oihpnjstsw",
///                 EvaluationPeriods = 15,
///                 ExtendedStatistic = "czkqsxjyzryvvkzoshk",
///                 InsufficientDataActions = new[]
///                 {
///                     "dfkb",
///                 },
///                 MetricName = "bkdkskukix",
///                 Metrics = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.MetricDataQueryArgs
///                     {
///                         AccountId = "rbtogpxgrissdcvqupcuhqqesz",
///                         Expression = "hhxrpieqtbvafrujybxxa",
///                         Id = "zcevmcxhujphx",
///                         Label = "jmeaobrgk",
///                         MetricStat = new AzureNative.AwsConnector.Inputs.MetricStatArgs
///                         {
///                             Metric = new AzureNative.AwsConnector.Inputs.MetricArgs
///                             {
///                                 Dimensions = new[]
///                                 {
///                                     new AzureNative.AwsConnector.Inputs.DimensionArgs
///                                     {
///                                         Value = "lnphxdrevivdil",
///                                     },
///                                 },
///                                 MetricName = "mabmwxjydr",
///                                 Namespace = "wwoppcactqawdnkpxvjlo",
///                             },
///                             Period = 22,
///                             Stat = "znmppqcobugvvlzccemylhxzsfsg",
///                             Unit = "vu",
///                         },
///                         Period = 27,
///                         ReturnData = true,
///                     },
///                 },
///                 Namespace = "ptrnxovqoagxfepnjkpewbbusjkkzr",
///                 OkActions = new[]
///                 {
///                     "afskbnaohvdlb",
///                 },
///                 Period = 5,
///                 Statistic = "yrrnvsfpyvhnzlmw",
///                 Tags = new[]
///                 {
///                     new AzureNative.AwsConnector.Inputs.TagArgs
///                     {
///                         Key = "mdkzoktp",
///                         Value = "zswuuw",
///                     },
///                 },
///                 Threshold = 17,
///                 ThresholdMetricId = "sqtfzityufokpxbthucjitcljvo",
///                 TreatMissingData = "iqrbyvljxufjwybtkjc",
///                 Unit = "vbjipwqqaobwlyebv",
///             },
///             AwsRegion = "afpgkhpukllavze",
///             AwsSourceSchema = "drehzmurfidpdlcf",
///             AwsTags =
///             {
///                 { "key6400", "ivxpvjindvijzvpazekctf" },
///             },
///             PublicCloudConnectorsResourceId = "upovlpslvvatbmxiuwhvj",
///             PublicCloudResourceName = "sjxcsoycs",
///         },
///         ResourceGroupName = "rgcloudWatchAlarm",
///         Tags =
///         {
///             { "key7594", "abbryoyexzxxwsdyfpvtliccd" },
///         },
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	awsconnector "github.com/pulumi/pulumi-azure-native-sdk/awsconnector/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := awsconnector.NewCloudWatchAlarm(ctx, "cloudWatchAlarm", &awsconnector.CloudWatchAlarmArgs{
/// 			Location: pulumi.String("nbymldrgacokglzmyglynjohhnj"),
/// 			Name:     pulumi.String("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])"),
/// 			Properties: &awsconnector.CloudWatchAlarmPropertiesArgs{
/// 				Arn:          pulumi.String("uhqszqzfmdpnmiwu"),
/// 				AwsAccountId: pulumi.String("qcoqhrkbfdowqmkzarqbtwcprj"),
/// 				AwsProperties: &awsconnector.AwsCloudWatchAlarmPropertiesArgs{
/// 					ActionsEnabled: pulumi.Bool(true),
/// 					AlarmActions: pulumi.StringArray{
/// 						pulumi.String("ydnvbaggrnyxwzika"),
/// 					},
/// 					AlarmDescription:   pulumi.String("idvyiwmbllvlfvjcibommfbp"),
/// 					AlarmName:          pulumi.String("ooriavzb"),
/// 					Arn:                pulumi.String("twsifnftkdrfzflvvsuka"),
/// 					ComparisonOperator: pulumi.String("qo"),
/// 					DatapointsToAlarm:  pulumi.Int(30),
/// 					Dimensions: awsconnector.DimensionArray{
/// 						&awsconnector.DimensionArgs{
/// 							Value: pulumi.String("lnphxdrevivdil"),
/// 						},
/// 					},
/// 					EvaluateLowSampleCountPercentile: pulumi.String("oihpnjstsw"),
/// 					EvaluationPeriods:                pulumi.Int(15),
/// 					ExtendedStatistic:                pulumi.String("czkqsxjyzryvvkzoshk"),
/// 					InsufficientDataActions: pulumi.StringArray{
/// 						pulumi.String("dfkb"),
/// 					},
/// 					MetricName: pulumi.String("bkdkskukix"),
/// 					Metrics: awsconnector.MetricDataQueryArray{
/// 						&awsconnector.MetricDataQueryArgs{
/// 							AccountId:  pulumi.String("rbtogpxgrissdcvqupcuhqqesz"),
/// 							Expression: pulumi.String("hhxrpieqtbvafrujybxxa"),
/// 							Id:         pulumi.String("zcevmcxhujphx"),
/// 							Label:      pulumi.String("jmeaobrgk"),
/// 							MetricStat: &awsconnector.MetricStatArgs{
/// 								Metric: &awsconnector.MetricArgs{
/// 									Dimensions: awsconnector.DimensionArray{
/// 										&awsconnector.DimensionArgs{
/// 											Value: pulumi.String("lnphxdrevivdil"),
/// 										},
/// 									},
/// 									MetricName: pulumi.String("mabmwxjydr"),
/// 									Namespace:  pulumi.String("wwoppcactqawdnkpxvjlo"),
/// 								},
/// 								Period: pulumi.Int(22),
/// 								Stat:   pulumi.String("znmppqcobugvvlzccemylhxzsfsg"),
/// 								Unit:   pulumi.String("vu"),
/// 							},
/// 							Period:     pulumi.Int(27),
/// 							ReturnData: pulumi.Bool(true),
/// 						},
/// 					},
/// 					Namespace: pulumi.String("ptrnxovqoagxfepnjkpewbbusjkkzr"),
/// 					OkActions: pulumi.StringArray{
/// 						pulumi.String("afskbnaohvdlb"),
/// 					},
/// 					Period:    pulumi.Int(5),
/// 					Statistic: pulumi.String("yrrnvsfpyvhnzlmw"),
/// 					Tags: awsconnector.TagArray{
/// 						&awsconnector.TagArgs{
/// 							Key:   pulumi.String("mdkzoktp"),
/// 							Value: pulumi.String("zswuuw"),
/// 						},
/// 					},
/// 					Threshold:         pulumi.Float64(17),
/// 					ThresholdMetricId: pulumi.String("sqtfzityufokpxbthucjitcljvo"),
/// 					TreatMissingData:  pulumi.String("iqrbyvljxufjwybtkjc"),
/// 					Unit:              pulumi.String("vbjipwqqaobwlyebv"),
/// 				},
/// 				AwsRegion:       pulumi.String("afpgkhpukllavze"),
/// 				AwsSourceSchema: pulumi.String("drehzmurfidpdlcf"),
/// 				AwsTags: pulumi.StringMap{
/// 					"key6400": pulumi.String("ivxpvjindvijzvpazekctf"),
/// 				},
/// 				PublicCloudConnectorsResourceId: pulumi.String("upovlpslvvatbmxiuwhvj"),
/// 				PublicCloudResourceName:         pulumi.String("sjxcsoycs"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgcloudWatchAlarm"),
/// 			Tags: pulumi.StringMap{
/// 				"key7594": pulumi.String("abbryoyexzxxwsdyfpvtliccd"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.awsconnector.CloudWatchAlarm;
/// import com.pulumi.azurenative.awsconnector.CloudWatchAlarmArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.CloudWatchAlarmPropertiesArgs;
/// import com.pulumi.azurenative.awsconnector.inputs.AwsCloudWatchAlarmPropertiesArgs;
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
///         var cloudWatchAlarm = new CloudWatchAlarm("cloudWatchAlarm", CloudWatchAlarmArgs.builder()
///             .location("nbymldrgacokglzmyglynjohhnj")
///             .name("Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])")
///             .properties(CloudWatchAlarmPropertiesArgs.builder()
///                 .arn("uhqszqzfmdpnmiwu")
///                 .awsAccountId("qcoqhrkbfdowqmkzarqbtwcprj")
///                 .awsProperties(AwsCloudWatchAlarmPropertiesArgs.builder()
///                     .actionsEnabled(true)
///                     .alarmActions("ydnvbaggrnyxwzika")
///                     .alarmDescription("idvyiwmbllvlfvjcibommfbp")
///                     .alarmName("ooriavzb")
///                     .arn("twsifnftkdrfzflvvsuka")
///                     .comparisonOperator("qo")
///                     .datapointsToAlarm(30)
///                     .dimensions(DimensionArgs.builder()
///                         .value("lnphxdrevivdil")
///                         .build())
///                     .evaluateLowSampleCountPercentile("oihpnjstsw")
///                     .evaluationPeriods(15)
///                     .extendedStatistic("czkqsxjyzryvvkzoshk")
///                     .insufficientDataActions("dfkb")
///                     .metricName("bkdkskukix")
///                     .metrics(MetricDataQueryArgs.builder()
///                         .accountId("rbtogpxgrissdcvqupcuhqqesz")
///                         .expression("hhxrpieqtbvafrujybxxa")
///                         .id("zcevmcxhujphx")
///                         .label("jmeaobrgk")
///                         .metricStat(MetricStatArgs.builder()
///                             .metric(MetricArgs.builder()
///                                 .dimensions(DimensionArgs.builder()
///                                     .value("lnphxdrevivdil")
///                                     .build())
///                                 .metricName("mabmwxjydr")
///                                 .namespace("wwoppcactqawdnkpxvjlo")
///                                 .build())
///                             .period(22)
///                             .stat("znmppqcobugvvlzccemylhxzsfsg")
///                             .unit("vu")
///                             .build())
///                         .period(27)
///                         .returnData(true)
///                         .build())
///                     .namespace("ptrnxovqoagxfepnjkpewbbusjkkzr")
///                     .okActions("afskbnaohvdlb")
///                     .period(5)
///                     .statistic("yrrnvsfpyvhnzlmw")
///                     .tags(TagArgs.builder()
///                         .key("mdkzoktp")
///                         .value("zswuuw")
///                         .build())
///                     .threshold(17.0)
///                     .thresholdMetricId("sqtfzityufokpxbthucjitcljvo")
///                     .treatMissingData("iqrbyvljxufjwybtkjc")
///                     .unit("vbjipwqqaobwlyebv")
///                     .build())
///                 .awsRegion("afpgkhpukllavze")
///                 .awsSourceSchema("drehzmurfidpdlcf")
///                 .awsTags(Map.of("key6400", "ivxpvjindvijzvpazekctf"))
///                 .publicCloudConnectorsResourceId("upovlpslvvatbmxiuwhvj")
///                 .publicCloudResourceName("sjxcsoycs")
///                 .build())
///             .resourceGroupName("rgcloudWatchAlarm")
///             .tags(Map.of("key7594", "abbryoyexzxxwsdyfpvtliccd"))
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const cloudWatchAlarm = new azure_native.awsconnector.CloudWatchAlarm("cloudWatchAlarm", {
///     location: "nbymldrgacokglzmyglynjohhnj",
///     name: "Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties: {
///         arn: "uhqszqzfmdpnmiwu",
///         awsAccountId: "qcoqhrkbfdowqmkzarqbtwcprj",
///         awsProperties: {
///             actionsEnabled: true,
///             alarmActions: ["ydnvbaggrnyxwzika"],
///             alarmDescription: "idvyiwmbllvlfvjcibommfbp",
///             alarmName: "ooriavzb",
///             arn: "twsifnftkdrfzflvvsuka",
///             comparisonOperator: "qo",
///             datapointsToAlarm: 30,
///             dimensions: [{
///                 value: "lnphxdrevivdil",
///             }],
///             evaluateLowSampleCountPercentile: "oihpnjstsw",
///             evaluationPeriods: 15,
///             extendedStatistic: "czkqsxjyzryvvkzoshk",
///             insufficientDataActions: ["dfkb"],
///             metricName: "bkdkskukix",
///             metrics: [{
///                 accountId: "rbtogpxgrissdcvqupcuhqqesz",
///                 expression: "hhxrpieqtbvafrujybxxa",
///                 id: "zcevmcxhujphx",
///                 label: "jmeaobrgk",
///                 metricStat: {
///                     metric: {
///                         dimensions: [{
///                             value: "lnphxdrevivdil",
///                         }],
///                         metricName: "mabmwxjydr",
///                         namespace: "wwoppcactqawdnkpxvjlo",
///                     },
///                     period: 22,
///                     stat: "znmppqcobugvvlzccemylhxzsfsg",
///                     unit: "vu",
///                 },
///                 period: 27,
///                 returnData: true,
///             }],
///             namespace: "ptrnxovqoagxfepnjkpewbbusjkkzr",
///             okActions: ["afskbnaohvdlb"],
///             period: 5,
///             statistic: "yrrnvsfpyvhnzlmw",
///             tags: [{
///                 key: "mdkzoktp",
///                 value: "zswuuw",
///             }],
///             threshold: 17,
///             thresholdMetricId: "sqtfzityufokpxbthucjitcljvo",
///             treatMissingData: "iqrbyvljxufjwybtkjc",
///             unit: "vbjipwqqaobwlyebv",
///         },
///         awsRegion: "afpgkhpukllavze",
///         awsSourceSchema: "drehzmurfidpdlcf",
///         awsTags: {
///             key6400: "ivxpvjindvijzvpazekctf",
///         },
///         publicCloudConnectorsResourceId: "upovlpslvvatbmxiuwhvj",
///         publicCloudResourceName: "sjxcsoycs",
///     },
///     resourceGroupName: "rgcloudWatchAlarm",
///     tags: {
///         key7594: "abbryoyexzxxwsdyfpvtliccd",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// cloud_watch_alarm = azure_native.awsconnector.CloudWatchAlarm("cloudWatchAlarm",
///     location="nbymldrgacokglzmyglynjohhnj",
///     name="Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])",
///     properties={
///         "arn": "uhqszqzfmdpnmiwu",
///         "aws_account_id": "qcoqhrkbfdowqmkzarqbtwcprj",
///         "aws_properties": {
///             "actions_enabled": True,
///             "alarm_actions": ["ydnvbaggrnyxwzika"],
///             "alarm_description": "idvyiwmbllvlfvjcibommfbp",
///             "alarm_name": "ooriavzb",
///             "arn": "twsifnftkdrfzflvvsuka",
///             "comparison_operator": "qo",
///             "datapoints_to_alarm": 30,
///             "dimensions": [{
///                 "value": "lnphxdrevivdil",
///             }],
///             "evaluate_low_sample_count_percentile": "oihpnjstsw",
///             "evaluation_periods": 15,
///             "extended_statistic": "czkqsxjyzryvvkzoshk",
///             "insufficient_data_actions": ["dfkb"],
///             "metric_name": "bkdkskukix",
///             "metrics": [{
///                 "account_id": "rbtogpxgrissdcvqupcuhqqesz",
///                 "expression": "hhxrpieqtbvafrujybxxa",
///                 "id": "zcevmcxhujphx",
///                 "label": "jmeaobrgk",
///                 "metric_stat": {
///                     "metric": {
///                         "dimensions": [{
///                             "value": "lnphxdrevivdil",
///                         }],
///                         "metric_name": "mabmwxjydr",
///                         "namespace": "wwoppcactqawdnkpxvjlo",
///                     },
///                     "period": 22,
///                     "stat": "znmppqcobugvvlzccemylhxzsfsg",
///                     "unit": "vu",
///                 },
///                 "period": 27,
///                 "return_data": True,
///             }],
///             "namespace": "ptrnxovqoagxfepnjkpewbbusjkkzr",
///             "ok_actions": ["afskbnaohvdlb"],
///             "period": 5,
///             "statistic": "yrrnvsfpyvhnzlmw",
///             "tags": [{
///                 "key": "mdkzoktp",
///                 "value": "zswuuw",
///             }],
///             "threshold": 17,
///             "threshold_metric_id": "sqtfzityufokpxbthucjitcljvo",
///             "treat_missing_data": "iqrbyvljxufjwybtkjc",
///             "unit": "vbjipwqqaobwlyebv",
///         },
///         "aws_region": "afpgkhpukllavze",
///         "aws_source_schema": "drehzmurfidpdlcf",
///         "aws_tags": {
///             "key6400": "ivxpvjindvijzvpazekctf",
///         },
///         "public_cloud_connectors_resource_id": "upovlpslvvatbmxiuwhvj",
///         "public_cloud_resource_name": "sjxcsoycs",
///     },
///     resource_group_name="rgcloudWatchAlarm",
///     tags={
///         "key7594": "abbryoyexzxxwsdyfpvtliccd",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   cloudWatchAlarm:
///     type: azure-native:awsconnector:CloudWatchAlarm
///     properties:
///       location: nbymldrgacokglzmyglynjohhnj
///       name: Replace this value with a string matching RegExp ^(z=.{0,259}[^zs.]$)(z!.*[zzzzzzzz])
///       properties:
///         arn: uhqszqzfmdpnmiwu
///         awsAccountId: qcoqhrkbfdowqmkzarqbtwcprj
///         awsProperties:
///           actionsEnabled: true
///           alarmActions:
///             - ydnvbaggrnyxwzika
///           alarmDescription: idvyiwmbllvlfvjcibommfbp
///           alarmName: ooriavzb
///           arn: twsifnftkdrfzflvvsuka
///           comparisonOperator: qo
///           datapointsToAlarm: 30
///           dimensions:
///             - value: lnphxdrevivdil
///           evaluateLowSampleCountPercentile: oihpnjstsw
///           evaluationPeriods: 15
///           extendedStatistic: czkqsxjyzryvvkzoshk
///           insufficientDataActions:
///             - dfkb
///           metricName: bkdkskukix
///           metrics:
///             - accountId: rbtogpxgrissdcvqupcuhqqesz
///               expression: hhxrpieqtbvafrujybxxa
///               id: zcevmcxhujphx
///               label: jmeaobrgk
///               metricStat:
///                 metric:
///                   dimensions:
///                     - value: lnphxdrevivdil
///                   metricName: mabmwxjydr
///                   namespace: wwoppcactqawdnkpxvjlo
///                 period: 22
///                 stat: znmppqcobugvvlzccemylhxzsfsg
///                 unit: vu
///               period: 27
///               returnData: true
///           namespace: ptrnxovqoagxfepnjkpewbbusjkkzr
///           okActions:
///             - afskbnaohvdlb
///           period: 5
///           statistic: yrrnvsfpyvhnzlmw
///           tags:
///             - key: mdkzoktp
///               value: zswuuw
///           threshold: 17
///           thresholdMetricId: sqtfzityufokpxbthucjitcljvo
///           treatMissingData: iqrbyvljxufjwybtkjc
///           unit: vbjipwqqaobwlyebv
///         awsRegion: afpgkhpukllavze
///         awsSourceSchema: drehzmurfidpdlcf
///         awsTags:
///           key6400: ivxpvjindvijzvpazekctf
///         publicCloudConnectorsResourceId: upovlpslvvatbmxiuwhvj
///         publicCloudResourceName: sjxcsoycs
///       resourceGroupName: rgcloudWatchAlarm
///       tags:
///         key7594: abbryoyexzxxwsdyfpvtliccd
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:awsconnector:CloudWatchAlarm ilbblftqsxtuikyupkiwbiaybdej /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AwsConnector/cloudWatchAlarms/{name}
/// ```
class CloudWatchAlarm extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The resource-specific properties for this resource.
  late final pulumi.Output<CloudWatchAlarmPropertiesResponse> properties;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [CloudWatchAlarm].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CloudWatchAlarm]. {@macro pulumi_awsconnector_cloud_watch_alarm_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CloudWatchAlarm(
    String name, {
    CloudWatchAlarmArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:awsconnector:CloudWatchAlarm',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<CloudWatchAlarmPropertiesResponse>(
      'properties',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return CloudWatchAlarmPropertiesResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    systemData = registerOutput<SystemDataResponse>(
      'systemData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SystemDataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
