import 'package:pulumi/pulumi.dart' as pulumi;
import 'slot_type_args.dart';
import 'slot_type_enumeration_value.dart';

/// Provides an Amazon Lex Slot Type resource. For more information see
/// [Amazon Lex: How It Works](https://docs.aws.amazon.com/lex/latest/dg/how-it-works.html)
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const flowerTypes = new aws.lex.SlotType("flower_types", {
///     createVersion: true,
///     description: "Types of flowers to order",
///     enumerationValues: [
///         {
///             synonyms: [
///                 "Lirium",
///                 "Martagon",
///             ],
///             value: "lilies",
///         },
///         {
///             synonyms: [
///                 "Eduardoregelia",
///                 "Podonix",
///             ],
///             value: "tulips",
///         },
///     ],
///     name: "FlowerTypes",
///     valueSelectionStrategy: "ORIGINAL_VALUE",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// flower_types = aws.lex.SlotType("flower_types",
///     create_version=True,
///     description="Types of flowers to order",
///     enumeration_values=[
///         {
///             "synonyms": [
///                 "Lirium",
///                 "Martagon",
///             ],
///             "value": "lilies",
///         },
///         {
///             "synonyms": [
///                 "Eduardoregelia",
///                 "Podonix",
///             ],
///             "value": "tulips",
///         },
///     ],
///     name="FlowerTypes",
///     value_selection_strategy="ORIGINAL_VALUE")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var flowerTypes = new Aws.Lex.SlotType("flower_types", new()
///     {
///         CreateVersion = true,
///         Description = "Types of flowers to order",
///         EnumerationValues = new[]
///         {
///             new Aws.Lex.Inputs.SlotTypeEnumerationValueArgs
///             {
///                 Synonyms = new[]
///                 {
///                     "Lirium",
///                     "Martagon",
///                 },
///                 Value = "lilies",
///             },
///             new Aws.Lex.Inputs.SlotTypeEnumerationValueArgs
///             {
///                 Synonyms = new[]
///                 {
///                     "Eduardoregelia",
///                     "Podonix",
///                 },
///                 Value = "tulips",
///             },
///         },
///         Name = "FlowerTypes",
///         ValueSelectionStrategy = "ORIGINAL_VALUE",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := lex.NewSlotType(ctx, "flower_types", &lex.SlotTypeArgs{
/// 			CreateVersion: pulumi.Bool(true),
/// 			Description:   pulumi.String("Types of flowers to order"),
/// 			EnumerationValues: lex.SlotTypeEnumerationValueArray{
/// 				&lex.SlotTypeEnumerationValueArgs{
/// 					Synonyms: pulumi.StringArray{
/// 						pulumi.String("Lirium"),
/// 						pulumi.String("Martagon"),
/// 					},
/// 					Value: pulumi.String("lilies"),
/// 				},
/// 				&lex.SlotTypeEnumerationValueArgs{
/// 					Synonyms: pulumi.StringArray{
/// 						pulumi.String("Eduardoregelia"),
/// 						pulumi.String("Podonix"),
/// 					},
/// 					Value: pulumi.String("tulips"),
/// 				},
/// 			},
/// 			Name:                   pulumi.String("FlowerTypes"),
/// 			ValueSelectionStrategy: pulumi.String("ORIGINAL_VALUE"),
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
/// import com.pulumi.aws.lex.SlotType;
/// import com.pulumi.aws.lex.SlotTypeArgs;
/// import com.pulumi.aws.lex.inputs.SlotTypeEnumerationValueArgs;
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
///         var flowerTypes = new SlotType("flowerTypes", SlotTypeArgs.builder()
///             .createVersion(true)
///             .description("Types of flowers to order")
///             .enumerationValues(
///                 SlotTypeEnumerationValueArgs.builder()
///                     .synonyms(
///                         "Lirium",
///                         "Martagon")
///                     .value("lilies")
///                     .build(),
///                 SlotTypeEnumerationValueArgs.builder()
///                     .synonyms(
///                         "Eduardoregelia",
///                         "Podonix")
///                     .value("tulips")
///                     .build())
///             .name("FlowerTypes")
///             .valueSelectionStrategy("ORIGINAL_VALUE")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   flowerTypes:
///     type: aws:lex:SlotType
///     name: flower_types
///     properties:
///       createVersion: true
///       description: Types of flowers to order
///       enumerationValues:
///         - synonyms:
///             - Lirium
///             - Martagon
///           value: lilies
///         - synonyms:
///             - Eduardoregelia
///             - Podonix
///           value: tulips
///       name: FlowerTypes
///       valueSelectionStrategy: ORIGINAL_VALUE
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import slot types using their name. For example:
///
/// ```sh
/// $ pulumi import aws:lex/slotType:SlotType flower_types FlowerTypes
/// ```
class SlotType extends pulumi.CustomResource {
  /// Checksum identifying the version of the slot type that was created. The checksum is
  /// not included as an argument because the resource will add it automatically when updating the slot type.
  late final pulumi.Output<String> checksum;
  /// Determines if a new slot type version is created when the initial resource is created and on each
  /// update. Defaults to `false`.
  late final pulumi.Output<bool?> createVersion;
  /// The date when the slot type version was created.
  late final pulumi.Output<String> createdDate;
  /// A description of the slot type. Must be less than or equal to 200 characters in length.
  late final pulumi.Output<String?> description;
  /// A list of EnumerationValue objects that defines the values that
  /// the slot type can take. Each value can have a list of synonyms, which are additional values that help
  /// train the machine learning model about the values that it resolves for a slot. Attributes are
  /// documented under enumeration_value.
  late final pulumi.Output<List<SlotTypeEnumerationValue>> enumerationValues;
  /// The date when the `$LATEST` version of this slot type was updated.
  late final pulumi.Output<String> lastUpdatedDate;
  /// The name of the slot type. The name is not case sensitive. Must be less than or equal to 100 characters in length.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Determines the slot resolution strategy that Amazon Lex
  /// uses to return slot type values. `ORIGINAL_VALUE` returns the value entered by the user if the user
  /// value is similar to the slot value. `TOP_RESOLUTION` returns the first value in the resolution list
  /// if there is a resolution list for the slot, otherwise null is returned. Defaults to `ORIGINAL_VALUE`.
  late final pulumi.Output<String?> valueSelectionStrategy;
  /// The version of the slot type.
  late final pulumi.Output<String> version;

  /// Creates a new [SlotType].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SlotType]. {@macro pulumi_lex_slot_type_slot_type_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SlotType(
    String name, {
    SlotTypeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lex/slotType:SlotType',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.checksum = registerOutput<String>('checksum');
    this.createVersion = registerOutput<bool?>('createVersion');
    this.createdDate = registerOutput<String>('createdDate');
    this.description = registerOutput<String?>('description');
    this.enumerationValues = registerOutput<List<SlotTypeEnumerationValue>>('enumerationValues');
    this.lastUpdatedDate = registerOutput<String>('lastUpdatedDate');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.valueSelectionStrategy = registerOutput<String?>('valueSelectionStrategy');
    this.version = registerOutput<String>('version');
  }
}
