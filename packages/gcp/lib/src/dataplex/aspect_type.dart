import 'package:pulumi/pulumi.dart' as pulumi;
import 'aspect_type_args.dart';

/// An Aspect Type is a template for creating Aspects.
///
///
///
/// ## Example Usage
///
/// ### Dataplex Aspect Type Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const testAspectTypeBasic = new gcp.dataplex.AspectType("test_aspect_type_basic", {
///     aspectTypeId: "aspect-type-basic",
///     project: "my-project-name",
///     location: "us-central1",
///     dataClassification: "DATA_CLASSIFICATION_UNSPECIFIED",
///     metadataTemplate: `{
///   \\"name\\": \\"tf-test-template\\",
///   \\"type\\": \\"record\\",
///   \\"recordFields\\": [
///     {
///       \\"name\\": \\"type\\",
///       \\"type\\": \\"enum\\",
///       \\"annotations\\": {
///         \\"displayName\\": \\"Type\\",
///         \\"description\\": \\"Specifies the type of view represented by the entry.\\"
///       },
///       \\"index\\": 1,
///       \\"constraints\\": {
///         \\"required\\": true
///       },
///       \\"enumValues\\": [
///         {
///           \\"name\\": \\"VIEW\\",
///           \\"index\\": 1
///         }
///       ]
///     }
///   ]
/// }
/// `,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// test_aspect_type_basic = gcp.dataplex.AspectType("test_aspect_type_basic",
///     aspect_type_id="aspect-type-basic",
///     project="my-project-name",
///     location="us-central1",
///     data_classification="DATA_CLASSIFICATION_UNSPECIFIED",
///     metadata_template="""{
///   \"name\": \"tf-test-template\",
///   \"type\": \"record\",
///   \"recordFields\": [
///     {
///       \"name\": \"type\",
///       \"type\": \"enum\",
///       \"annotations\": {
///         \"displayName\": \"Type\",
///         \"description\": \"Specifies the type of view represented by the entry.\"
///       },
///       \"index\": 1,
///       \"constraints\": {
///         \"required\": true
///       },
///       \"enumValues\": [
///         {
///           \"name\": \"VIEW\",
///           \"index\": 1
///         }
///       ]
///     }
///   ]
/// }
/// """)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var testAspectTypeBasic = new Gcp.DataPlex.AspectType("test_aspect_type_basic", new()
///     {
///         AspectTypeId = "aspect-type-basic",
///         Project = "my-project-name",
///         Location = "us-central1",
///         DataClassification = "DATA_CLASSIFICATION_UNSPECIFIED",
///         MetadataTemplate = @"{
///   \""name\"": \""tf-test-template\"",
///   \""type\"": \""record\"",
///   \""recordFields\"": [
///     {
///       \""name\"": \""type\"",
///       \""type\"": \""enum\"",
///       \""annotations\"": {
///         \""displayName\"": \""Type\"",
///         \""description\"": \""Specifies the type of view represented by the entry.\""
///       },
///       \""index\"": 1,
///       \""constraints\"": {
///         \""required\"": true
///       },
///       \""enumValues\"": [
///         {
///           \""name\"": \""VIEW\"",
///           \""index\"": 1
///         }
///       ]
///     }
///   ]
/// }
/// ",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataplex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dataplex.NewAspectType(ctx, "test_aspect_type_basic", &dataplex.AspectTypeArgs{
/// 			AspectTypeId:       pulumi.String("aspect-type-basic"),
/// 			Project:            pulumi.String("my-project-name"),
/// 			Location:           pulumi.String("us-central1"),
/// 			DataClassification: pulumi.String("DATA_CLASSIFICATION_UNSPECIFIED"),
/// 			MetadataTemplate: pulumi.String(`{
///   \"name\": \"tf-test-template\",
///   \"type\": \"record\",
///   \"recordFields\": [
///     {
///       \"name\": \"type\",
///       \"type\": \"enum\",
///       \"annotations\": {
///         \"displayName\": \"Type\",
///         \"description\": \"Specifies the type of view represented by the entry.\"
///       },
///       \"index\": 1,
///       \"constraints\": {
///         \"required\": true
///       },
///       \"enumValues\": [
///         {
///           \"name\": \"VIEW\",
///           \"index\": 1
///         }
///       ]
///     }
///   ]
/// }
/// `),
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
/// import com.pulumi.gcp.dataplex.AspectType;
/// import com.pulumi.gcp.dataplex.AspectTypeArgs;
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
///         var testAspectTypeBasic = new AspectType("testAspectTypeBasic", AspectTypeArgs.builder()
///             .aspectTypeId("aspect-type-basic")
///             .project("my-project-name")
///             .location("us-central1")
///             .dataClassification("DATA_CLASSIFICATION_UNSPECIFIED")
///             .metadataTemplate("""
/// {
///   \"name\": \"tf-test-template\",
///   \"type\": \"record\",
///   \"recordFields\": [
///     {
///       \"name\": \"type\",
///       \"type\": \"enum\",
///       \"annotations\": {
///         \"displayName\": \"Type\",
///         \"description\": \"Specifies the type of view represented by the entry.\"
///       },
///       \"index\": 1,
///       \"constraints\": {
///         \"required\": true
///       },
///       \"enumValues\": [
///         {
///           \"name\": \"VIEW\",
///           \"index\": 1
///         }
///       ]
///     }
///   ]
/// }
///             """)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   testAspectTypeBasic:
///     type: gcp:dataplex:AspectType
///     name: test_aspect_type_basic
///     properties:
///       aspectTypeId: aspect-type-basic
///       project: my-project-name
///       location: us-central1
///       dataClassification: DATA_CLASSIFICATION_UNSPECIFIED
///       metadataTemplate: |
///         {
///           \"name\": \"tf-test-template\",
///           \"type\": \"record\",
///           \"recordFields\": [
///             {
///               \"name\": \"type\",
///               \"type\": \"enum\",
///               \"annotations\": {
///                 \"displayName\": \"Type\",
///                 \"description\": \"Specifies the type of view represented by the entry.\"
///               },
///               \"index\": 1,
///               \"constraints\": {
///                 \"required\": true
///               },
///               \"enumValues\": [
///                 {
///                   \"name\": \"VIEW\",
///                   \"index\": 1
///                 }
///               ]
///             }
///           ]
///         }
/// ```
///
/// ### Dataplex Aspect Type Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const testAspectTypeFull = new gcp.dataplex.AspectType("test_aspect_type_full", {
///     aspectTypeId: "aspect-type-full",
///     project: "my-project-name",
///     location: "us-central1",
///     labels: {
///         tag: "test-tf",
///     },
///     displayName: "terraform aspect type",
///     description: "data aspect type created by Terraform",
///     dataClassification: "METADATA_AND_DATA",
///     metadataTemplate: `{
///   \\"type\\": \\"record\\",
///   \\"name\\": \\"Schema\\",
///   \\"recordFields\\": [
///     {
///       \\"name\\": \\"fields\\",
///       \\"type\\": \\"array\\",
///       \\"index\\": 1,
///       \\"arrayItems\\": {
///         \\"name\\": \\"field\\",
///         \\"type\\": \\"record\\",
///         \\"typeId\\": \\"field\\",
///         \\"recordFields\\": [
///           {
///             \\"name\\": \\"name\\",
///             \\"type\\": \\"string\\",
///             \\"index\\": 1,
///             \\"constraints\\": {
///               \\"required\\": true
///             }
///           },
///           {
///             \\"name\\": \\"description\\",
///             \\"type\\": \\"string\\",
///             \\"index\\": 2
///           },
///           {
///             \\"name\\": \\"dataType\\",
///             \\"type\\": \\"string\\",
///             \\"index\\": 3,
///             \\"constraints\\": {
///               \\"required\\": true
///             }
///           },
///           {
///             \\"name\\": \\"metadataType\\",
///             \\"type\\": \\"enum\\",
///             \\"index\\": 4,
///             \\"constraints\\": {
///               \\"required\\": true
///             },
///             \\"enumValues\\": [
///               {
///                 \\"name\\": \\"BOOLEAN\\",
///                 \\"index\\": 1
///               },
///               {
///                 \\"name\\": \\"NUMBER\\",
///                 \\"index\\": 2
///               },
///               {
///                 \\"name\\": \\"STRING\\",
///                 \\"index\\": 3
///               },
///               {
///                 \\"name\\": \\"BYTES\\",
///                 \\"index\\": 4
///               },
///               {
///                 \\"name\\": \\"DATETIME\\",
///                 \\"index\\": 5
///               },
///               {
///                 \\"name\\": \\"TIMESTAMP\\",
///                 \\"index\\": 6
///               },
///               {
///                 \\"name\\": \\"GEOSPATIAL\\",
///                 \\"index\\": 7
///               },
///               {
///                 \\"name\\": \\"STRUCT\\",
///                 \\"index\\": 8
///               },
///               {
///                 \\"name\\": \\"OTHER\\",
///                 \\"index\\": 100
///               }
///             ]
///           },
///           {
///             \\"name\\": \\"mode\\",
///             \\"type\\": \\"enum\\",
///             \\"index\\": 5,
///             \\"enumValues\\": [
///               {
///                 \\"name\\": \\"NULLABLE\\",
///                 \\"index\\": 1
///               },
///               {
///                 \\"name\\": \\"REPEATED\\",
///                 \\"index\\": 2
///               },
///               {
///                 \\"name\\": \\"REQUIRED\\",
///                 \\"index\\": 3
///               }
///             ]
///           },
///           {
///             \\"name\\": \\"defaultValue\\",
///             \\"type\\": \\"string\\",
///             \\"index\\": 6
///           },
///           {
///             \\"name\\": \\"annotations\\",
///             \\"type\\": \\"map\\",
///             \\"index\\": 7,
///             \\"mapItems\\": {
///               \\"name\\": \\"label\\",
///               \\"type\\": \\"string\\"
///             }
///           },
///           {
///             \\"name\\": \\"fields\\",
///             \\"type\\": \\"array\\",
///             \\"index\\": 20,
///             \\"arrayItems\\": {
///               \\"name\\": \\"field\\",
///               \\"type\\": \\"record\\",
///               \\"typeRef\\": \\"field\\"
///             }
///           }
///         ]
///       }
///     }
///   ]
/// }
/// `,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// test_aspect_type_full = gcp.dataplex.AspectType("test_aspect_type_full",
///     aspect_type_id="aspect-type-full",
///     project="my-project-name",
///     location="us-central1",
///     labels={
///         "tag": "test-tf",
///     },
///     display_name="terraform aspect type",
///     description="data aspect type created by Terraform",
///     data_classification="METADATA_AND_DATA",
///     metadata_template="""{
///   \"type\": \"record\",
///   \"name\": \"Schema\",
///   \"recordFields\": [
///     {
///       \"name\": \"fields\",
///       \"type\": \"array\",
///       \"index\": 1,
///       \"arrayItems\": {
///         \"name\": \"field\",
///         \"type\": \"record\",
///         \"typeId\": \"field\",
///         \"recordFields\": [
///           {
///             \"name\": \"name\",
///             \"type\": \"string\",
///             \"index\": 1,
///             \"constraints\": {
///               \"required\": true
///             }
///           },
///           {
///             \"name\": \"description\",
///             \"type\": \"string\",
///             \"index\": 2
///           },
///           {
///             \"name\": \"dataType\",
///             \"type\": \"string\",
///             \"index\": 3,
///             \"constraints\": {
///               \"required\": true
///             }
///           },
///           {
///             \"name\": \"metadataType\",
///             \"type\": \"enum\",
///             \"index\": 4,
///             \"constraints\": {
///               \"required\": true
///             },
///             \"enumValues\": [
///               {
///                 \"name\": \"BOOLEAN\",
///                 \"index\": 1
///               },
///               {
///                 \"name\": \"NUMBER\",
///                 \"index\": 2
///               },
///               {
///                 \"name\": \"STRING\",
///                 \"index\": 3
///               },
///               {
///                 \"name\": \"BYTES\",
///                 \"index\": 4
///               },
///               {
///                 \"name\": \"DATETIME\",
///                 \"index\": 5
///               },
///               {
///                 \"name\": \"TIMESTAMP\",
///                 \"index\": 6
///               },
///               {
///                 \"name\": \"GEOSPATIAL\",
///                 \"index\": 7
///               },
///               {
///                 \"name\": \"STRUCT\",
///                 \"index\": 8
///               },
///               {
///                 \"name\": \"OTHER\",
///                 \"index\": 100
///               }
///             ]
///           },
///           {
///             \"name\": \"mode\",
///             \"type\": \"enum\",
///             \"index\": 5,
///             \"enumValues\": [
///               {
///                 \"name\": \"NULLABLE\",
///                 \"index\": 1
///               },
///               {
///                 \"name\": \"REPEATED\",
///                 \"index\": 2
///               },
///               {
///                 \"name\": \"REQUIRED\",
///                 \"index\": 3
///               }
///             ]
///           },
///           {
///             \"name\": \"defaultValue\",
///             \"type\": \"string\",
///             \"index\": 6
///           },
///           {
///             \"name\": \"annotations\",
///             \"type\": \"map\",
///             \"index\": 7,
///             \"mapItems\": {
///               \"name\": \"label\",
///               \"type\": \"string\"
///             }
///           },
///           {
///             \"name\": \"fields\",
///             \"type\": \"array\",
///             \"index\": 20,
///             \"arrayItems\": {
///               \"name\": \"field\",
///               \"type\": \"record\",
///               \"typeRef\": \"field\"
///             }
///           }
///         ]
///       }
///     }
///   ]
/// }
/// """)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var testAspectTypeFull = new Gcp.DataPlex.AspectType("test_aspect_type_full", new()
///     {
///         AspectTypeId = "aspect-type-full",
///         Project = "my-project-name",
///         Location = "us-central1",
///         Labels =
///         {
///             { "tag", "test-tf" },
///         },
///         DisplayName = "terraform aspect type",
///         Description = "data aspect type created by Terraform",
///         DataClassification = "METADATA_AND_DATA",
///         MetadataTemplate = @"{
///   \""type\"": \""record\"",
///   \""name\"": \""Schema\"",
///   \""recordFields\"": [
///     {
///       \""name\"": \""fields\"",
///       \""type\"": \""array\"",
///       \""index\"": 1,
///       \""arrayItems\"": {
///         \""name\"": \""field\"",
///         \""type\"": \""record\"",
///         \""typeId\"": \""field\"",
///         \""recordFields\"": [
///           {
///             \""name\"": \""name\"",
///             \""type\"": \""string\"",
///             \""index\"": 1,
///             \""constraints\"": {
///               \""required\"": true
///             }
///           },
///           {
///             \""name\"": \""description\"",
///             \""type\"": \""string\"",
///             \""index\"": 2
///           },
///           {
///             \""name\"": \""dataType\"",
///             \""type\"": \""string\"",
///             \""index\"": 3,
///             \""constraints\"": {
///               \""required\"": true
///             }
///           },
///           {
///             \""name\"": \""metadataType\"",
///             \""type\"": \""enum\"",
///             \""index\"": 4,
///             \""constraints\"": {
///               \""required\"": true
///             },
///             \""enumValues\"": [
///               {
///                 \""name\"": \""BOOLEAN\"",
///                 \""index\"": 1
///               },
///               {
///                 \""name\"": \""NUMBER\"",
///                 \""index\"": 2
///               },
///               {
///                 \""name\"": \""STRING\"",
///                 \""index\"": 3
///               },
///               {
///                 \""name\"": \""BYTES\"",
///                 \""index\"": 4
///               },
///               {
///                 \""name\"": \""DATETIME\"",
///                 \""index\"": 5
///               },
///               {
///                 \""name\"": \""TIMESTAMP\"",
///                 \""index\"": 6
///               },
///               {
///                 \""name\"": \""GEOSPATIAL\"",
///                 \""index\"": 7
///               },
///               {
///                 \""name\"": \""STRUCT\"",
///                 \""index\"": 8
///               },
///               {
///                 \""name\"": \""OTHER\"",
///                 \""index\"": 100
///               }
///             ]
///           },
///           {
///             \""name\"": \""mode\"",
///             \""type\"": \""enum\"",
///             \""index\"": 5,
///             \""enumValues\"": [
///               {
///                 \""name\"": \""NULLABLE\"",
///                 \""index\"": 1
///               },
///               {
///                 \""name\"": \""REPEATED\"",
///                 \""index\"": 2
///               },
///               {
///                 \""name\"": \""REQUIRED\"",
///                 \""index\"": 3
///               }
///             ]
///           },
///           {
///             \""name\"": \""defaultValue\"",
///             \""type\"": \""string\"",
///             \""index\"": 6
///           },
///           {
///             \""name\"": \""annotations\"",
///             \""type\"": \""map\"",
///             \""index\"": 7,
///             \""mapItems\"": {
///               \""name\"": \""label\"",
///               \""type\"": \""string\""
///             }
///           },
///           {
///             \""name\"": \""fields\"",
///             \""type\"": \""array\"",
///             \""index\"": 20,
///             \""arrayItems\"": {
///               \""name\"": \""field\"",
///               \""type\"": \""record\"",
///               \""typeRef\"": \""field\""
///             }
///           }
///         ]
///       }
///     }
///   ]
/// }
/// ",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataplex"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dataplex.NewAspectType(ctx, "test_aspect_type_full", &dataplex.AspectTypeArgs{
/// 			AspectTypeId: pulumi.String("aspect-type-full"),
/// 			Project:      pulumi.String("my-project-name"),
/// 			Location:     pulumi.String("us-central1"),
/// 			Labels: pulumi.StringMap{
/// 				"tag": pulumi.String("test-tf"),
/// 			},
/// 			DisplayName:        pulumi.String("terraform aspect type"),
/// 			Description:        pulumi.String("data aspect type created by Terraform"),
/// 			DataClassification: pulumi.String("METADATA_AND_DATA"),
/// 			MetadataTemplate: pulumi.String(`{
///   \"type\": \"record\",
///   \"name\": \"Schema\",
///   \"recordFields\": [
///     {
///       \"name\": \"fields\",
///       \"type\": \"array\",
///       \"index\": 1,
///       \"arrayItems\": {
///         \"name\": \"field\",
///         \"type\": \"record\",
///         \"typeId\": \"field\",
///         \"recordFields\": [
///           {
///             \"name\": \"name\",
///             \"type\": \"string\",
///             \"index\": 1,
///             \"constraints\": {
///               \"required\": true
///             }
///           },
///           {
///             \"name\": \"description\",
///             \"type\": \"string\",
///             \"index\": 2
///           },
///           {
///             \"name\": \"dataType\",
///             \"type\": \"string\",
///             \"index\": 3,
///             \"constraints\": {
///               \"required\": true
///             }
///           },
///           {
///             \"name\": \"metadataType\",
///             \"type\": \"enum\",
///             \"index\": 4,
///             \"constraints\": {
///               \"required\": true
///             },
///             \"enumValues\": [
///               {
///                 \"name\": \"BOOLEAN\",
///                 \"index\": 1
///               },
///               {
///                 \"name\": \"NUMBER\",
///                 \"index\": 2
///               },
///               {
///                 \"name\": \"STRING\",
///                 \"index\": 3
///               },
///               {
///                 \"name\": \"BYTES\",
///                 \"index\": 4
///               },
///               {
///                 \"name\": \"DATETIME\",
///                 \"index\": 5
///               },
///               {
///                 \"name\": \"TIMESTAMP\",
///                 \"index\": 6
///               },
///               {
///                 \"name\": \"GEOSPATIAL\",
///                 \"index\": 7
///               },
///               {
///                 \"name\": \"STRUCT\",
///                 \"index\": 8
///               },
///               {
///                 \"name\": \"OTHER\",
///                 \"index\": 100
///               }
///             ]
///           },
///           {
///             \"name\": \"mode\",
///             \"type\": \"enum\",
///             \"index\": 5,
///             \"enumValues\": [
///               {
///                 \"name\": \"NULLABLE\",
///                 \"index\": 1
///               },
///               {
///                 \"name\": \"REPEATED\",
///                 \"index\": 2
///               },
///               {
///                 \"name\": \"REQUIRED\",
///                 \"index\": 3
///               }
///             ]
///           },
///           {
///             \"name\": \"defaultValue\",
///             \"type\": \"string\",
///             \"index\": 6
///           },
///           {
///             \"name\": \"annotations\",
///             \"type\": \"map\",
///             \"index\": 7,
///             \"mapItems\": {
///               \"name\": \"label\",
///               \"type\": \"string\"
///             }
///           },
///           {
///             \"name\": \"fields\",
///             \"type\": \"array\",
///             \"index\": 20,
///             \"arrayItems\": {
///               \"name\": \"field\",
///               \"type\": \"record\",
///               \"typeRef\": \"field\"
///             }
///           }
///         ]
///       }
///     }
///   ]
/// }
/// `),
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
/// import com.pulumi.gcp.dataplex.AspectType;
/// import com.pulumi.gcp.dataplex.AspectTypeArgs;
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
///         var testAspectTypeFull = new AspectType("testAspectTypeFull", AspectTypeArgs.builder()
///             .aspectTypeId("aspect-type-full")
///             .project("my-project-name")
///             .location("us-central1")
///             .labels(Map.of("tag", "test-tf"))
///             .displayName("terraform aspect type")
///             .description("data aspect type created by Terraform")
///             .dataClassification("METADATA_AND_DATA")
///             .metadataTemplate("""
/// {
///   \"type\": \"record\",
///   \"name\": \"Schema\",
///   \"recordFields\": [
///     {
///       \"name\": \"fields\",
///       \"type\": \"array\",
///       \"index\": 1,
///       \"arrayItems\": {
///         \"name\": \"field\",
///         \"type\": \"record\",
///         \"typeId\": \"field\",
///         \"recordFields\": [
///           {
///             \"name\": \"name\",
///             \"type\": \"string\",
///             \"index\": 1,
///             \"constraints\": {
///               \"required\": true
///             }
///           },
///           {
///             \"name\": \"description\",
///             \"type\": \"string\",
///             \"index\": 2
///           },
///           {
///             \"name\": \"dataType\",
///             \"type\": \"string\",
///             \"index\": 3,
///             \"constraints\": {
///               \"required\": true
///             }
///           },
///           {
///             \"name\": \"metadataType\",
///             \"type\": \"enum\",
///             \"index\": 4,
///             \"constraints\": {
///               \"required\": true
///             },
///             \"enumValues\": [
///               {
///                 \"name\": \"BOOLEAN\",
///                 \"index\": 1
///               },
///               {
///                 \"name\": \"NUMBER\",
///                 \"index\": 2
///               },
///               {
///                 \"name\": \"STRING\",
///                 \"index\": 3
///               },
///               {
///                 \"name\": \"BYTES\",
///                 \"index\": 4
///               },
///               {
///                 \"name\": \"DATETIME\",
///                 \"index\": 5
///               },
///               {
///                 \"name\": \"TIMESTAMP\",
///                 \"index\": 6
///               },
///               {
///                 \"name\": \"GEOSPATIAL\",
///                 \"index\": 7
///               },
///               {
///                 \"name\": \"STRUCT\",
///                 \"index\": 8
///               },
///               {
///                 \"name\": \"OTHER\",
///                 \"index\": 100
///               }
///             ]
///           },
///           {
///             \"name\": \"mode\",
///             \"type\": \"enum\",
///             \"index\": 5,
///             \"enumValues\": [
///               {
///                 \"name\": \"NULLABLE\",
///                 \"index\": 1
///               },
///               {
///                 \"name\": \"REPEATED\",
///                 \"index\": 2
///               },
///               {
///                 \"name\": \"REQUIRED\",
///                 \"index\": 3
///               }
///             ]
///           },
///           {
///             \"name\": \"defaultValue\",
///             \"type\": \"string\",
///             \"index\": 6
///           },
///           {
///             \"name\": \"annotations\",
///             \"type\": \"map\",
///             \"index\": 7,
///             \"mapItems\": {
///               \"name\": \"label\",
///               \"type\": \"string\"
///             }
///           },
///           {
///             \"name\": \"fields\",
///             \"type\": \"array\",
///             \"index\": 20,
///             \"arrayItems\": {
///               \"name\": \"field\",
///               \"type\": \"record\",
///               \"typeRef\": \"field\"
///             }
///           }
///         ]
///       }
///     }
///   ]
/// }
///             """)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   testAspectTypeFull:
///     type: gcp:dataplex:AspectType
///     name: test_aspect_type_full
///     properties:
///       aspectTypeId: aspect-type-full
///       project: my-project-name
///       location: us-central1
///       labels:
///         tag: test-tf
///       displayName: terraform aspect type
///       description: data aspect type created by Terraform
///       dataClassification: METADATA_AND_DATA
///       metadataTemplate: |
///         {
///           \"type\": \"record\",
///           \"name\": \"Schema\",
///           \"recordFields\": [
///             {
///               \"name\": \"fields\",
///               \"type\": \"array\",
///               \"index\": 1,
///               \"arrayItems\": {
///                 \"name\": \"field\",
///                 \"type\": \"record\",
///                 \"typeId\": \"field\",
///                 \"recordFields\": [
///                   {
///                     \"name\": \"name\",
///                     \"type\": \"string\",
///                     \"index\": 1,
///                     \"constraints\": {
///                       \"required\": true
///                     }
///                   },
///                   {
///                     \"name\": \"description\",
///                     \"type\": \"string\",
///                     \"index\": 2
///                   },
///                   {
///                     \"name\": \"dataType\",
///                     \"type\": \"string\",
///                     \"index\": 3,
///                     \"constraints\": {
///                       \"required\": true
///                     }
///                   },
///                   {
///                     \"name\": \"metadataType\",
///                     \"type\": \"enum\",
///                     \"index\": 4,
///                     \"constraints\": {
///                       \"required\": true
///                     },
///                     \"enumValues\": [
///                       {
///                         \"name\": \"BOOLEAN\",
///                         \"index\": 1
///                       },
///                       {
///                         \"name\": \"NUMBER\",
///                         \"index\": 2
///                       },
///                       {
///                         \"name\": \"STRING\",
///                         \"index\": 3
///                       },
///                       {
///                         \"name\": \"BYTES\",
///                         \"index\": 4
///                       },
///                       {
///                         \"name\": \"DATETIME\",
///                         \"index\": 5
///                       },
///                       {
///                         \"name\": \"TIMESTAMP\",
///                         \"index\": 6
///                       },
///                       {
///                         \"name\": \"GEOSPATIAL\",
///                         \"index\": 7
///                       },
///                       {
///                         \"name\": \"STRUCT\",
///                         \"index\": 8
///                       },
///                       {
///                         \"name\": \"OTHER\",
///                         \"index\": 100
///                       }
///                     ]
///                   },
///                   {
///                     \"name\": \"mode\",
///                     \"type\": \"enum\",
///                     \"index\": 5,
///                     \"enumValues\": [
///                       {
///                         \"name\": \"NULLABLE\",
///                         \"index\": 1
///                       },
///                       {
///                         \"name\": \"REPEATED\",
///                         \"index\": 2
///                       },
///                       {
///                         \"name\": \"REQUIRED\",
///                         \"index\": 3
///                       }
///                     ]
///                   },
///                   {
///                     \"name\": \"defaultValue\",
///                     \"type\": \"string\",
///                     \"index\": 6
///                   },
///                   {
///                     \"name\": \"annotations\",
///                     \"type\": \"map\",
///                     \"index\": 7,
///                     \"mapItems\": {
///                       \"name\": \"label\",
///                       \"type\": \"string\"
///                     }
///                   },
///                   {
///                     \"name\": \"fields\",
///                     \"type\": \"array\",
///                     \"index\": 20,
///                     \"arrayItems\": {
///                       \"name\": \"field\",
///                       \"type\": \"record\",
///                       \"typeRef\": \"field\"
///                     }
///                   }
///                 ]
///               }
///             }
///           ]
///         }
/// ```
///
///
/// ## Import
///
/// AspectType can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/aspectTypes/{{aspect_type_id}}`
///
/// * `{{project}}/{{location}}/{{aspect_type_id}}`
///
/// * `{{location}}/{{aspect_type_id}}`
///
/// When using the `pulumi import` command, AspectType can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:dataplex/aspectType:AspectType default projects/{{project}}/locations/{{location}}/aspectTypes/{{aspect_type_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataplex/aspectType:AspectType default {{project}}/{{location}}/{{aspect_type_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataplex/aspectType:AspectType default {{location}}/{{aspect_type_id}}
/// ```
class AspectType extends pulumi.CustomResource {
  /// The aspect type id of the aspect type.
  late final pulumi.Output<String?> aspectTypeId;

