import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataset_delimited_text_args.dart';
import 'dataset_delimited_text_azure_blob_fs_location.dart';
import 'dataset_delimited_text_azure_blob_storage_location.dart';
import 'dataset_delimited_text_http_server_location.dart';
import 'dataset_delimited_text_schema_column.dart';

/// Manages an Azure Delimited Text Dataset inside an Azure Data Factory.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleFactory = new azure.datafactory.Factory("example", {
///     name: "example",
///     location: example.location,
///     resourceGroupName: example.name,
/// });
/// const exampleLinkedServiceWeb = new azure.datafactory.LinkedServiceWeb("example", {
///     name: "example",
///     dataFactoryId: exampleFactory.id,
///     authenticationType: "Anonymous",
///     url: "https://www.bing.com",
/// });
/// const exampleDatasetDelimitedText = new azure.datafactory.DatasetDelimitedText("example", {
///     name: "example",
///     dataFactoryId: exampleFactory.id,
///     linkedServiceName: exampleLinkedServiceWeb.name,
///     httpServerLocation: {
///         relativeUrl: "http://www.bing.com",
///         path: "foo/bar/",
///         filename: "fizz.txt",
///     },
///     columnDelimiter: ",",
///     rowDelimiter: "NEW",
///     encoding: "UTF-8",
///     quoteCharacter: "x",
///     escapeCharacter: "f",
///     firstRowAsHeader: true,
///     nullValue: "NULL",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_factory = azure.datafactory.Factory("example",
///     name="example",
///     location=example.location,
///     resource_group_name=example.name)
/// example_linked_service_web = azure.datafactory.LinkedServiceWeb("example",
///     name="example",
///     data_factory_id=example_factory.id,
///     authentication_type="Anonymous",
///     url="https://www.bing.com")
/// example_dataset_delimited_text = azure.datafactory.DatasetDelimitedText("example",
///     name="example",
///     data_factory_id=example_factory.id,
///     linked_service_name=example_linked_service_web.name,
///     http_server_location={
///         "relative_url": "http://www.bing.com",
///         "path": "foo/bar/",
///         "filename": "fizz.txt",
///     },
///     column_delimiter=",",
///     row_delimiter="NEW",
///     encoding="UTF-8",
///     quote_character="x",
///     escape_character="f",
///     first_row_as_header=True,
///     null_value="NULL")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleFactory = new Azure.DataFactory.Factory("example", new()
///     {
///         Name = "example",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///     });
///
///     var exampleLinkedServiceWeb = new Azure.DataFactory.LinkedServiceWeb("example", new()
///     {
///         Name = "example",
///         DataFactoryId = exampleFactory.Id,
///         AuthenticationType = "Anonymous",
///         Url = "https://www.bing.com",
///     });
///
///     var exampleDatasetDelimitedText = new Azure.DataFactory.DatasetDelimitedText("example", new()
///     {
///         Name = "example",
///         DataFactoryId = exampleFactory.Id,
///         LinkedServiceName = exampleLinkedServiceWeb.Name,
///         HttpServerLocation = new Azure.DataFactory.Inputs.DatasetDelimitedTextHttpServerLocationArgs
///         {
///             RelativeUrl = "http://www.bing.com",
///             Path = "foo/bar/",
///             Filename = "fizz.txt",
///         },
///         ColumnDelimiter = ",",
///         RowDelimiter = "NEW",
///         Encoding = "UTF-8",
///         QuoteCharacter = "x",
///         EscapeCharacter = "f",
///         FirstRowAsHeader = true,
///         NullValue = "NULL",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/datafactory"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleFactory, err := datafactory.NewFactory(ctx, "example", &datafactory.FactoryArgs{
/// 			Name:              pulumi.String("example"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleLinkedServiceWeb, err := datafactory.NewLinkedServiceWeb(ctx, "example", &datafactory.LinkedServiceWebArgs{
/// 			Name:               pulumi.String("example"),
/// 			DataFactoryId:      exampleFactory.ID(),
/// 			AuthenticationType: pulumi.String("Anonymous"),
/// 			Url:                pulumi.String("https://www.bing.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = datafactory.NewDatasetDelimitedText(ctx, "example", &datafactory.DatasetDelimitedTextArgs{
/// 			Name:              pulumi.String("example"),
/// 			DataFactoryId:     exampleFactory.ID(),
/// 			LinkedServiceName: exampleLinkedServiceWeb.Name,
/// 			HttpServerLocation: &datafactory.DatasetDelimitedTextHttpServerLocationArgs{
/// 				RelativeUrl: pulumi.String("http://www.bing.com"),
/// 				Path:        pulumi.String("foo/bar/"),
/// 				Filename:    pulumi.String("fizz.txt"),
/// 			},
/// 			ColumnDelimiter:  pulumi.String(","),
/// 			RowDelimiter:     pulumi.String("NEW"),
/// 			Encoding:         pulumi.String("UTF-8"),
/// 			QuoteCharacter:   pulumi.String("x"),
/// 			EscapeCharacter:  pulumi.String("f"),
/// 			FirstRowAsHeader: pulumi.Bool(true),
/// 			NullValue:        pulumi.String("NULL"),
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
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.datafactory.Factory;
/// import com.pulumi.azure.datafactory.FactoryArgs;
/// import com.pulumi.azure.datafactory.LinkedServiceWeb;
/// import com.pulumi.azure.datafactory.LinkedServiceWebArgs;
/// import com.pulumi.azure.datafactory.DatasetDelimitedText;
/// import com.pulumi.azure.datafactory.DatasetDelimitedTextArgs;
/// import com.pulumi.azure.datafactory.inputs.DatasetDelimitedTextHttpServerLocationArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleFactory = new Factory("exampleFactory", FactoryArgs.builder()
///             .name("example")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .build());
///
///         var exampleLinkedServiceWeb = new LinkedServiceWeb("exampleLinkedServiceWeb", LinkedServiceWebArgs.builder()
///             .name("example")
///             .dataFactoryId(exampleFactory.id())
///             .authenticationType("Anonymous")
///             .url("https://www.bing.com")
///             .build());
///
///         var exampleDatasetDelimitedText = new DatasetDelimitedText("exampleDatasetDelimitedText", DatasetDelimitedTextArgs.builder()
///             .name("example")
///             .dataFactoryId(exampleFactory.id())
///             .linkedServiceName(exampleLinkedServiceWeb.name())
///             .httpServerLocation(DatasetDelimitedTextHttpServerLocationArgs.builder()
///                 .relativeUrl("http://www.bing.com")
///                 .path("foo/bar/")
///                 .filename("fizz.txt")
///                 .build())
///             .columnDelimiter(",")
///             .rowDelimiter("NEW")
///             .encoding("UTF-8")
///             .quoteCharacter("x")
///             .escapeCharacter("f")
///             .firstRowAsHeader(true)
///             .nullValue("NULL")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: example-resources
///       location: West Europe
///   exampleFactory:
///     type: azure:datafactory:Factory
///     name: example
///     properties:
///       name: example
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///   exampleLinkedServiceWeb:
///     type: azure:datafactory:LinkedServiceWeb
///     name: example
///     properties:
///       name: example
///       dataFactoryId: ${exampleFactory.id}
///       authenticationType: Anonymous
///       url: https://www.bing.com
///   exampleDatasetDelimitedText:
///     type: azure:datafactory:DatasetDelimitedText
///     name: example
///     properties:
///       name: example
///       dataFactoryId: ${exampleFactory.id}
///       linkedServiceName: ${exampleLinkedServiceWeb.name}
///       httpServerLocation:
///         relativeUrl: http://www.bing.com
///         path: foo/bar/
///         filename: fizz.txt
///       columnDelimiter: ','
///       rowDelimiter: NEW
///       encoding: UTF-8
///       quoteCharacter: x
///       escapeCharacter: f
///       firstRowAsHeader: true
///       nullValue: NULL
/// ```
///
///
/// ## Import
///
/// Data Factory Datasets can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:datafactory/datasetDelimitedText:DatasetDelimitedText example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/example/providers/Microsoft.DataFactory/factories/example/datasets/example
/// ```
class DatasetDelimitedText extends pulumi.CustomResource {
  /// A map of additional properties to associate with the Data Factory Dataset.
  ///
  /// The following supported locations for a Delimited Text Dataset (exactly one of them must be set):
  late final pulumi.Output<Map<String, String>?> additionalProperties;
  /// List of tags that can be used for describing the Data Factory Dataset.
  late final pulumi.Output<List<String>?> annotations;
  /// An `azure_blob_fs_location` block as defined below.
  late final pulumi.Output<DatasetDelimitedTextAzureBlobFsLocation?> azureBlobFsLocation;
  /// An `azure_blob_storage_location` block as defined below.
  late final pulumi.Output<DatasetDelimitedTextAzureBlobStorageLocation?> azureBlobStorageLocation;
  /// The column delimiter. Defaults to `,`.
  late final pulumi.Output<String?> columnDelimiter;
  /// The compression codec used to read/write text files. Valid values are `None`, `bzip2`, `gzip`, `deflate`, `ZipDeflate`, `TarGzip`, `Tar`, `snappy` and `lz4`. Please note these values are case sensitive.
  late final pulumi.Output<String?> compressionCodec;
  /// The compression ratio for the Data Factory Dataset. Valid values are `Fastest` or `Optimal`. Please note these values are case sensitive.
  late final pulumi.Output<String?> compressionLevel;
  /// The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  late final pulumi.Output<String> dataFactoryId;
  /// The description for the Data Factory Dataset.
  late final pulumi.Output<String?> description;
  /// The encoding format for the file.
  late final pulumi.Output<String?> encoding;
  /// The escape character. Defaults to `\`.
  late final pulumi.Output<String?> escapeCharacter;
  /// When used as input, treat the first row of data as headers. When used as output, write the headers into the output as the first row of data. Defaults to `false`.
  late final pulumi.Output<bool?> firstRowAsHeader;
  /// The folder that this Dataset is in. If not specified, the Dataset will appear at the root level.
  late final pulumi.Output<String?> folder;
  /// A `http_server_location` block as defined below.
  ///
  /// The following supported arguments are specific to Delimited Text Dataset:
  late final pulumi.Output<DatasetDelimitedTextHttpServerLocation?> httpServerLocation;
  /// The Data Factory Linked Service name in which to associate the Dataset with.
  late final pulumi.Output<String> linkedServiceName;
  /// Specifies the name of the Data Factory Dataset. Changing this forces a new resource to be created. Must be globally unique. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  late final pulumi.Output<String> name;
  /// The null value string. Defaults to `""`.
  late final pulumi.Output<String?> nullValue;
  /// A map of parameters to associate with the Data Factory Dataset.
  late final pulumi.Output<Map<String, String>?> parameters;
  /// The quote character. Defaults to `"`.
  late final pulumi.Output<String?> quoteCharacter;
  /// The row delimiter. Defaults to any of the following values on read: `\r\n`, `\r`, `\n`, and `\n` or `\r\n` on write by mapping data flow and Copy activity respectively.
  late final pulumi.Output<String?> rowDelimiter;
  /// A `schema_column` block as defined below.
  late final pulumi.Output<List<DatasetDelimitedTextSchemaColumn>?> schemaColumns;

