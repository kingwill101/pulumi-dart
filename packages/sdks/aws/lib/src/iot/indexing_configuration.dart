import 'package:pulumi/pulumi.dart' as pulumi;
import 'indexing_configuration_args.dart';
import 'indexing_configuration_state.dart';
import 'indexing_configuration_thing_group_indexing_configuration.dart';
import 'indexing_configuration_thing_indexing_configuration.dart';

/// Managing [IoT Thing indexing](https://docs.aws.amazon.com/iot/latest/developerguide/managing-index.html).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.iot.IndexingConfiguration("example", {thingIndexingConfiguration: {
///     thingIndexingMode: "REGISTRY_AND_SHADOW",
///     thingConnectivityIndexingMode: "STATUS",
///     deviceDefenderIndexingMode: "VIOLATIONS",
///     namedShadowIndexingMode: "ON",
///     filter: {
///         namedShadowNames: ["thing1shadow"],
///     },
///     customFields: [
///         {
///             name: "shadow.desired.power",
///             type: "Boolean",
///         },
///         {
///             name: "attributes.version",
///             type: "Number",
///         },
///         {
///             name: "shadow.name.thing1shadow.desired.DefaultDesired",
///             type: "String",
///         },
///         {
///             name: "deviceDefender.securityProfile1.NUMBER_VALUE_BEHAVIOR.lastViolationValue.number",
///             type: "Number",
///         },
///     ],
/// }});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.iot.IndexingConfiguration("example", thing_indexing_configuration={
///     "thing_indexing_mode": "REGISTRY_AND_SHADOW",
///     "thing_connectivity_indexing_mode": "STATUS",
///     "device_defender_indexing_mode": "VIOLATIONS",
///     "named_shadow_indexing_mode": "ON",
///     "filter": {
///         "named_shadow_names": ["thing1shadow"],
///     },
///     "custom_fields": [
///         {
///             "name": "shadow.desired.power",
///             "type": "Boolean",
///         },
///         {
///             "name": "attributes.version",
///             "type": "Number",
///         },
///         {
///             "name": "shadow.name.thing1shadow.desired.DefaultDesired",
///             "type": "String",
///         },
///         {
///             "name": "deviceDefender.securityProfile1.NUMBER_VALUE_BEHAVIOR.lastViolationValue.number",
///             "type": "Number",
///         },
///     ],
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
///     var example = new Aws.Iot.IndexingConfiguration("example", new()
///     {
///         ThingIndexingConfiguration = new Aws.Iot.Inputs.IndexingConfigurationThingIndexingConfigurationArgs
///         {
///             ThingIndexingMode = "REGISTRY_AND_SHADOW",
///             ThingConnectivityIndexingMode = "STATUS",
///             DeviceDefenderIndexingMode = "VIOLATIONS",
///             NamedShadowIndexingMode = "ON",
///             Filter = new Aws.Iot.Inputs.IndexingConfigurationThingIndexingConfigurationFilterArgs
///             {
///                 NamedShadowNames = new[]
///                 {
///                     "thing1shadow",
///                 },
///             },
///             CustomFields = new[]
///             {
///                 new Aws.Iot.Inputs.IndexingConfigurationThingIndexingConfigurationCustomFieldArgs
///                 {
///                     Name = "shadow.desired.power",
///                     Type = "Boolean",
///                 },
///                 new Aws.Iot.Inputs.IndexingConfigurationThingIndexingConfigurationCustomFieldArgs
///                 {
///                     Name = "attributes.version",
///                     Type = "Number",
///                 },
///                 new Aws.Iot.Inputs.IndexingConfigurationThingIndexingConfigurationCustomFieldArgs
///                 {
///                     Name = "shadow.name.thing1shadow.desired.DefaultDesired",
///                     Type = "String",
///                 },
///                 new Aws.Iot.Inputs.IndexingConfigurationThingIndexingConfigurationCustomFieldArgs
///                 {
///                     Name = "deviceDefender.securityProfile1.NUMBER_VALUE_BEHAVIOR.lastViolationValue.number",
///                     Type = "Number",
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iot"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iot.NewIndexingConfiguration(ctx, "example", &iot.IndexingConfigurationArgs{
/// 			ThingIndexingConfiguration: &iot.IndexingConfigurationThingIndexingConfigurationArgs{
/// 				ThingIndexingMode:             pulumi.String("REGISTRY_AND_SHADOW"),
/// 				ThingConnectivityIndexingMode: pulumi.String("STATUS"),
/// 				DeviceDefenderIndexingMode:    pulumi.String("VIOLATIONS"),
/// 				NamedShadowIndexingMode:       pulumi.String("ON"),
/// 				Filter: &iot.IndexingConfigurationThingIndexingConfigurationFilterArgs{
/// 					NamedShadowNames: pulumi.StringArray{
/// 						pulumi.String("thing1shadow"),
/// 					},
/// 				},
/// 				CustomFields: iot.IndexingConfigurationThingIndexingConfigurationCustomFieldArray{
/// 					&iot.IndexingConfigurationThingIndexingConfigurationCustomFieldArgs{
/// 						Name: pulumi.String("shadow.desired.power"),
/// 						Type: pulumi.String("Boolean"),
/// 					},
/// 					&iot.IndexingConfigurationThingIndexingConfigurationCustomFieldArgs{
/// 						Name: pulumi.String("attributes.version"),
/// 						Type: pulumi.String("Number"),
/// 					},
/// 					&iot.IndexingConfigurationThingIndexingConfigurationCustomFieldArgs{
/// 						Name: pulumi.String("shadow.name.thing1shadow.desired.DefaultDesired"),
/// 						Type: pulumi.String("String"),
/// 					},
/// 					&iot.IndexingConfigurationThingIndexingConfigurationCustomFieldArgs{
/// 						Name: pulumi.String("deviceDefender.securityProfile1.NUMBER_VALUE_BEHAVIOR.lastViolationValue.number"),
/// 						Type: pulumi.String("Number"),
/// 					},
/// 				},
/// 			},
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
/// import com.pulumi.aws.iot.IndexingConfiguration;
/// import com.pulumi.aws.iot.IndexingConfigurationArgs;
/// import com.pulumi.aws.iot.inputs.IndexingConfigurationThingIndexingConfigurationArgs;
/// import com.pulumi.aws.iot.inputs.IndexingConfigurationThingIndexingConfigurationFilterArgs;
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
///         var example = new IndexingConfiguration("example", IndexingConfigurationArgs.builder()
///             .thingIndexingConfiguration(IndexingConfigurationThingIndexingConfigurationArgs.builder()
///                 .thingIndexingMode("REGISTRY_AND_SHADOW")
///                 .thingConnectivityIndexingMode("STATUS")
///                 .deviceDefenderIndexingMode("VIOLATIONS")
///                 .namedShadowIndexingMode("ON")
///                 .filter(IndexingConfigurationThingIndexingConfigurationFilterArgs.builder()
///                     .namedShadowNames("thing1shadow")
///                     .build())
///                 .customFields(
///                     IndexingConfigurationThingIndexingConfigurationCustomFieldArgs.builder()
///                         .name("shadow.desired.power")
///                         .type("Boolean")
///                         .build(),
///                     IndexingConfigurationThingIndexingConfigurationCustomFieldArgs.builder()
///                         .name("attributes.version")
///                         .type("Number")
///                         .build(),
///                     IndexingConfigurationThingIndexingConfigurationCustomFieldArgs.builder()
///                         .name("shadow.name.thing1shadow.desired.DefaultDesired")
///                         .type("String")
///                         .build(),
///                     IndexingConfigurationThingIndexingConfigurationCustomFieldArgs.builder()
///                         .name("deviceDefender.securityProfile1.NUMBER_VALUE_BEHAVIOR.lastViolationValue.number")
///                         .type("Number")
///                         .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:iot:IndexingConfiguration
///     properties:
///       thingIndexingConfiguration:
///         thingIndexingMode: REGISTRY_AND_SHADOW
///         thingConnectivityIndexingMode: STATUS
///         deviceDefenderIndexingMode: VIOLATIONS
///         namedShadowIndexingMode: ON
///         filter:
///           namedShadowNames:
///             - thing1shadow
///         customFields:
///           - name: shadow.desired.power
///             type: Boolean
///           - name: attributes.version
///             type: Number
///           - name: shadow.name.thing1shadow.desired.DefaultDesired
///             type: String
///           - name: deviceDefender.securityProfile1.NUMBER_VALUE_BEHAVIOR.lastViolationValue.number
///             type: Number
/// ```
class IndexingConfiguration extends pulumi.CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Thing group indexing configuration. See below.
  late final pulumi.Output<IndexingConfigurationThingGroupIndexingConfiguration> thingGroupIndexingConfiguration;
  /// Thing indexing configuration. See below.
  late final pulumi.Output<IndexingConfigurationThingIndexingConfiguration> thingIndexingConfiguration;

  /// Creates a new [IndexingConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IndexingConfiguration]. {@macro pulumi_iot_indexing_configuration_indexing_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IndexingConfiguration(
    String name, {
    IndexingConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:iot/indexingConfiguration:IndexingConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.region = registerOutput<String>('region');
    this.thingGroupIndexingConfiguration = registerOutput<IndexingConfigurationThingGroupIndexingConfiguration>('thingGroupIndexingConfiguration');
    this.thingIndexingConfiguration = registerOutput<IndexingConfigurationThingIndexingConfiguration>('thingIndexingConfiguration');
  }

  /// Gets an existing [IndexingConfiguration] resource's state with the given [name] and [id].
  static IndexingConfiguration get(
    String name,
    pulumi.Input<String> id, {
    IndexingConfigurationState? state,
  }) {
    return IndexingConfiguration._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  IndexingConfiguration._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:iot/indexingConfiguration:IndexingConfiguration',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.region = registerOutput<String>('region');
    this.thingGroupIndexingConfiguration = registerOutput<IndexingConfigurationThingGroupIndexingConfiguration>('thingGroupIndexingConfiguration');
    this.thingIndexingConfiguration = registerOutput<IndexingConfigurationThingIndexingConfiguration>('thingIndexingConfiguration');
  }
}