  /// The time when the AspectType was created.
  late final pulumi.Output<String> createTime;

  /// Classifies the data stored by the aspect.
  /// `DATA_CLASSIFICATION_UNSPECIFIED` denotes that the aspect contains only metadata
  /// while `METADATA_AND_DATA` indicates data derived content.
  /// <br><br>
  /// Possible values are: `DATA_CLASSIFICATION_UNSPECIFIED`, `METADATA_AND_DATA`.
  late final pulumi.Output<String?> dataClassification;

  /// Description of the AspectType.
  late final pulumi.Output<String?> description;

  /// User friendly display name.
  late final pulumi.Output<String?> displayName;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// User-defined labels for the AspectType.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// The location where aspect type will be created in.
  late final pulumi.Output<String?> location;

  /// MetadataTemplate of the Aspect.
  late final pulumi.Output<String?> metadataTemplate;

  /// The relative resource name of the AspectType, of the form: projects/{project_number}/locations/{location_id}/aspectTypes/{aspect_type_id}
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// Denotes the transfer status of the Aspect Type. It is unspecified
  /// for Aspect Type created from Dataplex API.
  late final pulumi.Output<String> transferStatus;

  /// System generated globally unique ID for the AspectType. This ID will be different if the AspectType is deleted and re-created with the same name.
  late final pulumi.Output<String> uid;

  /// The time when the AspectType was last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [AspectType].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AspectType]. {@macro pulumi_dataplex_aspect_type_aspect_type_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AspectType(
    String name, {
    AspectTypeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:dataplex/aspectType:AspectType',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.aspectTypeId = registerOutput<String?>('aspectTypeId');
    this.createTime = registerOutput<String>('createTime');
    this.dataClassification = registerOutput<String?>('dataClassification');
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String?>('displayName');
    this.effectiveLabels = registerOutput<Map<String, String>>(
      'effectiveLabels',
    );
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String?>('location');
    this.metadataTemplate = registerOutput<String?>('metadataTemplate');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.transferStatus = registerOutput<String>('transferStatus');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