  /// Creates a new [DatasetDelimitedText].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DatasetDelimitedText]. {@macro pulumi_datafactory_dataset_delimited_text_dataset_delimited_text_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DatasetDelimitedText(
    String name, {
    DatasetDelimitedTextArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:datafactory/datasetDelimitedText:DatasetDelimitedText',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.additionalProperties = registerOutput<Map<String, String>?>('additionalProperties');
    this.annotations = registerOutput<List<String>?>('annotations');
    this.azureBlobFsLocation = registerOutput<DatasetDelimitedTextAzureBlobFsLocation?>('azureBlobFsLocation');
    this.azureBlobStorageLocation = registerOutput<DatasetDelimitedTextAzureBlobStorageLocation?>('azureBlobStorageLocation');
    this.columnDelimiter = registerOutput<String?>('columnDelimiter');
    this.compressionCodec = registerOutput<String?>('compressionCodec');
    this.compressionLevel = registerOutput<String?>('compressionLevel');
    this.dataFactoryId = registerOutput<String>('dataFactoryId');
    this.description = registerOutput<String?>('description');
    this.encoding = registerOutput<String?>('encoding');
    this.escapeCharacter = registerOutput<String?>('escapeCharacter');
    this.firstRowAsHeader = registerOutput<bool?>('firstRowAsHeader');
    this.folder = registerOutput<String?>('folder');
    this.httpServerLocation = registerOutput<DatasetDelimitedTextHttpServerLocation?>('httpServerLocation');
    this.linkedServiceName = registerOutput<String>('linkedServiceName');
    this.name = registerOutput<String>('name');
    this.nullValue = registerOutput<String?>('nullValue');
    this.parameters = registerOutput<Map<String, String>?>('parameters');
    this.quoteCharacter = registerOutput<String?>('quoteCharacter');
    this.rowDelimiter = registerOutput<String?>('rowDelimiter');
    this.schemaColumns = registerOutput<List<DatasetDelimitedTextSchemaColumn>?>('schemaColumns');
  }
}
