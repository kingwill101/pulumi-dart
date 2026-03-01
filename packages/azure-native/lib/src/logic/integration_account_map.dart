import 'package:pulumi/pulumi.dart' as pulumi;
import 'content_link_response.dart';
import 'integration_account_map_args.dart';
import 'integration_account_map_properties_response_parameters_schema.dart';

/// The integration account map.
///
/// Uses Azure REST API version 2019-05-01. In version 2.x of the Azure Native provider, it used API version 2019-05-01.
///
/// Other available API versions: 2015-08-01-preview, 2018-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native logic [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update a map
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var integrationAccountMap = new AzureNative.Logic.IntegrationAccountMap("integrationAccountMap", new()
///     {
///         Content = @"<?xml version=""1.0"" encoding=""UTF-16""?>
/// <xsl:stylesheet xmlns:xsl=""http://www.w3.org/1999/XSL/Transform"" xmlns:msxsl=""urn:schemas-microsoft-com:xslt"" xmlns:var=""http://schemas.microsoft.com/BizTalk/2003/var"" exclude-result-prefixes=""msxsl var s0 userCSharp"" version=""1.0"" xmlns:ns0=""http://BizTalk_Server_Project4.StringFunctoidsDestinationSchema"" xmlns:s0=""http://BizTalk_Server_Project4.StringFunctoidsSourceSchema"" xmlns:userCSharp=""http://schemas.microsoft.com/BizTalk/2003/userCSharp"">
///   <xsl:import href=""http://btsfunctoids.blob.core.windows.net/functoids/functoids.xslt"" />
///   <xsl:output omit-xml-declaration=""yes"" method=""xml"" version=""1.0"" />
///   <xsl:template match=""/"">
///     <xsl:apply-templates select=""/s0:Root"" />
///   </xsl:template>
///   <xsl:template match=""/s0:Root"">
///     <xsl:variable name=""var:v1"" select=""userCSharp:StringFind(string(StringFindSource/text()) , &quot;SearchString&quot;)"" />
///     <xsl:variable name=""var:v2"" select=""userCSharp:StringLeft(string(StringLeftSource/text()) , &quot;2&quot;)"" />
///     <xsl:variable name=""var:v3"" select=""userCSharp:StringRight(string(StringRightSource/text()) , &quot;2&quot;)"" />
///     <xsl:variable name=""var:v4"" select=""userCSharp:StringUpperCase(string(UppercaseSource/text()))"" />
///     <xsl:variable name=""var:v5"" select=""userCSharp:StringLowerCase(string(LowercaseSource/text()))"" />
///     <xsl:variable name=""var:v6"" select=""userCSharp:StringSize(string(SizeSource/text()))"" />
///     <xsl:variable name=""var:v7"" select=""userCSharp:StringSubstring(string(StringExtractSource/text()) , &quot;0&quot; , &quot;2&quot;)"" />
///     <xsl:variable name=""var:v8"" select=""userCSharp:StringConcat(string(StringConcatSource/text()))"" />
///     <xsl:variable name=""var:v9"" select=""userCSharp:StringTrimLeft(string(StringLeftTrimSource/text()))"" />
///     <xsl:variable name=""var:v10"" select=""userCSharp:StringTrimRight(string(StringRightTrimSource/text()))"" />
///     <ns0:Root>
///       <StringFindDestination>
///         <xsl:value-of select=""$var:v1"" />
///       </StringFindDestination>
///       <StringLeftDestination>
///         <xsl:value-of select=""$var:v2"" />
///       </StringLeftDestination>
///       <StringRightDestination>
///         <xsl:value-of select=""$var:v3"" />
///       </StringRightDestination>
///       <UppercaseDestination>
///         <xsl:value-of select=""$var:v4"" />
///       </UppercaseDestination>
///       <LowercaseDestination>
///         <xsl:value-of select=""$var:v5"" />
///       </LowercaseDestination>
///       <SizeDestination>
///         <xsl:value-of select=""$var:v6"" />
///       </SizeDestination>
///       <StringExtractDestination>
///         <xsl:value-of select=""$var:v7"" />
///       </StringExtractDestination>
///       <StringConcatDestination>
///         <xsl:value-of select=""$var:v8"" />
///       </StringConcatDestination>
///       <StringLeftTrimDestination>
///         <xsl:value-of select=""$var:v9"" />
///       </StringLeftTrimDestination>
///       <StringRightTrimDestination>
///         <xsl:value-of select=""$var:v10"" />
///       </StringRightTrimDestination>
///     </ns0:Root>
///   </xsl:template>
/// </xsl:stylesheet>",
///         ContentType = "application/xml",
///         IntegrationAccountName = "testIntegrationAccount",
///         Location = "westus",
///         MapName = "testMap",
///         MapType = AzureNative.Logic.MapType.Xslt,
///         Metadata = null,
///         ResourceGroupName = "testResourceGroup",
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
/// 		_, err := logic.NewIntegrationAccountMap(ctx, "integrationAccountMap", &logic.IntegrationAccountMapArgs{
/// 			Content: pulumi.String(`<?xml version="1.0" encoding="UTF-16"?>
/// <xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" xmlns:var="http://schemas.microsoft.com/BizTalk/2003/var" exclude-result-prefixes="msxsl var s0 userCSharp" version="1.0" xmlns:ns0="http://BizTalk_Server_Project4.StringFunctoidsDestinationSchema" xmlns:s0="http://BizTalk_Server_Project4.StringFunctoidsSourceSchema" xmlns:userCSharp="http://schemas.microsoft.com/BizTalk/2003/userCSharp">
///   <xsl:import href="http://btsfunctoids.blob.core.windows.net/functoids/functoids.xslt" />
///   <xsl:output omit-xml-declaration="yes" method="xml" version="1.0" />
///   <xsl:template match="/">
///     <xsl:apply-templates select="/s0:Root" />
///   </xsl:template>
///   <xsl:template match="/s0:Root">
///     <xsl:variable name="var:v1" select="userCSharp:StringFind(string(StringFindSource/text()) , &quot;SearchString&quot;)" />
///     <xsl:variable name="var:v2" select="userCSharp:StringLeft(string(StringLeftSource/text()) , &quot;2&quot;)" />
///     <xsl:variable name="var:v3" select="userCSharp:StringRight(string(StringRightSource/text()) , &quot;2&quot;)" />
///     <xsl:variable name="var:v4" select="userCSharp:StringUpperCase(string(UppercaseSource/text()))" />
///     <xsl:variable name="var:v5" select="userCSharp:StringLowerCase(string(LowercaseSource/text()))" />
///     <xsl:variable name="var:v6" select="userCSharp:StringSize(string(SizeSource/text()))" />
///     <xsl:variable name="var:v7" select="userCSharp:StringSubstring(string(StringExtractSource/text()) , &quot;0&quot; , &quot;2&quot;)" />
///     <xsl:variable name="var:v8" select="userCSharp:StringConcat(string(StringConcatSource/text()))" />
///     <xsl:variable name="var:v9" select="userCSharp:StringTrimLeft(string(StringLeftTrimSource/text()))" />
///     <xsl:variable name="var:v10" select="userCSharp:StringTrimRight(string(StringRightTrimSource/text()))" />
///     <ns0:Root>
///       <StringFindDestination>
///         <xsl:value-of select="$var:v1" />
///       </StringFindDestination>
///       <StringLeftDestination>
///         <xsl:value-of select="$var:v2" />
///       </StringLeftDestination>
///       <StringRightDestination>
///         <xsl:value-of select="$var:v3" />
///       </StringRightDestination>
///       <UppercaseDestination>
///         <xsl:value-of select="$var:v4" />
///       </UppercaseDestination>
///       <LowercaseDestination>
///         <xsl:value-of select="$var:v5" />
///       </LowercaseDestination>
///       <SizeDestination>
///         <xsl:value-of select="$var:v6" />
///       </SizeDestination>
///       <StringExtractDestination>
///         <xsl:value-of select="$var:v7" />
///       </StringExtractDestination>
///       <StringConcatDestination>
///         <xsl:value-of select="$var:v8" />
///       </StringConcatDestination>
///       <StringLeftTrimDestination>
///         <xsl:value-of select="$var:v9" />
///       </StringLeftTrimDestination>
///       <StringRightTrimDestination>
///         <xsl:value-of select="$var:v10" />
///       </StringRightTrimDestination>
///     </ns0:Root>
///   </xsl:template>
/// </xsl:stylesheet>`),
/// 			ContentType:            pulumi.String("application/xml"),
/// 			IntegrationAccountName: pulumi.String("testIntegrationAccount"),
/// 			Location:               pulumi.String("westus"),
/// 			MapName:                pulumi.String("testMap"),
/// 			MapType:                pulumi.String(logic.MapTypeXslt),
/// 			Metadata:               pulumi.Any(map[string]interface{}{}),
/// 			ResourceGroupName:      pulumi.String("testResourceGroup"),
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
/// import com.pulumi.azurenative.logic.IntegrationAccountMap;
/// import com.pulumi.azurenative.logic.IntegrationAccountMapArgs;
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
///         var integrationAccountMap = new IntegrationAccountMap("integrationAccountMap", IntegrationAccountMapArgs.builder()
///             .content("""
/// <?xml version="1.0" encoding="UTF-16"?>
/// <xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" xmlns:var="http://schemas.microsoft.com/BizTalk/2003/var" exclude-result-prefixes="msxsl var s0 userCSharp" version="1.0" xmlns:ns0="http://BizTalk_Server_Project4.StringFunctoidsDestinationSchema" xmlns:s0="http://BizTalk_Server_Project4.StringFunctoidsSourceSchema" xmlns:userCSharp="http://schemas.microsoft.com/BizTalk/2003/userCSharp">
///   <xsl:import href="http://btsfunctoids.blob.core.windows.net/functoids/functoids.xslt" />
///   <xsl:output omit-xml-declaration="yes" method="xml" version="1.0" />
///   <xsl:template match="/">
///     <xsl:apply-templates select="/s0:Root" />
///   </xsl:template>
///   <xsl:template match="/s0:Root">
///     <xsl:variable name="var:v1" select="userCSharp:StringFind(string(StringFindSource/text()) , &quot;SearchString&quot;)" />
///     <xsl:variable name="var:v2" select="userCSharp:StringLeft(string(StringLeftSource/text()) , &quot;2&quot;)" />
///     <xsl:variable name="var:v3" select="userCSharp:StringRight(string(StringRightSource/text()) , &quot;2&quot;)" />
///     <xsl:variable name="var:v4" select="userCSharp:StringUpperCase(string(UppercaseSource/text()))" />
///     <xsl:variable name="var:v5" select="userCSharp:StringLowerCase(string(LowercaseSource/text()))" />
///     <xsl:variable name="var:v6" select="userCSharp:StringSize(string(SizeSource/text()))" />
///     <xsl:variable name="var:v7" select="userCSharp:StringSubstring(string(StringExtractSource/text()) , &quot;0&quot; , &quot;2&quot;)" />
///     <xsl:variable name="var:v8" select="userCSharp:StringConcat(string(StringConcatSource/text()))" />
///     <xsl:variable name="var:v9" select="userCSharp:StringTrimLeft(string(StringLeftTrimSource/text()))" />
///     <xsl:variable name="var:v10" select="userCSharp:StringTrimRight(string(StringRightTrimSource/text()))" />
///     <ns0:Root>
///       <StringFindDestination>
///         <xsl:value-of select="$var:v1" />
///       </StringFindDestination>
///       <StringLeftDestination>
///         <xsl:value-of select="$var:v2" />
///       </StringLeftDestination>
///       <StringRightDestination>
///         <xsl:value-of select="$var:v3" />
///       </StringRightDestination>
///       <UppercaseDestination>
///         <xsl:value-of select="$var:v4" />
///       </UppercaseDestination>
///       <LowercaseDestination>
///         <xsl:value-of select="$var:v5" />
///       </LowercaseDestination>
///       <SizeDestination>
///         <xsl:value-of select="$var:v6" />
///       </SizeDestination>
///       <StringExtractDestination>
///         <xsl:value-of select="$var:v7" />
///       </StringExtractDestination>
///       <StringConcatDestination>
///         <xsl:value-of select="$var:v8" />
///       </StringConcatDestination>
///       <StringLeftTrimDestination>
///         <xsl:value-of select="$var:v9" />
///       </StringLeftTrimDestination>
///       <StringRightTrimDestination>
///         <xsl:value-of select="$var:v10" />
///       </StringRightTrimDestination>
///     </ns0:Root>
///   </xsl:template>
/// </xsl:stylesheet>            """)
///             .contentType("application/xml")
///             .integrationAccountName("testIntegrationAccount")
///             .location("westus")
///             .mapName("testMap")
///             .mapType("Xslt")
///             .metadata(Map.ofEntries(
///             ))
///             .resourceGroupName("testResourceGroup")
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
/// const integrationAccountMap = new azure_native.logic.IntegrationAccountMap("integrationAccountMap", {
///     content: `<?xml version="1.0" encoding="UTF-16"?>\x0d
/// <xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" xmlns:var="http://schemas.microsoft.com/BizTalk/2003/var" exclude-result-prefixes="msxsl var s0 userCSharp" version="1.0" xmlns:ns0="http://BizTalk_Server_Project4.StringFunctoidsDestinationSchema" xmlns:s0="http://BizTalk_Server_Project4.StringFunctoidsSourceSchema" xmlns:userCSharp="http://schemas.microsoft.com/BizTalk/2003/userCSharp">\x0d
///   <xsl:import href="http://btsfunctoids.blob.core.windows.net/functoids/functoids.xslt" />\x0d
///   <xsl:output omit-xml-declaration="yes" method="xml" version="1.0" />\x0d
///   <xsl:template match="/">\x0d
///     <xsl:apply-templates select="/s0:Root" />\x0d
///   </xsl:template>\x0d
///   <xsl:template match="/s0:Root">\x0d
///     <xsl:variable name="var:v1" select="userCSharp:StringFind(string(StringFindSource/text()) , &quot;SearchString&quot;)" />\x0d
///     <xsl:variable name="var:v2" select="userCSharp:StringLeft(string(StringLeftSource/text()) , &quot;2&quot;)" />\x0d
///     <xsl:variable name="var:v3" select="userCSharp:StringRight(string(StringRightSource/text()) , &quot;2&quot;)" />\x0d
///     <xsl:variable name="var:v4" select="userCSharp:StringUpperCase(string(UppercaseSource/text()))" />\x0d
///     <xsl:variable name="var:v5" select="userCSharp:StringLowerCase(string(LowercaseSource/text()))" />\x0d
///     <xsl:variable name="var:v6" select="userCSharp:StringSize(string(SizeSource/text()))" />\x0d
///     <xsl:variable name="var:v7" select="userCSharp:StringSubstring(string(StringExtractSource/text()) , &quot;0&quot; , &quot;2&quot;)" />\x0d
///     <xsl:variable name="var:v8" select="userCSharp:StringConcat(string(StringConcatSource/text()))" />\x0d
///     <xsl:variable name="var:v9" select="userCSharp:StringTrimLeft(string(StringLeftTrimSource/text()))" />\x0d
///     <xsl:variable name="var:v10" select="userCSharp:StringTrimRight(string(StringRightTrimSource/text()))" />\x0d
///     <ns0:Root>\x0d
///       <StringFindDestination>\x0d
///         <xsl:value-of select="var:v1" />\x0d
///       </StringFindDestination>\x0d
///       <StringLeftDestination>\x0d
///         <xsl:value-of select="var:v2" />\x0d
///       </StringLeftDestination>\x0d
///       <StringRightDestination>\x0d
///         <xsl:value-of select="var:v3" />\x0d
///       </StringRightDestination>\x0d
///       <UppercaseDestination>\x0d
///         <xsl:value-of select="var:v4" />\x0d
///       </UppercaseDestination>\x0d
///       <LowercaseDestination>\x0d
///         <xsl:value-of select="var:v5" />\x0d
///       </LowercaseDestination>\x0d
///       <SizeDestination>\x0d
///         <xsl:value-of select="var:v6" />\x0d
///       </SizeDestination>\x0d
///       <StringExtractDestination>\x0d
///         <xsl:value-of select="var:v7" />\x0d
///       </StringExtractDestination>\x0d
///       <StringConcatDestination>\x0d
///         <xsl:value-of select="var:v8" />\x0d
///       </StringConcatDestination>\x0d
///       <StringLeftTrimDestination>\x0d
///         <xsl:value-of select="var:v9" />\x0d
///       </StringLeftTrimDestination>\x0d
///       <StringRightTrimDestination>\x0d
///         <xsl:value-of select="var:v10" />\x0d
///       </StringRightTrimDestination>\x0d
///     </ns0:Root>\x0d
///   </xsl:template>\x0d
/// </xsl:stylesheet>`,
///     contentType: "application/xml",
///     integrationAccountName: "testIntegrationAccount",
///     location: "westus",
///     mapName: "testMap",
///     mapType: azure_native.logic.MapType.Xslt,
///     metadata: {},
///     resourceGroupName: "testResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// integration_account_map = azure_native.logic.IntegrationAccountMap("integrationAccountMap",
///     content="""<?xml version="1.0" encoding="UTF-16"?>\x0d
/// <xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" xmlns:var="http://schemas.microsoft.com/BizTalk/2003/var" exclude-result-prefixes="msxsl var s0 userCSharp" version="1.0" xmlns:ns0="http://BizTalk_Server_Project4.StringFunctoidsDestinationSchema" xmlns:s0="http://BizTalk_Server_Project4.StringFunctoidsSourceSchema" xmlns:userCSharp="http://schemas.microsoft.com/BizTalk/2003/userCSharp">\x0d
///   <xsl:import href="http://btsfunctoids.blob.core.windows.net/functoids/functoids.xslt" />\x0d
///   <xsl:output omit-xml-declaration="yes" method="xml" version="1.0" />\x0d
///   <xsl:template match="/">\x0d
///     <xsl:apply-templates select="/s0:Root" />\x0d
///   </xsl:template>\x0d
///   <xsl:template match="/s0:Root">\x0d
///     <xsl:variable name="var:v1" select="userCSharp:StringFind(string(StringFindSource/text()) , &quot;SearchString&quot;)" />\x0d
///     <xsl:variable name="var:v2" select="userCSharp:StringLeft(string(StringLeftSource/text()) , &quot;2&quot;)" />\x0d
///     <xsl:variable name="var:v3" select="userCSharp:StringRight(string(StringRightSource/text()) , &quot;2&quot;)" />\x0d
///     <xsl:variable name="var:v4" select="userCSharp:StringUpperCase(string(UppercaseSource/text()))" />\x0d
///     <xsl:variable name="var:v5" select="userCSharp:StringLowerCase(string(LowercaseSource/text()))" />\x0d
///     <xsl:variable name="var:v6" select="userCSharp:StringSize(string(SizeSource/text()))" />\x0d
///     <xsl:variable name="var:v7" select="userCSharp:StringSubstring(string(StringExtractSource/text()) , &quot;0&quot; , &quot;2&quot;)" />\x0d
///     <xsl:variable name="var:v8" select="userCSharp:StringConcat(string(StringConcatSource/text()))" />\x0d
///     <xsl:variable name="var:v9" select="userCSharp:StringTrimLeft(string(StringLeftTrimSource/text()))" />\x0d
///     <xsl:variable name="var:v10" select="userCSharp:StringTrimRight(string(StringRightTrimSource/text()))" />\x0d
///     <ns0:Root>\x0d
///       <StringFindDestination>\x0d
///         <xsl:value-of select="$var:v1" />\x0d
///       </StringFindDestination>\x0d
///       <StringLeftDestination>\x0d
///         <xsl:value-of select="$var:v2" />\x0d
///       </StringLeftDestination>\x0d
///       <StringRightDestination>\x0d
///         <xsl:value-of select="$var:v3" />\x0d
///       </StringRightDestination>\x0d
///       <UppercaseDestination>\x0d
///         <xsl:value-of select="$var:v4" />\x0d
///       </UppercaseDestination>\x0d
///       <LowercaseDestination>\x0d
///         <xsl:value-of select="$var:v5" />\x0d
///       </LowercaseDestination>\x0d
///       <SizeDestination>\x0d
///         <xsl:value-of select="$var:v6" />\x0d
///       </SizeDestination>\x0d
///       <StringExtractDestination>\x0d
///         <xsl:value-of select="$var:v7" />\x0d
///       </StringExtractDestination>\x0d
///       <StringConcatDestination>\x0d
///         <xsl:value-of select="$var:v8" />\x0d
///       </StringConcatDestination>\x0d
///       <StringLeftTrimDestination>\x0d
///         <xsl:value-of select="$var:v9" />\x0d
///       </StringLeftTrimDestination>\x0d
///       <StringRightTrimDestination>\x0d
///         <xsl:value-of select="$var:v10" />\x0d
///       </StringRightTrimDestination>\x0d
///     </ns0:Root>\x0d
///   </xsl:template>\x0d
/// </xsl:stylesheet>""",
///     content_type="application/xml",
///     integration_account_name="testIntegrationAccount",
///     location="westus",
///     map_name="testMap",
///     map_type=azure_native.logic.MapType.XSLT,
///     metadata={},
///     resource_group_name="testResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   integrationAccountMap:
///     type: azure-native:logic:IntegrationAccountMap
///     properties:
///       content: "<?xml version=\"1.0\" encoding=\"UTF-16\"?>\r\n<xsl:stylesheet xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\" xmlns:msxsl=\"urn:schemas-microsoft-com:xslt\" xmlns:var=\"http://schemas.microsoft.com/BizTalk/2003/var\" exclude-result-prefixes=\"msxsl var s0 userCSharp\" version=\"1.0\" xmlns:ns0=\"http://BizTalk_Server_Project4.StringFunctoidsDestinationSchema\" xmlns:s0=\"http://BizTalk_Server_Project4.StringFunctoidsSourceSchema\" xmlns:userCSharp=\"http://schemas.microsoft.com/BizTalk/2003/userCSharp\">\r\n  <xsl:import href=\"http://btsfunctoids.blob.core.windows.net/functoids/functoids.xslt\" />\r\n  <xsl:output omit-xml-declaration=\"yes\" method=\"xml\" version=\"1.0\" />\r\n  <xsl:template match=\"/\">\r\n    <xsl:apply-templates select=\"/s0:Root\" />\r\n  </xsl:template>\r\n  <xsl:template match=\"/s0:Root\">\r\n    <xsl:variable name=\"var:v1\" select=\"userCSharp:StringFind(string(StringFindSource/text()) , &quot;SearchString&quot;)\" />\r\n    <xsl:variable name=\"var:v2\" select=\"userCSharp:StringLeft(string(StringLeftSource/text()) , &quot;2&quot;)\" />\r\n    <xsl:variable name=\"var:v3\" select=\"userCSharp:StringRight(string(StringRightSource/text()) , &quot;2&quot;)\" />\r\n    <xsl:variable name=\"var:v4\" select=\"userCSharp:StringUpperCase(string(UppercaseSource/text()))\" />\r\n    <xsl:variable name=\"var:v5\" select=\"userCSharp:StringLowerCase(string(LowercaseSource/text()))\" />\r\n    <xsl:variable name=\"var:v6\" select=\"userCSharp:StringSize(string(SizeSource/text()))\" />\r\n    <xsl:variable name=\"var:v7\" select=\"userCSharp:StringSubstring(string(StringExtractSource/text()) , &quot;0&quot; , &quot;2&quot;)\" />\r\n    <xsl:variable name=\"var:v8\" select=\"userCSharp:StringConcat(string(StringConcatSource/text()))\" />\r\n    <xsl:variable name=\"var:v9\" select=\"userCSharp:StringTrimLeft(string(StringLeftTrimSource/text()))\" />\r\n    <xsl:variable name=\"var:v10\" select=\"userCSharp:StringTrimRight(string(StringRightTrimSource/text()))\" />\r\n    <ns0:Root>\r\n      <StringFindDestination>\r\n        <xsl:value-of select=\"$var:v1\" />\r\n      </StringFindDestination>\r\n      <StringLeftDestination>\r\n        <xsl:value-of select=\"$var:v2\" />\r\n      </StringLeftDestination>\r\n      <StringRightDestination>\r\n        <xsl:value-of select=\"$var:v3\" />\r\n      </StringRightDestination>\r\n      <UppercaseDestination>\r\n        <xsl:value-of select=\"$var:v4\" />\r\n      </UppercaseDestination>\r\n      <LowercaseDestination>\r\n        <xsl:value-of select=\"$var:v5\" />\r\n      </LowercaseDestination>\r\n      <SizeDestination>\r\n        <xsl:value-of select=\"$var:v6\" />\r\n      </SizeDestination>\r\n      <StringExtractDestination>\r\n        <xsl:value-of select=\"$var:v7\" />\r\n      </StringExtractDestination>\r\n      <StringConcatDestination>\r\n        <xsl:value-of select=\"$var:v8\" />\r\n      </StringConcatDestination>\r\n      <StringLeftTrimDestination>\r\n        <xsl:value-of select=\"$var:v9\" />\r\n      </StringLeftTrimDestination>\r\n      <StringRightTrimDestination>\r\n        <xsl:value-of select=\"$var:v10\" />\r\n      </StringRightTrimDestination>\r\n    </ns0:Root>\r\n  </xsl:template>\r\n</xsl:stylesheet>"
///       contentType: application/xml
///       integrationAccountName: testIntegrationAccount
///       location: westus
///       mapName: testMap
///       mapType: Xslt
///       metadata: {}
///       resourceGroupName: testResourceGroup
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or update a map larger than 4 MB
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var integrationAccountMap = new AzureNative.Logic.IntegrationAccountMap("integrationAccountMap", new()
///     {
///         ContentType = "application/xml",
///         IntegrationAccountName = "testIntegrationAccount",
///         Location = "westus",
///         MapName = "testMap",
///         MapType = AzureNative.Logic.MapType.Xslt,
///         Metadata = null,
///         ResourceGroupName = "testResourceGroup",
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
/// 		_, err := logic.NewIntegrationAccountMap(ctx, "integrationAccountMap", &logic.IntegrationAccountMapArgs{
/// 			ContentType:            pulumi.String("application/xml"),
/// 			IntegrationAccountName: pulumi.String("testIntegrationAccount"),
/// 			Location:               pulumi.String("westus"),
/// 			MapName:                pulumi.String("testMap"),
/// 			MapType:                pulumi.String(logic.MapTypeXslt),
/// 			Metadata:               pulumi.Any(map[string]interface{}{}),
/// 			ResourceGroupName:      pulumi.String("testResourceGroup"),
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
/// import com.pulumi.azurenative.logic.IntegrationAccountMap;
/// import com.pulumi.azurenative.logic.IntegrationAccountMapArgs;
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
///         var integrationAccountMap = new IntegrationAccountMap("integrationAccountMap", IntegrationAccountMapArgs.builder()
///             .contentType("application/xml")
///             .integrationAccountName("testIntegrationAccount")
///             .location("westus")
///             .mapName("testMap")
///             .mapType("Xslt")
///             .metadata(Map.ofEntries(
///             ))
///             .resourceGroupName("testResourceGroup")
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
/// const integrationAccountMap = new azure_native.logic.IntegrationAccountMap("integrationAccountMap", {
///     contentType: "application/xml",
///     integrationAccountName: "testIntegrationAccount",
///     location: "westus",
///     mapName: "testMap",
///     mapType: azure_native.logic.MapType.Xslt,
///     metadata: {},
///     resourceGroupName: "testResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// integration_account_map = azure_native.logic.IntegrationAccountMap("integrationAccountMap",
///     content_type="application/xml",
///     integration_account_name="testIntegrationAccount",
///     location="westus",
///     map_name="testMap",
///     map_type=azure_native.logic.MapType.XSLT,
///     metadata={},
///     resource_group_name="testResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   integrationAccountMap:
///     type: azure-native:logic:IntegrationAccountMap
///     properties:
///       contentType: application/xml
///       integrationAccountName: testIntegrationAccount
///       location: westus
///       mapName: testMap
///       mapType: Xslt
///       metadata: {}
///       resourceGroupName: testResourceGroup
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
/// $ pulumi import azure-native:logic:IntegrationAccountMap testMap /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Logic/integrationAccounts/{integrationAccountName}/maps/{mapName}
/// ```
class IntegrationAccountMap extends pulumi.CustomResource {
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
  /// The resource location.
  late final pulumi.Output<String?> location;
  /// The map type.
  late final pulumi.Output<String> mapType;
  /// The metadata.
  late final pulumi.Output<dynamic> metadata;
  /// Gets the resource name.
  late final pulumi.Output<String> name;
  /// The parameters schema of integration account map.
  late final pulumi.Output<IntegrationAccountMapPropertiesResponseParametersSchema?> parametersSchema;
  /// The resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Gets the resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [IntegrationAccountMap].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IntegrationAccountMap]. {@macro pulumi_logic_integration_account_map_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IntegrationAccountMap(
    String name, {
    IntegrationAccountMapArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:logic:IntegrationAccountMap',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.changedTime = registerOutput<String>('changedTime');
    this.content = registerOutput<String?>('content');
    this.contentLink = registerOutput<ContentLinkResponse>('contentLink');
    this.contentType = registerOutput<String?>('contentType');
    this.createdTime = registerOutput<String>('createdTime');
    this.location = registerOutput<String?>('location');
    this.mapType = registerOutput<String>('mapType');
    this.metadata = registerOutput<dynamic>('metadata');
    this.name = registerOutput<String>('name');
    this.parametersSchema = registerOutput<IntegrationAccountMapPropertiesResponseParametersSchema?>('parametersSchema');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
  }
}
