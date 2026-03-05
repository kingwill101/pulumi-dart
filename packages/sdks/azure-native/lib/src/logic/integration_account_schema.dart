import 'package:pulumi/pulumi.dart' as pulumi;
import 'content_link_response.dart';
import 'integration_account_schema_args.dart';

/// The integration account schema.
///
/// Uses Azure REST API version 2019-05-01. In version 2.x of the Azure Native provider, it used API version 2019-05-01.
///
/// Other available API versions: 2015-08-01-preview, 2018-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native logic [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update schema
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var integrationAccountSchema = new AzureNative.Logic.IntegrationAccountSchema("integrationAccountSchema", new()
///     {
///         Content = @"<?xml version=""1.0"" encoding=""utf-16""?>
/// <xs:schema xmlns:b=""http://schemas.microsoft.com/BizTalk/2003"" xmlns=""http://Inbound_EDI.OrderFile"" targetNamespace=""http://Inbound_EDI.OrderFile"" xmlns:xs=""http://www.w3.org/2001/XMLSchema"">
///   <xs:annotation>
///     <xs:appinfo>
///       <b:schemaInfo default_pad_char="" "" count_positions_by_byte=""false"" parser_optimization=""speed"" lookahead_depth=""3"" suppress_empty_nodes=""false"" generate_empty_nodes=""true"" allow_early_termination=""false"" early_terminate_optional_fields=""false"" allow_message_breakup_of_infix_root=""false"" compile_parse_tables=""false"" standard=""Flat File"" root_reference=""OrderFile"" />
///       <schemaEditorExtension:schemaInfo namespaceAlias=""b"" extensionClass=""Microsoft.BizTalk.FlatFileExtension.FlatFileExtension"" standardName=""Flat File"" xmlns:schemaEditorExtension=""http://schemas.microsoft.com/BizTalk/2003/SchemaEditorExtensions"" />
///     </xs:appinfo>
///   </xs:annotation>
///   <xs:element name=""OrderFile"">
///     <xs:annotation>
///       <xs:appinfo>
///         <b:recordInfo structure=""delimited"" preserve_delimiter_for_empty_data=""true"" suppress_trailing_delimiters=""false"" sequence_number=""1"" />
///       </xs:appinfo>
///     </xs:annotation>
///     <xs:complexType>
///       <xs:sequence>
///         <xs:annotation>
///           <xs:appinfo>
///             <b:groupInfo sequence_number=""0"" />
///           </xs:appinfo>
///         </xs:annotation>
///         <xs:element name=""Order"">
///           <xs:annotation>
///             <xs:appinfo>
///               <b:recordInfo sequence_number=""1"" structure=""delimited"" preserve_delimiter_for_empty_data=""true"" suppress_trailing_delimiters=""false"" child_delimiter_type=""hex"" child_delimiter=""0x0D 0x0A"" child_order=""infix"" />
///             </xs:appinfo>
///           </xs:annotation>
///           <xs:complexType>
///             <xs:sequence>
///               <xs:annotation>
///                 <xs:appinfo>
///                   <b:groupInfo sequence_number=""0"" />
///                 </xs:appinfo>
///               </xs:annotation>
///               <xs:element name=""Header"">
///                 <xs:annotation>
///                   <xs:appinfo>
///                     <b:recordInfo sequence_number=""1"" structure=""delimited"" preserve_delimiter_for_empty_data=""true"" suppress_trailing_delimiters=""false"" child_delimiter_type=""char"" child_delimiter=""|"" child_order=""infix"" tag_name=""HDR|"" />
///                   </xs:appinfo>
///                 </xs:annotation>
///                 <xs:complexType>
///                   <xs:sequence>
///                     <xs:annotation>
///                       <xs:appinfo>
///                         <b:groupInfo sequence_number=""0"" />
///                       </xs:appinfo>
///                     </xs:annotation>
///                     <xs:element name=""PODate"" type=""xs:string"">
///                       <xs:annotation>
///                         <xs:appinfo>
///                           <b:fieldInfo sequence_number=""1"" justification=""left"" />
///                         </xs:appinfo>
///                       </xs:annotation>
///                     </xs:element>
///                     <xs:element name=""PONumber"" type=""xs:string"">
///                       <xs:annotation>
///                         <xs:appinfo>
///                           <b:fieldInfo justification=""left"" sequence_number=""2"" />
///                         </xs:appinfo>
///                       </xs:annotation>
///                     </xs:element>
///                     <xs:element name=""CustomerID"" type=""xs:string"">
///                       <xs:annotation>
///                         <xs:appinfo>
///                           <b:fieldInfo sequence_number=""3"" justification=""left"" />
///                         </xs:appinfo>
///                       </xs:annotation>
///                     </xs:element>
///                     <xs:element name=""CustomerContactName"" type=""xs:string"">
///                       <xs:annotation>
///                         <xs:appinfo>
///                           <b:fieldInfo sequence_number=""4"" justification=""left"" />
///                         </xs:appinfo>
///                       </xs:annotation>
///                     </xs:element>
///                     <xs:element name=""CustomerContactPhone"" type=""xs:string"">
///                       <xs:annotation>
///                         <xs:appinfo>
///                           <b:fieldInfo sequence_number=""5"" justification=""left"" />
///                         </xs:appinfo>
///                       </xs:annotation>
///                     </xs:element>
///                   </xs:sequence>
///                 </xs:complexType>
///               </xs:element>
///               <xs:element minOccurs=""1"" maxOccurs=""unbounded"" name=""LineItems"">
///                 <xs:annotation>
///                   <xs:appinfo>
///                     <b:recordInfo sequence_number=""2"" structure=""delimited"" preserve_delimiter_for_empty_data=""true"" suppress_trailing_delimiters=""false"" child_delimiter_type=""char"" child_delimiter=""|"" child_order=""infix"" tag_name=""DTL|"" />
///                   </xs:appinfo>
///                 </xs:annotation>
///                 <xs:complexType>
///                   <xs:sequence>
///                     <xs:annotation>
///                       <xs:appinfo>
///                         <b:groupInfo sequence_number=""0"" />
///                       </xs:appinfo>
///                     </xs:annotation>
///                     <xs:element name=""PONumber"" type=""xs:string"">
///                       <xs:annotation>
///                         <xs:appinfo>
///                           <b:fieldInfo sequence_number=""1"" justification=""left"" />
///                         </xs:appinfo>
///                       </xs:annotation>
///                     </xs:element>
///                     <xs:element name=""ItemOrdered"" type=""xs:string"">
///                       <xs:annotation>
///                         <xs:appinfo>
///                           <b:fieldInfo sequence_number=""2"" justification=""left"" />
///                         </xs:appinfo>
///                       </xs:annotation>
///                     </xs:element>
///                     <xs:element name=""Quantity"" type=""xs:string"">
///                       <xs:annotation>
///                         <xs:appinfo>
///                           <b:fieldInfo sequence_number=""3"" justification=""left"" />
///                         </xs:appinfo>
///                       </xs:annotation>
///                     </xs:element>
///                     <xs:element name=""UOM"" type=""xs:string"">
///                       <xs:annotation>
///                         <xs:appinfo>
///                           <b:fieldInfo sequence_number=""4"" justification=""left"" />
///                         </xs:appinfo>
///                       </xs:annotation>
///                     </xs:element>
///                     <xs:element name=""Price"" type=""xs:string"">
///                       <xs:annotation>
///                         <xs:appinfo>
///                           <b:fieldInfo sequence_number=""5"" justification=""left"" />
///                         </xs:appinfo>
///                       </xs:annotation>
///                     </xs:element>
///                     <xs:element name=""ExtendedPrice"" type=""xs:string"">
///                       <xs:annotation>
///                         <xs:appinfo>
///                           <b:fieldInfo sequence_number=""6"" justification=""left"" />
///                         </xs:appinfo>
///                       </xs:annotation>
///                     </xs:element>
///                     <xs:element name=""Description"" type=""xs:string"">
///                       <xs:annotation>
///                         <xs:appinfo>
///                           <b:fieldInfo sequence_number=""7"" justification=""left"" />
///                         </xs:appinfo>
///                       </xs:annotation>
///                     </xs:element>
///                   </xs:sequence>
///                 </xs:complexType>
///               </xs:element>
///             </xs:sequence>
///           </xs:complexType>
///         </xs:element>
///       </xs:sequence>
///     </xs:complexType>
///   </xs:element>
/// </xs:schema>",
///         ContentType = "application/xml",
///         IntegrationAccountName = "testIntegrationAccount",
///         Location = "westus",
///         Metadata = null,
///         ResourceGroupName = "testResourceGroup",
///         SchemaName = "testSchema",
///         SchemaType = AzureNative.Logic.SchemaType.Xml,
///         Tags =
///         {
///             { "integrationAccountSchemaName", "IntegrationAccountSchema8120" },
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
/// 	logic "github.com/pulumi/pulumi-azure-native-sdk/logic/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := logic.NewIntegrationAccountSchema(ctx, "integrationAccountSchema", &logic.IntegrationAccountSchemaArgs{
/// 			Content: pulumi.String(`<?xml version="1.0" encoding="utf-16"?>
/// <xs:schema xmlns:b="http://schemas.microsoft.com/BizTalk/2003" xmlns="http://Inbound_EDI.OrderFile" targetNamespace="http://Inbound_EDI.OrderFile" xmlns:xs="http://www.w3.org/2001/XMLSchema">
///   <xs:annotation>
///     <xs:appinfo>
///       <b:schemaInfo default_pad_char=" " count_positions_by_byte="false" parser_optimization="speed" lookahead_depth="3" suppress_empty_nodes="false" generate_empty_nodes="true" allow_early_termination="false" early_terminate_optional_fields="false" allow_message_breakup_of_infix_root="false" compile_parse_tables="false" standard="Flat File" root_reference="OrderFile" />
///       <schemaEditorExtension:schemaInfo namespaceAlias="b" extensionClass="Microsoft.BizTalk.FlatFileExtension.FlatFileExtension" standardName="Flat File" xmlns:schemaEditorExtension="http://schemas.microsoft.com/BizTalk/2003/SchemaEditorExtensions" />
///     </xs:appinfo>
///   </xs:annotation>
///   <xs:element name="OrderFile">
///     <xs:annotation>
///       <xs:appinfo>
///         <b:recordInfo structure="delimited" preserve_delimiter_for_empty_data="true" suppress_trailing_delimiters="false" sequence_number="1" />
///       </xs:appinfo>
///     </xs:annotation>
///     <xs:complexType>
///       <xs:sequence>
///         <xs:annotation>
///           <xs:appinfo>
///             <b:groupInfo sequence_number="0" />
///           </xs:appinfo>
///         </xs:annotation>
///         <xs:element name="Order">
///           <xs:annotation>
///             <xs:appinfo>
///               <b:recordInfo sequence_number="1" structure="delimited" preserve_delimiter_for_empty_data="true" suppress_trailing_delimiters="false" child_delimiter_type="hex" child_delimiter="0x0D 0x0A" child_order="infix" />
///             </xs:appinfo>
///           </xs:annotation>
///           <xs:complexType>
///             <xs:sequence>
///               <xs:annotation>
///                 <xs:appinfo>
///                   <b:groupInfo sequence_number="0" />
///                 </xs:appinfo>
///               </xs:annotation>
///               <xs:element name="Header">
///                 <xs:annotation>
///                   <xs:appinfo>
///                     <b:recordInfo sequence_number="1" structure="delimited" preserve_delimiter_for_empty_data="true" suppress_trailing_delimiters="false" child_delimiter_type="char" child_delimiter="|" child_order="infix" tag_name="HDR|" />
///                   </xs:appinfo>
///                 </xs:annotation>
///                 <xs:complexType>
///                   <xs:sequence>
///                     <xs:annotation>
///                       <xs:appinfo>
///                         <b:groupInfo sequence_number="0" />
///                       </xs:appinfo>
///                     </xs:annotation>
///                     <xs:element name="PODate" type="xs:string">
///                       <xs:annotation>
///                         <xs:appinfo>
///                           <b:fieldInfo sequence_number="1" justification="left" />
///                         </xs:appinfo>
///                       </xs:annotation>
///                     </xs:element>
///                     <xs:element name="PONumber" type="xs:string">
///                       <xs:annotation>
///                         <xs:appinfo>
///                           <b:fieldInfo justification="left" sequence_number="2" />
///                         </xs:appinfo>
///                       </xs:annotation>
///                     </xs:element>
///                     <xs:element name="CustomerID" type="xs:string">
///                       <xs:annotation>
///                         <xs:appinfo>
///                           <b:fieldInfo sequence_number="3" justification="left" />
///                         </xs:appinfo>
///                       </xs:annotation>
///                     </xs:element>
///                     <xs:element name="CustomerContactName" type="xs:string">
///                       <xs:annotation>
///                         <xs:appinfo>
///                           <b:fieldInfo sequence_number="4" justification="left" />
///                         </xs:appinfo>
///                       </xs:annotation>
///                     </xs:element>
///                     <xs:element name="CustomerContactPhone" type="xs:string">
///                       <xs:annotation>
///                         <xs:appinfo>
///                           <b:fieldInfo sequence_number="5" justification="left" />
///                         </xs:appinfo>
///                       </xs:annotation>
///                     </xs:element>
///                   </xs:sequence>
///                 </xs:complexType>
///               </xs:element>
///               <xs:element minOccurs="1" maxOccurs="unbounded" name="LineItems">
///                 <xs:annotation>
///                   <xs:appinfo>
///                     <b:recordInfo sequence_number="2" structure="delimited" preserve_delimiter_for_empty_data="true" suppress_trailing_delimiters="false" child_delimiter_type="char" child_delimiter="|" child_order="infix" tag_name="DTL|" />
///                   </xs:appinfo>
///                 </xs:annotation>
///                 <xs:complexType>
///                   <xs:sequence>
///                     <xs:annotation>
///                       <xs:appinfo>
///                         <b:groupInfo sequence_number="0" />
///                       </xs:appinfo>
///                     </xs:annotation>
///                     <xs:element name="PONumber" type="xs:string">
///                       <xs:annotation>
///                         <xs:appinfo>
///                           <b:fieldInfo sequence_number="1" justification="left" />
///                         </xs:appinfo>
///                       </xs:annotation>
///                     </xs:element>
///                     <xs:element name="ItemOrdered" type="xs:string">
///                       <xs:annotation>
///                         <xs:appinfo>
///                           <b:fieldInfo sequence_number="2" justification="left" />
///                         </xs:appinfo>
///                       </xs:annotation>
///                     </xs:element>
///                     <xs:element name="Quantity" type="xs:string">
///                       <xs:annotation>
///                         <xs:appinfo>
///                           <b:fieldInfo sequence_number="3" justification="left" />
///                         </xs:appinfo>
///                       </xs:annotation>
///                     </xs:element>
///                     <xs:element name="UOM" type="xs:string">
///                       <xs:annotation>
///                         <xs:appinfo>
///                           <b:fieldInfo sequence_number="4" justification="left" />
///                         </xs:appinfo>
///                       </xs:annotation>
///                     </xs:element>
///                     <xs:element name="Price" type="xs:string">
///                       <xs:annotation>
///                         <xs:appinfo>
///                           <b:fieldInfo sequence_number="5" justification="left" />
///                         </xs:appinfo>
///                       </xs:annotation>
///                     </xs:element>
///                     <xs:element name="ExtendedPrice" type="xs:string">
///                       <xs:annotation>
///                         <xs:appinfo>
///                           <b:fieldInfo sequence_number="6" justification="left" />
///                         </xs:appinfo>
///                       </xs:annotation>
///                     </xs:element>
///                     <xs:element name="Description" type="xs:string">
///                       <xs:annotation>
///                         <xs:appinfo>
///                           <b:fieldInfo sequence_number="7" justification="left" />
///                         </xs:appinfo>
///                       </xs:annotation>
///                     </xs:element>
///                   </xs:sequence>
///                 </xs:complexType>
///               </xs:element>
///             </xs:sequence>
///           </xs:complexType>
///         </xs:element>
///       </xs:sequence>
///     </xs:complexType>
///   </xs:element>
/// </xs:schema>`),
/// 			ContentType:            pulumi.String("application/xml"),
/// 			IntegrationAccountName: pulumi.String("testIntegrationAccount"),
/// 			Location:               pulumi.String("westus"),
/// 			Metadata:               pulumi.Any(map[string]interface{}{}),
/// 			ResourceGroupName:      pulumi.String("testResourceGroup"),
/// 			SchemaName:             pulumi.String("testSchema"),
/// 			SchemaType:             pulumi.String(logic.SchemaTypeXml),
/// 			Tags: pulumi.StringMap{
/// 				"integrationAccountSchemaName": pulumi.String("IntegrationAccountSchema8120"),
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
/// import com.pulumi.azurenative.logic.IntegrationAccountSchema;
/// import com.pulumi.azurenative.logic.IntegrationAccountSchemaArgs;
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
///         var integrationAccountSchema = new IntegrationAccountSchema("integrationAccountSchema", IntegrationAccountSchemaArgs.builder()
///             .content("""
/// <?xml version="1.0" encoding="utf-16"?>
/// <xs:schema xmlns:b="http://schemas.microsoft.com/BizTalk/2003" xmlns="http://Inbound_EDI.OrderFile" targetNamespace="http://Inbound_EDI.OrderFile" xmlns:xs="http://www.w3.org/2001/XMLSchema">
///   <xs:annotation>
///     <xs:appinfo>
///       <b:schemaInfo default_pad_char=" " count_positions_by_byte="false" parser_optimization="speed" lookahead_depth="3" suppress_empty_nodes="false" generate_empty_nodes="true" allow_early_termination="false" early_terminate_optional_fields="false" allow_message_breakup_of_infix_root="false" compile_parse_tables="false" standard="Flat File" root_reference="OrderFile" />
///       <schemaEditorExtension:schemaInfo namespaceAlias="b" extensionClass="Microsoft.BizTalk.FlatFileExtension.FlatFileExtension" standardName="Flat File" xmlns:schemaEditorExtension="http://schemas.microsoft.com/BizTalk/2003/SchemaEditorExtensions" />
///     </xs:appinfo>
///   </xs:annotation>
///   <xs:element name="OrderFile">
///     <xs:annotation>
///       <xs:appinfo>
///         <b:recordInfo structure="delimited" preserve_delimiter_for_empty_data="true" suppress_trailing_delimiters="false" sequence_number="1" />
///       </xs:appinfo>
///     </xs:annotation>
///     <xs:complexType>
///       <xs:sequence>
///         <xs:annotation>
///           <xs:appinfo>
///             <b:groupInfo sequence_number="0" />
///           </xs:appinfo>
///         </xs:annotation>
///         <xs:element name="Order">
///           <xs:annotation>
///             <xs:appinfo>
///               <b:recordInfo sequence_number="1" structure="delimited" preserve_delimiter_for_empty_data="true" suppress_trailing_delimiters="false" child_delimiter_type="hex" child_delimiter="0x0D 0x0A" child_order="infix" />
///             </xs:appinfo>
///           </xs:annotation>
///           <xs:complexType>
///             <xs:sequence>
///               <xs:annotation>
///                 <xs:appinfo>
///                   <b:groupInfo sequence_number="0" />
///                 </xs:appinfo>
///               </xs:annotation>
///               <xs:element name="Header">
///                 <xs:annotation>
///                   <xs:appinfo>
///                     <b:recordInfo sequence_number="1" structure="delimited" preserve_delimiter_for_empty_data="true" suppress_trailing_delimiters="false" child_delimiter_type="char" child_delimiter="|" child_order="infix" tag_name="HDR|" />
///                   </xs:appinfo>
///                 </xs:annotation>
///                 <xs:complexType>
///                   <xs:sequence>
///                     <xs:annotation>
///                       <xs:appinfo>
///                         <b:groupInfo sequence_number="0" />
///                       </xs:appinfo>
///                     </xs:annotation>
///                     <xs:element name="PODate" type="xs:string">
///                       <xs:annotation>
///                         <xs:appinfo>
///                           <b:fieldInfo sequence_number="1" justification="left" />
///                         </xs:appinfo>
///                       </xs:annotation>
///                     </xs:element>
///                     <xs:element name="PONumber" type="xs:string">
///                       <xs:annotation>
///                         <xs:appinfo>
///                           <b:fieldInfo justification="left" sequence_number="2" />
///                         </xs:appinfo>
///                       </xs:annotation>
///                     </xs:element>
///                     <xs:element name="CustomerID" type="xs:string">
///                       <xs:annotation>
///                         <xs:appinfo>
///                           <b:fieldInfo sequence_number="3" justification="left" />
///                         </xs:appinfo>
///                       </xs:annotation>
///                     </xs:element>
///                     <xs:element name="CustomerContactName" type="xs:string">
///                       <xs:annotation>
///                         <xs:appinfo>
///                           <b:fieldInfo sequence_number="4" justification="left" />
///                         </xs:appinfo>
///                       </xs:annotation>
///                     </xs:element>
///                     <xs:element name="CustomerContactPhone" type="xs:string">
///                       <xs:annotation>
///                         <xs:appinfo>
///                           <b:fieldInfo sequence_number="5" justification="left" />
///                         </xs:appinfo>
///                       </xs:annotation>
///                     </xs:element>
///                   </xs:sequence>
///                 </xs:complexType>
///               </xs:element>
///               <xs:element minOccurs="1" maxOccurs="unbounded" name="LineItems">
///                 <xs:annotation>
///                   <xs:appinfo>
///                     <b:recordInfo sequence_number="2" structure="delimited" preserve_delimiter_for_empty_data="true" suppress_trailing_delimiters="false" child_delimiter_type="char" child_delimiter="|" child_order="infix" tag_name="DTL|" />
///                   </xs:appinfo>
///                 </xs:annotation>
///                 <xs:complexType>
///                   <xs:sequence>
///                     <xs:annotation>
///                       <xs:appinfo>
///                         <b:groupInfo sequence_number="0" />
///                       </xs:appinfo>
///                     </xs:annotation>
///                     <xs:element name="PONumber" type="xs:string">
///                       <xs:annotation>
///                         <xs:appinfo>
///                           <b:fieldInfo sequence_number="1" justification="left" />
///                         </xs:appinfo>
///                       </xs:annotation>
///                     </xs:element>
///                     <xs:element name="ItemOrdered" type="xs:string">
///                       <xs:annotation>
///                         <xs:appinfo>
///                           <b:fieldInfo sequence_number="2" justification="left" />
///                         </xs:appinfo>
///                       </xs:annotation>
///                     </xs:element>
///                     <xs:element name="Quantity" type="xs:string">
///                       <xs:annotation>
///                         <xs:appinfo>
///                           <b:fieldInfo sequence_number="3" justification="left" />
///                         </xs:appinfo>
///                       </xs:annotation>
///                     </xs:element>
///                     <xs:element name="UOM" type="xs:string">
///                       <xs:annotation>
///                         <xs:appinfo>
///                           <b:fieldInfo sequence_number="4" justification="left" />
///                         </xs:appinfo>
///                       </xs:annotation>
///                     </xs:element>
///                     <xs:element name="Price" type="xs:string">
///                       <xs:annotation>
///                         <xs:appinfo>
///                           <b:fieldInfo sequence_number="5" justification="left" />
///                         </xs:appinfo>
///                       </xs:annotation>
///                     </xs:element>
///                     <xs:element name="ExtendedPrice" type="xs:string">
///                       <xs:annotation>
///                         <xs:appinfo>
///                           <b:fieldInfo sequence_number="6" justification="left" />
///                         </xs:appinfo>
///                       </xs:annotation>
///                     </xs:element>
///                     <xs:element name="Description" type="xs:string">
///                       <xs:annotation>
///                         <xs:appinfo>
///                           <b:fieldInfo sequence_number="7" justification="left" />
///                         </xs:appinfo>
///                       </xs:annotation>
///                     </xs:element>
///                   </xs:sequence>
///                 </xs:complexType>
///               </xs:element>
///             </xs:sequence>
///           </xs:complexType>
///         </xs:element>
///       </xs:sequence>
///     </xs:complexType>
///   </xs:element>
/// </xs:schema>            """)
///             .contentType("application/xml")
///             .integrationAccountName("testIntegrationAccount")
///             .location("westus")
///             .metadata(Map.ofEntries(
///             ))
///             .resourceGroupName("testResourceGroup")
///             .schemaName("testSchema")
///             .schemaType("Xml")
///             .tags(Map.of("integrationAccountSchemaName", "IntegrationAccountSchema8120"))
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
/// const integrationAccountSchema = new azure_native.logic.IntegrationAccountSchema("integrationAccountSchema", {
///     content: `<?xml version="1.0" encoding="utf-16"?>\x0d
/// <xs:schema xmlns:b="http://schemas.microsoft.com/BizTalk/2003" xmlns="http://Inbound_EDI.OrderFile" targetNamespace="http://Inbound_EDI.OrderFile" xmlns:xs="http://www.w3.org/2001/XMLSchema">\x0d
///   <xs:annotation>\x0d
///     <xs:appinfo>\x0d
///       <b:schemaInfo default_pad_char=" " count_positions_by_byte="false" parser_optimization="speed" lookahead_depth="3" suppress_empty_nodes="false" generate_empty_nodes="true" allow_early_termination="false" early_terminate_optional_fields="false" allow_message_breakup_of_infix_root="false" compile_parse_tables="false" standard="Flat File" root_reference="OrderFile" />\x0d
///       <schemaEditorExtension:schemaInfo namespaceAlias="b" extensionClass="Microsoft.BizTalk.FlatFileExtension.FlatFileExtension" standardName="Flat File" xmlns:schemaEditorExtension="http://schemas.microsoft.com/BizTalk/2003/SchemaEditorExtensions" />\x0d
///     </xs:appinfo>\x0d
///   </xs:annotation>\x0d
///   <xs:element name="OrderFile">\x0d
///     <xs:annotation>\x0d
///       <xs:appinfo>\x0d
///         <b:recordInfo structure="delimited" preserve_delimiter_for_empty_data="true" suppress_trailing_delimiters="false" sequence_number="1" />\x0d
///       </xs:appinfo>\x0d
///     </xs:annotation>\x0d
///     <xs:complexType>\x0d
///       <xs:sequence>\x0d
///         <xs:annotation>\x0d
///           <xs:appinfo>\x0d
///             <b:groupInfo sequence_number="0" />\x0d
///           </xs:appinfo>\x0d
///         </xs:annotation>\x0d
///         <xs:element name="Order">\x0d
///           <xs:annotation>\x0d
///             <xs:appinfo>\x0d
///               <b:recordInfo sequence_number="1" structure="delimited" preserve_delimiter_for_empty_data="true" suppress_trailing_delimiters="false" child_delimiter_type="hex" child_delimiter="0x0D 0x0A" child_order="infix" />\x0d
///             </xs:appinfo>\x0d
///           </xs:annotation>\x0d
///           <xs:complexType>\x0d
///             <xs:sequence>\x0d
///               <xs:annotation>\x0d
///                 <xs:appinfo>\x0d
///                   <b:groupInfo sequence_number="0" />\x0d
///                 </xs:appinfo>\x0d
///               </xs:annotation>\x0d
///               <xs:element name="Header">\x0d
///                 <xs:annotation>\x0d
///                   <xs:appinfo>\x0d
///                     <b:recordInfo sequence_number="1" structure="delimited" preserve_delimiter_for_empty_data="true" suppress_trailing_delimiters="false" child_delimiter_type="char" child_delimiter="|" child_order="infix" tag_name="HDR|" />\x0d
///                   </xs:appinfo>\x0d
///                 </xs:annotation>\x0d
///                 <xs:complexType>\x0d
///                   <xs:sequence>\x0d
///                     <xs:annotation>\x0d
///                       <xs:appinfo>\x0d
///                         <b:groupInfo sequence_number="0" />\x0d
///                       </xs:appinfo>\x0d
///                     </xs:annotation>\x0d
///                     <xs:element name="PODate" type="xs:string">\x0d
///                       <xs:annotation>\x0d
///                         <xs:appinfo>\x0d
///                           <b:fieldInfo sequence_number="1" justification="left" />\x0d
///                         </xs:appinfo>\x0d
///                       </xs:annotation>\x0d
///                     </xs:element>\x0d
///                     <xs:element name="PONumber" type="xs:string">\x0d
///                       <xs:annotation>\x0d
///                         <xs:appinfo>\x0d
///                           <b:fieldInfo justification="left" sequence_number="2" />\x0d
///                         </xs:appinfo>\x0d
///                       </xs:annotation>\x0d
///                     </xs:element>\x0d
///                     <xs:element name="CustomerID" type="xs:string">\x0d
///                       <xs:annotation>\x0d
///                         <xs:appinfo>\x0d
///                           <b:fieldInfo sequence_number="3" justification="left" />\x0d
///                         </xs:appinfo>\x0d
///                       </xs:annotation>\x0d
///                     </xs:element>\x0d
///                     <xs:element name="CustomerContactName" type="xs:string">\x0d
///                       <xs:annotation>\x0d
///                         <xs:appinfo>\x0d
///                           <b:fieldInfo sequence_number="4" justification="left" />\x0d
///                         </xs:appinfo>\x0d
///                       </xs:annotation>\x0d
///                     </xs:element>\x0d
///                     <xs:element name="CustomerContactPhone" type="xs:string">\x0d
///                       <xs:annotation>\x0d
///                         <xs:appinfo>\x0d
///                           <b:fieldInfo sequence_number="5" justification="left" />\x0d
///                         </xs:appinfo>\x0d
///                       </xs:annotation>\x0d
///                     </xs:element>\x0d
///                   </xs:sequence>\x0d
///                 </xs:complexType>\x0d
///               </xs:element>\x0d
///               <xs:element minOccurs="1" maxOccurs="unbounded" name="LineItems">\x0d
///                 <xs:annotation>\x0d
///                   <xs:appinfo>\x0d
///                     <b:recordInfo sequence_number="2" structure="delimited" preserve_delimiter_for_empty_data="true" suppress_trailing_delimiters="false" child_delimiter_type="char" child_delimiter="|" child_order="infix" tag_name="DTL|" />\x0d
///                   </xs:appinfo>\x0d
///                 </xs:annotation>\x0d
///                 <xs:complexType>\x0d
///                   <xs:sequence>\x0d
///                     <xs:annotation>\x0d
///                       <xs:appinfo>\x0d
///                         <b:groupInfo sequence_number="0" />\x0d
///                       </xs:appinfo>\x0d
///                     </xs:annotation>\x0d
///                     <xs:element name="PONumber" type="xs:string">\x0d
///                       <xs:annotation>\x0d
///                         <xs:appinfo>\x0d
///                           <b:fieldInfo sequence_number="1" justification="left" />\x0d
///                         </xs:appinfo>\x0d
///                       </xs:annotation>\x0d
///                     </xs:element>\x0d
///                     <xs:element name="ItemOrdered" type="xs:string">\x0d
///                       <xs:annotation>\x0d
///                         <xs:appinfo>\x0d
///                           <b:fieldInfo sequence_number="2" justification="left" />\x0d
///                         </xs:appinfo>\x0d
///                       </xs:annotation>\x0d
///                     </xs:element>\x0d
///                     <xs:element name="Quantity" type="xs:string">\x0d
///                       <xs:annotation>\x0d
///                         <xs:appinfo>\x0d
///                           <b:fieldInfo sequence_number="3" justification="left" />\x0d
///                         </xs:appinfo>\x0d
///                       </xs:annotation>\x0d
///                     </xs:element>\x0d
///                     <xs:element name="UOM" type="xs:string">\x0d
///                       <xs:annotation>\x0d
///                         <xs:appinfo>\x0d
///                           <b:fieldInfo sequence_number="4" justification="left" />\x0d
///                         </xs:appinfo>\x0d
///                       </xs:annotation>\x0d
///                     </xs:element>\x0d
///                     <xs:element name="Price" type="xs:string">\x0d
///                       <xs:annotation>\x0d
///                         <xs:appinfo>\x0d
///                           <b:fieldInfo sequence_number="5" justification="left" />\x0d
///                         </xs:appinfo>\x0d
///                       </xs:annotation>\x0d
///                     </xs:element>\x0d
///                     <xs:element name="ExtendedPrice" type="xs:string">\x0d
///                       <xs:annotation>\x0d
///                         <xs:appinfo>\x0d
///                           <b:fieldInfo sequence_number="6" justification="left" />\x0d
///                         </xs:appinfo>\x0d
///                       </xs:annotation>\x0d
///                     </xs:element>\x0d
///                     <xs:element name="Description" type="xs:string">\x0d
///                       <xs:annotation>\x0d
///                         <xs:appinfo>\x0d
///                           <b:fieldInfo sequence_number="7" justification="left" />\x0d
///                         </xs:appinfo>\x0d
///                       </xs:annotation>\x0d
///                     </xs:element>\x0d
///                   </xs:sequence>\x0d
///                 </xs:complexType>\x0d
///               </xs:element>\x0d
///             </xs:sequence>\x0d
///           </xs:complexType>\x0d
///         </xs:element>\x0d
///       </xs:sequence>\x0d
///     </xs:complexType>\x0d
///   </xs:element>\x0d
/// </xs:schema>`,
///     contentType: "application/xml",
///     integrationAccountName: "testIntegrationAccount",
///     location: "westus",
///     metadata: {},
///     resourceGroupName: "testResourceGroup",
///     schemaName: "testSchema",
///     schemaType: azure_native.logic.SchemaType.Xml,
///     tags: {
///         integrationAccountSchemaName: "IntegrationAccountSchema8120",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// integration_account_schema = azure_native.logic.IntegrationAccountSchema("integrationAccountSchema",
///     content="""<?xml version="1.0" encoding="utf-16"?>\x0d
/// <xs:schema xmlns:b="http://schemas.microsoft.com/BizTalk/2003" xmlns="http://Inbound_EDI.OrderFile" targetNamespace="http://Inbound_EDI.OrderFile" xmlns:xs="http://www.w3.org/2001/XMLSchema">\x0d
///   <xs:annotation>\x0d
///     <xs:appinfo>\x0d
///       <b:schemaInfo default_pad_char=" " count_positions_by_byte="false" parser_optimization="speed" lookahead_depth="3" suppress_empty_nodes="false" generate_empty_nodes="true" allow_early_termination="false" early_terminate_optional_fields="false" allow_message_breakup_of_infix_root="false" compile_parse_tables="false" standard="Flat File" root_reference="OrderFile" />\x0d
///       <schemaEditorExtension:schemaInfo namespaceAlias="b" extensionClass="Microsoft.BizTalk.FlatFileExtension.FlatFileExtension" standardName="Flat File" xmlns:schemaEditorExtension="http://schemas.microsoft.com/BizTalk/2003/SchemaEditorExtensions" />\x0d
///     </xs:appinfo>\x0d
///   </xs:annotation>\x0d
///   <xs:element name="OrderFile">\x0d
///     <xs:annotation>\x0d
///       <xs:appinfo>\x0d
///         <b:recordInfo structure="delimited" preserve_delimiter_for_empty_data="true" suppress_trailing_delimiters="false" sequence_number="1" />\x0d
///       </xs:appinfo>\x0d
///     </xs:annotation>\x0d
///     <xs:complexType>\x0d
///       <xs:sequence>\x0d
///         <xs:annotation>\x0d
///           <xs:appinfo>\x0d
///             <b:groupInfo sequence_number="0" />\x0d
///           </xs:appinfo>\x0d
///         </xs:annotation>\x0d
///         <xs:element name="Order">\x0d
///           <xs:annotation>\x0d
///             <xs:appinfo>\x0d
///               <b:recordInfo sequence_number="1" structure="delimited" preserve_delimiter_for_empty_data="true" suppress_trailing_delimiters="false" child_delimiter_type="hex" child_delimiter="0x0D 0x0A" child_order="infix" />\x0d
///             </xs:appinfo>\x0d
///           </xs:annotation>\x0d
///           <xs:complexType>\x0d
///             <xs:sequence>\x0d
///               <xs:annotation>\x0d
///                 <xs:appinfo>\x0d
///                   <b:groupInfo sequence_number="0" />\x0d
///                 </xs:appinfo>\x0d
///               </xs:annotation>\x0d
///               <xs:element name="Header">\x0d
///                 <xs:annotation>\x0d
///                   <xs:appinfo>\x0d
///                     <b:recordInfo sequence_number="1" structure="delimited" preserve_delimiter_for_empty_data="true" suppress_trailing_delimiters="false" child_delimiter_type="char" child_delimiter="|" child_order="infix" tag_name="HDR|" />\x0d
///                   </xs:appinfo>\x0d
///                 </xs:annotation>\x0d
///                 <xs:complexType>\x0d
///                   <xs:sequence>\x0d
///                     <xs:annotation>\x0d
///                       <xs:appinfo>\x0d
///                         <b:groupInfo sequence_number="0" />\x0d
///                       </xs:appinfo>\x0d
///                     </xs:annotation>\x0d
///                     <xs:element name="PODate" type="xs:string">\x0d
///                       <xs:annotation>\x0d
///                         <xs:appinfo>\x0d
///                           <b:fieldInfo sequence_number="1" justification="left" />\x0d
///                         </xs:appinfo>\x0d
///                       </xs:annotation>\x0d
///                     </xs:element>\x0d
///                     <xs:element name="PONumber" type="xs:string">\x0d
///                       <xs:annotation>\x0d
///                         <xs:appinfo>\x0d
///                           <b:fieldInfo justification="left" sequence_number="2" />\x0d
///                         </xs:appinfo>\x0d
///                       </xs:annotation>\x0d
///                     </xs:element>\x0d
///                     <xs:element name="CustomerID" type="xs:string">\x0d
///                       <xs:annotation>\x0d
///                         <xs:appinfo>\x0d
///                           <b:fieldInfo sequence_number="3" justification="left" />\x0d
///                         </xs:appinfo>\x0d
///                       </xs:annotation>\x0d
///                     </xs:element>\x0d
///                     <xs:element name="CustomerContactName" type="xs:string">\x0d
///                       <xs:annotation>\x0d
///                         <xs:appinfo>\x0d
///                           <b:fieldInfo sequence_number="4" justification="left" />\x0d
///                         </xs:appinfo>\x0d
///                       </xs:annotation>\x0d
///                     </xs:element>\x0d
///                     <xs:element name="CustomerContactPhone" type="xs:string">\x0d
///                       <xs:annotation>\x0d
///                         <xs:appinfo>\x0d
///                           <b:fieldInfo sequence_number="5" justification="left" />\x0d
///                         </xs:appinfo>\x0d
///                       </xs:annotation>\x0d
///                     </xs:element>\x0d
///                   </xs:sequence>\x0d
///                 </xs:complexType>\x0d
///               </xs:element>\x0d
///               <xs:element minOccurs="1" maxOccurs="unbounded" name="LineItems">\x0d
///                 <xs:annotation>\x0d
///                   <xs:appinfo>\x0d
///                     <b:recordInfo sequence_number="2" structure="delimited" preserve_delimiter_for_empty_data="true" suppress_trailing_delimiters="false" child_delimiter_type="char" child_delimiter="|" child_order="infix" tag_name="DTL|" />\x0d
///                   </xs:appinfo>\x0d
///                 </xs:annotation>\x0d
///                 <xs:complexType>\x0d
///                   <xs:sequence>\x0d
///                     <xs:annotation>\x0d
///                       <xs:appinfo>\x0d
///                         <b:groupInfo sequence_number="0" />\x0d
///                       </xs:appinfo>\x0d
///                     </xs:annotation>\x0d
///                     <xs:element name="PONumber" type="xs:string">\x0d
///                       <xs:annotation>\x0d
///                         <xs:appinfo>\x0d
///                           <b:fieldInfo sequence_number="1" justification="left" />\x0d
///                         </xs:appinfo>\x0d
///                       </xs:annotation>\x0d
///                     </xs:element>\x0d
///                     <xs:element name="ItemOrdered" type="xs:string">\x0d
///                       <xs:annotation>\x0d
///                         <xs:appinfo>\x0d
///                           <b:fieldInfo sequence_number="2" justification="left" />\x0d
///                         </xs:appinfo>\x0d
///                       </xs:annotation>\x0d
///                     </xs:element>\x0d
///                     <xs:element name="Quantity" type="xs:string">\x0d
///                       <xs:annotation>\x0d
///                         <xs:appinfo>\x0d
///                           <b:fieldInfo sequence_number="3" justification="left" />\x0d
///                         </xs:appinfo>\x0d
///                       </xs:annotation>\x0d
///                     </xs:element>\x0d
///                     <xs:element name="UOM" type="xs:string">\x0d
///                       <xs:annotation>\x0d
///                         <xs:appinfo>\x0d
///                           <b:fieldInfo sequence_number="4" justification="left" />\x0d
///                         </xs:appinfo>\x0d
///                       </xs:annotation>\x0d
///                     </xs:element>\x0d
///                     <xs:element name="Price" type="xs:string">\x0d
///                       <xs:annotation>\x0d
///                         <xs:appinfo>\x0d
///                           <b:fieldInfo sequence_number="5" justification="left" />\x0d
///                         </xs:appinfo>\x0d
///                       </xs:annotation>\x0d
///                     </xs:element>\x0d
///                     <xs:element name="ExtendedPrice" type="xs:string">\x0d
///                       <xs:annotation>\x0d
///                         <xs:appinfo>\x0d
///                           <b:fieldInfo sequence_number="6" justification="left" />\x0d
///                         </xs:appinfo>\x0d
///                       </xs:annotation>\x0d
///                     </xs:element>\x0d
///                     <xs:element name="Description" type="xs:string">\x0d
///                       <xs:annotation>\x0d
///                         <xs:appinfo>\x0d
///                           <b:fieldInfo sequence_number="7" justification="left" />\x0d
///                         </xs:appinfo>\x0d
///                       </xs:annotation>\x0d
///                     </xs:element>\x0d
///                   </xs:sequence>\x0d
///                 </xs:complexType>\x0d
///               </xs:element>\x0d
///             </xs:sequence>\x0d
///           </xs:complexType>\x0d
///         </xs:element>\x0d
///       </xs:sequence>\x0d
///     </xs:complexType>\x0d
///   </xs:element>\x0d
/// </xs:schema>""",
///     content_type="application/xml",
///     integration_account_name="testIntegrationAccount",
///     location="westus",
///     metadata={},
///     resource_group_name="testResourceGroup",
///     schema_name="testSchema",
///     schema_type=azure_native.logic.SchemaType.XML,
///     tags={
///         "integrationAccountSchemaName": "IntegrationAccountSchema8120",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   integrationAccountSchema:
///     type: azure-native:logic:IntegrationAccountSchema
///     properties:
///       content: "<?xml version=\"1.0\" encoding=\"utf-16\"?>\r\n<xs:schema xmlns:b=\"http://schemas.microsoft.com/BizTalk/2003\" xmlns=\"http://Inbound_EDI.OrderFile\" targetNamespace=\"http://Inbound_EDI.OrderFile\" xmlns:xs=\"http://www.w3.org/2001/XMLSchema\">\r\n  <xs:annotation>\r\n    <xs:appinfo>\r\n      <b:schemaInfo default_pad_char=\" \" count_positions_by_byte=\"false\" parser_optimization=\"speed\" lookahead_depth=\"3\" suppress_empty_nodes=\"false\" generate_empty_nodes=\"true\" allow_early_termination=\"false\" early_terminate_optional_fields=\"false\" allow_message_breakup_of_infix_root=\"false\" compile_parse_tables=\"false\" standard=\"Flat File\" root_reference=\"OrderFile\" />\r\n      <schemaEditorExtension:schemaInfo namespaceAlias=\"b\" extensionClass=\"Microsoft.BizTalk.FlatFileExtension.FlatFileExtension\" standardName=\"Flat File\" xmlns:schemaEditorExtension=\"http://schemas.microsoft.com/BizTalk/2003/SchemaEditorExtensions\" />\r\n    </xs:appinfo>\r\n  </xs:annotation>\r\n  <xs:element name=\"OrderFile\">\r\n    <xs:annotation>\r\n      <xs:appinfo>\r\n        <b:recordInfo structure=\"delimited\" preserve_delimiter_for_empty_data=\"true\" suppress_trailing_delimiters=\"false\" sequence_number=\"1\" />\r\n      </xs:appinfo>\r\n    </xs:annotation>\r\n    <xs:complexType>\r\n      <xs:sequence>\r\n        <xs:annotation>\r\n          <xs:appinfo>\r\n            <b:groupInfo sequence_number=\"0\" />\r\n          </xs:appinfo>\r\n        </xs:annotation>\r\n        <xs:element name=\"Order\">\r\n          <xs:annotation>\r\n            <xs:appinfo>\r\n              <b:recordInfo sequence_number=\"1\" structure=\"delimited\" preserve_delimiter_for_empty_data=\"true\" suppress_trailing_delimiters=\"false\" child_delimiter_type=\"hex\" child_delimiter=\"0x0D 0x0A\" child_order=\"infix\" />\r\n            </xs:appinfo>\r\n          </xs:annotation>\r\n          <xs:complexType>\r\n            <xs:sequence>\r\n              <xs:annotation>\r\n                <xs:appinfo>\r\n                  <b:groupInfo sequence_number=\"0\" />\r\n                </xs:appinfo>\r\n              </xs:annotation>\r\n              <xs:element name=\"Header\">\r\n                <xs:annotation>\r\n                  <xs:appinfo>\r\n                    <b:recordInfo sequence_number=\"1\" structure=\"delimited\" preserve_delimiter_for_empty_data=\"true\" suppress_trailing_delimiters=\"false\" child_delimiter_type=\"char\" child_delimiter=\"|\" child_order=\"infix\" tag_name=\"HDR|\" />\r\n                  </xs:appinfo>\r\n                </xs:annotation>\r\n                <xs:complexType>\r\n                  <xs:sequence>\r\n                    <xs:annotation>\r\n                      <xs:appinfo>\r\n                        <b:groupInfo sequence_number=\"0\" />\r\n                      </xs:appinfo>\r\n                    </xs:annotation>\r\n                    <xs:element name=\"PODate\" type=\"xs:string\">\r\n                      <xs:annotation>\r\n                        <xs:appinfo>\r\n                          <b:fieldInfo sequence_number=\"1\" justification=\"left\" />\r\n                        </xs:appinfo>\r\n                      </xs:annotation>\r\n                    </xs:element>\r\n                    <xs:element name=\"PONumber\" type=\"xs:string\">\r\n                      <xs:annotation>\r\n                        <xs:appinfo>\r\n                          <b:fieldInfo justification=\"left\" sequence_number=\"2\" />\r\n                        </xs:appinfo>\r\n                      </xs:annotation>\r\n                    </xs:element>\r\n                    <xs:element name=\"CustomerID\" type=\"xs:string\">\r\n                      <xs:annotation>\r\n                        <xs:appinfo>\r\n                          <b:fieldInfo sequence_number=\"3\" justification=\"left\" />\r\n                        </xs:appinfo>\r\n                      </xs:annotation>\r\n                    </xs:element>\r\n                    <xs:element name=\"CustomerContactName\" type=\"xs:string\">\r\n                      <xs:annotation>\r\n                        <xs:appinfo>\r\n                          <b:fieldInfo sequence_number=\"4\" justification=\"left\" />\r\n                        </xs:appinfo>\r\n                      </xs:annotation>\r\n                    </xs:element>\r\n                    <xs:element name=\"CustomerContactPhone\" type=\"xs:string\">\r\n                      <xs:annotation>\r\n                        <xs:appinfo>\r\n                          <b:fieldInfo sequence_number=\"5\" justification=\"left\" />\r\n                        </xs:appinfo>\r\n                      </xs:annotation>\r\n                    </xs:element>\r\n                  </xs:sequence>\r\n                </xs:complexType>\r\n              </xs:element>\r\n              <xs:element minOccurs=\"1\" maxOccurs=\"unbounded\" name=\"LineItems\">\r\n                <xs:annotation>\r\n                  <xs:appinfo>\r\n                    <b:recordInfo sequence_number=\"2\" structure=\"delimited\" preserve_delimiter_for_empty_data=\"true\" suppress_trailing_delimiters=\"false\" child_delimiter_type=\"char\" child_delimiter=\"|\" child_order=\"infix\" tag_name=\"DTL|\" />\r\n                  </xs:appinfo>\r\n                </xs:annotation>\r\n                <xs:complexType>\r\n                  <xs:sequence>\r\n                    <xs:annotation>\r\n                      <xs:appinfo>\r\n                        <b:groupInfo sequence_number=\"0\" />\r\n                      </xs:appinfo>\r\n                    </xs:annotation>\r\n                    <xs:element name=\"PONumber\" type=\"xs:string\">\r\n                      <xs:annotation>\r\n                        <xs:appinfo>\r\n                          <b:fieldInfo sequence_number=\"1\" justification=\"left\" />\r\n                        </xs:appinfo>\r\n                      </xs:annotation>\r\n                    </xs:element>\r\n                    <xs:element name=\"ItemOrdered\" type=\"xs:string\">\r\n                      <xs:annotation>\r\n                        <xs:appinfo>\r\n                          <b:fieldInfo sequence_number=\"2\" justification=\"left\" />\r\n                        </xs:appinfo>\r\n                      </xs:annotation>\r\n                    </xs:element>\r\n                    <xs:element name=\"Quantity\" type=\"xs:string\">\r\n                      <xs:annotation>\r\n                        <xs:appinfo>\r\n                          <b:fieldInfo sequence_number=\"3\" justification=\"left\" />\r\n                        </xs:appinfo>\r\n                      </xs:annotation>\r\n                    </xs:element>\r\n                    <xs:element name=\"UOM\" type=\"xs:string\">\r\n                      <xs:annotation>\r\n                        <xs:appinfo>\r\n                          <b:fieldInfo sequence_number=\"4\" justification=\"left\" />\r\n                        </xs:appinfo>\r\n                      </xs:annotation>\r\n                    </xs:element>\r\n                    <xs:element name=\"Price\" type=\"xs:string\">\r\n                      <xs:annotation>\r\n                        <xs:appinfo>\r\n                          <b:fieldInfo sequence_number=\"5\" justification=\"left\" />\r\n                        </xs:appinfo>\r\n                      </xs:annotation>\r\n                    </xs:element>\r\n                    <xs:element name=\"ExtendedPrice\" type=\"xs:string\">\r\n                      <xs:annotation>\r\n                        <xs:appinfo>\r\n                          <b:fieldInfo sequence_number=\"6\" justification=\"left\" />\r\n                        </xs:appinfo>\r\n                      </xs:annotation>\r\n                    </xs:element>\r\n                    <xs:element name=\"Description\" type=\"xs:string\">\r\n                      <xs:annotation>\r\n                        <xs:appinfo>\r\n                          <b:fieldInfo sequence_number=\"7\" justification=\"left\" />\r\n                        </xs:appinfo>\r\n                      </xs:annotation>\r\n                    </xs:element>\r\n                  </xs:sequence>\r\n                </xs:complexType>\r\n              </xs:element>\r\n            </xs:sequence>\r\n          </xs:complexType>\r\n        </xs:element>\r\n      </xs:sequence>\r\n    </xs:complexType>\r\n  </xs:element>\r\n</xs:schema>"
///       contentType: application/xml
///       integrationAccountName: testIntegrationAccount
///       location: westus
///       metadata: {}
///       resourceGroupName: testResourceGroup
///       schemaName: testSchema
///       schemaType: Xml
///       tags:
///         integrationAccountSchemaName: IntegrationAccountSchema8120
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
/// $ pulumi import azure-native:logic:IntegrationAccountSchema IntegrationAccountSchema5349 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Logic/integrationAccounts/{integrationAccountName}/schemas/{schemaName}
/// ```
class IntegrationAccountSchema extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The changed time.
  late final pulumi.Output<String> changedTime;
  /// The content.
  late final pulumi.Output<String?> content;
  /// The content link.
  late final pulumi.Output<ContentLinkResponse> contentLink;
  /// The content type.
  late final pulumi.Output<String?> contentType;
  /// The created time.
  late final pulumi.Output<String> createdTime;
  /// The document name.
  late final pulumi.Output<String?> documentName;
  /// The file name.
  late final pulumi.Output<String?> fileName;
  /// The resource location.
  late final pulumi.Output<String?> location;
  /// The metadata.
  late final pulumi.Output<dynamic> metadata;
  /// Gets the resource name.
  late final pulumi.Output<String> name;
  /// The schema type.
  late final pulumi.Output<String> schemaType;
  /// The resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The target namespace of the schema.
  late final pulumi.Output<String?> targetNamespace;
  /// Gets the resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [IntegrationAccountSchema].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IntegrationAccountSchema]. {@macro pulumi_logic_integration_account_schema_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IntegrationAccountSchema(
    String name, {
    IntegrationAccountSchemaArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:logic:IntegrationAccountSchema',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    changedTime = registerOutput<String>('changedTime');
    content = registerOutput<String?>('content');
    contentLink = registerOutput<ContentLinkResponse>('contentLink', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ContentLinkResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    contentType = registerOutput<String?>('contentType');
    createdTime = registerOutput<String>('createdTime');
    documentName = registerOutput<String?>('documentName');
    fileName = registerOutput<String?>('fileName');
    location = registerOutput<String?>('location');
    metadata = registerOutput<dynamic>('metadata');
    this.name = registerOutput<String>('name');
    schemaType = registerOutput<String>('schemaType');
    tags = registerOutput<Map<String, String>?>('tags');
    targetNamespace = registerOutput<String?>('targetNamespace');
    type = registerOutput<String>('type');
  }
}
