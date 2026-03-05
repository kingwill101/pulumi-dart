import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_schema_args.dart';

/// API Schema Contract details.
///
/// Uses Azure REST API version 2022-09-01-preview. In version 2.x of the Azure Native provider, it used API version 2022-08-01.
///
/// Other available API versions: 2021-04-01-preview, 2021-08-01, 2021-12-01-preview, 2022-04-01-preview, 2022-08-01, 2023-03-01-preview, 2023-05-01-preview, 2023-09-01-preview, 2024-05-01, 2024-06-01-preview, 2024-10-01-preview, 2025-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native apimanagement [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ApiManagementCreateApiSchema
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var apiSchema = new AzureNative.ApiManagement.ApiSchema("apiSchema", new()
///     {
///         ApiId = "59d6bb8f1f7fab13dc67ec9b",
///         ContentType = "application/vnd.ms-azure-apim.xsd+xml",
///         ResourceGroupName = "rg1",
///         SchemaId = "ec12520d-9d48-4e7b-8f39-698ca2ac63f1",
///         ServiceName = "apimService1",
///         Value = @"<s:schema elementFormDefault=""qualified"" targetNamespace=""http://ws.cdyne.com/WeatherWS/"" xmlns:tns=""http://ws.cdyne.com/WeatherWS/"" xmlns:s=""http://www.w3.org/2001/XMLSchema"" xmlns:soap12=""http://schemas.xmlsoap.org/wsdl/soap12/"" xmlns:mime=""http://schemas.xmlsoap.org/wsdl/mime/"" xmlns:soap=""http://schemas.xmlsoap.org/wsdl/soap/"" xmlns:tm=""http://microsoft.com/wsdl/mime/textMatching/"" xmlns:http=""http://schemas.xmlsoap.org/wsdl/http/"" xmlns:soapenc=""http://schemas.xmlsoap.org/soap/encoding/"" xmlns:wsdl=""http://schemas.xmlsoap.org/wsdl/"" xmlns:apim-wsdltns=""http://ws.cdyne.com/WeatherWS/"">
///   <s:element name=""GetWeatherInformation"">
///     <s:complexType />
///   </s:element>
///   <s:element name=""GetWeatherInformationResponse"">
///     <s:complexType>
///       <s:sequence>
///         <s:element minOccurs=""0"" maxOccurs=""1"" name=""GetWeatherInformationResult"" type=""tns:ArrayOfWeatherDescription"" />
///       </s:sequence>
///     </s:complexType>
///   </s:element>
///   <s:complexType name=""ArrayOfWeatherDescription"">
///     <s:sequence>
///       <s:element minOccurs=""0"" maxOccurs=""unbounded"" name=""WeatherDescription"" type=""tns:WeatherDescription"" />
///     </s:sequence>
///   </s:complexType>
///   <s:complexType name=""WeatherDescription"">
///     <s:sequence>
///       <s:element minOccurs=""1"" maxOccurs=""1"" name=""WeatherID"" type=""s:short"" />
///       <s:element minOccurs=""0"" maxOccurs=""1"" name=""Description"" type=""s:string"" />
///       <s:element minOccurs=""0"" maxOccurs=""1"" name=""PictureURL"" type=""s:string"" />
///     </s:sequence>
///   </s:complexType>
///   <s:element name=""GetCityForecastByZIP"">
///     <s:complexType>
///       <s:sequence>
///         <s:element minOccurs=""0"" maxOccurs=""1"" name=""ZIP"" type=""s:string"" />
///       </s:sequence>
///     </s:complexType>
///   </s:element>
///   <s:element name=""GetCityForecastByZIPResponse"">
///     <s:complexType>
///       <s:sequence>
///         <s:element minOccurs=""0"" maxOccurs=""1"" name=""GetCityForecastByZIPResult"" type=""tns:ForecastReturn"" />
///       </s:sequence>
///     </s:complexType>
///   </s:element>
///   <s:complexType name=""ForecastReturn"">
///     <s:sequence>
///       <s:element minOccurs=""1"" maxOccurs=""1"" name=""Success"" type=""s:boolean"" />
///       <s:element minOccurs=""0"" maxOccurs=""1"" name=""ResponseText"" type=""s:string"" />
///       <s:element minOccurs=""0"" maxOccurs=""1"" name=""State"" type=""s:string"" />
///       <s:element minOccurs=""0"" maxOccurs=""1"" name=""City"" type=""s:string"" />
///       <s:element minOccurs=""0"" maxOccurs=""1"" name=""WeatherStationCity"" type=""s:string"" />
///       <s:element minOccurs=""0"" maxOccurs=""1"" name=""ForecastResult"" type=""tns:ArrayOfForecast"" />
///     </s:sequence>
///   </s:complexType>
///   <s:complexType name=""ArrayOfForecast"">
///     <s:sequence>
///       <s:element minOccurs=""0"" maxOccurs=""unbounded"" name=""Forecast"" nillable=""true"" type=""tns:Forecast"" />
///     </s:sequence>
///   </s:complexType>
///   <s:complexType name=""Forecast"">
///     <s:sequence>
///       <s:element minOccurs=""1"" maxOccurs=""1"" name=""Date"" type=""s:dateTime"" />
///       <s:element minOccurs=""1"" maxOccurs=""1"" name=""WeatherID"" type=""s:short"" />
///       <s:element minOccurs=""0"" maxOccurs=""1"" name=""Desciption"" type=""s:string"" />
///       <s:element minOccurs=""1"" maxOccurs=""1"" name=""Temperatures"" type=""tns:temp"" />
///       <s:element minOccurs=""1"" maxOccurs=""1"" name=""ProbabilityOfPrecipiation"" type=""tns:POP"" />
///     </s:sequence>
///   </s:complexType>
///   <s:complexType name=""temp"">
///     <s:sequence>
///       <s:element minOccurs=""0"" maxOccurs=""1"" name=""MorningLow"" type=""s:string"" />
///       <s:element minOccurs=""0"" maxOccurs=""1"" name=""DaytimeHigh"" type=""s:string"" />
///     </s:sequence>
///   </s:complexType>
///   <s:complexType name=""POP"">
///     <s:sequence>
///       <s:element minOccurs=""0"" maxOccurs=""1"" name=""Nighttime"" type=""s:string"" />
///       <s:element minOccurs=""0"" maxOccurs=""1"" name=""Daytime"" type=""s:string"" />
///     </s:sequence>
///   </s:complexType>
///   <s:element name=""GetCityWeatherByZIP"">
///     <s:complexType>
///       <s:sequence>
///         <s:element minOccurs=""0"" maxOccurs=""1"" name=""ZIP"" type=""s:string"" />
///       </s:sequence>
///     </s:complexType>
///   </s:element>
///   <s:element name=""GetCityWeatherByZIPResponse"">
///     <s:complexType>
///       <s:sequence>
///         <s:element minOccurs=""1"" maxOccurs=""1"" name=""GetCityWeatherByZIPResult"" type=""tns:WeatherReturn"" />
///       </s:sequence>
///     </s:complexType>
///   </s:element>
///   <s:complexType name=""WeatherReturn"">
///     <s:sequence>
///       <s:element minOccurs=""1"" maxOccurs=""1"" name=""Success"" type=""s:boolean"" />
///       <s:element minOccurs=""0"" maxOccurs=""1"" name=""ResponseText"" type=""s:string"" />
///       <s:element minOccurs=""0"" maxOccurs=""1"" name=""State"" type=""s:string"" />
///       <s:element minOccurs=""0"" maxOccurs=""1"" name=""City"" type=""s:string"" />
///       <s:element minOccurs=""0"" maxOccurs=""1"" name=""WeatherStationCity"" type=""s:string"" />
///       <s:element minOccurs=""1"" maxOccurs=""1"" name=""WeatherID"" type=""s:short"" />
///       <s:element minOccurs=""0"" maxOccurs=""1"" name=""Description"" type=""s:string"" />
///       <s:element minOccurs=""0"" maxOccurs=""1"" name=""Temperature"" type=""s:string"" />
///       <s:element minOccurs=""0"" maxOccurs=""1"" name=""RelativeHumidity"" type=""s:string"" />
///       <s:element minOccurs=""0"" maxOccurs=""1"" name=""Wind"" type=""s:string"" />
///       <s:element minOccurs=""0"" maxOccurs=""1"" name=""Pressure"" type=""s:string"" />
///       <s:element minOccurs=""0"" maxOccurs=""1"" name=""Visibility"" type=""s:string"" />
///       <s:element minOccurs=""0"" maxOccurs=""1"" name=""WindChill"" type=""s:string"" />
///       <s:element minOccurs=""0"" maxOccurs=""1"" name=""Remarks"" type=""s:string"" />
///     </s:sequence>
///   </s:complexType>
///   <s:element name=""ArrayOfWeatherDescription"" nillable=""true"" type=""tns:ArrayOfWeatherDescription"" />
///   <s:element name=""ForecastReturn"" nillable=""true"" type=""tns:ForecastReturn"" />
///   <s:element name=""WeatherReturn"" type=""tns:WeatherReturn"" />
/// </s:schema>",
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
/// 		_, err := apimanagement.NewApiSchema(ctx, "apiSchema", &apimanagement.ApiSchemaArgs{
/// 			ApiId:             pulumi.String("59d6bb8f1f7fab13dc67ec9b"),
/// 			ContentType:       pulumi.String("application/vnd.ms-azure-apim.xsd+xml"),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			SchemaId:          pulumi.String("ec12520d-9d48-4e7b-8f39-698ca2ac63f1"),
/// 			ServiceName:       pulumi.String("apimService1"),
/// 			Value: pulumi.String(`<s:schema elementFormDefault="qualified" targetNamespace="http://ws.cdyne.com/WeatherWS/" xmlns:tns="http://ws.cdyne.com/WeatherWS/" xmlns:s="http://www.w3.org/2001/XMLSchema" xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:tm="http://microsoft.com/wsdl/mime/textMatching/" xmlns:http="http://schemas.xmlsoap.org/wsdl/http/" xmlns:soapenc="http://schemas.xmlsoap.org/soap/encoding/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:apim-wsdltns="http://ws.cdyne.com/WeatherWS/">
///   <s:element name="GetWeatherInformation">
///     <s:complexType />
///   </s:element>
///   <s:element name="GetWeatherInformationResponse">
///     <s:complexType>
///       <s:sequence>
///         <s:element minOccurs="0" maxOccurs="1" name="GetWeatherInformationResult" type="tns:ArrayOfWeatherDescription" />
///       </s:sequence>
///     </s:complexType>
///   </s:element>
///   <s:complexType name="ArrayOfWeatherDescription">
///     <s:sequence>
///       <s:element minOccurs="0" maxOccurs="unbounded" name="WeatherDescription" type="tns:WeatherDescription" />
///     </s:sequence>
///   </s:complexType>
///   <s:complexType name="WeatherDescription">
///     <s:sequence>
///       <s:element minOccurs="1" maxOccurs="1" name="WeatherID" type="s:short" />
///       <s:element minOccurs="0" maxOccurs="1" name="Description" type="s:string" />
///       <s:element minOccurs="0" maxOccurs="1" name="PictureURL" type="s:string" />
///     </s:sequence>
///   </s:complexType>
///   <s:element name="GetCityForecastByZIP">
///     <s:complexType>
///       <s:sequence>
///         <s:element minOccurs="0" maxOccurs="1" name="ZIP" type="s:string" />
///       </s:sequence>
///     </s:complexType>
///   </s:element>
///   <s:element name="GetCityForecastByZIPResponse">
///     <s:complexType>
///       <s:sequence>
///         <s:element minOccurs="0" maxOccurs="1" name="GetCityForecastByZIPResult" type="tns:ForecastReturn" />
///       </s:sequence>
///     </s:complexType>
///   </s:element>
///   <s:complexType name="ForecastReturn">
///     <s:sequence>
///       <s:element minOccurs="1" maxOccurs="1" name="Success" type="s:boolean" />
///       <s:element minOccurs="0" maxOccurs="1" name="ResponseText" type="s:string" />
///       <s:element minOccurs="0" maxOccurs="1" name="State" type="s:string" />
///       <s:element minOccurs="0" maxOccurs="1" name="City" type="s:string" />
///       <s:element minOccurs="0" maxOccurs="1" name="WeatherStationCity" type="s:string" />
///       <s:element minOccurs="0" maxOccurs="1" name="ForecastResult" type="tns:ArrayOfForecast" />
///     </s:sequence>
///   </s:complexType>
///   <s:complexType name="ArrayOfForecast">
///     <s:sequence>
///       <s:element minOccurs="0" maxOccurs="unbounded" name="Forecast" nillable="true" type="tns:Forecast" />
///     </s:sequence>
///   </s:complexType>
///   <s:complexType name="Forecast">
///     <s:sequence>
///       <s:element minOccurs="1" maxOccurs="1" name="Date" type="s:dateTime" />
///       <s:element minOccurs="1" maxOccurs="1" name="WeatherID" type="s:short" />
///       <s:element minOccurs="0" maxOccurs="1" name="Desciption" type="s:string" />
///       <s:element minOccurs="1" maxOccurs="1" name="Temperatures" type="tns:temp" />
///       <s:element minOccurs="1" maxOccurs="1" name="ProbabilityOfPrecipiation" type="tns:POP" />
///     </s:sequence>
///   </s:complexType>
///   <s:complexType name="temp">
///     <s:sequence>
///       <s:element minOccurs="0" maxOccurs="1" name="MorningLow" type="s:string" />
///       <s:element minOccurs="0" maxOccurs="1" name="DaytimeHigh" type="s:string" />
///     </s:sequence>
///   </s:complexType>
///   <s:complexType name="POP">
///     <s:sequence>
///       <s:element minOccurs="0" maxOccurs="1" name="Nighttime" type="s:string" />
///       <s:element minOccurs="0" maxOccurs="1" name="Daytime" type="s:string" />
///     </s:sequence>
///   </s:complexType>
///   <s:element name="GetCityWeatherByZIP">
///     <s:complexType>
///       <s:sequence>
///         <s:element minOccurs="0" maxOccurs="1" name="ZIP" type="s:string" />
///       </s:sequence>
///     </s:complexType>
///   </s:element>
///   <s:element name="GetCityWeatherByZIPResponse">
///     <s:complexType>
///       <s:sequence>
///         <s:element minOccurs="1" maxOccurs="1" name="GetCityWeatherByZIPResult" type="tns:WeatherReturn" />
///       </s:sequence>
///     </s:complexType>
///   </s:element>
///   <s:complexType name="WeatherReturn">
///     <s:sequence>
///       <s:element minOccurs="1" maxOccurs="1" name="Success" type="s:boolean" />
///       <s:element minOccurs="0" maxOccurs="1" name="ResponseText" type="s:string" />
///       <s:element minOccurs="0" maxOccurs="1" name="State" type="s:string" />
///       <s:element minOccurs="0" maxOccurs="1" name="City" type="s:string" />
///       <s:element minOccurs="0" maxOccurs="1" name="WeatherStationCity" type="s:string" />
///       <s:element minOccurs="1" maxOccurs="1" name="WeatherID" type="s:short" />
///       <s:element minOccurs="0" maxOccurs="1" name="Description" type="s:string" />
///       <s:element minOccurs="0" maxOccurs="1" name="Temperature" type="s:string" />
///       <s:element minOccurs="0" maxOccurs="1" name="RelativeHumidity" type="s:string" />
///       <s:element minOccurs="0" maxOccurs="1" name="Wind" type="s:string" />
///       <s:element minOccurs="0" maxOccurs="1" name="Pressure" type="s:string" />
///       <s:element minOccurs="0" maxOccurs="1" name="Visibility" type="s:string" />
///       <s:element minOccurs="0" maxOccurs="1" name="WindChill" type="s:string" />
///       <s:element minOccurs="0" maxOccurs="1" name="Remarks" type="s:string" />
///     </s:sequence>
///   </s:complexType>
///   <s:element name="ArrayOfWeatherDescription" nillable="true" type="tns:ArrayOfWeatherDescription" />
///   <s:element name="ForecastReturn" nillable="true" type="tns:ForecastReturn" />
///   <s:element name="WeatherReturn" type="tns:WeatherReturn" />
/// </s:schema>`),
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
/// import com.pulumi.azurenative.apimanagement.ApiSchema;
/// import com.pulumi.azurenative.apimanagement.ApiSchemaArgs;
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
///         var apiSchema = new ApiSchema("apiSchema", ApiSchemaArgs.builder()
///             .apiId("59d6bb8f1f7fab13dc67ec9b")
///             .contentType("application/vnd.ms-azure-apim.xsd+xml")
///             .resourceGroupName("rg1")
///             .schemaId("ec12520d-9d48-4e7b-8f39-698ca2ac63f1")
///             .serviceName("apimService1")
///             .value("""
/// <s:schema elementFormDefault="qualified" targetNamespace="http://ws.cdyne.com/WeatherWS/" xmlns:tns="http://ws.cdyne.com/WeatherWS/" xmlns:s="http://www.w3.org/2001/XMLSchema" xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:tm="http://microsoft.com/wsdl/mime/textMatching/" xmlns:http="http://schemas.xmlsoap.org/wsdl/http/" xmlns:soapenc="http://schemas.xmlsoap.org/soap/encoding/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:apim-wsdltns="http://ws.cdyne.com/WeatherWS/">
///   <s:element name="GetWeatherInformation">
///     <s:complexType />
///   </s:element>
///   <s:element name="GetWeatherInformationResponse">
///     <s:complexType>
///       <s:sequence>
///         <s:element minOccurs="0" maxOccurs="1" name="GetWeatherInformationResult" type="tns:ArrayOfWeatherDescription" />
///       </s:sequence>
///     </s:complexType>
///   </s:element>
///   <s:complexType name="ArrayOfWeatherDescription">
///     <s:sequence>
///       <s:element minOccurs="0" maxOccurs="unbounded" name="WeatherDescription" type="tns:WeatherDescription" />
///     </s:sequence>
///   </s:complexType>
///   <s:complexType name="WeatherDescription">
///     <s:sequence>
///       <s:element minOccurs="1" maxOccurs="1" name="WeatherID" type="s:short" />
///       <s:element minOccurs="0" maxOccurs="1" name="Description" type="s:string" />
///       <s:element minOccurs="0" maxOccurs="1" name="PictureURL" type="s:string" />
///     </s:sequence>
///   </s:complexType>
///   <s:element name="GetCityForecastByZIP">
///     <s:complexType>
///       <s:sequence>
///         <s:element minOccurs="0" maxOccurs="1" name="ZIP" type="s:string" />
///       </s:sequence>
///     </s:complexType>
///   </s:element>
///   <s:element name="GetCityForecastByZIPResponse">
///     <s:complexType>
///       <s:sequence>
///         <s:element minOccurs="0" maxOccurs="1" name="GetCityForecastByZIPResult" type="tns:ForecastReturn" />
///       </s:sequence>
///     </s:complexType>
///   </s:element>
///   <s:complexType name="ForecastReturn">
///     <s:sequence>
///       <s:element minOccurs="1" maxOccurs="1" name="Success" type="s:boolean" />
///       <s:element minOccurs="0" maxOccurs="1" name="ResponseText" type="s:string" />
///       <s:element minOccurs="0" maxOccurs="1" name="State" type="s:string" />
///       <s:element minOccurs="0" maxOccurs="1" name="City" type="s:string" />
///       <s:element minOccurs="0" maxOccurs="1" name="WeatherStationCity" type="s:string" />
///       <s:element minOccurs="0" maxOccurs="1" name="ForecastResult" type="tns:ArrayOfForecast" />
///     </s:sequence>
///   </s:complexType>
///   <s:complexType name="ArrayOfForecast">
///     <s:sequence>
///       <s:element minOccurs="0" maxOccurs="unbounded" name="Forecast" nillable="true" type="tns:Forecast" />
///     </s:sequence>
///   </s:complexType>
///   <s:complexType name="Forecast">
///     <s:sequence>
///       <s:element minOccurs="1" maxOccurs="1" name="Date" type="s:dateTime" />
///       <s:element minOccurs="1" maxOccurs="1" name="WeatherID" type="s:short" />
///       <s:element minOccurs="0" maxOccurs="1" name="Desciption" type="s:string" />
///       <s:element minOccurs="1" maxOccurs="1" name="Temperatures" type="tns:temp" />
///       <s:element minOccurs="1" maxOccurs="1" name="ProbabilityOfPrecipiation" type="tns:POP" />
///     </s:sequence>
///   </s:complexType>
///   <s:complexType name="temp">
///     <s:sequence>
///       <s:element minOccurs="0" maxOccurs="1" name="MorningLow" type="s:string" />
///       <s:element minOccurs="0" maxOccurs="1" name="DaytimeHigh" type="s:string" />
///     </s:sequence>
///   </s:complexType>
///   <s:complexType name="POP">
///     <s:sequence>
///       <s:element minOccurs="0" maxOccurs="1" name="Nighttime" type="s:string" />
///       <s:element minOccurs="0" maxOccurs="1" name="Daytime" type="s:string" />
///     </s:sequence>
///   </s:complexType>
///   <s:element name="GetCityWeatherByZIP">
///     <s:complexType>
///       <s:sequence>
///         <s:element minOccurs="0" maxOccurs="1" name="ZIP" type="s:string" />
///       </s:sequence>
///     </s:complexType>
///   </s:element>
///   <s:element name="GetCityWeatherByZIPResponse">
///     <s:complexType>
///       <s:sequence>
///         <s:element minOccurs="1" maxOccurs="1" name="GetCityWeatherByZIPResult" type="tns:WeatherReturn" />
///       </s:sequence>
///     </s:complexType>
///   </s:element>
///   <s:complexType name="WeatherReturn">
///     <s:sequence>
///       <s:element minOccurs="1" maxOccurs="1" name="Success" type="s:boolean" />
///       <s:element minOccurs="0" maxOccurs="1" name="ResponseText" type="s:string" />
///       <s:element minOccurs="0" maxOccurs="1" name="State" type="s:string" />
///       <s:element minOccurs="0" maxOccurs="1" name="City" type="s:string" />
///       <s:element minOccurs="0" maxOccurs="1" name="WeatherStationCity" type="s:string" />
///       <s:element minOccurs="1" maxOccurs="1" name="WeatherID" type="s:short" />
///       <s:element minOccurs="0" maxOccurs="1" name="Description" type="s:string" />
///       <s:element minOccurs="0" maxOccurs="1" name="Temperature" type="s:string" />
///       <s:element minOccurs="0" maxOccurs="1" name="RelativeHumidity" type="s:string" />
///       <s:element minOccurs="0" maxOccurs="1" name="Wind" type="s:string" />
///       <s:element minOccurs="0" maxOccurs="1" name="Pressure" type="s:string" />
///       <s:element minOccurs="0" maxOccurs="1" name="Visibility" type="s:string" />
///       <s:element minOccurs="0" maxOccurs="1" name="WindChill" type="s:string" />
///       <s:element minOccurs="0" maxOccurs="1" name="Remarks" type="s:string" />
///     </s:sequence>
///   </s:complexType>
///   <s:element name="ArrayOfWeatherDescription" nillable="true" type="tns:ArrayOfWeatherDescription" />
///   <s:element name="ForecastReturn" nillable="true" type="tns:ForecastReturn" />
///   <s:element name="WeatherReturn" type="tns:WeatherReturn" />
/// </s:schema>            """)
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
/// const apiSchema = new azure_native.apimanagement.ApiSchema("apiSchema", {
///     apiId: "59d6bb8f1f7fab13dc67ec9b",
///     contentType: "application/vnd.ms-azure-apim.xsd+xml",
///     resourceGroupName: "rg1",
///     schemaId: "ec12520d-9d48-4e7b-8f39-698ca2ac63f1",
///     serviceName: "apimService1",
///     value: `<s:schema elementFormDefault="qualified" targetNamespace="http://ws.cdyne.com/WeatherWS/" xmlns:tns="http://ws.cdyne.com/WeatherWS/" xmlns:s="http://www.w3.org/2001/XMLSchema" xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:tm="http://microsoft.com/wsdl/mime/textMatching/" xmlns:http="http://schemas.xmlsoap.org/wsdl/http/" xmlns:soapenc="http://schemas.xmlsoap.org/soap/encoding/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:apim-wsdltns="http://ws.cdyne.com/WeatherWS/">\x0d
///   <s:element name="GetWeatherInformation">\x0d
///     <s:complexType />\x0d
///   </s:element>\x0d
///   <s:element name="GetWeatherInformationResponse">\x0d
///     <s:complexType>\x0d
///       <s:sequence>\x0d
///         <s:element minOccurs="0" maxOccurs="1" name="GetWeatherInformationResult" type="tns:ArrayOfWeatherDescription" />\x0d
///       </s:sequence>\x0d
///     </s:complexType>\x0d
///   </s:element>\x0d
///   <s:complexType name="ArrayOfWeatherDescription">\x0d
///     <s:sequence>\x0d
///       <s:element minOccurs="0" maxOccurs="unbounded" name="WeatherDescription" type="tns:WeatherDescription" />\x0d
///     </s:sequence>\x0d
///   </s:complexType>\x0d
///   <s:complexType name="WeatherDescription">\x0d
///     <s:sequence>\x0d
///       <s:element minOccurs="1" maxOccurs="1" name="WeatherID" type="s:short" />\x0d
///       <s:element minOccurs="0" maxOccurs="1" name="Description" type="s:string" />\x0d
///       <s:element minOccurs="0" maxOccurs="1" name="PictureURL" type="s:string" />\x0d
///     </s:sequence>\x0d
///   </s:complexType>\x0d
///   <s:element name="GetCityForecastByZIP">\x0d
///     <s:complexType>\x0d
///       <s:sequence>\x0d
///         <s:element minOccurs="0" maxOccurs="1" name="ZIP" type="s:string" />\x0d
///       </s:sequence>\x0d
///     </s:complexType>\x0d
///   </s:element>\x0d
///   <s:element name="GetCityForecastByZIPResponse">\x0d
///     <s:complexType>\x0d
///       <s:sequence>\x0d
///         <s:element minOccurs="0" maxOccurs="1" name="GetCityForecastByZIPResult" type="tns:ForecastReturn" />\x0d
///       </s:sequence>\x0d
///     </s:complexType>\x0d
///   </s:element>\x0d
///   <s:complexType name="ForecastReturn">\x0d
///     <s:sequence>\x0d
///       <s:element minOccurs="1" maxOccurs="1" name="Success" type="s:boolean" />\x0d
///       <s:element minOccurs="0" maxOccurs="1" name="ResponseText" type="s:string" />\x0d
///       <s:element minOccurs="0" maxOccurs="1" name="State" type="s:string" />\x0d
///       <s:element minOccurs="0" maxOccurs="1" name="City" type="s:string" />\x0d
///       <s:element minOccurs="0" maxOccurs="1" name="WeatherStationCity" type="s:string" />\x0d
///       <s:element minOccurs="0" maxOccurs="1" name="ForecastResult" type="tns:ArrayOfForecast" />\x0d
///     </s:sequence>\x0d
///   </s:complexType>\x0d
///   <s:complexType name="ArrayOfForecast">\x0d
///     <s:sequence>\x0d
///       <s:element minOccurs="0" maxOccurs="unbounded" name="Forecast" nillable="true" type="tns:Forecast" />\x0d
///     </s:sequence>\x0d
///   </s:complexType>\x0d
///   <s:complexType name="Forecast">\x0d
///     <s:sequence>\x0d
///       <s:element minOccurs="1" maxOccurs="1" name="Date" type="s:dateTime" />\x0d
///       <s:element minOccurs="1" maxOccurs="1" name="WeatherID" type="s:short" />\x0d
///       <s:element minOccurs="0" maxOccurs="1" name="Desciption" type="s:string" />\x0d
///       <s:element minOccurs="1" maxOccurs="1" name="Temperatures" type="tns:temp" />\x0d
///       <s:element minOccurs="1" maxOccurs="1" name="ProbabilityOfPrecipiation" type="tns:POP" />\x0d
///     </s:sequence>\x0d
///   </s:complexType>\x0d
///   <s:complexType name="temp">\x0d
///     <s:sequence>\x0d
///       <s:element minOccurs="0" maxOccurs="1" name="MorningLow" type="s:string" />\x0d
///       <s:element minOccurs="0" maxOccurs="1" name="DaytimeHigh" type="s:string" />\x0d
///     </s:sequence>\x0d
///   </s:complexType>\x0d
///   <s:complexType name="POP">\x0d
///     <s:sequence>\x0d
///       <s:element minOccurs="0" maxOccurs="1" name="Nighttime" type="s:string" />\x0d
///       <s:element minOccurs="0" maxOccurs="1" name="Daytime" type="s:string" />\x0d
///     </s:sequence>\x0d
///   </s:complexType>\x0d
///   <s:element name="GetCityWeatherByZIP">\x0d
///     <s:complexType>\x0d
///       <s:sequence>\x0d
///         <s:element minOccurs="0" maxOccurs="1" name="ZIP" type="s:string" />\x0d
///       </s:sequence>\x0d
///     </s:complexType>\x0d
///   </s:element>\x0d
///   <s:element name="GetCityWeatherByZIPResponse">\x0d
///     <s:complexType>\x0d
///       <s:sequence>\x0d
///         <s:element minOccurs="1" maxOccurs="1" name="GetCityWeatherByZIPResult" type="tns:WeatherReturn" />\x0d
///       </s:sequence>\x0d
///     </s:complexType>\x0d
///   </s:element>\x0d
///   <s:complexType name="WeatherReturn">\x0d
///     <s:sequence>\x0d
///       <s:element minOccurs="1" maxOccurs="1" name="Success" type="s:boolean" />\x0d
///       <s:element minOccurs="0" maxOccurs="1" name="ResponseText" type="s:string" />\x0d
///       <s:element minOccurs="0" maxOccurs="1" name="State" type="s:string" />\x0d
///       <s:element minOccurs="0" maxOccurs="1" name="City" type="s:string" />\x0d
///       <s:element minOccurs="0" maxOccurs="1" name="WeatherStationCity" type="s:string" />\x0d
///       <s:element minOccurs="1" maxOccurs="1" name="WeatherID" type="s:short" />\x0d
///       <s:element minOccurs="0" maxOccurs="1" name="Description" type="s:string" />\x0d
///       <s:element minOccurs="0" maxOccurs="1" name="Temperature" type="s:string" />\x0d
///       <s:element minOccurs="0" maxOccurs="1" name="RelativeHumidity" type="s:string" />\x0d
///       <s:element minOccurs="0" maxOccurs="1" name="Wind" type="s:string" />\x0d
///       <s:element minOccurs="0" maxOccurs="1" name="Pressure" type="s:string" />\x0d
///       <s:element minOccurs="0" maxOccurs="1" name="Visibility" type="s:string" />\x0d
///       <s:element minOccurs="0" maxOccurs="1" name="WindChill" type="s:string" />\x0d
///       <s:element minOccurs="0" maxOccurs="1" name="Remarks" type="s:string" />\x0d
///     </s:sequence>\x0d
///   </s:complexType>\x0d
///   <s:element name="ArrayOfWeatherDescription" nillable="true" type="tns:ArrayOfWeatherDescription" />\x0d
///   <s:element name="ForecastReturn" nillable="true" type="tns:ForecastReturn" />\x0d
///   <s:element name="WeatherReturn" type="tns:WeatherReturn" />\x0d
/// </s:schema>`,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// api_schema = azure_native.apimanagement.ApiSchema("apiSchema",
///     api_id="59d6bb8f1f7fab13dc67ec9b",
///     content_type="application/vnd.ms-azure-apim.xsd+xml",
///     resource_group_name="rg1",
///     schema_id="ec12520d-9d48-4e7b-8f39-698ca2ac63f1",
///     service_name="apimService1",
///     value="""<s:schema elementFormDefault="qualified" targetNamespace="http://ws.cdyne.com/WeatherWS/" xmlns:tns="http://ws.cdyne.com/WeatherWS/" xmlns:s="http://www.w3.org/2001/XMLSchema" xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:tm="http://microsoft.com/wsdl/mime/textMatching/" xmlns:http="http://schemas.xmlsoap.org/wsdl/http/" xmlns:soapenc="http://schemas.xmlsoap.org/soap/encoding/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:apim-wsdltns="http://ws.cdyne.com/WeatherWS/">\x0d
///   <s:element name="GetWeatherInformation">\x0d
///     <s:complexType />\x0d
///   </s:element>\x0d
///   <s:element name="GetWeatherInformationResponse">\x0d
///     <s:complexType>\x0d
///       <s:sequence>\x0d
///         <s:element minOccurs="0" maxOccurs="1" name="GetWeatherInformationResult" type="tns:ArrayOfWeatherDescription" />\x0d
///       </s:sequence>\x0d
///     </s:complexType>\x0d
///   </s:element>\x0d
///   <s:complexType name="ArrayOfWeatherDescription">\x0d
///     <s:sequence>\x0d
///       <s:element minOccurs="0" maxOccurs="unbounded" name="WeatherDescription" type="tns:WeatherDescription" />\x0d
///     </s:sequence>\x0d
///   </s:complexType>\x0d
///   <s:complexType name="WeatherDescription">\x0d
///     <s:sequence>\x0d
///       <s:element minOccurs="1" maxOccurs="1" name="WeatherID" type="s:short" />\x0d
///       <s:element minOccurs="0" maxOccurs="1" name="Description" type="s:string" />\x0d
///       <s:element minOccurs="0" maxOccurs="1" name="PictureURL" type="s:string" />\x0d
///     </s:sequence>\x0d
///   </s:complexType>\x0d
///   <s:element name="GetCityForecastByZIP">\x0d
///     <s:complexType>\x0d
///       <s:sequence>\x0d
///         <s:element minOccurs="0" maxOccurs="1" name="ZIP" type="s:string" />\x0d
///       </s:sequence>\x0d
///     </s:complexType>\x0d
///   </s:element>\x0d
///   <s:element name="GetCityForecastByZIPResponse">\x0d
///     <s:complexType>\x0d
///       <s:sequence>\x0d
///         <s:element minOccurs="0" maxOccurs="1" name="GetCityForecastByZIPResult" type="tns:ForecastReturn" />\x0d
///       </s:sequence>\x0d
///     </s:complexType>\x0d
///   </s:element>\x0d
///   <s:complexType name="ForecastReturn">\x0d
///     <s:sequence>\x0d
///       <s:element minOccurs="1" maxOccurs="1" name="Success" type="s:boolean" />\x0d
///       <s:element minOccurs="0" maxOccurs="1" name="ResponseText" type="s:string" />\x0d
///       <s:element minOccurs="0" maxOccurs="1" name="State" type="s:string" />\x0d
///       <s:element minOccurs="0" maxOccurs="1" name="City" type="s:string" />\x0d
///       <s:element minOccurs="0" maxOccurs="1" name="WeatherStationCity" type="s:string" />\x0d
///       <s:element minOccurs="0" maxOccurs="1" name="ForecastResult" type="tns:ArrayOfForecast" />\x0d
///     </s:sequence>\x0d
///   </s:complexType>\x0d
///   <s:complexType name="ArrayOfForecast">\x0d
///     <s:sequence>\x0d
///       <s:element minOccurs="0" maxOccurs="unbounded" name="Forecast" nillable="true" type="tns:Forecast" />\x0d
///     </s:sequence>\x0d
///   </s:complexType>\x0d
///   <s:complexType name="Forecast">\x0d
///     <s:sequence>\x0d
///       <s:element minOccurs="1" maxOccurs="1" name="Date" type="s:dateTime" />\x0d
///       <s:element minOccurs="1" maxOccurs="1" name="WeatherID" type="s:short" />\x0d
///       <s:element minOccurs="0" maxOccurs="1" name="Desciption" type="s:string" />\x0d
///       <s:element minOccurs="1" maxOccurs="1" name="Temperatures" type="tns:temp" />\x0d
///       <s:element minOccurs="1" maxOccurs="1" name="ProbabilityOfPrecipiation" type="tns:POP" />\x0d
///     </s:sequence>\x0d
///   </s:complexType>\x0d
///   <s:complexType name="temp">\x0d
///     <s:sequence>\x0d
///       <s:element minOccurs="0" maxOccurs="1" name="MorningLow" type="s:string" />\x0d
///       <s:element minOccurs="0" maxOccurs="1" name="DaytimeHigh" type="s:string" />\x0d
///     </s:sequence>\x0d
///   </s:complexType>\x0d
///   <s:complexType name="POP">\x0d
///     <s:sequence>\x0d
///       <s:element minOccurs="0" maxOccurs="1" name="Nighttime" type="s:string" />\x0d
///       <s:element minOccurs="0" maxOccurs="1" name="Daytime" type="s:string" />\x0d
///     </s:sequence>\x0d
///   </s:complexType>\x0d
///   <s:element name="GetCityWeatherByZIP">\x0d
///     <s:complexType>\x0d
///       <s:sequence>\x0d
///         <s:element minOccurs="0" maxOccurs="1" name="ZIP" type="s:string" />\x0d
///       </s:sequence>\x0d
///     </s:complexType>\x0d
///   </s:element>\x0d
///   <s:element name="GetCityWeatherByZIPResponse">\x0d
///     <s:complexType>\x0d
///       <s:sequence>\x0d
///         <s:element minOccurs="1" maxOccurs="1" name="GetCityWeatherByZIPResult" type="tns:WeatherReturn" />\x0d
///       </s:sequence>\x0d
///     </s:complexType>\x0d
///   </s:element>\x0d
///   <s:complexType name="WeatherReturn">\x0d
///     <s:sequence>\x0d
///       <s:element minOccurs="1" maxOccurs="1" name="Success" type="s:boolean" />\x0d
///       <s:element minOccurs="0" maxOccurs="1" name="ResponseText" type="s:string" />\x0d
///       <s:element minOccurs="0" maxOccurs="1" name="State" type="s:string" />\x0d
///       <s:element minOccurs="0" maxOccurs="1" name="City" type="s:string" />\x0d
///       <s:element minOccurs="0" maxOccurs="1" name="WeatherStationCity" type="s:string" />\x0d
///       <s:element minOccurs="1" maxOccurs="1" name="WeatherID" type="s:short" />\x0d
///       <s:element minOccurs="0" maxOccurs="1" name="Description" type="s:string" />\x0d
///       <s:element minOccurs="0" maxOccurs="1" name="Temperature" type="s:string" />\x0d
///       <s:element minOccurs="0" maxOccurs="1" name="RelativeHumidity" type="s:string" />\x0d
///       <s:element minOccurs="0" maxOccurs="1" name="Wind" type="s:string" />\x0d
///       <s:element minOccurs="0" maxOccurs="1" name="Pressure" type="s:string" />\x0d
///       <s:element minOccurs="0" maxOccurs="1" name="Visibility" type="s:string" />\x0d
///       <s:element minOccurs="0" maxOccurs="1" name="WindChill" type="s:string" />\x0d
///       <s:element minOccurs="0" maxOccurs="1" name="Remarks" type="s:string" />\x0d
///     </s:sequence>\x0d
///   </s:complexType>\x0d
///   <s:element name="ArrayOfWeatherDescription" nillable="true" type="tns:ArrayOfWeatherDescription" />\x0d
///   <s:element name="ForecastReturn" nillable="true" type="tns:ForecastReturn" />\x0d
///   <s:element name="WeatherReturn" type="tns:WeatherReturn" />\x0d
/// </s:schema>""")
///
/// ```
///
/// ```yaml
/// resources:
///   apiSchema:
///     type: azure-native:apimanagement:ApiSchema
///     properties:
///       apiId: 59d6bb8f1f7fab13dc67ec9b
///       contentType: application/vnd.ms-azure-apim.xsd+xml
///       resourceGroupName: rg1
///       schemaId: ec12520d-9d48-4e7b-8f39-698ca2ac63f1
///       serviceName: apimService1
///       value: "<s:schema elementFormDefault=\"qualified\" targetNamespace=\"http://ws.cdyne.com/WeatherWS/\" xmlns:tns=\"http://ws.cdyne.com/WeatherWS/\" xmlns:s=\"http://www.w3.org/2001/XMLSchema\" xmlns:soap12=\"http://schemas.xmlsoap.org/wsdl/soap12/\" xmlns:mime=\"http://schemas.xmlsoap.org/wsdl/mime/\" xmlns:soap=\"http://schemas.xmlsoap.org/wsdl/soap/\" xmlns:tm=\"http://microsoft.com/wsdl/mime/textMatching/\" xmlns:http=\"http://schemas.xmlsoap.org/wsdl/http/\" xmlns:soapenc=\"http://schemas.xmlsoap.org/soap/encoding/\" xmlns:wsdl=\"http://schemas.xmlsoap.org/wsdl/\" xmlns:apim-wsdltns=\"http://ws.cdyne.com/WeatherWS/\">\r\n  <s:element name=\"GetWeatherInformation\">\r\n    <s:complexType />\r\n  </s:element>\r\n  <s:element name=\"GetWeatherInformationResponse\">\r\n    <s:complexType>\r\n      <s:sequence>\r\n        <s:element minOccurs=\"0\" maxOccurs=\"1\" name=\"GetWeatherInformationResult\" type=\"tns:ArrayOfWeatherDescription\" />\r\n      </s:sequence>\r\n    </s:complexType>\r\n  </s:element>\r\n  <s:complexType name=\"ArrayOfWeatherDescription\">\r\n    <s:sequence>\r\n      <s:element minOccurs=\"0\" maxOccurs=\"unbounded\" name=\"WeatherDescription\" type=\"tns:WeatherDescription\" />\r\n    </s:sequence>\r\n  </s:complexType>\r\n  <s:complexType name=\"WeatherDescription\">\r\n    <s:sequence>\r\n      <s:element minOccurs=\"1\" maxOccurs=\"1\" name=\"WeatherID\" type=\"s:short\" />\r\n      <s:element minOccurs=\"0\" maxOccurs=\"1\" name=\"Description\" type=\"s:string\" />\r\n      <s:element minOccurs=\"0\" maxOccurs=\"1\" name=\"PictureURL\" type=\"s:string\" />\r\n    </s:sequence>\r\n  </s:complexType>\r\n  <s:element name=\"GetCityForecastByZIP\">\r\n    <s:complexType>\r\n      <s:sequence>\r\n        <s:element minOccurs=\"0\" maxOccurs=\"1\" name=\"ZIP\" type=\"s:string\" />\r\n      </s:sequence>\r\n    </s:complexType>\r\n  </s:element>\r\n  <s:element name=\"GetCityForecastByZIPResponse\">\r\n    <s:complexType>\r\n      <s:sequence>\r\n        <s:element minOccurs=\"0\" maxOccurs=\"1\" name=\"GetCityForecastByZIPResult\" type=\"tns:ForecastReturn\" />\r\n      </s:sequence>\r\n    </s:complexType>\r\n  </s:element>\r\n  <s:complexType name=\"ForecastReturn\">\r\n    <s:sequence>\r\n      <s:element minOccurs=\"1\" maxOccurs=\"1\" name=\"Success\" type=\"s:boolean\" />\r\n      <s:element minOccurs=\"0\" maxOccurs=\"1\" name=\"ResponseText\" type=\"s:string\" />\r\n      <s:element minOccurs=\"0\" maxOccurs=\"1\" name=\"State\" type=\"s:string\" />\r\n      <s:element minOccurs=\"0\" maxOccurs=\"1\" name=\"City\" type=\"s:string\" />\r\n      <s:element minOccurs=\"0\" maxOccurs=\"1\" name=\"WeatherStationCity\" type=\"s:string\" />\r\n      <s:element minOccurs=\"0\" maxOccurs=\"1\" name=\"ForecastResult\" type=\"tns:ArrayOfForecast\" />\r\n    </s:sequence>\r\n  </s:complexType>\r\n  <s:complexType name=\"ArrayOfForecast\">\r\n    <s:sequence>\r\n      <s:element minOccurs=\"0\" maxOccurs=\"unbounded\" name=\"Forecast\" nillable=\"true\" type=\"tns:Forecast\" />\r\n    </s:sequence>\r\n  </s:complexType>\r\n  <s:complexType name=\"Forecast\">\r\n    <s:sequence>\r\n      <s:element minOccurs=\"1\" maxOccurs=\"1\" name=\"Date\" type=\"s:dateTime\" />\r\n      <s:element minOccurs=\"1\" maxOccurs=\"1\" name=\"WeatherID\" type=\"s:short\" />\r\n      <s:element minOccurs=\"0\" maxOccurs=\"1\" name=\"Desciption\" type=\"s:string\" />\r\n      <s:element minOccurs=\"1\" maxOccurs=\"1\" name=\"Temperatures\" type=\"tns:temp\" />\r\n      <s:element minOccurs=\"1\" maxOccurs=\"1\" name=\"ProbabilityOfPrecipiation\" type=\"tns:POP\" />\r\n    </s:sequence>\r\n  </s:complexType>\r\n  <s:complexType name=\"temp\">\r\n    <s:sequence>\r\n      <s:element minOccurs=\"0\" maxOccurs=\"1\" name=\"MorningLow\" type=\"s:string\" />\r\n      <s:element minOccurs=\"0\" maxOccurs=\"1\" name=\"DaytimeHigh\" type=\"s:string\" />\r\n    </s:sequence>\r\n  </s:complexType>\r\n  <s:complexType name=\"POP\">\r\n    <s:sequence>\r\n      <s:element minOccurs=\"0\" maxOccurs=\"1\" name=\"Nighttime\" type=\"s:string\" />\r\n      <s:element minOccurs=\"0\" maxOccurs=\"1\" name=\"Daytime\" type=\"s:string\" />\r\n    </s:sequence>\r\n  </s:complexType>\r\n  <s:element name=\"GetCityWeatherByZIP\">\r\n    <s:complexType>\r\n      <s:sequence>\r\n        <s:element minOccurs=\"0\" maxOccurs=\"1\" name=\"ZIP\" type=\"s:string\" />\r\n      </s:sequence>\r\n    </s:complexType>\r\n  </s:element>\r\n  <s:element name=\"GetCityWeatherByZIPResponse\">\r\n    <s:complexType>\r\n      <s:sequence>\r\n        <s:element minOccurs=\"1\" maxOccurs=\"1\" name=\"GetCityWeatherByZIPResult\" type=\"tns:WeatherReturn\" />\r\n      </s:sequence>\r\n    </s:complexType>\r\n  </s:element>\r\n  <s:complexType name=\"WeatherReturn\">\r\n    <s:sequence>\r\n      <s:element minOccurs=\"1\" maxOccurs=\"1\" name=\"Success\" type=\"s:boolean\" />\r\n      <s:element minOccurs=\"0\" maxOccurs=\"1\" name=\"ResponseText\" type=\"s:string\" />\r\n      <s:element minOccurs=\"0\" maxOccurs=\"1\" name=\"State\" type=\"s:string\" />\r\n      <s:element minOccurs=\"0\" maxOccurs=\"1\" name=\"City\" type=\"s:string\" />\r\n      <s:element minOccurs=\"0\" maxOccurs=\"1\" name=\"WeatherStationCity\" type=\"s:string\" />\r\n      <s:element minOccurs=\"1\" maxOccurs=\"1\" name=\"WeatherID\" type=\"s:short\" />\r\n      <s:element minOccurs=\"0\" maxOccurs=\"1\" name=\"Description\" type=\"s:string\" />\r\n      <s:element minOccurs=\"0\" maxOccurs=\"1\" name=\"Temperature\" type=\"s:string\" />\r\n      <s:element minOccurs=\"0\" maxOccurs=\"1\" name=\"RelativeHumidity\" type=\"s:string\" />\r\n      <s:element minOccurs=\"0\" maxOccurs=\"1\" name=\"Wind\" type=\"s:string\" />\r\n      <s:element minOccurs=\"0\" maxOccurs=\"1\" name=\"Pressure\" type=\"s:string\" />\r\n      <s:element minOccurs=\"0\" maxOccurs=\"1\" name=\"Visibility\" type=\"s:string\" />\r\n      <s:element minOccurs=\"0\" maxOccurs=\"1\" name=\"WindChill\" type=\"s:string\" />\r\n      <s:element minOccurs=\"0\" maxOccurs=\"1\" name=\"Remarks\" type=\"s:string\" />\r\n    </s:sequence>\r\n  </s:complexType>\r\n  <s:element name=\"ArrayOfWeatherDescription\" nillable=\"true\" type=\"tns:ArrayOfWeatherDescription\" />\r\n  <s:element name=\"ForecastReturn\" nillable=\"true\" type=\"tns:ForecastReturn\" />\r\n  <s:element name=\"WeatherReturn\" type=\"tns:WeatherReturn\" />\r\n</s:schema>"
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
/// $ pulumi import azure-native:apimanagement:ApiSchema ec12520d-9d48-4e7b-8f39-698ca2ac63f1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ApiManagement/service/{serviceName}/apis/{apiId}/schemas/{schemaId}
/// ```
class ApiSchema extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Types definitions. Used for Swagger/OpenAPI v2/v3 schemas only, null otherwise.
  late final pulumi.Output<dynamic> components;
  /// Must be a valid a media type used in a Content-Type header as defined in the RFC 2616. Media type of the schema document (e.g. application/json, application/xml). &lt;/br&gt; - `Swagger` Schema use `application/vnd.ms-azure-apim.swagger.definitions+json` &lt;/br&gt; - `WSDL` Schema use `application/vnd.ms-azure-apim.xsd+xml` &lt;/br&gt; - `OpenApi` Schema use `application/vnd.oai.openapi.components+json` &lt;/br&gt; - `WADL Schema` use `application/vnd.ms-azure-apim.wadl.grammars+xml`.
  late final pulumi.Output<String> contentType;
  /// Types definitions. Used for Swagger/OpenAPI v1 schemas only, null otherwise.
  late final pulumi.Output<dynamic> definitions;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// Json escaped string defining the document representing the Schema. Used for schemas other than Swagger/OpenAPI.
  late final pulumi.Output<String?> value;

  /// Creates a new [ApiSchema].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ApiSchema]. {@macro pulumi_apimanagement_api_schema_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ApiSchema(
    String name, {
    ApiSchemaArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:apimanagement:ApiSchema',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    components = registerOutput<dynamic>('components');
    contentType = registerOutput<String>('contentType');
    definitions = registerOutput<dynamic>('definitions');
    this.name = registerOutput<String>('name');
    type = registerOutput<String>('type');
    value = registerOutput<String?>('value');
  }
}
