import 'package:pulumi/pulumi.dart' as pulumi;
import 'schema_args.dart';

/// Schema Contract details.
///
/// Uses Azure REST API version 2021-04-01-preview. In version 2.x of the Azure Native provider, it used API version 2021-04-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ApiManagementCreateSchema1
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var schema = new AzureNative.ApiManagement.Schema("schema", new()
///     {
///         Description = "sample schema description",
///         ResourceGroupName = "rg1",
///         SchemaId = "schema1",
///         SchemaType = AzureNative.ApiManagement.SchemaType.Xml,
///         ServiceName = "apimService1",
///         Value = @"<xsd:schema xmlns:xsd=""http://www.w3.org/2001/XMLSchema""
///            xmlns:tns=""http://tempuri.org/PurchaseOrderSchema.xsd""
///            targetNamespace=""http://tempuri.org/PurchaseOrderSchema.xsd""
///            elementFormDefault=""qualified"">
///  <xsd:element name=""PurchaseOrder"" type=""tns:PurchaseOrderType""/>
///  <xsd:complexType name=""PurchaseOrderType"">
///   <xsd:sequence>
///    <xsd:element name=""ShipTo"" type=""tns:USAddress"" maxOccurs=""2""/>
///    <xsd:element name=""BillTo"" type=""tns:USAddress""/>
///   </xsd:sequence>
///   <xsd:attribute name=""OrderDate"" type=""xsd:date""/>
///  </xsd:complexType>
///
///  <xsd:complexType name=""USAddress"">
///   <xsd:sequence>
///    <xsd:element name=""name""   type=""xsd:string""/>
///    <xsd:element name=""street"" type=""xsd:string""/>
///    <xsd:element name=""city""   type=""xsd:string""/>
///    <xsd:element name=""state""  type=""xsd:string""/>
///    <xsd:element name=""zip""    type=""xsd:integer""/>
///   </xsd:sequence>
///   <xsd:attribute name=""country"" type=""xsd:NMTOKEN"" fixed=""US""/>
///  </xsd:complexType>
/// </xsd:schema>",
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
/// 	apimanagement "github.com/pulumi/pulumi-azure-native-sdk/apimanagement/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := apimanagement.NewSchema(ctx, "schema", &apimanagement.SchemaArgs{
/// 			Description:       pulumi.String("sample schema description"),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			SchemaId:          pulumi.String("schema1"),
/// 			SchemaType:        pulumi.String(apimanagement.SchemaTypeXml),
/// 			ServiceName:       pulumi.String("apimService1"),
/// 			Value: pulumi.String(`<xsd:schema xmlns:xsd="http://www.w3.org/2001/XMLSchema"
///            xmlns:tns="http://tempuri.org/PurchaseOrderSchema.xsd"
///            targetNamespace="http://tempuri.org/PurchaseOrderSchema.xsd"
///            elementFormDefault="qualified">
///  <xsd:element name="PurchaseOrder" type="tns:PurchaseOrderType"/>
///  <xsd:complexType name="PurchaseOrderType">
///   <xsd:sequence>
///    <xsd:element name="ShipTo" type="tns:USAddress" maxOccurs="2"/>
///    <xsd:element name="BillTo" type="tns:USAddress"/>
///   </xsd:sequence>
///   <xsd:attribute name="OrderDate" type="xsd:date"/>
///  </xsd:complexType>
///
///  <xsd:complexType name="USAddress">
///   <xsd:sequence>
///    <xsd:element name="name"   type="xsd:string"/>
///    <xsd:element name="street" type="xsd:string"/>
///    <xsd:element name="city"   type="xsd:string"/>
///    <xsd:element name="state"  type="xsd:string"/>
///    <xsd:element name="zip"    type="xsd:integer"/>
///   </xsd:sequence>
///   <xsd:attribute name="country" type="xsd:NMTOKEN" fixed="US"/>
///  </xsd:complexType>
/// </xsd:schema>`),
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
/// import com.pulumi.azurenative.apimanagement.Schema;
/// import com.pulumi.azurenative.apimanagement.SchemaArgs;
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
///         var schema = new Schema("schema", SchemaArgs.builder()
///             .description("sample schema description")
///             .resourceGroupName("rg1")
///             .schemaId("schema1")
///             .schemaType("xml")
///             .serviceName("apimService1")
///             .value("""
/// <xsd:schema xmlns:xsd="http://www.w3.org/2001/XMLSchema"
///            xmlns:tns="http://tempuri.org/PurchaseOrderSchema.xsd"
///            targetNamespace="http://tempuri.org/PurchaseOrderSchema.xsd"
///            elementFormDefault="qualified">
///  <xsd:element name="PurchaseOrder" type="tns:PurchaseOrderType"/>
///  <xsd:complexType name="PurchaseOrderType">
///   <xsd:sequence>
///    <xsd:element name="ShipTo" type="tns:USAddress" maxOccurs="2"/>
///    <xsd:element name="BillTo" type="tns:USAddress"/>
///   </xsd:sequence>
///   <xsd:attribute name="OrderDate" type="xsd:date"/>
///  </xsd:complexType>
///
///  <xsd:complexType name="USAddress">
///   <xsd:sequence>
///    <xsd:element name="name"   type="xsd:string"/>
///    <xsd:element name="street" type="xsd:string"/>
///    <xsd:element name="city"   type="xsd:string"/>
///    <xsd:element name="state"  type="xsd:string"/>
///    <xsd:element name="zip"    type="xsd:integer"/>
///   </xsd:sequence>
///   <xsd:attribute name="country" type="xsd:NMTOKEN" fixed="US"/>
///  </xsd:complexType>
/// </xsd:schema>            """)
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
/// const schema = new azure_native.apimanagement.Schema("schema", {
///     description: "sample schema description",
///     resourceGroupName: "rg1",
///     schemaId: "schema1",
///     schemaType: azure_native.apimanagement.SchemaType.Xml,
///     serviceName: "apimService1",
///     value: `<xsd:schema xmlns:xsd="http://www.w3.org/2001/XMLSchema"\x0d
///            xmlns:tns="http://tempuri.org/PurchaseOrderSchema.xsd"\x0d
///            targetNamespace="http://tempuri.org/PurchaseOrderSchema.xsd"\x0d
///            elementFormDefault="qualified">\x0d
///  <xsd:element name="PurchaseOrder" type="tns:PurchaseOrderType"/>\x0d
///  <xsd:complexType name="PurchaseOrderType">\x0d
///   <xsd:sequence>\x0d
///    <xsd:element name="ShipTo" type="tns:USAddress" maxOccurs="2"/>\x0d
///    <xsd:element name="BillTo" type="tns:USAddress"/>\x0d
///   </xsd:sequence>\x0d
///   <xsd:attribute name="OrderDate" type="xsd:date"/>\x0d
///  </xsd:complexType>\x0d
/// \x0d
///  <xsd:complexType name="USAddress">\x0d
///   <xsd:sequence>\x0d
///    <xsd:element name="name"   type="xsd:string"/>\x0d
///    <xsd:element name="street" type="xsd:string"/>\x0d
///    <xsd:element name="city"   type="xsd:string"/>\x0d
///    <xsd:element name="state"  type="xsd:string"/>\x0d
///    <xsd:element name="zip"    type="xsd:integer"/>\x0d
///   </xsd:sequence>\x0d
///   <xsd:attribute name="country" type="xsd:NMTOKEN" fixed="US"/>\x0d
///  </xsd:complexType>\x0d
/// </xsd:schema>`,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// schema = azure_native.apimanagement.Schema("schema",
///     description="sample schema description",
///     resource_group_name="rg1",
///     schema_id="schema1",
///     schema_type=azure_native.apimanagement.SchemaType.XML,
///     service_name="apimService1",
///     value="""<xsd:schema xmlns:xsd="http://www.w3.org/2001/XMLSchema"\x0d
///            xmlns:tns="http://tempuri.org/PurchaseOrderSchema.xsd"\x0d
///            targetNamespace="http://tempuri.org/PurchaseOrderSchema.xsd"\x0d
///            elementFormDefault="qualified">\x0d
///  <xsd:element name="PurchaseOrder" type="tns:PurchaseOrderType"/>\x0d
///  <xsd:complexType name="PurchaseOrderType">\x0d
///   <xsd:sequence>\x0d
///    <xsd:element name="ShipTo" type="tns:USAddress" maxOccurs="2"/>\x0d
///    <xsd:element name="BillTo" type="tns:USAddress"/>\x0d
///   </xsd:sequence>\x0d
///   <xsd:attribute name="OrderDate" type="xsd:date"/>\x0d
///  </xsd:complexType>\x0d
/// \x0d
///  <xsd:complexType name="USAddress">\x0d
///   <xsd:sequence>\x0d
///    <xsd:element name="name"   type="xsd:string"/>\x0d
///    <xsd:element name="street" type="xsd:string"/>\x0d
///    <xsd:element name="city"   type="xsd:string"/>\x0d
///    <xsd:element name="state"  type="xsd:string"/>\x0d
///    <xsd:element name="zip"    type="xsd:integer"/>\x0d
///   </xsd:sequence>\x0d
///   <xsd:attribute name="country" type="xsd:NMTOKEN" fixed="US"/>\x0d
///  </xsd:complexType>\x0d
/// </xsd:schema>""")
///
/// ```
///
/// ```yaml
/// resources:
///   schema:
///     type: azure-native:apimanagement:Schema
///     properties:
///       description: sample schema description
///       resourceGroupName: rg1
///       schemaId: schema1
///       schemaType: xml
///       serviceName: apimService1
///       value: "<xsd:schema xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\"\r\n           xmlns:tns=\"http://tempuri.org/PurchaseOrderSchema.xsd\"\r\n           targetNamespace=\"http://tempuri.org/PurchaseOrderSchema.xsd\"\r\n           elementFormDefault=\"qualified\">\r\n <xsd:element name=\"PurchaseOrder\" type=\"tns:PurchaseOrderType\"/>\r\n <xsd:complexType name=\"PurchaseOrderType\">\r\n  <xsd:sequence>\r\n   <xsd:element name=\"ShipTo\" type=\"tns:USAddress\" maxOccurs=\"2\"/>\r\n   <xsd:element name=\"BillTo\" type=\"tns:USAddress\"/>\r\n  </xsd:sequence>\r\n  <xsd:attribute name=\"OrderDate\" type=\"xsd:date\"/>\r\n </xsd:complexType>\r\n\r\n <xsd:complexType name=\"USAddress\">\r\n  <xsd:sequence>\r\n   <xsd:element name=\"name\"   type=\"xsd:string\"/>\r\n   <xsd:element name=\"street\" type=\"xsd:string\"/>\r\n   <xsd:element name=\"city\"   type=\"xsd:string\"/>\r\n   <xsd:element name=\"state\"  type=\"xsd:string\"/>\r\n   <xsd:element name=\"zip\"    type=\"xsd:integer\"/>\r\n  </xsd:sequence>\r\n  <xsd:attribute name=\"country\" type=\"xsd:NMTOKEN\" fixed=\"US\"/>\r\n </xsd:complexType>\r\n</xsd:schema>"
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### ApiManagementCreateSchema2
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var schema = new AzureNative.ApiManagement.Schema("schema", new()
///     {
///         Description = "sample schema description",
///         ResourceGroupName = "rg1",
///         SchemaId = "schema1",
///         SchemaType = AzureNative.ApiManagement.SchemaType.Json,
///         ServiceName = "apimService1",
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
/// 	apimanagement "github.com/pulumi/pulumi-azure-native-sdk/apimanagement/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := apimanagement.NewSchema(ctx, "schema", &apimanagement.SchemaArgs{
/// 			Description:       pulumi.String("sample schema description"),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			SchemaId:          pulumi.String("schema1"),
/// 			SchemaType:        pulumi.String(apimanagement.SchemaTypeJson),
/// 			ServiceName:       pulumi.String("apimService1"),
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
/// import com.pulumi.azurenative.apimanagement.Schema;
/// import com.pulumi.azurenative.apimanagement.SchemaArgs;
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
///         var schema = new Schema("schema", SchemaArgs.builder()
///             .description("sample schema description")
///             .resourceGroupName("rg1")
///             .schemaId("schema1")
///             .schemaType("json")
///             .serviceName("apimService1")
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
/// const schema = new azure_native.apimanagement.Schema("schema", {
///     description: "sample schema description",
///     resourceGroupName: "rg1",
///     schemaId: "schema1",
///     schemaType: azure_native.apimanagement.SchemaType.Json,
///     serviceName: "apimService1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// schema = azure_native.apimanagement.Schema("schema",
///     description="sample schema description",
///     resource_group_name="rg1",
///     schema_id="schema1",
///     schema_type=azure_native.apimanagement.SchemaType.JSON,
///     service_name="apimService1")
///
/// ```
///
/// ```yaml
/// resources:
///   schema:
///     type: azure-native:apimanagement:Schema
///     properties:
///       description: sample schema description
///       resourceGroupName: rg1
///       schemaId: schema1
///       schemaType: json
///       serviceName: apimService1
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
/// $ pulumi import azure-native:apimanagement:Schema schema1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ApiManagement/service/{serviceName}/schemas/{schemaId}
/// ```
class Schema extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Free-form schema entity description.
  late final pulumi.Output<String?> description;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Schema Type. Immutable.
  late final pulumi.Output<String> schemaType;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Json-encoded string for non json-based schema.
  late final pulumi.Output<String?> value;

  /// Creates a new [Schema].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Schema]. {@macro pulumi_apimanagement_schema_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Schema(String name, {SchemaArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'azure-native:apimanagement:Schema',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    schemaType = registerOutput<String>('schemaType');
    type = registerOutput<String>('type');
    value = registerOutput<String?>('value');
  }
}
